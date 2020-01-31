QT       += core gui network

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    emailaddress.cpp \
    main.cpp \
    mainwindow.cpp \
    mimeattachment.cpp \
    mimecontentformatter.cpp \
    mimefile.cpp \
    mimehtml.cpp \
    mimeinlinefile.cpp \
    mimemessage.cpp \
    mimemultipart.cpp \
    mimepart.cpp \
    mimetext.cpp \
    quotedprintable.cpp \
    sender.cpp \
    server.cpp \
    serverreply.cpp

HEADERS += \
    SmtpMime \
    emailaddress.h \
    emailaddress_p.h \
    mainwindow.h \
    mimeattachment.h \
    mimecontentformatter.h \
    mimefile.h \
    mimehtml.h \
    mimeinlinefile.h \
    mimemessage.h \
    mimemessage_p.h \
    mimemultipart.h \
    mimemultipart_p.h \
    mimepart.h \
    mimepart_p.h \
    mimetext.h \
    quotedprintable.h \
    sender.h \
    sender_p.h \
    server.h \
    server_p.h \
    serverreply.h \
    serverreply_p.h \
    smtpexports.h

FORMS += \
    mainwindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    Makefile \
    SimpleMail2Qt5.pc \
    simplemail-qt5.pc.in \
    test_mail.pro.user
