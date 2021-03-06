# coding: utf-8

"""
    OEML - REST API

    This section will provide necessary information about the `CoinAPI OEML REST API` protocol. This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>         # noqa: E501

    The version of the OpenAPI document: v1
    Contact: support@coinapi.io
    Generated by: https://openapi-generator.tech
"""


from __future__ import absolute_import

import unittest
import datetime

import openapi_client
from openapi_client.models.order_execution_report_all_of import OrderExecutionReportAllOf  # noqa: E501
from openapi_client.rest import ApiException

class TestOrderExecutionReportAllOf(unittest.TestCase):
    """OrderExecutionReportAllOf unit test stubs"""

    def setUp(self):
        pass

    def tearDown(self):
        pass

    def make_instance(self, include_optional):
        """Test OrderExecutionReportAllOf
            include_option is a boolean, when False only required
            params are included, when True both required and
            optional params are included """
        # model = openapi_client.models.order_execution_report_all_of.OrderExecutionReportAllOf()  # noqa: E501
        if include_optional :
            return OrderExecutionReportAllOf(
                client_order_id_format_exchange = 'f81211e2-27c4-b86a-8143-01088ba9222c', 
                exchange_order_id = '3456456754', 
                amount_open = 0.22, 
                amount_filled = 0.0, 
                avg_px = 0.0783, 
                status = 'RECEIVED', 
                status_history = [
                    [
                        '[["RECEIVED","2020-05-27T11:16:20.1677709Z"],["REJECTED","2020-05-27T11:16:20.1677710Z"]]'
                        ]
                    ], 
                error_message = '{"result":"error","reason":"InsufficientFunds","message":"Failed to place buy order on symbol 'BTCUSD' for price $7,000.00 and quantity 0.22 BTC due to insufficient funds"}', 
                fills = [
                    openapi_client.models.relay_fill_information_on_working_orders/.Relay fill information on working orders.(
                        time = 2020-01-01T10:45:20.1677709Z, 
                        price = 10799.2, 
                        amount = 0.002, )
                    ]
            )
        else :
            return OrderExecutionReportAllOf(
                client_order_id_format_exchange = 'f81211e2-27c4-b86a-8143-01088ba9222c',
                amount_open = 0.22,
                amount_filled = 0.0,
                status = 'RECEIVED',
        )

    def testOrderExecutionReportAllOf(self):
        """Test OrderExecutionReportAllOf"""
        inst_req_only = self.make_instance(include_optional=False)
        inst_req_and_optional = self.make_instance(include_optional=True)


if __name__ == '__main__':
    unittest.main()
