class TemperatureConvertor{
    double convertTemperature(double temperature, bool isCelsius) {
    if (isCelsius == false) {
      return (temperature * 9 / 5) + 32;
    } else {
      return (temperature - 32) * 5 / 9;
    }
  }
}