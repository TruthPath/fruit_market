import 'dart:io';

import 'package:fruit_market/fruit_market.dart' as fruit_market;

void main(List<String> arguments) {
  String message = "Selamat Datang Di Fruit Market";
  List buah = ['mangga', 'Jeruk', 'Apple', 'Pisang', 'Durian', 'Alpukat'];
  List harga = ['3000', '2000', '3500', '2500', '15000', '5000'];

  Map<String, int> hargabuah = {
    'mangga': 3000,
    'jeruk': 2000,
    'apel': 3500,
    'pir': 1000,
    'peach': 5000,
    'pisang': 5000,
  };

  print('''$message. 
  Buah yang tersedia adalah:
  1. ${buah[0]}
  2. ${buah[1]}
  3. ${buah[2]}
  4. ${buah[3]}
  5. ${buah[4]}
  6. ${buah[5]}

  Silahkan pilih buah yang ingin anda pilih
  ''');

  var inputBuahDipilih = int.parse(stdin.readLineSync()!);

  if (inputBuahDipilih > 0) {
    var buahDipilih = buah[inputBuahDipilih - 1];
    print('''
    Anda Memilih $buahDipilih
  
  
    Berapa Buah $buahDipilih yang ingin anda beli:
    ''');

    var jumlahbuahyangdipilih = int.parse(stdin.readLineSync()!);
    var hargaTotal = jumlahbuahyangdipilih * HargaBuah[buahDipilih]!;

    stdout.write('''
    Anda memilih buah $buahDipilih sejumlah $jumlahbuahyangdipilih
    Harga yang harus dibayar adalah Rp$hargaTotal
    Jumlah uang yang dibayar
      ''');

    var JumlahUang = int.parse(stdin.readLineSync()!);

    stdout.write('''
    Anda membayar sebesar $JumlahUang
   Kembaliannya: ${JumlahUang - hargaTotal}

   Terima Kasih
   ''');
  } else {
    print("Tuliskan nomor buah");
  }
}
