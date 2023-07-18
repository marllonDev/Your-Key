// import 'dart:math';

// class ValorRandom {

   
//   generateKeyRandom(int length) {
//     bool special = true;
//     bool number = true;
//     bool letters = true;
//     final random = Random();
//     String randomString = '';
//     const charsFull = 'abcdefghijklmnopqrstuvwxyz\$#@*)-=(%' '""!0123456789';
//     const charsNumberAndSpecial = '\$#@*)-=(%' '""!0123456789';
//     const charsSpecialAndLetters = 'abcdefghijklmnopqrstuvwxyz\$#@*)-=(%' '""!';
//     const charsLettersAndNumber = 'abcdefghijklmnopqrstuvwxyz0123456789';
//     const charsLetters = 'abcdefghijklmnopqrstuvwxyz';
//     const charsNumber = '0123456789';
//     const charsSpecial = '\$#@*)-=(%' '""!';

//     if (special && number && letters) {
//       // for (int i = 0; i < length; i++) {
//       //   int randomIndex = random.nextInt(charsFull.length);
//       //   randomString += charsFull[randomIndex];
//       // }
//       //randomString = randomString;
//     } else if (special) {
      
//     }


//     if (special && number && letters) {
//       for (int i = 0; i < length; i++) {
//         int randomIndex = random.nextInt(charsFull.length);
//         randomString += charsFull[randomIndex];
//       }
//       randomString = randomString;
//     } 

//     if (special) {
//       for (int i = 0; i < length; i++) {
//         int randomIndex = random.nextInt(charsSpecial.length);
//         randomString += charsSpecial[randomIndex];
//       }
//       randomString = randomString;
//     } 
    
//     if (number) {
//       for (int i = 0; i < length; i++) {
//         int randomIndex = random.nextInt(charsNumber.length);
//         randomString += charsNumber[randomIndex];
//       }
//       randomString = randomString;
//     } 

//     if (letters) {
//       for (int i = 0; i < length; i++) {
//         int randomIndex = random.nextInt(charsLetters.length);
//         randomString += charsLetters[randomIndex];
//       }
//       randomString = randomString;
//     } 

//     if (special && number) {
//       for (int i = 0; i < length; i++) {
//         int randomIndex = random.nextInt(charsNumberAndSpecial.length);
//         randomString += charsNumberAndSpecial[randomIndex];
//       }
//       randomString = randomString;
//     }

//     if (special && letters) {
//       for (int i = 0; i < length; i++) {
//         int randomIndex = random.nextInt(charsSpecialAndLetters.length);
//         randomString += charsSpecialAndLetters[randomIndex];
//       }
//       randomString = randomString;
//     }

//     if (number && letters) {
//       for (int i = 0; i < length; i++) {
//         int randomIndex = random.nextInt(charsLettersAndNumber.length);
//         randomString += charsLettersAndNumber[randomIndex];
//       }
//       randomString = randomString;
//     }
//   }
// }
