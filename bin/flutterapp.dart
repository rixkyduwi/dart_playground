import 'dart:io';

import 'package:flutterapp/animal.dart';
import 'package:flutterapp/flutterapp.dart' as flutterapp;

void main(List<String> arguments) {
  /**
      int a =11;//variable int
      var aa =11;//variable int
      String b ="String";//variable string
      var bb ="String";//variable string
      bool c = true; // variable boolean
      var cc = false;//variable boolean
      print(10);//print int
      print(10+2);//print int
      print("$a ini variable int ");
      print("$aa"+" ini variable int ");
      print(b+bb);
      print("$bb ini variable String ");
      if (c){
      print("$c ini variable booelan \n"
      "variable doatas muncul karena boolean true");
      }
      if (cc){
      print("$cc ini variable booelan \n"
      "ini muncul karena boolean bernilai true");
      }
      else{
      print("$cc ini variable booelan \n"
      "variable diatas muncul karena boolean bernilai false");
      }
      var primeNumbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71];
      stdout.write('Masukkan bilangan prima : ');
      var searchNumber = int.parse(stdin.readLineSync()!);

      for (int i = 0; i < primeNumbers.length; i++) {
      if (searchNumber == primeNumbers[i]) {
      print('$searchNumber adalah bilangan prima ke-${i + 1}');
      break;
      }
      print('$searchNumber bukan ${primeNumbers[i]}');
      }

      switch (searchNumber) {
      case 2:
      print('$searchNumber adalah bilangan prima ke-${1}');
      break;
      case 3:
      print('$searchNumber adalah bilangan prima ke-${2}');
      break;
      default:
      print('$searchNumber bukan bilangan prima');
      }
      print('Hello world: ${flutterapp.calculate()}!');
      print('${flutterapp.calculateScore(searchNumber)}!');
   **/
  //spread in list
  var favorites = ['Seafood', 'Salad', 'Nugget', 'Soup'];
  var others;
  others = ["sdaf", "dsf", "fsef", 23];
  var allFavorites = [...favorites, 0, 2, 4, null, ...?others];
  print(allFavorites);
  //set
  var numberSet = {1, 4, 6};
  Set<int> anotherSet = new Set.from([1, 4, 6, 4, 1]);
  print(numberSet);
  print(anotherSet);
  numberSet.add(8);
  numberSet.addAll({2, 2, 3});
  numberSet.remove(3);
  print(numberSet);
  var setA = {1, 2, 4, 5};
  var setB = {1, 5, 7};
  var union = setA.union(setB); //mennggabungkan a dan b yg sama jadi 1
  var intersection = setA.intersection(setB); //mencari yg sama
  print(union);
  print(intersection);
  var capital = {
    'Jakarta': 'adalah benar',
    'jakarta': 'adalah benar',
    'Tokyo': 'adalah salah'
  };
  stdout.write('ibukota indonesia dimana? : ');
  var jawaban = stdin.readLineSync();
  var verif=capital['$jawaban'];
  if (verif==null){
    print("salah");
  }
  else{
    print(verif);
  }
  print("${capital.keys}, ${capital.values}");
  capital['New Delhi'] = 'salah';
  print(capital);
  var numberSejut = {1, 4, 6};
  var dicodingCat = Animal('Gray', 2, 4.2);
  dicodingCat.eat();
  dicodingCat.poop();
  print(dicodingCat.weight);
  print(Weather.rain.rainAmount);
}
enum Weather {
  sunny(15),
  cloudy(34),
  rain(69),
  storm(83);
  final int rainAmount;
  const Weather(this.rainAmount);
}
mixin Flyable {
  void fly() {
    print("I'm flying");
  }
}

mixin Walkable {
  void walk() {
    print("I'm walking");
  }
}

mixin Swimmable {
  void swim() {
    print("I'm swimming");
  }
}



