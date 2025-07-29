#ifndef CLUSTER_H
#define CLUSTER_H
#include <QObject>
#include <QSerialPort>
using namespace std;
class Cluster:public QObject
{
    Q_OBJECT
public:
    explicit Cluster(QObject *parent =nullptr);
    ~Cluster();
    Q_PROPERTY(bool light_right READ getLightRight WRITE setLightRight NOTIFY signal_light_right);
    Q_PROPERTY(bool light_left READ getLightLeft WRITE setLightLeft NOTIFY signal_light_left);
    Q_PROPERTY(bool light_on READ getLightOn WRITE setLightOn NOTIFY signal_light_high);
    Q_PROPERTY(bool light_dim READ getLightOnDim WRITE setLightOnDim NOTIFY signal_light_dim);
    Q_PROPERTY(bool light_hazard READ getHazard WRITE setHazard NOTIFY signal_hazard);
    Q_PROPERTY(bool light_fog READ getFog WRITE setFog NOTIFY signal_fog);
    Q_PROPERTY(int speed_value READ getSpeed WRITE setSpeed NOTIFY speed);
    Q_PROPERTY(QString gear_value READ getGear WRITE setGear NOTIFY gear );
private:
    bool mLight_right;
    bool mLight_left;
    bool mLight_on;
    bool mon_light_dim;
    bool m_hazard;
    bool m_fog;
    int m_speed;
    QString m_gear;
public:
    QSerialPort* serial;
    QByteArray buffer;
    bool getLightRight();
    bool getLightLeft();
    bool getLightOn();
    bool getLightOnDim();
    bool getHazard();
    bool getFog();
    int getSpeed();
    QString getGear();

    void sendData(const QByteArray& data);
    void setLightRight(bool mode);
    void setLightLeft(bool mode);
    void setLightOn(bool mode);
    void setLightOnDim(bool mode);
    void setHazard(bool mode);
    void setFog(bool mode);
    void setSpeed(int value);
    void setGear(QString gear);
signals:
    void signal_light_high(bool onLight);
    void signal_light_dim(bool onLight);
    void signal_light_right(bool signalRight);
    void signal_light_left(bool signalLeft);
    void signal_hazard(bool hazard);
    void signal_fog(bool fog);
    void speed(int value);
    void coolant(int value);
    void fuel(int value);
    void gear(QString gear);
private slots:
    void onDataReceived();
    void active_gear(QString gear);
};

#endif // CLUSTER_H
