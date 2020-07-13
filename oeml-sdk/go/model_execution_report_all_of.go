/*
 * OEML - REST API
 *
 * This section will provide necessary information about the `CoinAPI OEML REST API` protocol. 
 *
 * API version: v1
 * Generated by: OpenAPI Generator (https://openapi-generator.tech)
 */

package openapi
// ExecutionReportAllOf struct for ExecutionReportAllOf
type ExecutionReportAllOf struct {
	// Hash client id
	ClientOrderIdFormatExchange string `json:"client_order_id_format_exchange,omitempty"`
	// Exchange order id
	ExchangeOrderId string `json:"exchange_order_id,omitempty"`
	// Amount open
	AmountOpen float32 `json:"amount_open,omitempty"`
	// Amount filled
	AmountFilled float32 `json:"amount_filled,omitempty"`
	Status OrdStatus `json:"status,omitempty"`
	// History of order status changes
	TimeOrder [][]string `json:"time_order,omitempty"`
	// Error message
	ErrorMessage string `json:"error_message,omitempty"`
}
