import 'dart:io';

void main() {
  print("Masukkan nilai angka (0-100):");
  int? nilaiAngka = int.tryParse(stdin.readLineSync() ?? "");

  if (nilaiAngka == null || nilaiAngka < 0 || nilaiAngka > 100) {
    print("Input tidak valid. Masukkan nilai antara 0-100.");
  } else {
    String nilaiHuruf = konversiNilai(nilaiAngka);
    print("Nilai huruf: $nilaiHuruf");
  }
}

String konversiNilai(int nilai) {
  if (nilai >= 85 && nilai <= 100) {
    return "A";
  } else if (nilai >= 80 && nilai <= 84) {
    return "B+";
  } else if (nilai >= 75 && nilai <= 79) {
    return "B";
  } else if (nilai >= 70 && nilai <= 74) {
    return "C+";
  } else if (nilai >= 65 && nilai <= 69) {
    return "C";
  } else if (nilai >= 50 && nilai <= 64) {
    return "D";
  } else if (nilai >= 0 && nilai <= 49) {
    return "E";
  } else {
    return "Nilai tidak valid.";
  }
}
