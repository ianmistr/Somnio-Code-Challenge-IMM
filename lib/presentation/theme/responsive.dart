class Responsive {
  static double responsiveHeight(double mediaHeight, double percentage) =>
      mediaHeight * percentage;

  static double responsiveWidth(double mediaWidth, double percentage) =>
      mediaWidth * percentage;

  static bool isSmartphone(double shortestSide) => shortestSide < 600;
}
