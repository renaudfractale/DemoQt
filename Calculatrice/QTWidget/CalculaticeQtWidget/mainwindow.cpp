#include "mainwindow.h"

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
{
    //Tilte
    setWindowTitle("Super calculatrice");

    // Objet interface
    //Inpute
    DoubleSpinBox_1 = new QDoubleSpinBox();
    DoubleSpinBox_2 = new QDoubleSpinBox();
    //Button
    ButtonAdd = new QPushButton("+");
    ButtonRemove = new QPushButton("-");
    ButtonMulty = new QPushButton("*");
    ButtonDiv= new QPushButton("/");
    // resulta
    LabelResulta = new QLabel("????");

    // GridLayout
    QGridLayout *GridLayout= new QGridLayout;
    //Leve 1
    GridLayout->addWidget(DoubleSpinBox_1,1,1,1,2);
    GridLayout->addWidget(DoubleSpinBox_2,1,3,1,2);
    //Leve 2
    GridLayout->addWidget(ButtonAdd,2,1,1,1);
    GridLayout->addWidget(ButtonRemove,2,2,1,1);
    GridLayout->addWidget(ButtonMulty,2,3,1,1);
    GridLayout->addWidget(ButtonDiv,2,4,1,1);
    //Leve 3
    GridLayout->addWidget(LabelResulta,3,1,1,4);
    //On acroche le

    QWidget *widget = new QWidget;
    setCentralWidget(widget);

    widget->setLayout(GridLayout);

    //Connection signal slot
    QObject::connect(ButtonAdd,SIGNAL(clicked(bool)),this,SLOT(Add()));
    QObject::connect(ButtonRemove,SIGNAL(clicked(bool)),this,SLOT(Remove()));
    QObject::connect(ButtonMulty,SIGNAL(clicked(bool)),this,SLOT(Multy()));
    QObject::connect(ButtonDiv,SIGNAL(clicked(bool)),this,SLOT(Div  ()));


}

MainWindow::~MainWindow()
{

}
void MainWindow::Add(){
    double A = DoubleSpinBox_1->value();
    double B = DoubleSpinBox_2->value();
    LabelResulta->setText(  QString::number(A+B));
}

void MainWindow::Remove(){
    double A = DoubleSpinBox_1->value();
    double B = DoubleSpinBox_2->value();
    LabelResulta->setText(  QString::number(A-B));
}

void MainWindow::Multy(){
    double A = DoubleSpinBox_1->value();
    double B = DoubleSpinBox_2->value();
    LabelResulta->setText(  QString::number(A*B));
}

void MainWindow::Div(){
    double A = DoubleSpinBox_1->value();
    double B = DoubleSpinBox_2->value();
    if(B==0.0){
         LabelResulta->setText( "inf");
    }else
    {
        LabelResulta->setText(  QString::number(A/B));
    }

}



