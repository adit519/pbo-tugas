import 'dart:io';
import 'dart:math';

void main() {
  print("Selamat datang di permainan Tebak Angka!");
  print("Saya telah memilih angka antara 1 hingga 100.");
  print("Anda memiliki 7 kesempatan untuk menebak.");

  int angkaAcak = Random().nextInt(100) + 1;
  int kesempatan = 7;

  while (kesempatan > 0) {
    print("\nMasukkan tebakan Anda (1-100):");
    int? tebakan = int.tryParse(stdin.readLineSync() ?? "");

    if (tebakan == null || tebakan < 1 || tebakan > 100) {
      print("Input tidak valid. Masukkan angka antara 1 dan 100.");
      continue;
    }

    if (tebakan == angkaAcak) {
      print("Selamat! Anda berhasil menebak angka $angkaAcak dengan benar!");
      return;
    } else if (tebakan > angkaAcak) {
      print("Terlalu besar!");
    } else {
      print("Terlalu kecil!");
    }

    kesempatan--;
    print("Kesempatan tersisa: $kesempatan");
  }

  print("\nKesempatan Anda habis! Angka yang benar adalah $angkaAcak.");
  print("Terima kasih telah bermain!");
}
