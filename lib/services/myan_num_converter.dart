String convertToMyanmarDigits(int number) {
  String input = number.toString();
  String output = input.replaceAllMapped(RegExp(r'[0-9]'), (match) {
    switch (match.group(0)) {
      case '0':
        return '၀';
      case '1':
        return '၁';
      case '2':
        return '၂';
      case '3':
        return '၃';
      case '4':
        return '၄';
      case '5':
        return '၅';
      case '6':
        return '၆';
      case '7':
        return '၇';
      case '8':
        return '၈';
      case '9':
        return '၉';
      default:
        return match.group(0)!;
    }
  });
  return output;
}
