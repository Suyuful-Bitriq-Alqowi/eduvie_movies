import 'package:get/get.dart';

class DashboardController extends GetxController {
  var selectedIndex = 0.obs; // Indeks menu default adalah 0 (Home)

  void changeMenu(int index) {
    selectedIndex.value = index; // Mengubah menu yang dipilih
  }

  void resetIndex() {
    selectedIndex.value = 0; // Reset ke Home menu
  }
}
