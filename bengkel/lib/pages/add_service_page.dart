import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/service_model.dart';
import '../controllers/service_controller.dart';

class AddServicePage extends StatelessWidget {

  final ServiceController controller = Get.find();

  final nama = TextEditingController();
  final nohp = TextEditingController();
  final plat = TextEditingController();
  final jenis = TextEditingController();
  final biaya = TextEditingController();

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
                  controller.tambahService(
                    ServiceModel(
                      id: DateTime.now().toString(),
                      namaCustomer: nama.text,
                      noHp: nohp.text,
                      platNomor: plat.text,
                      jenisService: jenis.text,
                      biaya: double.parse(biaya.text),
                    ),
                  );
                  Get.back();
                },
                child: Text("SIMPAN"),
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