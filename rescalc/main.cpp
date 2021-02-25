#include <QCoreApplication>
#include <opencv2\highgui\highgui.hpp>
#include <opencv2/imgcodecs.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include "resistor.h"
#include "qdebug.h"


int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    Band firstBand(black);
    Band secondBand(red);
    Band thirdBand(orange);
    Band fourhtBand(gold);

    std::vector<Band> bands;
    bands.push_back(firstBand);
    bands.push_back(secondBand);
    bands.push_back(thirdBand);
    bands.push_back(fourhtBand);

    Resistor resistor(bands);

    return a.exec();
}
