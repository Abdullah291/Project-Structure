

import 'package:resident/core/helper/assets_helper.dart';

class HomeGridViewModel{
  HomeGridViewModel({required this.image,required this.title});
  final String image;
  final String title;
}


List<HomeGridViewModel> homeModel=[
  HomeGridViewModel(image: maintenanceImage,title: "Maintenance Request"),
  HomeGridViewModel(image: amenityImage,title: "Amenity Booking"),
  HomeGridViewModel(image: documentImage,title: "Documents & Forms"),
  HomeGridViewModel(image: keysImage,title: "My keys"),
  HomeGridViewModel(image: parcelsImage,title: "My Parcels"),
  HomeGridViewModel(image: noticeBoardImage,title: "Notice Board"),
  HomeGridViewModel(image: businessImage,title: "Business Directory"),
  HomeGridViewModel(image: staffImage,title: "Staff Members"),
  HomeGridViewModel(image: messageImage,title: "Messages"),
];