/* 
 * OMS - REST API
 *
 * OMS Project
 *
 * The version of the OpenAPI document: v1
 * 
 * Generated by: https://github.com/openapitools/openapi-generator.git
 */

using System;
using System.Linq;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Runtime.Serialization;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using System.ComponentModel.DataAnnotations;
using OpenAPIDateConverter = CoinAPI.OMS.REST.V1.Client.OpenAPIDateConverter;

namespace CoinAPI.OMS.REST.V1.Model
{
    /// <summary>
    /// NewOrder
    /// </summary>
    [DataContract]
    public partial class NewOrder :  IEquatable<NewOrder>, IValidatableObject
    {
        /// <summary>
        /// Buy or Sell
        /// </summary>
        /// <value>Buy or Sell</value>
        [JsonConverter(typeof(StringEnumConverter))]
        public enum SideEnum
        {
            /// <summary>
            /// Enum BUY for value: BUY
            /// </summary>
            [EnumMember(Value = "BUY")]
            BUY = 1,

            /// <summary>
            /// Enum SELL for value: SELL
            /// </summary>
            [EnumMember(Value = "SELL")]
            SELL = 2

        }

        /// <summary>
        /// Buy or Sell
        /// </summary>
        /// <value>Buy or Sell</value>
        [DataMember(Name="side", EmitDefaultValue=false)]
        public SideEnum? Side { get; set; }
        /// <summary>
        /// The order type.
        /// </summary>
        /// <value>The order type.</value>
        [JsonConverter(typeof(StringEnumConverter))]
        public enum OrderTypeEnum
        {
            /// <summary>
            /// Enum LIMIT for value: LIMIT
            /// </summary>
            [EnumMember(Value = "LIMIT")]
            LIMIT = 1

        }

        /// <summary>
        /// The order type.
        /// </summary>
        /// <value>The order type.</value>
        [DataMember(Name="order_type", EmitDefaultValue=false)]
        public OrderTypeEnum? OrderType { get; set; }
        /// <summary>
        /// Defines ExecInst
        /// </summary>
        [JsonConverter(typeof(StringEnumConverter))]
        public enum ExecInstEnum
        {
            /// <summary>
            /// Enum MAKERORCANCEL for value: MAKER_OR_CANCEL
            /// </summary>
            [EnumMember(Value = "MAKER_OR_CANCEL")]
            MAKERORCANCEL = 1

        }


        /// <summary>
        /// TODO: description exec inst  | Parameter | Description | |- -- -- -- -- --|- -- -- -- -| | &#x60;MAKER_OR_CANCEL&#x60; | Rests on the continuous order book at a specified price. If any quantity can be filled immediately, the entire order is canceled. | ##### Exec inst options  | Exchange | MAKER_OR_CANCEL | | - -- | - -- | | BINANCE | X | | BITFINEX | X | | BITMEX | X | | BLOCKCHAINEXCHANGE | X | | BITSTAMP |  | | COINBASE | X | | GEMINI | X | | KRAKEN | X | | POLONIEX | X | | HITBTC |  | | KRAKENFTS | X | 
        /// </summary>
        /// <value>TODO: description exec inst  | Parameter | Description | |- -- -- -- -- --|- -- -- -- -| | &#x60;MAKER_OR_CANCEL&#x60; | Rests on the continuous order book at a specified price. If any quantity can be filled immediately, the entire order is canceled. | ##### Exec inst options  | Exchange | MAKER_OR_CANCEL | | - -- | - -- | | BINANCE | X | | BITFINEX | X | | BITMEX | X | | BLOCKCHAINEXCHANGE | X | | BITSTAMP |  | | COINBASE | X | | GEMINI | X | | KRAKEN | X | | POLONIEX | X | | HITBTC |  | | KRAKENFTS | X | </value>
        [DataMember(Name="exec_inst", EmitDefaultValue=false)]
        public List<ExecInstEnum> ExecInst { get; set; }
        /// <summary>
        /// Initializes a new instance of the <see cref="NewOrder" /> class.
        /// </summary>
        /// <param name="exchangeId">Exchange name.</param>
        /// <param name="clientOrderId">Client unique identifier for the trade..</param>
        /// <param name="symbolExchange">The symbol of the order..</param>
        /// <param name="symbolCoinapi">The CoinAPI symbol of the order..</param>
        /// <param name="amountOrder">Quoted decimal amount to purchase..</param>
        /// <param name="price">Quoted decimal amount to spend per unit..</param>
        /// <param name="side">Buy or Sell.</param>
        /// <param name="orderType">The order type..</param>
        /// <param name="timeInForce">timeInForce.</param>
        /// <param name="expireTime">Required for orders with time_in_force &#x3D; GOOD_TILL_TIME_EXCHANGE, GOOD_TILL_TIME_OMS.</param>
        /// <param name="execInst">TODO: description exec inst  | Parameter | Description | |- -- -- -- -- --|- -- -- -- -| | &#x60;MAKER_OR_CANCEL&#x60; | Rests on the continuous order book at a specified price. If any quantity can be filled immediately, the entire order is canceled. | ##### Exec inst options  | Exchange | MAKER_OR_CANCEL | | - -- | - -- | | BINANCE | X | | BITFINEX | X | | BITMEX | X | | BLOCKCHAINEXCHANGE | X | | BITSTAMP |  | | COINBASE | X | | GEMINI | X | | KRAKEN | X | | POLONIEX | X | | HITBTC |  | | KRAKENFTS | X | .</param>
        public NewOrder(string exchangeId = default(string), string clientOrderId = default(string), string symbolExchange = default(string), string symbolCoinapi = default(string), decimal amountOrder = default(decimal), decimal price = default(decimal), SideEnum? side = default(SideEnum?), OrderTypeEnum? orderType = default(OrderTypeEnum?), TimeInForce timeInForce = default(TimeInForce), DateTime expireTime = default(DateTime), List<ExecInstEnum> execInst = default(List<ExecInstEnum>))
        {
            this.ExchangeId = exchangeId;
            this.ClientOrderId = clientOrderId;
            this.SymbolExchange = symbolExchange;
            this.SymbolCoinapi = symbolCoinapi;
            this.AmountOrder = amountOrder;
            this.Price = price;
            this.Side = side;
            this.OrderType = orderType;
            this.TimeInForce = timeInForce;
            this.ExpireTime = expireTime;
            this.ExecInst = execInst;
        }
        
