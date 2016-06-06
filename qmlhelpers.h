#ifndef QMLHELPERS_H
#define QMLHELPERS_H

#include <QObject>

class QMLHelpers : public QObject
{
    Q_OBJECT
public:
    explicit QMLHelpers(QObject *parent = 0);

    Q_INVOKABLE QObject *GetThis(QObject *s) { return s; }
    Q_INVOKABLE QObject *GetParent(QObject *s) { return s->parent(); }

signals:

public slots:
};

#endif // QMLHELPERS_H
