import 'dart:html';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_getx_boilerplate/models/response/users_response.dart';
import 'package:flutter_getx_boilerplate/modules/home/home.dart';
import 'package:flutter_getx_boilerplate/shared/shared.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';



import 'package:get/get.dart';

class MainTab extends GetView<HomeController> {
  

  

  @override
  Widget build(BuildContext context) {
    log(data.toString());
    log(_buildGridView().toString());
   
    return Scaffold(
      body: Obx(
        () => RefreshIndicator(
          
          child: _buildGridView(),
          
          onRefresh: () => controller.loadUsers(),
          
        ),
        
      ),
      
    );
  
  }
  Widget _buildGridView() {
  return StaggeredGridView.countBuilder(
    
      crossAxisCount: 4,
      itemCount: data!.length,
      itemBuilder: (BuildContext context, int index) => new Container(     
        color: ColorConstants.lightGray,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('${data![index].city}${data![index].addr1}'
            ),
          
            Text('${data![index].name}'),
      
          ],
          
        ),
      
      ),
      
      staggeredTileBuilder: (int index) =>
          new StaggeredTile.count(2, index.isEven ? 3 : 2),
          
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
    );
  
  }
  List<Datum>? get data {
    return controller.users.value == null ? []:controller.users.value!.message;
 }
  
}