        /// <summary>
        /// Exchange name
        /// </summary>
        /// <value>Exchange name</value>
        [DataMember(Name="exchange_id", EmitDefaultValue=false)]
        public string ExchangeId { get; set; }

        /// <summary>
        /// Client unique identifier for the trade.
        /// </summary>
        /// <value>Client unique identifier for the trade.</value>
        [DataMember(Name="client_order_id", EmitDefaultValue=false)]
        public string ClientOrderId { get; set; }

        /// <summary>
        /// The symbol of the order.
        /// </summary>
        /// <value>The symbol of the order.</value>
        [DataMember(Name="symbol_exchange", EmitDefaultValue=false)]
        public string SymbolExchange { get; set; }

        /// <summary>
        /// The CoinAPI symbol of the order.
        /// </summary>
        /// <value>The CoinAPI symbol of the order.</value>
        [DataMember(Name="symbol_coinapi", EmitDefaultValue=false)]
        public string SymbolCoinapi { get; set; }

        /// <summary>
        /// Quoted decimal amount to purchase.
        /// </summary>
        /// <value>Quoted decimal amount to purchase.</value>
        [DataMember(Name="amount_order", EmitDefaultValue=false)]
        public decimal AmountOrder { get; set; }

        /// <summary>
        /// Quoted decimal amount to spend per unit.
        /// </summary>
        /// <value>Quoted decimal amount to spend per unit.</value>
        [DataMember(Name="price", EmitDefaultValue=false)]
        public decimal Price { get; set; }



        /// <summary>
        /// Gets or Sets TimeInForce
        /// </summary>
        [DataMember(Name="time_in_force", EmitDefaultValue=false)]
        public TimeInForce TimeInForce { get; set; }

        /// <summary>
        /// Required for orders with time_in_force &#x3D; GOOD_TILL_TIME_EXCHANGE, GOOD_TILL_TIME_OMS
        /// </summary>
        /// <value>Required for orders with time_in_force &#x3D; GOOD_TILL_TIME_EXCHANGE, GOOD_TILL_TIME_OMS</value>
        [DataMember(Name="expire_time", EmitDefaultValue=false)]
        public DateTime ExpireTime { get; set; }


        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class NewOrder {\n");
            sb.Append("  ExchangeId: ").Append(ExchangeId).Append("\n");
            sb.Append("  ClientOrderId: ").Append(ClientOrderId).Append("\n");
            sb.Append("  SymbolExchange: ").Append(SymbolExchange).Append("\n");
            sb.Append("  SymbolCoinapi: ").Append(SymbolCoinapi).Append("\n");
            sb.Append("  AmountOrder: ").Append(AmountOrder).Append("\n");
            sb.Append("  Price: ").Append(Price).Append("\n");
            sb.Append("  Side: ").Append(Side).Append("\n");
            sb.Append("  OrderType: ").Append(OrderType).Append("\n");
            sb.Append("  TimeInForce: ").Append(TimeInForce).Append("\n");
            sb.Append("  ExpireTime: ").Append(ExpireTime).Append("\n");
            sb.Append("  ExecInst: ").Append(ExecInst).Append("\n");
            sb.Append("}\n");
            return sb.ToString();
        }
  
