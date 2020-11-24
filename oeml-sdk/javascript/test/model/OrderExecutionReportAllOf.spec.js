/**
 * OEML - REST API
 * This section will provide necessary information about the `CoinAPI OEML REST API` protocol. This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>       
 *
 * The version of the OpenAPI document: v1
 * Contact: support@coinapi.io
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 *
 */

(function(root, factory) {
  if (typeof define === 'function' && define.amd) {
    // AMD.
    define(['expect.js', process.cwd()+'/src/index'], factory);
  } else if (typeof module === 'object' && module.exports) {
    // CommonJS-like environments that support module.exports, like Node.
    factory(require('expect.js'), require(process.cwd()+'/src/index'));
  } else {
    // Browser globals (root is window)
    factory(root.expect, root.OemlRestApi);
  }
}(this, function(expect, OemlRestApi) {
  'use strict';

  var instance;

  beforeEach(function() {
    instance = new OemlRestApi.OrderExecutionReportAllOf();
  });

  var getProperty = function(object, getter, property) {
    // Use getter method if present; otherwise, get the property directly.
    if (typeof object[getter] === 'function')
      return object[getter]();
    else
      return object[property];
  }

  var setProperty = function(object, setter, property, value) {
    // Use setter method if present; otherwise, set the property directly.
    if (typeof object[setter] === 'function')
      object[setter](value);
    else
      object[property] = value;
  }

  describe('OrderExecutionReportAllOf', function() {
    it('should create an instance of OrderExecutionReportAllOf', function() {
      // uncomment below and update the code to test OrderExecutionReportAllOf
      //var instane = new OemlRestApi.OrderExecutionReportAllOf();
      //expect(instance).to.be.a(OemlRestApi.OrderExecutionReportAllOf);
    });

    it('should have the property clientOrderIdFormatExchange (base name: "client_order_id_format_exchange")', function() {
      // uncomment below and update the code to test the property clientOrderIdFormatExchange
      //var instane = new OemlRestApi.OrderExecutionReportAllOf();
      //expect(instance).to.be();
    });

    it('should have the property exchangeOrderId (base name: "exchange_order_id")', function() {
      // uncomment below and update the code to test the property exchangeOrderId
      //var instane = new OemlRestApi.OrderExecutionReportAllOf();
      //expect(instance).to.be();
    });

    it('should have the property amountOpen (base name: "amount_open")', function() {
      // uncomment below and update the code to test the property amountOpen
      //var instane = new OemlRestApi.OrderExecutionReportAllOf();
      //expect(instance).to.be();
    });

    it('should have the property amountFilled (base name: "amount_filled")', function() {
      // uncomment below and update the code to test the property amountFilled
      //var instane = new OemlRestApi.OrderExecutionReportAllOf();
      //expect(instance).to.be();
    });

    it('should have the property avgPx (base name: "avg_px")', function() {
      // uncomment below and update the code to test the property avgPx
      //var instane = new OemlRestApi.OrderExecutionReportAllOf();
      //expect(instance).to.be();
    });

    it('should have the property status (base name: "status")', function() {
      // uncomment below and update the code to test the property status
      //var instane = new OemlRestApi.OrderExecutionReportAllOf();
      //expect(instance).to.be();
    });

    it('should have the property statusHistory (base name: "status_history")', function() {
      // uncomment below and update the code to test the property statusHistory
      //var instane = new OemlRestApi.OrderExecutionReportAllOf();
      //expect(instance).to.be();
    });

    it('should have the property errorMessage (base name: "error_message")', function() {
      // uncomment below and update the code to test the property errorMessage
      //var instane = new OemlRestApi.OrderExecutionReportAllOf();
      //expect(instance).to.be();
    });

    it('should have the property fills (base name: "fills")', function() {
      // uncomment below and update the code to test the property fills
      //var instane = new OemlRestApi.OrderExecutionReportAllOf();
      //expect(instance).to.be();
    });

  });

}));
