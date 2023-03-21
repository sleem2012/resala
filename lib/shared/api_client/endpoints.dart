
abstract class KEndPoints {
   // static String baseUrl = 'https://forall.sa/';
   static String socket = 'https://forall.sa:85';

   static const String baseUrl = 'https://accept.paymob.com/api';
   static const String paymentApiKey =
       "ZXlKaGJHY2lPaUpJVXpVeE1pSXNJblI1Y0NJNklrcFhWQ0o5LmV5SmpiR0Z6Y3lJNklrMWxjbU5vWVc1MElpd2libUZ0WlNJNkltbHVhWFJwWVd3aUxDSndjbTltYVd4bFgzQnJJam8zTWpVM05ETjkuWEs5SlZCUy1lcE5mMy10LW1hcXVUVTZpbmloV2hnQkJ5Z2VLZkV5emhjME4zR3F2S1JSUjZXd1BnR1hrbWRPRFMySWZIbDc5Ui02V09FVHpGR1hnVkE=";
   static const String getAuthToken = '$baseUrl/auth/tokens';
   static const getOrderId = '$baseUrl/ecommerce/orders';
   static const getPaymentRequest = '$baseUrl/acceptance/payment_keys';
   static const getRefCode = '$baseUrl/acceptance/payments/pay';
   static String visaUrl = '$baseUrl/acceptance/iframes/744904?payment_token=$finalToken';
   static String paymentFirstToken = '';

   static String paymentOrderId = '4';

   static String finalToken = '';

   static const int integrationIdCard = 3682800;
   static const String integrationIdKiosk = 'ENTER_YOUR_INTEGRATION_ID';

}
