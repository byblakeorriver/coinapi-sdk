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


class OrderCancelAllRequest(object):
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
        'exchange_id': 'str'
    }

    attribute_map = {
        'exchange_id': 'exchange_id'
    }

    def __init__(self, exchange_id=None, local_vars_configuration=None):  # noqa: E501
        """OrderCancelAllRequest - a model defined in OpenAPI"""  # noqa: E501
        if local_vars_configuration is None:
            local_vars_configuration = Configuration()
        self.local_vars_configuration = local_vars_configuration

        self._exchange_id = None
        self.discriminator = None

        self.exchange_id = exchange_id

    @property
    def exchange_id(self):
        """Gets the exchange_id of this OrderCancelAllRequest.  # noqa: E501

        Identifier of the exchange from which active orders should be canceled.  # noqa: E501

        :return: The exchange_id of this OrderCancelAllRequest.  # noqa: E501
        :rtype: str
        """
        return self._exchange_id

    @exchange_id.setter
    def exchange_id(self, exchange_id):
        """Sets the exchange_id of this OrderCancelAllRequest.

        Identifier of the exchange from which active orders should be canceled.  # noqa: E501

        :param exchange_id: The exchange_id of this OrderCancelAllRequest.  # noqa: E501
        :type: str
        """
        if self.local_vars_configuration.client_side_validation and exchange_id is None:  # noqa: E501
            raise ValueError("Invalid value for `exchange_id`, must not be `None`")  # noqa: E501

        self._exchange_id = exchange_id

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
        if not isinstance(other, OrderCancelAllRequest):
            return False

        return self.to_dict() == other.to_dict()

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        if not isinstance(other, OrderCancelAllRequest):
            return True

        return self.to_dict() != other.to_dict()
