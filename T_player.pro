#-------------------------------------------------
#
# Project created by QtCreator 2018-09-01T16:10:47
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

UI_DIR  = obj/Gui
MOC_DIR = obj/Moc
OBJECTS_DIR = obj/Obj


#
#DESTDIR=$$PWD/bin/
contains(QT_ARCH, i386) {
    message("32-bit")
    DESTDIR = $${PWD}/bin32
} else {
    message("64-bit")
    DESTDIR = $${PWD}/bin64
}
QMAKE_CXXFLAGS += -std=c++11

TARGET = T_player
TEMPLATE = app

#
include(module/VideoPlayer/VideoPlayer.pri)
#
include(module/DragAbleWidget/DragAbleWidget.pri)

SOURCES += \
    src/Widget/SetVideoUrlDialog.cpp \
    src/Widget/mymessagebox_withTitle.cpp \
    src/main.cpp \
    src/AppConfig.cpp \
    src/Base/FunctionTransfer.cpp \
    src/MainWindow.cpp \
    src/Widget/ShowVideoWidget.cpp \
    src/Widget/VideoSlider.cpp \
    src/Widget/dragwidget.cpp

HEADERS  += \
    src/AppConfig.h \
    src/Base/FunctionTransfer.h \
    src/MainWindow.h \
    src/Widget/SetVideoUrlDialog.h \
    src/Widget/ShowVideoWidget.h \
    src/Widget/VideoSlider.h \
    src/Widget/mymessagebox_withTitle.h \
    src/Widget/dragwidget.h


FORMS    += \
    src/MainWindow.ui \
    src/Widget/SetVideoUrlDialog.ui \
    src/Widget/ShowVideoWidget.ui \
    src/Widget/mymessagebox_withTitle.ui

RESOURCES += \
    resources/resources.qrc

INCLUDEPATH += $$PWD/src

win32:RC_FILE=$$PWD/resources/main.qrc
#RC_ICON=$$PWD/resources/main.ico
