TEMPLATE = app

QT += qml quick

CONFIG += qtquickcompiler

HEADERS += \
    translator.h

SOURCES += main.cpp \
    translator.cpp

# Default rules for deployment.
include(deployment.pri)

RESOURCES += \
    res.qrc


TRANSLATIONS += \
    language/en.ts \ # English
    language/fr.ts \ # Français
    language/cn.ts   # Chinese

DISTFILES +=
