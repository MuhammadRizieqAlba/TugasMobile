import 'dart:io';

void main() {
  // 1. Menyimpan data karyawan
  String nama = "Budi";
  int jamKerja = 40;        // jam kerja per minggu
  double upahPerJam = 50000; // upah per jam
  bool statusTetap = true;   // true = tetap, false = kontrak

  // 2. Menghitung gaji kotor
  double gajiKotor = jamKerja * upahPerJam;

  // 3. Menghitung pajak
  double pajak;
  if (statusTetap) {
    pajak = gajiKotor * 0.10; // potongan 10%
  } else {
    pajak = gajiKotor * 0.05; // potongan 5%
  }

  // 4. Menghitung gaji bersih
  double gajiBersih = gajiKotor - pajak;

  // Menampilkan hasil
  print("=== Data Karyawan ===");
  print("Nama        : $nama");
  print("Jam Kerja   : $jamKerja jam/minggu");
  print("Upah per Jam: Rp$upahPerJam");
  print("Status      : ${statusTetap ? "Tetap" : "Kontrak"}");
  print("Gaji Kotor  : Rp$gajiKotor");
  print("Pajak       : Rp$pajak");
  print("Gaji Bersih : Rp$gajiBersih");
}