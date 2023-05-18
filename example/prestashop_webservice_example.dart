import 'package:http/http.dart';
import 'package:prestashop_webservice/prestashop_webservice.dart';

void main() async {
  final api = PrestashopApi(
      Client(),
      PrestashopApiConfig(
        apiKey: "your-secret-api-key",
        webserviceUrl: "https://example.com",
      ));

  /* Multiple entities */
  final customers = await api.customers();

  for (final customer in customers) {
    print(customer);
  }

  /* Single entity */
  final order = await api.order(7);

  print(order.orNull);
}
