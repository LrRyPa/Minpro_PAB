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

  late TextEditingController nama;
  late TextEditingController nohp;
  late TextEditingController plat;
  late TextEditingController jenis;
  late TextEditingController biaya;

  @override
  void initState() {
    super.initState();
    nama =
        TextEditingController(text: widget.service.namaCustomer);
    nohp =
        TextEditingController(text: widget.service.noHp);
    plat =
        TextEditingController(text: widget.service.platNomor);
    jenis =
        TextEditingController(text: widget.service.jenisService);
    biaya =
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
      body: Center(
        child: SingleChildScrollView(
          child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: 700, 
              ),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: nama,
                decoration: InputDecoration(labelText: "Nama Pelanggan"),
              ),
              TextField(
                controller: nohp,
                decoration: InputDecoration(labelText: "No HP"),
              ),
              TextField(
                controller: plat,
                decoration: InputDecoration(labelText: "Plat Nomor"),
              ),
              TextField(
                controller: jenis,
                decoration: InputDecoration(labelText: "Jenis Service"),
              ),
              TextField(
                controller: biaya,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: "Biaya"),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  controller.updateService(
                    ServiceModel(
                      id: widget.service.id,
                      namaCustomer: nama.text,
                      noHp: nohp.text,
                      platNomor: plat.text,
                      jenisService: jenis.text,
                      biaya: double.parse(biaya.text),
                    ),
                  );
                  Get.back();
                },
                child: Text("UPDATE"),
              )
            ],
          ),
        ),
        ),
      ),
    ),
  );
  }
}
