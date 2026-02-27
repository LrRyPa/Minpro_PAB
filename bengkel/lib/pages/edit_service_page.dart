import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/service_model.dart';
import '../controllers/service_controller.dart';

class EditServicePage extends StatefulWidget {
  final ServiceModel service;

  EditServicePage({required this.service});

  @override
  _EditServicePageState createState() => _EditServicePageState();
}

class _EditServicePageState extends State<EditServicePage> {

  final ServiceController controller = Get.find();

  late TextEditingController namaController;
  late TextEditingController noHpController;
  late TextEditingController platController;
  late TextEditingController jenisController;
  late TextEditingController biayaController;

  @override
  void initState() {
    super.initState();
    namaController =
        TextEditingController(text: widget.service.namaCustomer);
    noHpController =
        TextEditingController(text: widget.service.noHp);
    platController =
        TextEditingController(text: widget.service.platNomor);
    jenisController =
        TextEditingController(text: widget.service.jenisService);
    biayaController =
        TextEditingController(text: widget.service.biaya.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Edit Service",
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
                controller.updateService(
                  ServiceModel(
                    id: widget.service.id,
                    namaCustomer: namaController.text,
                    noHp: noHpController.text,
                    platNomor: platController.text,
                    jenisService: jenisController.text,
                    biaya: double.parse(biayaController.text),
                  ),
                );
                Get.back();
              },
              child: Text("UPDATE"),
            )
          ],
        ),
      ),
    );
  }
}