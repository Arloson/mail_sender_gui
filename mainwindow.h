#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include "SmtpMime"
using namespace SimpleMail;

QT_BEGIN_NAMESPACE
namespace Ui { class MainWindow; }
QT_END_NAMESPACE

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();
public slots:
    void send();
private:
    Ui::MainWindow *ui;
    Sender* smtp;
    MimeMessage* messge;//создать в слоте
    EmailAddress* sender;
    EmailAddress* to;
    MimeText* test;

};
#endif // MAINWINDOW_H
