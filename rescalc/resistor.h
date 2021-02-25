#ifndef RESISTOR_H
#define RESISTOR_H
#include "qdebug.h"

enum Color {black, brown, red, orange, yellow, green, blue, violet, grey, white, gold, silver};

class Band {

public:
    Band(Color color);

private:
    Color m_color;
    int m_digit;
    int m_multiplier;
    float m_tolerance;

    void setTolerance(Color color);
};

class Resistor
{

public:
    Resistor(std::vector<Band> bands);

    int numberOfBands() {return static_cast<int>(m_bands.size());}
private:
    std::vector<Band> m_bands;

};

#endif // RESISTOR_H
