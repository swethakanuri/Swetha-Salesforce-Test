public class TemperatureConverter {
// Takes a Fahre   nheit temperature and returns the 
public static Decimal FahrenheitToCelsius(Decimal fh) {
   Decimal cs = (fh - 32) * 5/9;
   return cs.setScale(2);
}
}
