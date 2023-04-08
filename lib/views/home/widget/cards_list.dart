import 'package:resala/data/models/general/card_items_model.dart';
import 'package:resala/shared/cache/storage.dart';
import 'package:resala/views/digital_donation/digital_donation_screen.dart';
import 'package:resala/views/donation_faces/donation_faces_screen.dart';
import 'package:resala/views/form_screens/monthly_donation_screen.dart';
import 'package:resala/views/form_screens/recycle_wrapper.dart';
import 'package:resala/views/form_screens/volunteering_form_screen.dart';
import 'package:resala/views/mandop/mandop_screen.dart';

import '../../../shared/theme/helper.dart';

class CardsList {
  static List<CardItemsModel> cards = [
    CardItemsModel(
        image: KStorage.i.getSetting?.data?.info?.donationImage ?? dummyNetImg,
        title: "التبرع الإلكتروني",
        btnTitle: "أضف تبرع",
        desc: "بعض الجمل التفصيلية عن فكرة التبرع الإلكتروني للجمعية",
        screen: const DigitalDonationScreen()),
    CardItemsModel(
        image: KStorage.i.getSetting?.data?.info?.mandobImage ?? dummyNetImg,
        title: "طلب مندوب تحصيل",
        btnTitle: "طلب مندوب",
        desc: "بعض الجمل التفصيلية عن فكرة التبرع الإلكتروني للجمعية",
        screen: const MandopScreen()),
    CardItemsModel(

        //Todo:add donations faces
        image: KStorage.i.getSetting?.data?.info?.monthlyImage ?? dummyNetImg,
        title: "أوجه التبرع",
        btnTitle: "اعرف المزيد",
        desc: "بعض الجمل التفصيلية عن فكرة التبرع الإلكتروني للجمعية",
        screen: const DonationFacesScreen()),
    CardItemsModel(
        image: KStorage.i.getSetting?.data?.info?.recycleImage ?? dummyNetImg,
        title: "نشاط الريسايكل",
        btnTitle: "اعرف المزيد",
        desc: "بعض الجمل التفصيلية عن فكرة التبرع الإلكتروني للجمعية",
        screen: const RecycleWrapper()),
    CardItemsModel(
        image: KStorage.i.getSetting?.data?.info?.monthlyImage ?? dummyNetImg,
        title: "استمارة تبرع شهري",
        btnTitle: "اطلب استمارة",
        desc: "بعض الجمل التفصيلية عن فكرة التبرع الإلكتروني للجمعية",
        screen: const MonthlyDonationScreen()),
    CardItemsModel(
        image: KStorage.i.getSetting?.data?.info?.volunteerImage ?? dummyNetImg,
        title: "استمارة تطوع",
        btnTitle: "اطلب استمارة",
        desc: "بعض الجمل التفصيلية عن فكرة التبرع الإلكتروني للجمعية",
        screen: const VolunteeringFormScreen()),
  ];
}
