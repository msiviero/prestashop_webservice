import 'dart:convert';

import 'package:http/http.dart';
import 'package:loggy/loggy.dart';
import 'package:prestashop_webservice/prestashop_webservice.dart';
import 'package:quiver/core.dart';

class PrestashopApiConfig {
  final String apiKey;
  final String webserviceUrl;

  PrestashopApiConfig({required this.apiKey, required this.webserviceUrl});
}

class PrestashopApi with UiLoggy {
  final Client _http;

  final PrestashopApiConfig _conf;

  PrestashopApi(this._http, this._conf);

  /* Customers */
  Future<List<Customer>> customers() async {
    final payload = await _doGet(
      '${_conf.webserviceUrl}/api/customers?ws_key=${_conf.apiKey}&output_format=JSON&display=full',
    );
    return CustomerResponse.fromJson(payload).customers;
  }

  Future<Optional<Customer>> customer(final int id) async {
    final payload = await _doGet(
      '${_conf.webserviceUrl}/api/customers/$id?ws_key=${_conf.apiKey}&output_format=JSON&display=full',
      single: true,
    );
    return payload == null
        ? Optional.absent()
        : Optional.of(CustomerResponse.fromJson(payload).customers.single);
  }

  /* Categories */
  Future<List<Category>> categories() async {
    final payload = await _doGet(
      '${_conf.webserviceUrl}/api/categories?ws_key=${_conf.apiKey}&output_format=JSON&display=full',
    );
    return CategoriesResponse.fromJson(payload).categories;
  }

  Future<Optional<Category>> category(final int id) async {
    final payload = await _doGet(
      '${_conf.webserviceUrl}/api/categories/$id?ws_key=${_conf.apiKey}&output_format=JSON&display=full',
      single: true,
    );
    return payload == null
        ? Optional.absent()
        : Optional.of(CategoriesResponse.fromJson(payload).categories.single);
  }

  /* Manufacturers */
  Future<List<Manufacturer>> manufacturers() async {
    final payload = await _doGet(
      '${_conf.webserviceUrl}/api/manufacturers?ws_key=${_conf.apiKey}&output_format=JSON&display=full',
    );
    return ManufacturerResponse.fromJson(payload).manufacturers;
  }

  Future<Optional<Manufacturer>> manufacturer(final int id) async {
    final payload = await _doGet(
      '${_conf.webserviceUrl}/api/manufacturers/$id?ws_key=${_conf.apiKey}&output_format=JSON&display=full',
      single: true,
    );
    return payload == null
        ? Optional.absent()
        : Optional.of(
            ManufacturerResponse.fromJson(payload).manufacturers.single,
          );
  }

  /* Orders */
  Future<List<Order>> orders() async {
    final payload = await _doGet(
      '${_conf.webserviceUrl}/api/orders?ws_key=${_conf.apiKey}&output_format=JSON&display=full',
    );
    return OrderResponse.fromJson(payload).orders;
  }

  Future<Optional<Order>> order(final int id) async {
    final payload = await _doGet(
      '${_conf.webserviceUrl}/api/orders/$id?ws_key=${_conf.apiKey}&output_format=JSON&display=full',
      single: true,
    );
    return payload == null
        ? Optional.absent()
        : Optional.of(OrderResponse.fromJson(payload).orders.single);
  }

  /* Product */
  Future<List<Product>> products() async {
    final payload = await _doGet(
      '${_conf.webserviceUrl}/api/products?ws_key=${_conf.apiKey}&output_format=JSON&display=full',
    );
    return ProductsResponse.fromJson(payload).products;
  }

  Future<Optional<Product>> product(final int id) async {
    final payload = await _doGet(
      '${_conf.webserviceUrl}/api/products/$id?ws_key=${_conf.apiKey}&output_format=JSON&display=full',
      single: true,
    );
    return payload == null
        ? Optional.absent()
        : Optional.of(ProductsResponse.fromJson(payload).products.single);
  }

  /* Specific prices */
  Future<List<SpecificPrice>> specificPrices() async {
    final payload = await _doGet(
      '${_conf.webserviceUrl}/api/specific_prices?ws_key=${_conf.apiKey}&output_format=JSON&display=full',
    );
    return SpecificPriceResponse.fromJson(payload).specificPrices;
  }

  Future<Optional<SpecificPrice>> specificPrice(final int id) async {
    final payload = await _doGet(
      '${_conf.webserviceUrl}/api/specific_prices/$id?ws_key=${_conf.apiKey}&output_format=JSON&display=full',
      single: true,
    );
    return payload == null
        ? Optional.absent()
        : Optional.of(
            SpecificPriceResponse.fromJson(payload).specificPrices.single);
  }

  /* Utility methods */
  Future<dynamic> _doGet(String uri, {bool single = false}) async {
    loggy.debug('Fetching $uri');
    final response = await _http.get(Uri.parse(uri));
    loggy.debug('Received response with code ${response.statusCode}');

    if (single && response.statusCode == 404) {
      return null;
    }
    if (response.statusCode == 200) {
      return jsonDecode(utf8.decode(response.bodyBytes));
    }
    loggy.error(response);
    throw PrestashopApiException(response);
  }
}

class PrestashopApiException implements Exception {
  final Response response;

  PrestashopApiException(this.response);

  @override
  String toString() {
    return '${response.statusCode}: ${response.reasonPhrase}';
  }
}
