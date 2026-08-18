public class TemperatureConverter {
// Takes a Fahrenheit temperature and returns th e Celsius equivalent.
public static Decimal FahrenheitToCelsius(Decimal fh) {
   Decimal cs = (fh - 32) * 5/9;
   return cs.setScale(2);
}
}