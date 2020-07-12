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

import * as models from './models';

/**
 * Order time in force options are documented in the separate section: <a href=\"#oeml-order-lifecycle\">OEML / Starter Guide / Order parameters / Time in force</a> 
 */
    /**
    * Order time in force options are documented in the separate section: <a href=\"#oeml-order-lifecycle\">OEML / Starter Guide / Order parameters / Time in force</a> 
    */
export enum TimeInForce {
    GOODTILLCANCEL = <any> 'GOOD_TILL_CANCEL',
    GOODTILLTIMEEXCHANGE = <any> 'GOOD_TILL_TIME_EXCHANGE',
    GOODTILLTIMEOMS = <any> 'GOOD_TILL_TIME_OMS',
    FILLORKILL = <any> 'FILL_OR_KILL',
    IMMEDIATEORCANCEL = <any> 'IMMEDIATE_OR_CANCEL'
}
