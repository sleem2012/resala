import 'package:get/get.dart';
import 'package:resala/data/models/general/card_items_model.dart';
import 'package:resala/views/donation_faces/donation_faces_screen.dart';
import 'package:resala/views/form_screens/monthly_donation_screen.dart';
import 'package:resala/views/form_screens/volunteering_form_screen.dart';
import 'package:resala/views/mandop/mandop_screen.dart';

import '../../form_screens/recycle_form_screen.dart';

class CardsList {
  static List<CardItemsModel> cards = [
    CardItemsModel(
        image: "assets/image/digital_donation.png",
        title: "التبرع الإلكتروني",
        btnTitle: "أضف تبرع",
        desc: "بعض الجمل التفصيلية عن فكرة التبرع الإلكتروني للجمعية",
        onPressed: () {}),
    CardItemsModel(
        image: "assets/image/mandop.png",
        title: "طلب مندوب تحصيل",
        btnTitle: "طلب مندوب",
        desc: "بعض الجمل التفصيلية عن فكرة التبرع الإلكتروني للجمعية",
        onPressed: () {
          return Get.to(() => const MandopScreen());
        }),
    CardItemsModel(
      image: "assets/image/donation_faces.png",
      title: "أوجه التبرع",
      btnTitle: "اعرف المزيد",
      desc: "بعض الجمل التفصيلية عن فكرة التبرع الإلكتروني للجمعية",
      onPressed: () {
        return Get.to(() => const DonationFacesScreen());
      },
    ),
    CardItemsModel(
        image: "assets/image/recycle.png",
        title: "نشاط الريسايكل",
        btnTitle: "اعرف المزيد",
        desc: "بعض الجمل التفصيلية عن فكرة التبرع الإلكتروني للجمعية",
        onPressed: () {
          return Get.to(() => const RecycleFormScreen());
        }),
    CardItemsModel(
        image: "assets/image/monthly_donation.png",
        title: "استمارة تبرع شهري",
        btnTitle: "اطلب استمارة",
        desc: "بعض الجمل التفصيلية عن فكرة التبرع الإلكتروني للجمعية",
        onPressed: () {
          return Get.to(() => const MonthlyDonationScreen());
        }),
    CardItemsModel(
        image: "assets/image/volunteering.png",
        title: "استمارة تطوع",
        btnTitle: "اطلب استمارة",
        desc: "بعض الجمل التفصيلية عن فكرة التبرع الإلكتروني للجمعية",
        onPressed: () {
          return Get.to(() => const VolunteeringFormScreen());
        }),
  ];
}
