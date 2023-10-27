import 'dart:io';
void main(){
  // Meminta user menginputkan data Anda
  stdout.write('Masukkan nama anda : ');
  String nama1 = stdin.readLineSync()!;

  stdout.write('Masukkan umur anda : ');
  int umur1 = int.parse(stdin.readLineSync()!);

  // Meminta user menginputkan data teman Anda
  stdout.write('Masukkan nama teman anda : ');
  String nama2 = stdin.readLineSync()!;

  stdout.write('Masukkan umur teman anda : ');
  // Mengonversi umur dari string ke integer
  int umur2 = int.parse(stdin.readLineSync()!);

  // Operasi aritmatika
  String nama =nama1+nama2;
  int umur = umur1+umur2;

  //Menampilkan hasil
  print('$nama');
  print('$umur');
}
