
abstract class KEndPoints {
   static const String baseUrl = 'https://resala-app.net/api';

   // static const String baseUrl = 'https://accept.paymob.com/api';
   static const String login = '$baseUrl/login';
   static const String register = '$baseUrl/register';


   static const String paymentApiKey =
       "ZXlKaGJHY2lPaUpJVXpVeE1pSXNJblI1Y0NJNklrcFhWQ0o5LmV5SmpiR0Z6Y3lJNklrMWxjbU5vWVc1MElpd2ljSEp2Wm1sc1pWOXdheUk2TnpJMU56UXpMQ0p1WVcxbElqb2lNVFkzT1RRek9EUXdNQzR4TXpVM056WWlmUS5tUjRDWTJXb3M3Ry1vSEdVV3AteWRFY2hHTG9jd01YTkFzSzJvU3FVUWtrYW5sTUVLbFlZRGVKakpZT3J0TzRPbUtSNUx1UUxBT01mQkdwWVFhN0lzQQ==";
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
