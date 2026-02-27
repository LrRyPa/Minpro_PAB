import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/service_model.dart';
import '../controllers/service_controller.dart';

class AddServicePage extends StatelessWidget {

  final ServiceController controller = Get.find();

  final namaController = TextEditingController();
  final noHpController = TextEditingController();
  final platController = TextEditingController();
  final jenisController = TextEditingController();
  final biayaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tambah Service",
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF1E3A8A),
                Color(0xFF2563EB),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: namaController,
              decoration: InputDecoration(labelText: "Nama Customer"),
            ),
            TextField(
              controller: noHpController,
              decoration: InputDecoration(labelText: "No HP"),
            ),
            TextField(
              controller: platController,
              decoration: InputDecoration(labelText: "Plat Nomor"),
            ),
            TextField(
              controller: jenisController,
              decoration: InputDecoration(labelText: "Jenis Service"),
            ),
            TextField(
              controller: biayaController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Biaya"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                controller.tambahService(
                  ServiceModel(
                    id: DateTime.now().toString(),
                    namaCustomer: namaController.text,
                    noHp: noHpController.text,
                    platNomor: platController.text,
                    jenisService: jenisController.text,
                    biaya: double.parse(biayaController.text),
                  ),
                );

                Get.back();
              },
              child: Text("SIMPAN"),
            )
          ],
        ),
      ),
    );
  }
}