

int getColorHexFromStr(String colorStr){
  colorStr = "FF" + colorStr;
  colorStr = colorStr.replaceAll("#", "");
  int colorInt = 0;
  int len = colorStr.length;
  for (int i = 0; i < len; i++){
    int hexDigit = colorStr.codeUnitAt(i);
    if (hexDigit >= 48 && hexDigit <= 57){
      colorInt += (hexDigit - 48) * (1 << (4 * (len - 1 - i)));
    }
    else if (hexDigit >= 65 && hexDigit <= 70){
      colorInt += (hexDigit - 55) * (1 << (4 * (len - 1 - i)));
    }
    else if (hexDigit >= 97 && hexDigit <= 102){
      colorInt += (hexDigit - 87) * (1 << (4 * (len - 1 - i)));
    }
    else{
      throw new FormatException("An error occured when converting a color");
    }
  }
  return colorInt;
}