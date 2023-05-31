
import 'package:shoping_1/model/home_model.dart';
import 'package:shoping_1/utils/colors.dart';
import 'package:shoping_1/utils/image.dart';


List<ImageCategoriesModel> imageCategories = [
  ImageCategoriesModel(
      image:AppImage.tops,
      title: 'Tops',
      color: AppColor.redAccent),
  ImageCategoriesModel(
      image: AppImage.beauty,
      title: 'Beauty',
      color:  AppColor.teal),
  ImageCategoriesModel(
      image: AppImage.shoes,
      title: 'Shoes',
      color:  AppColor.grey),
  ImageCategoriesModel(
      image: AppImage.jeans,
      title: 'Jeans',
      color:  AppColor.blueGrey),
  ImageCategoriesModel(
      image: AppImage.bags,
      title: 'Bags',
      color:  AppColor.lightBlue),
  ImageCategoriesModel(
      image: AppImage.tshirt,
      title: 'T-shirts',
      color:  AppColor.tealAccent),
];

List<ImageTshirtModel> imageData = [
  ImageTshirtModel(
      image: AppImage.imagesTshirt1,
      productName: 'Nike Black',
      price: '\$1200'),
  ImageTshirtModel(
      image: AppImage.imagesTshirt2,
      productName: 'Nike White',
      price: '\$1200'),
  ImageTshirtModel(
      image: AppImage.imagesTshirt3,
      productName: 'Adidas White',
      price: '\$1200'),
  ImageTshirtModel(
      image: AppImage.imagesTshirt4,
      productName: 'Adidas Black',
      price: '\$1200'),
];

List<ImageShoeModel> imageShoe = [
  ImageShoeModel(
      image: AppImage.imagesShoe1,
      productName: 'Adidas White',
      price: '\$3200'),
  ImageShoeModel(
      image: AppImage.imagesShoe2,
      productName: 'Nike Red',
      price: '\$4200'),
  ImageShoeModel(
      image: AppImage.imagesShoe3,
      productName: 'Campus White',
      price: '\$1200'),
  ImageShoeModel(
      image: AppImage.imagesShoe4,
      productName: 'Reebok White',
      price: '\$2200'),
];

List<ImageShoeModel> imageRecent = [
  ImageShoeModel(
      image: AppImage.imagesRecent1,
      productName: 'Jim Red Bag',
      price: '\$1200'),
  ImageShoeModel(
      image: AppImage.imagesRecent2,
      productName: 'Levies Black',
      price: '\$1200'),
  ImageShoeModel(
      image: AppImage.imagesRecent3,
      productName: 'Nike Red',
      price: '\$3200'),
  ImageShoeModel(
      image: AppImage.imagesRecent4,
      productName: 'Cross Red',
      price: '\$2200'),
];


