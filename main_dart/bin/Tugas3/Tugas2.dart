import 'dart:io';

void main() {
  stdout.write("Masukkan skor (0-100): ");
  int? skor = int.parse(stdin.readLineSync()!);

  String grade;
  if (skor >= 85 && skor <= 100) {
    grade = "A";
  } else if (skor >= 70 && skor <= 84) {
    grade = "B";
  } else if (skor >= 60 && skor <= 69) {
    grade = "C";
  } else if (skor >= 50 && skor <= 59) {
    grade = "D";
  } else if (skor < 50 && skor >= 0) {
    grade = "E";
  } else {
    grade = "Input skor tidak valid!";
  }

  print("Grade Anda: $grade");
}