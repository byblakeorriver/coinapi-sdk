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
 */

#include "OAIOrderExecutionReport_allOf.h"

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QObject>

#include "OAIHelpers.h"

namespace OpenAPI {

OAIOrderExecutionReport_allOf::OAIOrderExecutionReport_allOf(QString json) {
    this->initializeModel();
    this->fromJson(json);
}

OAIOrderExecutionReport_allOf::OAIOrderExecutionReport_allOf() {
    this->initializeModel();
}

OAIOrderExecutionReport_allOf::~OAIOrderExecutionReport_allOf() {}

void OAIOrderExecutionReport_allOf::initializeModel() {

    m_client_order_id_format_exchange_isSet = false;
    m_client_order_id_format_exchange_isValid = false;

    m_exchange_order_id_isSet = false;
    m_exchange_order_id_isValid = false;

    m_amount_open_isSet = false;
    m_amount_open_isValid = false;

    m_amount_filled_isSet = false;
    m_amount_filled_isValid = false;

    m_avg_px_isSet = false;
    m_avg_px_isValid = false;

    m_status_isSet = false;
    m_status_isValid = false;

    m_status_history_isSet = false;
    m_status_history_isValid = false;

    m_error_message_isSet = false;
    m_error_message_isValid = false;

    m_fills_isSet = false;
    m_fills_isValid = false;
}

void OAIOrderExecutionReport_allOf::fromJson(QString jsonString) {
    QByteArray array(jsonString.toStdString().c_str());
    QJsonDocument doc = QJsonDocument::fromJson(array);
    QJsonObject jsonObject = doc.object();
    this->fromJsonObject(jsonObject);
}

void OAIOrderExecutionReport_allOf::fromJsonObject(QJsonObject json) {

    m_client_order_id_format_exchange_isValid = ::OpenAPI::fromJsonValue(client_order_id_format_exchange, json[QString("client_order_id_format_exchange")]);
    m_client_order_id_format_exchange_isSet = !json[QString("client_order_id_format_exchange")].isNull() && m_client_order_id_format_exchange_isValid;

    m_exchange_order_id_isValid = ::OpenAPI::fromJsonValue(exchange_order_id, json[QString("exchange_order_id")]);
    m_exchange_order_id_isSet = !json[QString("exchange_order_id")].isNull() && m_exchange_order_id_isValid;

    m_amount_open_isValid = ::OpenAPI::fromJsonValue(amount_open, json[QString("amount_open")]);
    m_amount_open_isSet = !json[QString("amount_open")].isNull() && m_amount_open_isValid;

    m_amount_filled_isValid = ::OpenAPI::fromJsonValue(amount_filled, json[QString("amount_filled")]);
    m_amount_filled_isSet = !json[QString("amount_filled")].isNull() && m_amount_filled_isValid;

    m_avg_px_isValid = ::OpenAPI::fromJsonValue(avg_px, json[QString("avg_px")]);
    m_avg_px_isSet = !json[QString("avg_px")].isNull() && m_avg_px_isValid;

    m_status_isValid = ::OpenAPI::fromJsonValue(status, json[QString("status")]);
    m_status_isSet = !json[QString("status")].isNull() && m_status_isValid;

    if(json["status_history"].isArray()){
        auto arr = json["status_history"].toArray();
        m_status_history_isValid = true;
        if(arr.count() > 0) {
            for (const QJsonValue jval : arr) {
                QList<QString> item;
                m_status_history_isValid &= ::OpenAPI::fromJsonValue(item, jval);
                m_status_history_isSet = !jval.isNull() && m_status_history_isValid;
                status_history.push_back(item);
            }
        }
    }

    m_error_message_isValid = ::OpenAPI::fromJsonValue(error_message, json[QString("error_message")]);
    m_error_message_isSet = !json[QString("error_message")].isNull() && m_error_message_isValid;

    m_fills_isValid = ::OpenAPI::fromJsonValue(fills, json[QString("fills")]);
    m_fills_isSet = !json[QString("fills")].isNull() && m_fills_isValid;
}

QString OAIOrderExecutionReport_allOf::asJson() const {
    QJsonObject obj = this->asJsonObject();
    QJsonDocument doc(obj);
    QByteArray bytes = doc.toJson();
    return QString(bytes);
}

QJsonObject OAIOrderExecutionReport_allOf::asJsonObject() const {
    QJsonObject obj;
    if (m_client_order_id_format_exchange_isSet) {
        obj.insert(QString("client_order_id_format_exchange"), ::OpenAPI::toJsonValue(client_order_id_format_exchange));
    }
    if (m_exchange_order_id_isSet) {
        obj.insert(QString("exchange_order_id"), ::OpenAPI::toJsonValue(exchange_order_id));
    }
    if (m_amount_open_isSet) {
        obj.insert(QString("amount_open"), ::OpenAPI::toJsonValue(amount_open));
    }
    if (m_amount_filled_isSet) {
        obj.insert(QString("amount_filled"), ::OpenAPI::toJsonValue(amount_filled));
    }
    if (m_avg_px_isSet) {
        obj.insert(QString("avg_px"), ::OpenAPI::toJsonValue(avg_px));
    }
    if (status.isSet()) {
        obj.insert(QString("status"), ::OpenAPI::toJsonValue(status));
    }
    if (status_history.size() > 0) {
        
        obj.insert(QString("status_history"), toJsonValue(status_history));
    }
    if (m_error_message_isSet) {
        obj.insert(QString("error_message"), ::OpenAPI::toJsonValue(error_message));
    }
    if (fills.size() > 0) {
        obj.insert(QString("fills"), ::OpenAPI::toJsonValue(fills));
    }
    return obj;
}

QString OAIOrderExecutionReport_allOf::getClientOrderIdFormatExchange() const {
    return client_order_id_format_exchange;
}
void OAIOrderExecutionReport_allOf::setClientOrderIdFormatExchange(const QString &client_order_id_format_exchange) {
    this->client_order_id_format_exchange = client_order_id_format_exchange;
    this->m_client_order_id_format_exchange_isSet = true;
}

bool OAIOrderExecutionReport_allOf::is_client_order_id_format_exchange_Set() const{
    return m_client_order_id_format_exchange_isSet;
}

bool OAIOrderExecutionReport_allOf::is_client_order_id_format_exchange_Valid() const{
    return m_client_order_id_format_exchange_isValid;
}

QString OAIOrderExecutionReport_allOf::getExchangeOrderId() const {
    return exchange_order_id;
}
void OAIOrderExecutionReport_allOf::setExchangeOrderId(const QString &exchange_order_id) {
    this->exchange_order_id = exchange_order_id;
    this->m_exchange_order_id_isSet = true;
}

bool OAIOrderExecutionReport_allOf::is_exchange_order_id_Set() const{
    return m_exchange_order_id_isSet;
}

bool OAIOrderExecutionReport_allOf::is_exchange_order_id_Valid() const{
    return m_exchange_order_id_isValid;
}

double OAIOrderExecutionReport_allOf::getAmountOpen() const {
    return amount_open;
}
void OAIOrderExecutionReport_allOf::setAmountOpen(const double &amount_open) {
    this->amount_open = amount_open;
    this->m_amount_open_isSet = true;
}

bool OAIOrderExecutionReport_allOf::is_amount_open_Set() const{
    return m_amount_open_isSet;
}

bool OAIOrderExecutionReport_allOf::is_amount_open_Valid() const{
    return m_amount_open_isValid;
}

double OAIOrderExecutionReport_allOf::getAmountFilled() const {
    return amount_filled;
}
void OAIOrderExecutionReport_allOf::setAmountFilled(const double &amount_filled) {
    this->amount_filled = amount_filled;
    this->m_amount_filled_isSet = true;
}

bool OAIOrderExecutionReport_allOf::is_amount_filled_Set() const{
    return m_amount_filled_isSet;
}

bool OAIOrderExecutionReport_allOf::is_amount_filled_Valid() const{
    return m_amount_filled_isValid;
}

double OAIOrderExecutionReport_allOf::getAvgPx() const {
    return avg_px;
}
void OAIOrderExecutionReport_allOf::setAvgPx(const double &avg_px) {
    this->avg_px = avg_px;
    this->m_avg_px_isSet = true;
}

bool OAIOrderExecutionReport_allOf::is_avg_px_Set() const{
    return m_avg_px_isSet;
}

bool OAIOrderExecutionReport_allOf::is_avg_px_Valid() const{
    return m_avg_px_isValid;
}

OAIOrdStatus OAIOrderExecutionReport_allOf::getStatus() const {
    return status;
}
void OAIOrderExecutionReport_allOf::setStatus(const OAIOrdStatus &status) {
    this->status = status;
    this->m_status_isSet = true;
}

bool OAIOrderExecutionReport_allOf::is_status_Set() const{
    return m_status_isSet;
}

bool OAIOrderExecutionReport_allOf::is_status_Valid() const{
    return m_status_isValid;
}

QList<QList<QString>> OAIOrderExecutionReport_allOf::getStatusHistory() const {
    return status_history;
}
void OAIOrderExecutionReport_allOf::setStatusHistory(const QList<QList<QString>> &status_history) {
    this->status_history = status_history;
    this->m_status_history_isSet = true;
}

bool OAIOrderExecutionReport_allOf::is_status_history_Set() const{
    return m_status_history_isSet;
}

bool OAIOrderExecutionReport_allOf::is_status_history_Valid() const{
    return m_status_history_isValid;
}

QString OAIOrderExecutionReport_allOf::getErrorMessage() const {
    return error_message;
}
void OAIOrderExecutionReport_allOf::setErrorMessage(const QString &error_message) {
    this->error_message = error_message;
    this->m_error_message_isSet = true;
}

bool OAIOrderExecutionReport_allOf::is_error_message_Set() const{
    return m_error_message_isSet;
}

bool OAIOrderExecutionReport_allOf::is_error_message_Valid() const{
    return m_error_message_isValid;
}

QList<OAIFills> OAIOrderExecutionReport_allOf::getFills() const {
    return fills;
}
void OAIOrderExecutionReport_allOf::setFills(const QList<OAIFills> &fills) {
    this->fills = fills;
    this->m_fills_isSet = true;
}

bool OAIOrderExecutionReport_allOf::is_fills_Set() const{
    return m_fills_isSet;
}

bool OAIOrderExecutionReport_allOf::is_fills_Valid() const{
    return m_fills_isValid;
}

bool OAIOrderExecutionReport_allOf::isSet() const {
    bool isObjectUpdated = false;
    do {
        if (m_client_order_id_format_exchange_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_exchange_order_id_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_amount_open_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_amount_filled_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (m_avg_px_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (status.isSet()) {
            isObjectUpdated = true;
            break;
        }

        if (status_history.size() > 0) {
            isObjectUpdated = true;
            break;
        }

        if (m_error_message_isSet) {
            isObjectUpdated = true;
            break;
        }

        if (fills.size() > 0) {
            isObjectUpdated = true;
            break;
        }
    } while (false);
    return isObjectUpdated;
}

bool OAIOrderExecutionReport_allOf::isValid() const {
    // only required properties are required for the object to be considered valid
    return m_client_order_id_format_exchange_isValid && m_amount_open_isValid && m_amount_filled_isValid && m_status_isValid && true;
}

} // namespace OpenAPI
