import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/service_controller.dart';
import 'add_service_page.dart';
import 'edit_service_page.dart';

class HomePage extends StatelessWidget {

  final ServiceController controller =
      Get.put(ServiceController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          // HEADER
          Container(
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(20, 50, 20, 30),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF1E3A8A),
                  Color(0xFF2563EB),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Obx(() => Row(
              children: [
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.directions_car,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dashboard Bengkel",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 6),
                    Text(
                      "Total Pemasukan",
                      style: TextStyle(color: Colors.white70),
                    ),
                    Text(
                      "Rp ${controller.totalPemasukan()}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ],
            )),
          ),

          SizedBox(height: 20),

          Expanded(
            child: Obx(() {
              if (controller.serviceList.isEmpty) {
                return Center(
                  child: Text(
                    "Belum ada data service",
                    style: TextStyle(fontSize: 16),
                  ),
                );
              }

              return ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 16),
                itemCount: controller.serviceList.length,
                itemBuilder: (context, index) {
                  final item =
                      controller.serviceList[index];

                  return Container(
                    margin: EdgeInsets.only(bottom: 15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          offset: Offset(0, 3),
                        )
                      ],
                    ),
                    child: ListTile(
                      contentPadding:
                          EdgeInsets.all(15),
                      title: Text(
                        item.namaCustomer,
                        style: TextStyle(
                            fontWeight:
                                FontWeight.bold),
                      ),
                      subtitle: Text(
                          "${item.platNomor}\n${item.jenisService}"),
                      isThreeLine: true,
                      trailing: IconButton(
                        icon: Icon(Icons.delete,
                            color: Colors.red),
                        onPressed: () =>
                            controller.hapusService(
                                item.id),
                      ),
                      onTap: () {
                        Get.to(() =>
                            EditServicePage(
                                service: item));
                      },
                    ),
                  );
                },
              );
            }),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF1E3A8A),
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {
          Get.to(() => AddServicePage());
        },
      ),
    );
  }
}