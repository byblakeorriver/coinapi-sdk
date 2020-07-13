part of openapi.api;

class ExecutionReportAllOf {
  /* Hash client id */
  String clientOrderIdFormatExchange = null;
  /* Exchange order id */
  String exchangeOrderId = null;
  /* Amount open */
  num amountOpen = null;
  /* Amount filled */
  num amountFilled = null;
  
  OrdStatus status = null;
  //enum statusEnum {  RECEIVED,  ROUTING,  ROUTED,  NEW,  PENDING_CANCEL,  PARTIALLY_FILLED,  FILLED,  CANCELED,  REJECTED,  };{
  /* History of order status changes */
  List<List<String>> timeOrder = [];
  /* Error message */
  String errorMessage = null;
  ExecutionReportAllOf();

  @override
  String toString() {
    return 'ExecutionReportAllOf[clientOrderIdFormatExchange=$clientOrderIdFormatExchange, exchangeOrderId=$exchangeOrderId, amountOpen=$amountOpen, amountFilled=$amountFilled, status=$status, timeOrder=$timeOrder, errorMessage=$errorMessage, ]';
  }

  ExecutionReportAllOf.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    clientOrderIdFormatExchange = json['client_order_id_format_exchange'];
    exchangeOrderId = json['exchange_order_id'];
    amountOpen = json['amount_open'];
    amountFilled = json['amount_filled'];
    status = (json['status'] == null) ?
      null :
      OrdStatus.fromJson(json['status']);
    timeOrder = (json['time_order'] == null) ?
      null :
      List.listFromJson(json['time_order']);
    errorMessage = json['error_message'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (clientOrderIdFormatExchange != null)
      json['client_order_id_format_exchange'] = clientOrderIdFormatExchange;
    if (exchangeOrderId != null)
      json['exchange_order_id'] = exchangeOrderId;
    if (amountOpen != null)
      json['amount_open'] = amountOpen;
    if (amountFilled != null)
      json['amount_filled'] = amountFilled;
    if (status != null)
      json['status'] = status;
    if (timeOrder != null)
      json['time_order'] = timeOrder;
    if (errorMessage != null)
      json['error_message'] = errorMessage;
    return json;
  }

  static List<ExecutionReportAllOf> listFromJson(List<dynamic> json) {
    return json == null ? List<ExecutionReportAllOf>() : json.map((value) => ExecutionReportAllOf.fromJson(value)).toList();
  }

  static Map<String, ExecutionReportAllOf> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ExecutionReportAllOf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ExecutionReportAllOf.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ExecutionReportAllOf-objects as value to a dart map
  static Map<String, List<ExecutionReportAllOf>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ExecutionReportAllOf>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ExecutionReportAllOf.listFromJson(value);
       });
     }
     return map;
  }
}

