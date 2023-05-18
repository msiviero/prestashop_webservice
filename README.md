
A dart package for reading data from prestashop webservices 

## Usage

```dart
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

```
## Development
This package uses the *build_runner* package to generate the json parsing implementation. Before running / compiling the code is important to run the generator. See [json_serializable package docs](https://pub.dev/packages/json_serializable#running-the-code-generator).

## Additional information and warning

This package is at a really early development phase and may not include the prestahop entity to search for or be suitable for production

