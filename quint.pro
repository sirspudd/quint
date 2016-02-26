QT += quick gui-private

rpi: DEFINES += NO_QUICKVIEW

SOURCES += main.cpp \
    codemodel.cpp \
    quintview.cpp

OTHER_FILES += \
    quint.qml \
    HelloWorld.qml \
    Fly.qml \
    Julia.qml \
    Raspberry.qml \ 
    VideoFx.qml \
    Scratchpad.qml \
    MiniRaspberry.png \
    Raspberry.png \
    qt-logo.png

HEADERS += \
    codemodel.h \
    quintview.h

!isEqual($${_PRO_FILE_PWD_},$${OUT_PWD}) {
QML_FILE_LINKS =
for(FILE,OTHER_FILES){
    QML_FILE_LINKS += $${_PRO_FILE_PWD_}/$${FILE}
    QMAKE_POST_LINK += $$quote(cp $${_PRO_FILE_PWD_}/$${FILE} $${OUT_PWD}$$escape_expand(\n\t))
}
}

POST_TARGETDEPS += $${QML_FILE_LINKS}
