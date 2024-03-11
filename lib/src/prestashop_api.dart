import 'dart:convert';

import 'package:http/http.dart';
import 'package:loggy/loggy.dart';
import 'package:prestashop_webservice/prestashop_webservice.dart';
import 'package:quiver/core.dart';

/// The class that holds the configuration (prestashop endpoint and apikey) for the client
class PrestashopApiConfig {
  final String apiKey;
  final String webserviceUrl;

  PrestashopApiConfig({required this.apiKey, required this.webserviceUrl});
}

/// The entrypoint for the operations. Wraps a [Client] and provides typed methods
/// to access prestashop entities
class PrestashopApi with UiLoggy {
  final Client _http;

  final PrestashopApiConfig _conf;

  PrestashopApi(this._http, this._conf);

  void close() => _http.close();

  // fetch the list of customers
  Future<List<Customer>> customers() async {
    final payload = await _doGet(
      '${_conf.webserviceUrl}/api/customers?ws_key=${_conf.apiKey}&output_format=JSON&display=full',
    );
    return CustomerResponse.fromJson(payload).items;
  }

  // fetch a single customer, by id
  Future<Optional<Customer>> customer(final int id) async {
    final payload = await _doGet(
      '${_conf.webserviceUrl}/api/customers/$id?ws_key=${_conf.apiKey}&output_format=JSON&display=full',
      single: true,
    );
    return payload == null
        ? Optional.absent()
        : Optional.of(CustomerResponse.fromJson(payload).items.single);
  }

  // fetch the list of categories
  Future<List<Category>> categories() async {
    final payload = await _doGet(
      '${_conf.webserviceUrl}/api/categories?ws_key=${_conf.apiKey}&output_format=JSON&display=full',
    );
    return CategoriesResponse.fromJson(payload).items;
  }

  // fetch a single category, by id
  Future<Optional<Category>> category(final int id) async {
    final payload = await _doGet(
      '${_conf.webserviceUrl}/api/categories/$id?ws_key=${_conf.apiKey}&output_format=JSON&display=full',
      single: true,
    );
    return payload == null
        ? Optional.absent()
        : Optional.of(CategoriesResponse.fromJson(payload).items.single);
  }

  // fetch the list of manufacturers
  Future<List<Manufacturer>> manufacturers() async {
    final payload = await _doGet(
      '${_conf.webserviceUrl}/api/manufacturers?ws_key=${_conf.apiKey}&output_format=JSON&display=full',
    );
    return ManufacturerResponse.fromJson(payload).items;
  }

  // fetch a single manufacturer, by id
  Future<Optional<Manufacturer>> manufacturer(final int id) async {
    final payload = await _doGet(
      '${_conf.webserviceUrl}/api/manufacturers/$id?ws_key=${_conf.apiKey}&output_format=JSON&display=full',
      single: true,
    );
    return payload == null
        ? Optional.absent()
        : Optional.of(
            ManufacturerResponse.fromJson(payload).items.single,
          );
  }

  // fetch the list of supply order states
  Future<List<SupplyOrderState>> supplyOrderStates() async {
    final payload = await _doGet(
      '${_conf.webserviceUrl}/api/supply_order_states?ws_key=${_conf.apiKey}&output_format=JSON&display=full',
    );
    return SupplyOrderStateResponse.fromJson(payload).items;
  }

  // fetch an order state, by id
  Future<List<OrderState>> orderStates() async {
    final payload = await _doGet(
      '${_conf.webserviceUrl}/api/order_states?ws_key=${_conf.apiKey}&output_format=JSON&display=full',
    );
    return OrderStateResponse.fromJson(payload).items;
  }

  // fetch the list of orders
  Future<List<Order>> orders() async {
    final payload = await _doGet(
      '${_conf.webserviceUrl}/api/orders?ws_key=${_conf.apiKey}&output_format=JSON&display=full',
    );

    return OrderResponse.fromJson(payload).items;
  }

  // fetch an order, by id
  Future<Optional<Order>> order(final int id) async {
    final payload = await _doGet(
      '${_conf.webserviceUrl}/api/orders/$id?ws_key=${_conf.apiKey}&output_format=JSON&display=full',
      single: true,
    );
    return payload == null
        ? Optional.absent()
        : Optional.of(OrderResponse.fromJson(payload).items.single);
  }

  // fetch the list of order details
  Future<List<OrderDetail>> orderDetails() async {
    final payload = await _doGet(
      '${_conf.webserviceUrl}/api/order_details?ws_key=${_conf.apiKey}&output_format=JSON&display=full',
    );
    return OrderDetailsResponse.fromJson(payload).items;
  }

  // fetch an order detail, by id
  Future<Optional<OrderDetail>> orderDetail(final int id) async {
    final payload = await _doGet(
      '${_conf.webserviceUrl}/api/order_details/$id?ws_key=${_conf.apiKey}&output_format=JSON&display=full',
      single: true,
    );
    return payload == null
        ? Optional.absent()
        : Optional.of(OrderDetailsResponse.fromJson(payload).items.single);
  }

  // fetch the list of products
  Future<List<Product>> products() async {
    final payload = await _doGet(
      '${_conf.webserviceUrl}/api/products?ws_key=${_conf.apiKey}&output_format=JSON&display=full',
    );
    return ProductsResponse.fromJson(payload).items;
  }

  // fetch a product, by id
  Future<Optional<Product>> product(final int id) async {
    final payload = await _doGet(
      '${_conf.webserviceUrl}/api/products/$id?ws_key=${_conf.apiKey}&output_format=JSON&display=full',
      single: true,
    );
    return payload == null
        ? Optional.absent()
        : Optional.of(ProductsResponse.fromJson(payload).items.single);
  }

  // fetch the list of stocks available
  Future<List<Product>> stocksAvailable() async {
    final payload = await _doGet(
      '${_conf.webserviceUrl}/api/stock_availables?ws_key=${_conf.apiKey}&output_format=JSON&display=full',
    );
    return ProductsResponse.fromJson(payload).items;
  }

  // fetch an available stock, by id
  Future<Optional<Product>> stockAvailable(final int id) async {
    final payload = await _doGet(
      '${_conf.webserviceUrl}/api/stock_availables/$id?ws_key=${_conf.apiKey}&output_format=JSON&display=full',
      single: true,
    );
    return payload == null
        ? Optional.absent()
        : Optional.of(ProductsResponse.fromJson(payload).items.single);
  }

  // fetch the list of specific prices
  Future<List<SpecificPrice>> specificPrices() async {
    final payload = await _doGet(
      '${_conf.webserviceUrl}/api/specific_prices?ws_key=${_conf.apiKey}&output_format=JSON&display=full',
    );
    return SpecificPriceResponse.fromJson(payload).items;
  }

  // fetch a specific price, by id
  Future<Optional<SpecificPrice>> specificPrice(final int id) async {
    final payload = await _doGet(
      '${_conf.webserviceUrl}/api/specific_prices/$id?ws_key=${_conf.apiKey}&output_format=JSON&display=full',
      single: true,
    );
    return payload == null
        ? Optional.absent()
        : Optional.of(SpecificPriceResponse.fromJson(payload).items.single);
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

// An exception that wraps an http error, if during call something goes wrong
class PrestashopApiException implements Exception {
  final Response response;

  PrestashopApiException(this.response);

  @override
  String toString() {
    return '${response.statusCode}: ${response.reasonPhrase}';
  }
}
