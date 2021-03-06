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


class Fills(object):
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
        'time': 'date',
        'price': 'float',
        'amount': 'float'
    }

    attribute_map = {
        'time': 'time',
        'price': 'price',
        'amount': 'amount'
    }

    def __init__(self, time=None, price=None, amount=None, local_vars_configuration=None):  # noqa: E501
        """Fills - a model defined in OpenAPI"""  # noqa: E501
        if local_vars_configuration is None:
            local_vars_configuration = Configuration()
        self.local_vars_configuration = local_vars_configuration

        self._time = None
        self._price = None
        self._amount = None
        self.discriminator = None

        if time is not None:
            self.time = time
        if price is not None:
            self.price = price
        if amount is not None:
            self.amount = amount

    @property
    def time(self):
        """Gets the time of this Fills.  # noqa: E501

        Execution time.  # noqa: E501

        :return: The time of this Fills.  # noqa: E501
        :rtype: date
        """
        return self._time

    @time.setter
    def time(self, time):
        """Sets the time of this Fills.

        Execution time.  # noqa: E501

        :param time: The time of this Fills.  # noqa: E501
        :type: date
        """

        self._time = time

    @property
    def price(self):
        """Gets the price of this Fills.  # noqa: E501

        Execution price.  # noqa: E501

        :return: The price of this Fills.  # noqa: E501
        :rtype: float
        """
        return self._price

    @price.setter
    def price(self, price):
        """Sets the price of this Fills.

        Execution price.  # noqa: E501

        :param price: The price of this Fills.  # noqa: E501
        :type: float
        """

        self._price = price

    @property
    def amount(self):
        """Gets the amount of this Fills.  # noqa: E501

        Executed quantity.  # noqa: E501

        :return: The amount of this Fills.  # noqa: E501
        :rtype: float
        """
        return self._amount

    @amount.setter
    def amount(self, amount):
        """Sets the amount of this Fills.

        Executed quantity.  # noqa: E501

        :param amount: The amount of this Fills.  # noqa: E501
        :type: float
        """

        self._amount = amount

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
        if not isinstance(other, Fills):
            return False

        return self.to_dict() == other.to_dict()

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        if not isinstance(other, Fills):
            return True

        return self.to_dict() != other.to_dict()
