/**
 * @fileoverview AUTOMATICALLY GENERATED service for API.Client.OrdersApi.
 * Do not edit this file by hand or your changes will be lost next time it is
 * generated.
 *
 * This section will provide necessary information about the &#x60;CoinAPI OEML REST API&#x60; protocol. 
 * Version: v1
 * Generated by: org.openapitools.codegen.languages.JavascriptClosureAngularClientCodegen
 */
/**
 * @license MIT
 * https://github.com/coinapi/coinapi-sdk/blob/master/LICENSE
 */

goog.provide('API.Client.OrdersApi');

goog.require('API.Client.CreateOrderValidationError');
goog.require('API.Client.ExecutionReport');
goog.require('API.Client.Message');
goog.require('API.Client.NewOrderSingle');
goog.require('API.Client.OrderCancelAllRequest');
goog.require('API.Client.OrderCancelSingleRequest');

/**
 * @constructor
 * @param {!angular.$http} $http
 * @param {!Object} $httpParamSerializer
 * @param {!angular.$injector} $injector
 * @struct
 */
API.Client.OrdersApi = function($http, $httpParamSerializer, $injector) {
  /** @private {!string} */
  this.basePath_ = $injector.has('OrdersApiBasePath') ?
                   /** @type {!string} */ ($injector.get('OrdersApiBasePath')) :
                   'http://localhost:8080';

  /** @private {!Object<string, string>} */
  this.defaultHeaders_ = $injector.has('OrdersApiDefaultHeaders') ?
                   /** @type {!Object<string, string>} */ (
                       $injector.get('OrdersApiDefaultHeaders')) :
                   {};

  /** @private {!angular.$http} */
  this.http_ = $http;

  /** @package {!Object} */
  this.httpParamSerializer = $injector.get('$httpParamSerializer');
}
API.Client.OrdersApi.$inject = ['$http', '$httpParamSerializer', '$injector'];

/**
 * Cancel all orders
 * This request cancels all open orders across all or single specified exchange.
 * @param {!OrderCancelAllRequest} orderCancelAllRequest 
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!API.Client.Message>}
 */
API.Client.OrdersApi.prototype.v1OrdersCancelAllPost = function(orderCancelAllRequest, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/v1/orders/cancel/all';

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  // verify required parameter 'orderCancelAllRequest' is set
  if (!orderCancelAllRequest) {
    throw new Error('Missing required parameter orderCancelAllRequest when calling v1OrdersCancelAllPost');
  }
  /** @type {!Object} */
  var httpRequestParams = {
    method: 'POST',
    url: path,
    json: true,
    data: orderCancelAllRequest,
        params: queryParameters,
    headers: headerParams
  };

  if (opt_extraHttpRequestParams) {
    httpRequestParams = angular.extend(httpRequestParams, opt_extraHttpRequestParams);
  }

  return (/** @type {?} */ (this.http_))(httpRequestParams);
}

/**
 * Cancel order
 * This request cancels an existing order. The order can be canceled by the client order ID or exchange order ID.
 * @param {!OrderCancelSingleRequest} orderCancelSingleRequest 
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!API.Client.ExecutionReport>}
 */
API.Client.OrdersApi.prototype.v1OrdersCancelPost = function(orderCancelSingleRequest, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/v1/orders/cancel';

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  // verify required parameter 'orderCancelSingleRequest' is set
  if (!orderCancelSingleRequest) {
    throw new Error('Missing required parameter orderCancelSingleRequest when calling v1OrdersCancelPost');
  }
  /** @type {!Object} */
  var httpRequestParams = {
    method: 'POST',
    url: path,
    json: true,
    data: orderCancelSingleRequest,
        params: queryParameters,
    headers: headerParams
  };

  if (opt_extraHttpRequestParams) {
    httpRequestParams = angular.extend(httpRequestParams, opt_extraHttpRequestParams);
  }

  return (/** @type {?} */ (this.http_))(httpRequestParams);
}

/**
 * Get all orders
 * Get all current open orders across all or single specified exchange.
 * @param {!string=} opt_exchangeId Filter the output to the orders from the specific exchange.
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!Array<!API.Client.ExecutionReport>>}
 */
API.Client.OrdersApi.prototype.v1OrdersGet = function(opt_exchangeId, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/v1/orders';

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  if (opt_exchangeId !== undefined) {
    queryParameters['exchange_id'] = opt_exchangeId;
  }

  /** @type {!Object} */
  var httpRequestParams = {
    method: 'GET',
    url: path,
    json: true,
            params: queryParameters,
    headers: headerParams
  };

  if (opt_extraHttpRequestParams) {
    httpRequestParams = angular.extend(httpRequestParams, opt_extraHttpRequestParams);
  }

  return (/** @type {?} */ (this.http_))(httpRequestParams);
}

/**
 * Create new order
 * This request creating new order for the specific exchange.
 * @param {!NewOrderSingle} newOrderSingle 
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!API.Client.ExecutionReport>}
 */
API.Client.OrdersApi.prototype.v1OrdersPost = function(newOrderSingle, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/v1/orders';

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  // verify required parameter 'newOrderSingle' is set
  if (!newOrderSingle) {
    throw new Error('Missing required parameter newOrderSingle when calling v1OrdersPost');
  }
  /** @type {!Object} */
  var httpRequestParams = {
    method: 'POST',
    url: path,
    json: true,
    data: newOrderSingle,
        params: queryParameters,
    headers: headerParams
  };

  if (opt_extraHttpRequestParams) {
    httpRequestParams = angular.extend(httpRequestParams, opt_extraHttpRequestParams);
  }

  return (/** @type {?} */ (this.http_))(httpRequestParams);
}

/**
 * Get order status
 * Get the current order status for the specified order. The requested order can no longer be active.
 * @param {!string} clientOrderId Order Client Id of the order for which the status is requested.
 * @param {!angular.$http.Config=} opt_extraHttpRequestParams Extra HTTP parameters to send.
 * @return {!angular.$q.Promise<!API.Client.ExecutionReport>}
 */
API.Client.OrdersApi.prototype.v1OrdersStatusClientOrderIdGet = function(clientOrderId, opt_extraHttpRequestParams) {
  /** @const {string} */
  var path = this.basePath_ + '/v1/orders/status/{client_order_id}'
      .replace('{' + 'client_order_id' + '}', String(clientOrderId));

  /** @type {!Object} */
  var queryParameters = {};

  /** @type {!Object} */
  var headerParams = angular.extend({}, this.defaultHeaders_);
  // verify required parameter 'clientOrderId' is set
  if (!clientOrderId) {
    throw new Error('Missing required parameter clientOrderId when calling v1OrdersStatusClientOrderIdGet');
  }
  /** @type {!Object} */
  var httpRequestParams = {
    method: 'GET',
    url: path,
    json: true,
            params: queryParameters,
    headers: headerParams
  };

  if (opt_extraHttpRequestParams) {
    httpRequestParams = angular.extend(httpRequestParams, opt_extraHttpRequestParams);
  }

  return (/** @type {?} */ (this.http_))(httpRequestParams);
}
