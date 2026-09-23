import 'package:get/get.dart';

class KalkulatorController extends GetxController{

  var hasil = 0.obs;

  void tambah(int angka1, int angka2){
    int hasiltambah = angka1 + angka2;
    hasil.value = hasiltambah;
    Get.snackbar(
      "Tambah",
      "Hasil penjumlahan: $hasiltambah",
      snackPosition: SnackPosition.BOTTOM,
    );
  }
  void kurang(int angka1, int angka2){
    int hasilKurang = angka1 - angka2;
    hasil.value = hasilKurang;
    Get.snackbar(
      "Kurang",
      "Hasil pengurangan: $hasilKurang",
      snackPosition: SnackPosition.BOTTOM,
    );
  }
  void kali(int angka1, int angka2){
    int hasilKali = angka1 * angka2;
    hasil.value = hasilKali;
    Get.snackbar(
      "Kali",
      "Hasil perkalian: $hasilKali",
      snackPosition: SnackPosition.BOTTOM,
    );
  }
  void bagi (int angka1, int angka2){
    int hasilBagi = angka1 ~/ angka2;
    hasil.value = hasilBagi;
    Get.snackbar(
      "Bagi",
      "Hasil pembagian: $hasilBagi",
      snackPosition: SnackPosition.BOTTOM,
    );
  }
  void Reset(){
    hasil.value = 0;
  }

}