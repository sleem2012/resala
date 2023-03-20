class CardItemsModel {
   String image;
   String title;
   String desc;
  String btnTitle;
    Function() onPressed;


   CardItemsModel( {
    required this.image,
    required this.btnTitle,
    required this.title,
    required this.desc,
    required this.onPressed,
  });
}

