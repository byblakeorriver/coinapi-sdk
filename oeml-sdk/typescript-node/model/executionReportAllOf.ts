/**
 * OEML - REST API
 * This section will provide necessary information about the `CoinAPI OEML REST API` protocol. 
 *
 * The version of the OpenAPI document: v1
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

import { RequestFile } from '../api';
import { OrdStatus } from './ordStatus';

export class ExecutionReportAllOf {
    /**
    * Hash client id
    */
    'clientOrderIdFormatExchange'?: string;
    /**
    * Exchange order id
    */
    'exchangeOrderId'?: string;
    /**
    * Amount open
    */
    'amountOpen'?: number;
    /**
    * Amount filled
    */
    'amountFilled'?: number;
    'status'?: OrdStatus;
    /**
    * History of order status changes
    */
    'timeOrder'?: Array<Array<string>>;
    /**
    * Error message
    */
    'errorMessage'?: string;

    static discriminator: string | undefined = undefined;

    static attributeTypeMap: Array<{name: string, baseName: string, type: string}> = [
        {
            "name": "clientOrderIdFormatExchange",
            "baseName": "client_order_id_format_exchange",
            "type": "string"
        },
        {
            "name": "exchangeOrderId",
            "baseName": "exchange_order_id",
            "type": "string"
        },
        {
            "name": "amountOpen",
            "baseName": "amount_open",
            "type": "number"
        },
        {
            "name": "amountFilled",
            "baseName": "amount_filled",
            "type": "number"
        },
        {
            "name": "status",
            "baseName": "status",
            "type": "OrdStatus"
        },
        {
            "name": "timeOrder",
            "baseName": "time_order",
            "type": "Array<Array<string>>"
        },
        {
            "name": "errorMessage",
            "baseName": "error_message",
            "type": "string"
        }    ];

    static getAttributeTypeMap() {
        return ExecutionReportAllOf.attributeTypeMap;
    }
}

