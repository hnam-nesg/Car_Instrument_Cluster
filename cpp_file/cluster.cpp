#include "header_file/cluster.h"
#include <QDebug>
#include <QVector>
#include <QList>
#include <QString>
Cluster::Cluster(QObject* parent):QObject(parent) {
    mLight_right = false;
    mLight_left = false;
    mLight_on = false;
    mon_light_dim = false;
    m_hazard = false;
    m_fog = false;
    buffer = nullptr;
    m_speed = 0;
    m_gear = "";

    serial = new QSerialPort(this);
    serial->setPortName("COM8");
    serial->setBaudRate(QSerialPort::Baud115200);
    serial->setDataBits(QSerialPort::Data8);
    serial->setParity(QSerialPort::NoParity);
    serial->setStopBits(QSerialPort::OneStop);
    serial->setFlowControl(QSerialPort::NoFlowControl);

    if (serial->open(QIODevice::ReadWrite)) {
        qDebug() << "Serial kết nối thành công:";
        connect(serial, &QSerialPort::readyRead, this, &Cluster::onDataReceived);
    } else {
        qDebug() << "Serial kết nối thất bại:" << serial->errorString();
    }
}

Cluster::~Cluster() {
    if (serial->isOpen())
        serial->close();
}


bool Cluster::getLightRight()
{
    return mLight_right;
}

bool Cluster::getLightLeft()
{
    return mLight_left;
}

bool Cluster::getLightOnDim()
{
    return mon_light_dim;
}

bool Cluster::getHazard()
{
    return m_hazard;
}

bool Cluster::getFog()
{
    return m_fog;
}

int Cluster::getSpeed()
{
    return m_speed;
}

QString Cluster::getGear()
{
    return m_gear;
}

bool Cluster::getLightOn()
{
    return mLight_on;
}

void Cluster::sendData(const QByteArray &data)
{
    if (serial->isWritable()) {
        serial->write(data);
    }
}

void Cluster::setLightRight(bool mode)
{
    if (mLight_right != mode){
        mLight_right = mode;
    }
    emit signal_light_right(mode);
}

void Cluster::setLightLeft(bool mode)
{
    if(mLight_left != mode){
        mLight_left = mode;
    }
    emit signal_light_left(mode);
}

void Cluster::setLightOn(bool mode)
{
    if(mLight_on != mode){
        mLight_on = mode;
    }
    emit signal_light_high(mode);
}

void Cluster::setLightOnDim(bool mode)
{
    if(mon_light_dim != mode){
        mon_light_dim = mode;
    }
    emit signal_light_dim(mode);
}

void Cluster::setHazard(bool mode)
{
    if(m_hazard != mode){
        m_hazard = mode;
    }
    emit signal_hazard(mode);
}

void Cluster::setFog(bool mode)
{
    if(m_fog != mode){
        m_fog =mode;
    }
    emit signal_fog(mode);
}

void Cluster::setSpeed(int value)
{
    if(m_speed != value){
        m_speed = value;
    }
    emit speed(value);
}

void Cluster::setGear(QString gear)
{

}

void Cluster::onDataReceived()
{
    buffer.append(serial->readAll());
    int endIndex;
    while ((endIndex = buffer.indexOf('\n')) != -1) {
        QByteArray line = buffer.left(endIndex).trimmed();
        buffer.remove(0, endIndex + 1);

        qDebug() << "Processed line:" << line;

        QString str = QString::fromUtf8(line).trimmed();

        if (str.startsWith("Lights:")) {
            QStringList parts = str.split(":");
            if (parts.size() == 2) {
                QList <QString> modeStr = parts[1].split(",");
                emit signal_light_right(modeStr[0] == "Right" ? true: false);
                emit signal_light_left(modeStr[1] == "Left" ? true : false);
                emit signal_light_high(modeStr[2] == "High" ? true : false);
                emit signal_light_dim(modeStr[3] == "Low" ? true: false);
                emit signal_fog(modeStr[4] == "Fog" ? true : false);
                emit signal_hazard(modeStr[5] == "Hazard" ? true : false);
            }
        }
        else if (str.startsWith("Speed:")){
            QStringList parts = str.split(":");
            if(parts.size()==2){
                int value = parts[1].toInt();
                qDebug() << "Speed: "<<value;
                if(value >=0 && value <= 240 ){
                    emit speed(value);
                }
            }
        }
        else if (str.startsWith("Coolant:")){
            QStringList parts = str.split(":");
            if(parts.size()==2){
                int value = parts[1].toInt();
                qDebug() << "Coolant: "<<value;
                if(value >=0 && value <= 240 ){
                    emit coolant(value);
                }
            }
        }
        else if (str.startsWith("Fuel:")){
            QStringList parts = str.split(":");
            if(parts.size()==2){
                int value = parts[1].toInt();
                qDebug() << "Fuel: "<<value;
                if(value >=0 && value <= 240 ){
                    emit fuel(value);
                }
            }
        }
        else if (str.startsWith("Gear:")){
            QStringList parts = str.split(":");
            if(parts.size()==2){
                QString modeStr = parts[1];
                qDebug() << "Gear: "<<modeStr;
                emit gear(modeStr);
            }
        }
    }
}

void Cluster::active_gear(QString gear)
{

}

