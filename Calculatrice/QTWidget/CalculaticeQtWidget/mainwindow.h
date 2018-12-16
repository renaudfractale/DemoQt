#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QtWidgets>
class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent);
    ~MainWindow();

private:
    //IHM
    QDoubleSpinBox  *DoubleSpinBox_1 ;
    QDoubleSpinBox  *DoubleSpinBox_2 ;
    QPushButton *ButtonAdd;
    QPushButton *ButtonRemove;
    QPushButton *ButtonMulty;
    QPushButton *ButtonDiv;
    QLabel *LabelResulta;

    private slots:
    void Add();
    void Remove();
    void Multy();
    void Div();

};

#endif // MAINWINDOW_H
