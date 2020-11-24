# coding: utf-8

"""
    OEML - REST API

    This section will provide necessary information about the `CoinAPI OEML REST API` protocol. This API is also available in the Postman application: <a href=\"https://postman.coinapi.io/\" target=\"_blank\">https://postman.coinapi.io/</a>         # noqa: E501

    The version of the OpenAPI document: v1
    Contact: support@coinapi.io
    Generated by: https://openapi-generator.tech
"""


import pprint
import re  # noqa: F401

import six

from openapi_client.configuration import Configuration


class OrderExecutionReport(object):
    """NOTE: This class is auto generated by OpenAPI Generator.
    Ref: https://openapi-generator.tech

    Do not edit the class manually.
    """

    """
    Attributes:
      openapi_types (dict): The key is attribute name
                            and the value is attribute type.
      attribute_map (dict): The key is attribute name
                            and the value is json key in definition.
    """
    openapi_types = {
        'exchange_id': 'str',
        'client_order_id': 'str',
        'symbol_id_exchange': 'str',
        'symbol_id_coinapi': 'str',
        'amount_order': 'float',
        'price': 'float',
        'side': 'OrdSide',
        'order_type': 'OrdType',
        'time_in_force': 'TimeInForce',
        'expire_time': 'date',
        'exec_inst': 'list[str]',
        'client_order_id_format_exchange': 'str',
        'exchange_order_id': 'str',
        'amount_open': 'float',
        'amount_filled': 'float',
        'avg_px': 'float',
        'status': 'OrdStatus',
        'status_history': 'list[list[str]]',
        'error_message': 'str',
        'fills': 'list[Fills]'
    }

    attribute_map = {
        'exchange_id': 'exchange_id',
        'client_order_id': 'client_order_id',
        'symbol_id_exchange': 'symbol_id_exchange',
        'symbol_id_coinapi': 'symbol_id_coinapi',
        'amount_order': 'amount_order',
        'price': 'price',
        'side': 'side',
        'order_type': 'order_type',
        'time_in_force': 'time_in_force',
        'expire_time': 'expire_time',
        'exec_inst': 'exec_inst',
        'client_order_id_format_exchange': 'client_order_id_format_exchange',
        'exchange_order_id': 'exchange_order_id',
        'amount_open': 'amount_open',
        'amount_filled': 'amount_filled',
        'avg_px': 'avg_px',
        'status': 'status',
        'status_history': 'status_history',
        'error_message': 'error_message',
        'fills': 'fills'
    }

    def __init__(self, exchange_id=None, client_order_id=None, symbol_id_exchange=None, symbol_id_coinapi=None, amount_order=None, price=None, side=None, order_type=None, time_in_force=None, expire_time=None, exec_inst=None, client_order_id_format_exchange=None, exchange_order_id=None, amount_open=None, amount_filled=None, avg_px=None, status=None, status_history=None, error_message=None, fills=None, local_vars_configuration=None):  # noqa: E501
        """OrderExecutionReport - a model defined in OpenAPI"""  # noqa: E501
        if local_vars_configuration is None:
            local_vars_configuration = Configuration()
        self.local_vars_configuration = local_vars_configuration

        self._exchange_id = None
        self._client_order_id = None
        self._symbol_id_exchange = None
        self._symbol_id_coinapi = None
        self._amount_order = None
        self._price = None
        self._side = None
        self._order_type = None
        self._time_in_force = None
        self._expire_time = None
        self._exec_inst = None
        self._client_order_id_format_exchange = None
        self._exchange_order_id = None
        self._amount_open = None
        self._amount_filled = None
        self._avg_px = None
        self._status = None
        self._status_history = None
        self._error_message = None
        self._fills = None
        self.discriminator = None

        self.exchange_id = exchange_id
        self.client_order_id = client_order_id
        if symbol_id_exchange is not None:
            self.symbol_id_exchange = symbol_id_exchange
        if symbol_id_coinapi is not None:
            self.symbol_id_coinapi = symbol_id_coinapi
        self.amount_order = amount_order
        self.price = price
        self.side = side
        self.order_type = order_type
        self.time_in_force = time_in_force
        if expire_time is not None:
            self.expire_time = expire_time
        if exec_inst is not None:
            self.exec_inst = exec_inst
        self.client_order_id_format_exchange = client_order_id_format_exchange
        if exchange_order_id is not None:
            self.exchange_order_id = exchange_order_id
        self.amount_open = amount_open
        self.amount_filled = amount_filled
        if avg_px is not None:
            self.avg_px = avg_px
        self.status = status
        if status_history is not None:
            self.status_history = status_history
        if error_message is not None:
            self.error_message = error_message
        if fills is not None:
            self.fills = fills

    @property
    def exchange_id(self):
        """Gets the exchange_id of this OrderExecutionReport.  # noqa: E501

        Exchange identifier used to identify the routing destination.  # noqa: E501

        :return: The exchange_id of this OrderExecutionReport.  # noqa: E501
        :rtype: str
        """
        return self._exchange_id

    @exchange_id.setter
    def exchange_id(self, exchange_id):
        """Sets the exchange_id of this OrderExecutionReport.

        Exchange identifier used to identify the routing destination.  # noqa: E501

        :param exchange_id: The exchange_id of this OrderExecutionReport.  # noqa: E501
        :type: str
        """
        if self.local_vars_configuration.client_side_validation and exchange_id is None:  # noqa: E501
            raise ValueError("Invalid value for `exchange_id`, must not be `None`")  # noqa: E501

        self._exchange_id = exchange_id

    @property
    def client_order_id(self):
        """Gets the client_order_id of this OrderExecutionReport.  # noqa: E501

        The unique identifier of the order assigned by the client.  # noqa: E501

        :return: The client_order_id of this OrderExecutionReport.  # noqa: E501
        :rtype: str
        """
        return self._client_order_id

    @client_order_id.setter
    def client_order_id(self, client_order_id):
        """Sets the client_order_id of this OrderExecutionReport.

        The unique identifier of the order assigned by the client.  # noqa: E501

        :param client_order_id: The client_order_id of this OrderExecutionReport.  # noqa: E501
        :type: str
        """
        if self.local_vars_configuration.client_side_validation and client_order_id is None:  # noqa: E501
            raise ValueError("Invalid value for `client_order_id`, must not be `None`")  # noqa: E501

        self._client_order_id = client_order_id

    @property
    def symbol_id_exchange(self):
        """Gets the symbol_id_exchange of this OrderExecutionReport.  # noqa: E501

        Exchange symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.  # noqa: E501

        :return: The symbol_id_exchange of this OrderExecutionReport.  # noqa: E501
        :rtype: str
        """
        return self._symbol_id_exchange

    @symbol_id_exchange.setter
    def symbol_id_exchange(self, symbol_id_exchange):
        """Sets the symbol_id_exchange of this OrderExecutionReport.

        Exchange symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.  # noqa: E501

        :param symbol_id_exchange: The symbol_id_exchange of this OrderExecutionReport.  # noqa: E501
        :type: str
        """

        self._symbol_id_exchange = symbol_id_exchange

    @property
    def symbol_id_coinapi(self):
        """Gets the symbol_id_coinapi of this OrderExecutionReport.  # noqa: E501

        CoinAPI symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.  # noqa: E501

        :return: The symbol_id_coinapi of this OrderExecutionReport.  # noqa: E501
        :rtype: str
        """
        return self._symbol_id_coinapi

    @symbol_id_coinapi.setter
    def symbol_id_coinapi(self, symbol_id_coinapi):
        """Sets the symbol_id_coinapi of this OrderExecutionReport.

        CoinAPI symbol. One of the properties (`symbol_id_exchange`, `symbol_id_coinapi`) is required to identify the market for the new order.  # noqa: E501

        :param symbol_id_coinapi: The symbol_id_coinapi of this OrderExecutionReport.  # noqa: E501
        :type: str
        """

        self._symbol_id_coinapi = symbol_id_coinapi

    @property
    def amount_order(self):
        """Gets the amount_order of this OrderExecutionReport.  # noqa: E501

        Order quantity.  # noqa: E501

        :return: The amount_order of this OrderExecutionReport.  # noqa: E501
        :rtype: float
        """
        return self._amount_order

    @amount_order.setter
    def amount_order(self, amount_order):
        """Sets the amount_order of this OrderExecutionReport.

        Order quantity.  # noqa: E501

        :param amount_order: The amount_order of this OrderExecutionReport.  # noqa: E501
        :type: float
        """
        if self.local_vars_configuration.client_side_validation and amount_order is None:  # noqa: E501
            raise ValueError("Invalid value for `amount_order`, must not be `None`")  # noqa: E501

        self._amount_order = amount_order

    @property
    def price(self):
        """Gets the price of this OrderExecutionReport.  # noqa: E501

        Order price.  # noqa: E501

        :return: The price of this OrderExecutionReport.  # noqa: E501
        :rtype: float
        """
        return self._price

    @price.setter
    def price(self, price):
        """Sets the price of this OrderExecutionReport.

        Order price.  # noqa: E501

        :param price: The price of this OrderExecutionReport.  # noqa: E501
        :type: float
        """
        if self.local_vars_configuration.client_side_validation and price is None:  # noqa: E501
            raise ValueError("Invalid value for `price`, must not be `None`")  # noqa: E501

        self._price = price

    @property
    def side(self):
        """Gets the side of this OrderExecutionReport.  # noqa: E501


        :return: The side of this OrderExecutionReport.  # noqa: E501
        :rtype: OrdSide
        """
        return self._side

    @side.setter
    def side(self, side):
        """Sets the side of this OrderExecutionReport.


        :param side: The side of this OrderExecutionReport.  # noqa: E501
        :type: OrdSide
        """
        if self.local_vars_configuration.client_side_validation and side is None:  # noqa: E501
            raise ValueError("Invalid value for `side`, must not be `None`")  # noqa: E501

        self._side = side

    @property
    def order_type(self):
        """Gets the order_type of this OrderExecutionReport.  # noqa: E501


        :return: The order_type of this OrderExecutionReport.  # noqa: E501
        :rtype: OrdType
        """
        return self._order_type

    @order_type.setter
    def order_type(self, order_type):
        """Sets the order_type of this OrderExecutionReport.


        :param order_type: The order_type of this OrderExecutionReport.  # noqa: E501
        :type: OrdType
        """
        if self.local_vars_configuration.client_side_validation and order_type is None:  # noqa: E501
            raise ValueError("Invalid value for `order_type`, must not be `None`")  # noqa: E501

        self._order_type = order_type

    @property
    def time_in_force(self):
        """Gets the time_in_force of this OrderExecutionReport.  # noqa: E501


        :return: The time_in_force of this OrderExecutionReport.  # noqa: E501
        :rtype: TimeInForce
        """
        return self._time_in_force

    @time_in_force.setter
    def time_in_force(self, time_in_force):
        """Sets the time_in_force of this OrderExecutionReport.


        :param time_in_force: The time_in_force of this OrderExecutionReport.  # noqa: E501
        :type: TimeInForce
        """
        if self.local_vars_configuration.client_side_validation and time_in_force is None:  # noqa: E501
            raise ValueError("Invalid value for `time_in_force`, must not be `None`")  # noqa: E501

        self._time_in_force = time_in_force

    @property
    def expire_time(self):
        """Gets the expire_time of this OrderExecutionReport.  # noqa: E501

        Expiration time. Conditionaly required for orders with time_in_force = `GOOD_TILL_TIME_EXCHANGE` or `GOOD_TILL_TIME_OEML`.  # noqa: E501

        :return: The expire_time of this OrderExecutionReport.  # noqa: E501
        :rtype: date
        """
        return self._expire_time

    @expire_time.setter
    def expire_time(self, expire_time):
        """Sets the expire_time of this OrderExecutionReport.

        Expiration time. Conditionaly required for orders with time_in_force = `GOOD_TILL_TIME_EXCHANGE` or `GOOD_TILL_TIME_OEML`.  # noqa: E501

        :param expire_time: The expire_time of this OrderExecutionReport.  # noqa: E501
        :type: date
        """

        self._expire_time = expire_time

    @property
    def exec_inst(self):
        """Gets the exec_inst of this OrderExecutionReport.  # noqa: E501

        Order execution instructions are documented in the separate section: <a href=\"#oeml-order-params-exec\">OEML / Starter Guide / Order parameters / Execution instructions</a>   # noqa: E501

        :return: The exec_inst of this OrderExecutionReport.  # noqa: E501
        :rtype: list[str]
        """
        return self._exec_inst

    @exec_inst.setter
    def exec_inst(self, exec_inst):
        """Sets the exec_inst of this OrderExecutionReport.

        Order execution instructions are documented in the separate section: <a href=\"#oeml-order-params-exec\">OEML / Starter Guide / Order parameters / Execution instructions</a>   # noqa: E501

        :param exec_inst: The exec_inst of this OrderExecutionReport.  # noqa: E501
        :type: list[str]
        """
        allowed_values = ["MAKER_OR_CANCEL", "AUCTION_ONLY", "INDICATION_OF_INTEREST"]  # noqa: E501
        if (self.local_vars_configuration.client_side_validation and
                not set(exec_inst).issubset(set(allowed_values))):  # noqa: E501
            raise ValueError(
                "Invalid values for `exec_inst` [{0}], must be a subset of [{1}]"  # noqa: E501
                .format(", ".join(map(str, set(exec_inst) - set(allowed_values))),  # noqa: E501
                        ", ".join(map(str, allowed_values)))
            )

        self._exec_inst = exec_inst

    @property
    def client_order_id_format_exchange(self):
        """Gets the client_order_id_format_exchange of this OrderExecutionReport.  # noqa: E501

        The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it.  # noqa: E501

        :return: The client_order_id_format_exchange of this OrderExecutionReport.  # noqa: E501
        :rtype: str
        """
        return self._client_order_id_format_exchange

    @client_order_id_format_exchange.setter
    def client_order_id_format_exchange(self, client_order_id_format_exchange):
        """Sets the client_order_id_format_exchange of this OrderExecutionReport.

        The unique identifier of the order assigned by the client converted to the exchange order tag format for the purpose of tracking it.  # noqa: E501

        :param client_order_id_format_exchange: The client_order_id_format_exchange of this OrderExecutionReport.  # noqa: E501
        :type: str
        """
        if self.local_vars_configuration.client_side_validation and client_order_id_format_exchange is None:  # noqa: E501
            raise ValueError("Invalid value for `client_order_id_format_exchange`, must not be `None`")  # noqa: E501

        self._client_order_id_format_exchange = client_order_id_format_exchange

    @property
    def exchange_order_id(self):
        """Gets the exchange_order_id of this OrderExecutionReport.  # noqa: E501

        Unique identifier of the order assigned by the exchange or executing system.  # noqa: E501

        :return: The exchange_order_id of this OrderExecutionReport.  # noqa: E501
        :rtype: str
        """
        return self._exchange_order_id

    @exchange_order_id.setter
    def exchange_order_id(self, exchange_order_id):
        """Sets the exchange_order_id of this OrderExecutionReport.

        Unique identifier of the order assigned by the exchange or executing system.  # noqa: E501

        :param exchange_order_id: The exchange_order_id of this OrderExecutionReport.  # noqa: E501
        :type: str
        """

        self._exchange_order_id = exchange_order_id

    @property
    def amount_open(self):
        """Gets the amount_open of this OrderExecutionReport.  # noqa: E501

        Quantity open for further execution. `amount_open` = `amount_order` - `amount_filled`  # noqa: E501

        :return: The amount_open of this OrderExecutionReport.  # noqa: E501
        :rtype: float
        """
        return self._amount_open

    @amount_open.setter
    def amount_open(self, amount_open):
        """Sets the amount_open of this OrderExecutionReport.

        Quantity open for further execution. `amount_open` = `amount_order` - `amount_filled`  # noqa: E501

        :param amount_open: The amount_open of this OrderExecutionReport.  # noqa: E501
        :type: float
        """
        if self.local_vars_configuration.client_side_validation and amount_open is None:  # noqa: E501
            raise ValueError("Invalid value for `amount_open`, must not be `None`")  # noqa: E501

        self._amount_open = amount_open

    @property
    def amount_filled(self):
        """Gets the amount_filled of this OrderExecutionReport.  # noqa: E501

        Total quantity filled.  # noqa: E501

        :return: The amount_filled of this OrderExecutionReport.  # noqa: E501
        :rtype: float
        """
        return self._amount_filled

    @amount_filled.setter
    def amount_filled(self, amount_filled):
        """Sets the amount_filled of this OrderExecutionReport.

        Total quantity filled.  # noqa: E501

        :param amount_filled: The amount_filled of this OrderExecutionReport.  # noqa: E501
        :type: float
        """
        if self.local_vars_configuration.client_side_validation and amount_filled is None:  # noqa: E501
            raise ValueError("Invalid value for `amount_filled`, must not be `None`")  # noqa: E501

        self._amount_filled = amount_filled

    @property
    def avg_px(self):
        """Gets the avg_px of this OrderExecutionReport.  # noqa: E501

        Calculated average price of all fills on this order.  # noqa: E501

        :return: The avg_px of this OrderExecutionReport.  # noqa: E501
        :rtype: float
        """
        return self._avg_px

    @avg_px.setter
    def avg_px(self, avg_px):
        """Sets the avg_px of this OrderExecutionReport.

        Calculated average price of all fills on this order.  # noqa: E501

        :param avg_px: The avg_px of this OrderExecutionReport.  # noqa: E501
        :type: float
        """

        self._avg_px = avg_px

    @property
    def status(self):
        """Gets the status of this OrderExecutionReport.  # noqa: E501


        :return: The status of this OrderExecutionReport.  # noqa: E501
        :rtype: OrdStatus
        """
        return self._status

    @status.setter
    def status(self, status):
        """Sets the status of this OrderExecutionReport.


        :param status: The status of this OrderExecutionReport.  # noqa: E501
        :type: OrdStatus
        """
        if self.local_vars_configuration.client_side_validation and status is None:  # noqa: E501
            raise ValueError("Invalid value for `status`, must not be `None`")  # noqa: E501

        self._status = status

    @property
    def status_history(self):
        """Gets the status_history of this OrderExecutionReport.  # noqa: E501

        Timestamped history of order status changes.  # noqa: E501

        :return: The status_history of this OrderExecutionReport.  # noqa: E501
        :rtype: list[list[str]]
        """
        return self._status_history

    @status_history.setter
    def status_history(self, status_history):
        """Sets the status_history of this OrderExecutionReport.

        Timestamped history of order status changes.  # noqa: E501

        :param status_history: The status_history of this OrderExecutionReport.  # noqa: E501
        :type: list[list[str]]
        """

        self._status_history = status_history

    @property
    def error_message(self):
        """Gets the error_message of this OrderExecutionReport.  # noqa: E501

        Error message.  # noqa: E501

        :return: The error_message of this OrderExecutionReport.  # noqa: E501
        :rtype: str
        """
        return self._error_message

    @error_message.setter
    def error_message(self, error_message):
        """Sets the error_message of this OrderExecutionReport.

        Error message.  # noqa: E501

        :param error_message: The error_message of this OrderExecutionReport.  # noqa: E501
        :type: str
        """

        self._error_message = error_message

    @property
    def fills(self):
        """Gets the fills of this OrderExecutionReport.  # noqa: E501

        Relay fill information on working orders.  # noqa: E501

        :return: The fills of this OrderExecutionReport.  # noqa: E501
        :rtype: list[Fills]
        """
        return self._fills

    @fills.setter
    def fills(self, fills):
        """Sets the fills of this OrderExecutionReport.

        Relay fill information on working orders.  # noqa: E501

        :param fills: The fills of this OrderExecutionReport.  # noqa: E501
        :type: list[Fills]
        """

        self._fills = fills

    def to_dict(self):
        """Returns the model properties as a dict"""
        result = {}

        for attr, _ in six.iteritems(self.openapi_types):
            value = getattr(self, attr)
            if isinstance(value, list):
                result[attr] = list(map(
                    lambda x: x.to_dict() if hasattr(x, "to_dict") else x,
                    value
                ))
            elif hasattr(value, "to_dict"):
                result[attr] = value.to_dict()
            elif isinstance(value, dict):
                result[attr] = dict(map(
                    lambda item: (item[0], item[1].to_dict())
                    if hasattr(item[1], "to_dict") else item,
                    value.items()
                ))
            else:
                result[attr] = value

        return result

    def to_str(self):
        """Returns the string representation of the model"""
        return pprint.pformat(self.to_dict())

    def __repr__(self):
        """For `print` and `pprint`"""
        return self.to_str()

    def __eq__(self, other):
        """Returns true if both objects are equal"""
        if not isinstance(other, OrderExecutionReport):
            return False

        return self.to_dict() == other.to_dict()

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        if not isinstance(other, OrderExecutionReport):
            return True

        return self.to_dict() != other.to_dict()
