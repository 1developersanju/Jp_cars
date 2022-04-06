import 'package:japan_cars/model/home_cars_model.dart';

List<HomeCarsModel> getCarsList() {
  List<HomeCarsModel> cars = [];
  HomeCarsModel carModel = HomeCarsModel(
      modelCode: '',
      price: '',
      imgAssetPath: '',
      km: "5",
      title: '',
      EngineCC: '2400');
//1
  carModel.imgAssetPath =
      "https://images.unsplash.com/photo-1647332951832-3d641d743ea4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=872&q=80";
  carModel.title = "2016 Nissan Livina";
  carModel.price = "10,500 USD";

  carModel.km = "5";
  carModel.modelCode = "Alphard";

  cars.add(carModel);
  carModel = HomeCarsModel(
      modelCode: '',
      price: '',
      imgAssetPath: '',
      km: "5",
      title: '',
      EngineCC: '2400');
  //2
  carModel.imgAssetPath =
      "https://images.unsplash.com/photo-1647332951832-3d641d743ea4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=872&q=80";
  carModel.title = "Car 1";
  carModel.price = "10,500 USD";
  carModel.km = "5";
  carModel.modelCode = "Alphard";

  cars.add(carModel);
  carModel = HomeCarsModel(
      modelCode: '',
      price: '',
      imgAssetPath: '',
      km: "5",
      title: '',
      EngineCC: '2400');
  //3
  carModel.imgAssetPath =
      "https://images.unsplash.com/photo-1647332951832-3d641d743ea4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=872&q=80";
  carModel.title = "Car 2";
  carModel.price = "10,500 USD";

  carModel.km = "5";
  carModel.modelCode = "Alphard";

  cars.add(carModel);
  carModel = HomeCarsModel(
      modelCode: '',
      price: '',
      imgAssetPath: '',
      km: "5",
      title: '',
      EngineCC: '2400');
  //4
  carModel.imgAssetPath =
      "https://images.unsplash.com/photo-1647332951832-3d641d743ea4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=872&q=80";
  carModel.title = "Car 3";
  carModel.price = "10,500 USD";

  carModel.km = "5";
  carModel.modelCode = "Alphard";

  cars.add(carModel);
  carModel = HomeCarsModel(
      modelCode: '',
      price: '',
      imgAssetPath: '',
      km: "5",
      title: '',
      EngineCC: '2400');
  //4
  carModel.imgAssetPath =
      "https://images.unsplash.com/photo-1647332951832-3d641d743ea4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=872&q=80";
  carModel.title = "Car 4";
  carModel.price = "10,500 USD";

  carModel.km = "5";
  carModel.modelCode = "Alphard";

  cars.add(carModel);
  carModel = HomeCarsModel(
      modelCode: '',
      price: '',
      imgAssetPath: '',
      km: "5",
      title: '',
      EngineCC: '2400');
  return cars;
}
