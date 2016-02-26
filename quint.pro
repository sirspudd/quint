QT += quick gui-private

rpi: DEFINES += NO_QUICKVIEW

SOURCES += main.cpp \
    codemodel.cpp \
    quintview.cpp

HEADERS += \
    codemodel.h \
    quintview.h

RESOURCES += \
    quint.qrc
