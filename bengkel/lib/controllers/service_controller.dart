import 'package:get/get.dart';
import '../models/service_model.dart';

class ServiceController extends GetxController {

  var serviceList = <ServiceModel>[].obs;

  void tambahService(ServiceModel service) {
    serviceList.add(service);
  }

  void hapusService(String id) {
    serviceList.removeWhere((item) => item.id == id);
  }

  void updateService(ServiceModel updatedService) {
    int index = serviceList.indexWhere(
        (item) => item.id == updatedService.id);

    if (index != -1) {
      serviceList[index] = updatedService;
    }
  }

  double totalPemasukan() {
    return serviceList.fold(
        0, (sum, item) => sum + item.biaya);
  }
}