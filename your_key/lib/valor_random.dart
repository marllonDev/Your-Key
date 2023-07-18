import 'dart:math';

class ValorRandom {
  String generateRandomString(int length) {
    var random = Random();
    var values = List.generate(length, (index) {
      var codeUnit = random.nextInt(26) + 65;
      if (random.nextBool()) {
        codeUnit += 32;
      }
      return String.fromCharCode(codeUnit);
    });
    return (values.join());
  }

  String generateRandomNumber(int length) {
    final random = Random();
    const chars = '0123456789';

    String randomString = '';
    for (int i = 0; i < length; i++) {
      int randomIndex = random.nextInt(chars.length);
      randomString += chars[randomIndex];
    }
    return randomString;
  }

  String generateRandomCharsSpecial(int length) {
    final random = Random();
    const chars = '&\$#@*)-=(%''""!';

    String randomString = '';
    for (int i = 0; i < length; i++) {
      int randomIndex = random.nextInt(chars.length);
      randomString += chars[randomIndex];
    }
    return randomString;
  } 
}
