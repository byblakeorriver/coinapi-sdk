import 'package:openapi/api.dart';
import 'package:test/test.dart';

// tests for OrderExecutionReportAllOf
void main() {
    var instance = new OrderExecutionReportAllOf();

  group('test OrderExecutionReportAllOf', () {
    // The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it.
    // String clientOrderIdFormatExchange (default value: null)
    test('to test the property `clientOrderIdFormatExchange`', () async {
      // TODO
    });

    // Unique identifier of the order assigned by the exchange or executing system.
    // String exchangeOrderId (default value: null)
    test('to test the property `exchangeOrderId`', () async {
      // TODO
    });

    // Quantity open for further execution. `amount_open` = `amount_order` - `amount_filled`
    // num amountOpen (default value: null)
    test('to test the property `amountOpen`', () async {
      // TODO
    });

    // Total quantity filled.
    // num amountFilled (default value: null)
    test('to test the property `amountFilled`', () async {
      // TODO
    });

    // Calculated average price of all fills on this order.
    // num avgPx (default value: null)
    test('to test the property `avgPx`', () async {
      // TODO
    });

    // OrdStatus status (default value: null)
    test('to test the property `status`', () async {
      // TODO
    });

    // Timestamped history of order status changes.
    // List<List<String>> statusHistory (default value: [])
    test('to test the property `statusHistory`', () async {
      // TODO
    });

    // Error message.
    // String errorMessage (default value: null)
    test('to test the property `errorMessage`', () async {
      // TODO
    });

    // Relay fill information on working orders.
    // List<Fills> fills (default value: [])
    test('to test the property `fills`', () async {
      // TODO
    });


  });

}
