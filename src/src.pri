!greaterThan(QT_MAJOR_VERSION, 4):error("You need at least Qt5 to build this application")

QT *= quick quick-private qml-private network
CONFIG *= c++11

INCLUDEPATH += $${PWD}
DEFINES += NO_LIBRSYNC

SOURCES += \
    $$PWD/watcher.cpp \
    $$PWD/livehubengine.cpp \
    $$PWD/livenodeengine.cpp \
    $$PWD/qmlhelper.cpp \
    $$PWD/liveruntime.cpp \
    $$PWD/remotepublisher.cpp \
    $$PWD/remotereceiver.cpp \
    $$PWD/imageadapter.cpp \
    $$PWD/contentpluginfactory.cpp \
    $$PWD/logger.cpp \
    $$PWD/remotelogger.cpp \
    $$PWD/logreceiver.cpp \
    $$PWD/fontadapter.cpp

public_headers += \
    $$PWD/livehubengine.h \
    $$PWD/livenodeengine.h \
    $$PWD/qmlhelper.h \
    $$PWD/liveruntime.h \
    $$PWD/logger.h \
    $$PWD/logreceiver.h \
    $$PWD/remotepublisher.h \
    $$PWD/remotereceiver.h \
    $$PWD/contentadapterinterface.h \
    $$PWD/remotelogger.h

HEADERS += \
    $$public_headers \
    $$PWD/watcher.h \
    $$PWD/imageadapter.h \
    $$PWD/contentpluginfactory.h \
    $$PWD/fontadapter.h

OTHER_FILES += \
    $$PWD/livert/error_qt5.qml \
    $$PWD/livert/error_qt5_controls.qml \
    $$PWD/livert/imageviewer_qt5.qml \
    $$PWD/livert/imageviewer_qt5_controls.qml \
    $$PWD/livert/folderview_qt5.qml \
    $$PWD/livert/folderview_qt5_controls.qml \
    $$PWD/livert/fontviewer_qt5.qml \
    $$PWD/livert/fontviewer_qt5_controls.qml

RESOURCES += \
    $$PWD/livert.qrc

include(ipc/ipc.pri)
