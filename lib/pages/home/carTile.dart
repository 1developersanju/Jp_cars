import 'package:flutter/material.dart';
import 'package:japan_cars/helpers/appColors.dart';

class CarsTile extends StatelessWidget {
  final String imgAssetPath, title, price, modelCode, km, EngineCC;
  CarsTile(
      {required this.price,
      required this.title,
      required this.modelCode,
      required this.imgAssetPath,
      required this.km,
      required this.EngineCC});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        print("tapped ");
        // Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //         builder: (context) => BookDetails(
        //               modelCode: modelCode,
        //               price: price,
        //               imgAssetPath: imgAssetPath,
        //               title: title,
        //             )));
      },
      child: Container(
        height: 200,
        margin: EdgeInsets.only(right: 16),
        alignment: Alignment.bottomLeft,
        child: Stack(
          children: <Widget>[
            Container(
              height: 180,
              alignment: Alignment.bottomLeft,
              child: Container(
                  width: size.width - 60,
                  height: 140,
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 135,
                      ),
                      Container(
                        //color: Colors.amber,
                        width: MediaQuery.of(context).size.width - 220,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Center(
                              child: Text(
                                title,
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              price,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: size.height * 0.014,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Km : $km",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: size.height * 0.014,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Model Code : ${modelCode}",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: size.height * 0.014,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Engine CC : ${EngineCC}",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: size.height * 0.014,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
            Container(
              height: 180,
              margin: EdgeInsets.only(
                left: 12,
                top: 6,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  imgAssetPath,
                  height: 150,
                  width: 150,
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// single book tile

class SingleBookTile extends StatelessWidget {
  final String title, modelCode, imgAssetPath, price;
  SingleBookTile(
      {required this.title,
      required this.modelCode,
      required this.price,
      required this.imgAssetPath});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //         builder: (context) => BookDetails(
        //               modelCode: modelCode,
        //               price: price,
        //               imgAssetPath: imgAssetPath,
        //               title: title,
        //             )));
      },
      child: Container(
        width: 110,
        padding: EdgeInsets.only(right: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 170,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  imgAssetPath,
                  height: 170,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            SizedBox(
              height: 1,
            ),
            Text(
              title,
              style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w500,
                  fontSize: 14),
            ),
            Spacer(),
            Text(
              modelCode,
              style: TextStyle(color: jpTheme, fontSize: 13),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
