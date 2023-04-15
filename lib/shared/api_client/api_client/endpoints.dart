abstract class KEndPoints {
  static const String baseUrl = 'https://resala-app.net/api';

  static const String login = '$baseUrl/login';
  static const String register = '$baseUrl/register';
  static const String humanCases = '$baseUrl/humanCases';
  static const String donationHumanCases = '$baseUrl/donation-humanCase';
  static const String donationPoints = '$baseUrl/donationpoints';
  static const String activities = '$baseUrl/activities';
  static const String allWork = '$baseUrl/all-work';
  static const String settings = '$baseUrl/settings';
  static const String storeMandob = '$baseUrl/store-mandob';
  static const String storeVolunteer = '$baseUrl/store-volunteer';
  static const String monthlyDonations = '$baseUrl/monthly-donations';
  static const String storeDonation = '$baseUrl/store-donation';
  static const String storeRecycle = '$baseUrl/store-recycle';
  static const String recDonations = '$baseUrl/rec-donations';

  //paymob
  static const String paymentBase = 'https://accept.paymob.com/api';

  static const String paymentApiKey =
      "ZXlKaGJHY2lPaUpJVXpVeE1pSXNJblI1Y0NJNklrcFhWQ0o5LmV5SmpiR0Z6Y3lJNklrMWxjbU5vWVc1MElpd2ljSEp2Wm1sc1pWOXdheUk2TnpRME56QTVMQ0p1WVcxbElqb2lhVzVwZEdsaGJDSjkuWVpvWGtDZFdxV2JhM0RiUWNoZm9qMnkwTWFfNXotamdjRFBMSHV2dTV4NnhLZnR2STZqUjVRVXROTDdVVW5OMHBZTzJndUJZRGN6UGJOMGwyVHpaeFE=";
  static const String getAuthToken = '$paymentBase/auth/tokens';
  static const getOrderId = '$paymentBase/ecommerce/orders';
  static const getPaymentRequest = '$paymentBase/acceptance/payment_keys';
  static const getWalletUrl = '$paymentBase/acceptance/payments/pay';
  static String visaUrl =
      '$paymentBase/acceptance/iframes/753199?payment_token=';

  // static String finalToken = '';

  static const int integrationIdCard = 3736268;
  static const int integrationIdWallet = 3737971;
}
