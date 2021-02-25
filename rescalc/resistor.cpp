#include "resistor.h"


Band::Band(Color color) {
    m_color = color;
    m_digit = static_cast<int>(m_color);
    m_multiplier = pow(10, m_digit);
    setTolerance(m_color);
    qDebug() << "New Band. Color:  " << color << " digit: " << m_digit << " multiplier: " << m_multiplier << " tolerance: " << m_tolerance;
}

void Band::setTolerance(Color color)
{
    switch (color) {
    case Color::brown: m_tolerance = 1.0f; break;
    case Color::red: m_tolerance = 2.0f; break;
    case Color::green: m_tolerance = 0.5f; break;
    case Color::gold: m_tolerance = 5.0f; break;
    case Color::silver: m_tolerance = 10.0f; break;
    default: m_tolerance = 20.0f;
    }
}

Resistor::Resistor(std::vector<Band> bands)
{
    m_bands = bands;
}
