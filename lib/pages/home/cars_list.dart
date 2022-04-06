import 'package:flutter/material.dart';
import 'package:japan_cars/data/cars_data.dart';
import 'package:japan_cars/helpers/appColors.dart';
import 'package:japan_cars/model/home_cars_model.dart';
import 'package:japan_cars/pages/home/carTile.dart';

class CarList extends StatefulWidget {
  const CarList({Key? key}) : super(key: key);

  @override
  State<CarList> createState() => _CarListState();
}

class _CarListState extends State<CarList> {
  List<HomeCarsModel> carsList = [];

  @override
  void initState() {
    //   // ignore: todo
    // ignore: todo
    //   // TODO: implement initState
    super.initState();

    carsList = getCarsList();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Center(
              child: Container(
                height: 200,
                child: ListView.builder(
                    itemCount: 1,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return CarsTile(
                        imgAssetPath: carsList[index].imgAssetPath,
                        km: carsList[index].km,
                        title: carsList[index].title,
                        price: carsList[index].price,
                        modelCode: carsList[index].modelCode,
                        EngineCC: carsList[index].EngineCC,
                      );
                    }),
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(
              height: 250,
              child: GestureDetector(
                // onTap: ,
                child: ListView.builder(
                    itemCount: carsList.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return SingleBookTile(
                        title: carsList[index].title,
                        modelCode: carsList[index].modelCode,
                        imgAssetPath: carsList[index].imgAssetPath,
                        price: carsList[index].price,
                      );
                    }),
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
        ],
      ),
    );
  }
}