        /// <summary>
        /// Returns the JSON string presentation of the object
        /// </summary>
        /// <returns>JSON string presentation of the object</returns>
        public virtual string ToJson()
        {
            return JsonConvert.SerializeObject(this, Formatting.Indented);
        }

        /// <summary>
        /// Returns true if objects are equal
        /// </summary>
        /// <param name="input">Object to be compared</param>
        /// <returns>Boolean</returns>
        public override bool Equals(object input)
        {
            return this.Equals(input as NewOrder);
        }

        /// <summary>
        /// Returns true if NewOrder instances are equal
        /// </summary>
        /// <param name="input">Instance of NewOrder to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(NewOrder input)
        {
            if (input == null)
                return false;

            return 
                (
                    this.ExchangeId == input.ExchangeId ||
                    (this.ExchangeId != null &&
                    this.ExchangeId.Equals(input.ExchangeId))
                ) && 
                (
                    this.ClientOrderId == input.ClientOrderId ||
                    (this.ClientOrderId != null &&
                    this.ClientOrderId.Equals(input.ClientOrderId))
                ) && 
                (
                    this.SymbolExchange == input.SymbolExchange ||
                    (this.SymbolExchange != null &&
                    this.SymbolExchange.Equals(input.SymbolExchange))
                ) && 
                (
                    this.SymbolCoinapi == input.SymbolCoinapi ||
                    (this.SymbolCoinapi != null &&
                    this.SymbolCoinapi.Equals(input.SymbolCoinapi))
                ) && 
                (
                    this.AmountOrder == input.AmountOrder ||
                    (this.AmountOrder != null &&
                    this.AmountOrder.Equals(input.AmountOrder))
                ) && 
                (
                    this.Price == input.Price ||
                    (this.Price != null &&
                    this.Price.Equals(input.Price))
                ) && 
                (
                    this.Side == input.Side ||
                    (this.Side != null &&
                    this.Side.Equals(input.Side))
                ) && 
                (
                    this.OrderType == input.OrderType ||
                    (this.OrderType != null &&
                    this.OrderType.Equals(input.OrderType))
                ) && 
                (
                    this.TimeInForce == input.TimeInForce ||
                    (this.TimeInForce != null &&
                    this.TimeInForce.Equals(input.TimeInForce))
                ) && 
                (
                    this.ExpireTime == input.ExpireTime ||
                    (this.ExpireTime != null &&
                    this.ExpireTime.Equals(input.ExpireTime))
                ) && 
                (
                    this.ExecInst == input.ExecInst ||
                    this.ExecInst != null &&
                    input.ExecInst != null &&
                    this.ExecInst.SequenceEqual(input.ExecInst)
                );
        }

        /// <summary>
        /// Gets the hash code
        /// </summary>
        /// <returns>Hash code</returns>
        public override int GetHashCode()
        {
            unchecked // Overflow is fine, just wrap
            {
                int hashCode = 41;
                if (this.ExchangeId != null)
                    hashCode = hashCode * 59 + this.ExchangeId.GetHashCode();
                if (this.ClientOrderId != null)
                    hashCode = hashCode * 59 + this.ClientOrderId.GetHashCode();
                if (this.SymbolExchange != null)
                    hashCode = hashCode * 59 + this.SymbolExchange.GetHashCode();
                if (this.SymbolCoinapi != null)
                    hashCode = hashCode * 59 + this.SymbolCoinapi.GetHashCode();
                if (this.AmountOrder != null)
                    hashCode = hashCode * 59 + this.AmountOrder.GetHashCode();
                if (this.Price != null)
                    hashCode = hashCode * 59 + this.Price.GetHashCode();
                if (this.Side != null)
                    hashCode = hashCode * 59 + this.Side.GetHashCode();
                if (this.OrderType != null)
                    hashCode = hashCode * 59 + this.OrderType.GetHashCode();
                if (this.TimeInForce != null)
                    hashCode = hashCode * 59 + this.TimeInForce.GetHashCode();
                if (this.ExpireTime != null)
                    hashCode = hashCode * 59 + this.ExpireTime.GetHashCode();
                if (this.ExecInst != null)
                    hashCode = hashCode * 59 + this.ExecInst.GetHashCode();
                return hashCode;
            }
        }

        /// <summary>
        /// To validate all properties of the instance
        /// </summary>
        /// <param name="validationContext">Validation context</param>
        /// <returns>Validation Result</returns>
        IEnumerable<System.ComponentModel.DataAnnotations.ValidationResult> IValidatableObject.Validate(ValidationContext validationContext)
        {
            yield break;
        }
    }

}