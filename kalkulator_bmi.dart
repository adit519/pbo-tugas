import 'dart:io';

void main() {
  print("Masukkan berat badan (kg):");
  double? berat = double.tryParse(stdin.readLineSync() ?? "");

  print("Masukkan tinggi badan (cm):");
  double? tinggi = double.tryParse(stdin.readLineSync() ?? "");

  if (berat == null || tinggi == null || berat <= 0 || tinggi <= 0) {
    print("Input tidak valid. Pastikan berat dan tinggi berupa angka positif.");
  } else {
    double bmi = hitungBMI(berat, tinggi);
    String kategori = kategoriBMI(bmi);
    print("BMI Anda: ${bmi.toStringAsFixed(2)}");
    print("Kategori: $kategori");
  }
}

double hitungBMI(double berat, double tinggiCm) {
  double tinggiMeter = tinggiCm / 100;
  return berat / (tinggiMeter * tinggiMeter);
}

String kategoriBMI(double bmi) {
  if (bmi < 18.5) {
    return "Kurus";
  } else if (bmi >= 18.5 && bmi <= 24.9) {
    return "Normal";
  } else if (bmi >= 25 && bmi <= 29.9) {
    return "Gemuk";
  } else {
    return "Obesitas";
  }
}
