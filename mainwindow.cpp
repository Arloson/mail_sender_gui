#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QLatin1String>

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow),
      smtp(new Sender(this))
{
    ui->setupUi(this);
    connect(ui->send, &QPushButton::clicked, this, &MainWindow::send);
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::send()
{
    //создание smtp сервера
    smtp->setHost(ui->host_mail->text());
    smtp->setConnectionType(Sender::SslConnection);
    smtp->setName("hello world");
    smtp->setPort(465);
    //add users smtp
    smtp->setUser(ui->sender_->text());
    smtp->setPassword(ui->password->text());
    //Create message
    messge = new MimeMessage();
    sender = new EmailAddress(ui->sender_->text(), "hame test");
    messge->setSender(*sender);
    to = new EmailAddress(ui->get_to->text(), "name");

    messge->addTo(*to);

    //text
    test = new MimeText();

    QString listaddr = ui->text_mesage_->toPlainText();
    QStringList strList = listaddr.split('\n');

    test->setText(ui->text_message->text());

    messge->addPart(test);

    smtp->sendMail(*messge);
    qDebug()<<smtp->lastError();




}

