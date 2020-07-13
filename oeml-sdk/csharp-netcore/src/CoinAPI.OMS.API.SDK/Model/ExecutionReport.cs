/* 
 * OEML - REST API
 *
 * This section will provide necessary information about the `CoinAPI OEML REST API` protocol. 
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
using OpenAPIDateConverter = CoinAPI.OMS.API.SDK.Client.OpenAPIDateConverter;

namespace CoinAPI.OMS.API.SDK.Model
{
    /// <summary>
    /// ExecutionReport
    /// </summary>
    [DataContract]
    public partial class ExecutionReport :  IEquatable<ExecutionReport>, IValidatableObject
    {
        /// <summary>
        /// Gets or Sets Side
        /// </summary>
        [DataMember(Name="side", EmitDefaultValue=false)]
        public OrdSide Side { get; set; }
        /// <summary>
        /// Gets or Sets OrderType
        /// </summary>
        [DataMember(Name="order_type", EmitDefaultValue=false)]
        public OrdType OrderType { get; set; }
        /// <summary>
        /// Gets or Sets TimeInForce
        /// </summary>
        [DataMember(Name="time_in_force", EmitDefaultValue=false)]
        public TimeInForce TimeInForce { get; set; }
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
            MAKERORCANCEL = 1,

            /// <summary>
            /// Enum AUCTIONONLY for value: AUCTION_ONLY
            /// </summary>
            [EnumMember(Value = "AUCTION_ONLY")]
            AUCTIONONLY = 2,

            /// <summary>
            /// Enum INDICATIONOFINTEREST for value: INDICATION_OF_INTEREST
            /// </summary>
            [EnumMember(Value = "INDICATION_OF_INTEREST")]
            INDICATIONOFINTEREST = 3

        }


        /// <summary>
        /// Order execution instructions are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-params-exec\&quot;&gt;OEML / Starter Guide / Order parameters / Execution instructions&lt;/a&gt;
        /// </summary>
        /// <value>Order execution instructions are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-params-exec\&quot;&gt;OEML / Starter Guide / Order parameters / Execution instructions&lt;/a&gt;</value>
        [DataMember(Name="exec_inst", EmitDefaultValue=false)]
        public List<ExecInstEnum> ExecInst { get; set; }
        /// <summary>
        /// Gets or Sets Status
        /// </summary>
        [DataMember(Name="status", EmitDefaultValue=false)]
        public OrdStatus? Status { get; set; }
        /// <summary>
        /// Initializes a new instance of the <see cref="ExecutionReport" /> class.
        /// </summary>
        [JsonConstructorAttribute]
        protected ExecutionReport() { }
        /// <summary>
        /// Initializes a new instance of the <see cref="ExecutionReport" /> class.
        /// </summary>
        /// <param name="exchangeId">Exchange identifier. (required).</param>
        /// <param name="clientOrderId">Unique identifier for the order assigned by the &#x60;OEML API&#x60; client. (required).</param>
        /// <param name="symbolExchange">Exchange symbol. One of the properties (&#x60;symbol_exchange&#x60;, &#x60;symbol_coinapi&#x60;) is required to identify the market for the order..</param>
        /// <param name="symbolCoinapi">CoinAPI symbol. One of the properties (&#x60;symbol_exchange&#x60;, &#x60;symbol_coinapi&#x60;) is required to identify the market for the order..</param>
        /// <param name="amountOrder">Order quantity. (required).</param>
        /// <param name="price">Order price. (required).</param>
        /// <param name="side">side (required).</param>
        /// <param name="orderType">orderType (required).</param>
        /// <param name="timeInForce">timeInForce (required).</param>
        /// <param name="expireTime">Expiration time. Conditionaly required for orders with time_in_force &#x3D; &#x60;GOOD_TILL_TIME_EXCHANGE&#x60; or &#x60;GOOD_TILL_TIME_OEML&#x60;..</param>
        /// <param name="execInst">Order execution instructions are documented in the separate section: &lt;a href&#x3D;\&quot;#oeml-order-params-exec\&quot;&gt;OEML / Starter Guide / Order parameters / Execution instructions&lt;/a&gt;.</param>
        /// <param name="clientOrderIdFormatExchange">Hash client id.</param>
        /// <param name="exchangeOrderId">Exchange order id.</param>
        /// <param name="amountOpen">Amount open.</param>
        /// <param name="amountFilled">Amount filled.</param>
        /// <param name="status">status.</param>
        /// <param name="timeOrder">History of order status changes.</param>
        /// <param name="errorMessage">Error message.</param>
        public ExecutionReport(string exchangeId = default(string), string clientOrderId = default(string), string symbolExchange = default(string), string symbolCoinapi = default(string), decimal amountOrder = default(decimal), decimal price = default(decimal), OrdSide side = default(OrdSide), OrdType orderType = default(OrdType), TimeInForce timeInForce = default(TimeInForce), DateTime expireTime = default(DateTime), List<ExecInstEnum> execInst = default(List<ExecInstEnum>), string clientOrderIdFormatExchange = default(string), string exchangeOrderId = default(string), decimal amountOpen = default(decimal), decimal amountFilled = default(decimal), OrdStatus? status = default(OrdStatus?), List<List<string>> timeOrder = default(List<List<string>>), string errorMessage = default(string))
        {
            // to ensure "exchangeId" is required (not null)
            this.ExchangeId = exchangeId ?? throw new ArgumentNullException("exchangeId is a required property for ExecutionReport and cannot be null");
            // to ensure "clientOrderId" is required (not null)
            this.ClientOrderId = clientOrderId ?? throw new ArgumentNullException("clientOrderId is a required property for ExecutionReport and cannot be null");
            this.AmountOrder = amountOrder;
            this.Price = price;
            this.Side = side;
            this.OrderType = orderType;
            this.TimeInForce = timeInForce;
            this.SymbolExchange = symbolExchange;
            this.SymbolCoinapi = symbolCoinapi;
            this.ExpireTime = expireTime;
            this.ExecInst = execInst;
            this.ClientOrderIdFormatExchange = clientOrderIdFormatExchange;
            this.ExchangeOrderId = exchangeOrderId;
            this.AmountOpen = amountOpen;
            this.AmountFilled = amountFilled;
            this.Status = status;
            this.TimeOrder = timeOrder;
            this.ErrorMessage = errorMessage;
        }
        
        /// <summary>
        /// Exchange identifier.
        /// </summary>
        /// <value>Exchange identifier.</value>
        [DataMember(Name="exchange_id", EmitDefaultValue=false)]
        public string ExchangeId { get; set; }

        /// <summary>
        /// Unique identifier for the order assigned by the &#x60;OEML API&#x60; client.
        /// </summary>
        /// <value>Unique identifier for the order assigned by the &#x60;OEML API&#x60; client.</value>
        [DataMember(Name="client_order_id", EmitDefaultValue=false)]
        public string ClientOrderId { get; set; }

        /// <summary>
        /// Exchange symbol. One of the properties (&#x60;symbol_exchange&#x60;, &#x60;symbol_coinapi&#x60;) is required to identify the market for the order.
        /// </summary>
        /// <value>Exchange symbol. One of the properties (&#x60;symbol_exchange&#x60;, &#x60;symbol_coinapi&#x60;) is required to identify the market for the order.</value>
        [DataMember(Name="symbol_exchange", EmitDefaultValue=false)]
        public string SymbolExchange { get; set; }

        /// <summary>
        /// CoinAPI symbol. One of the properties (&#x60;symbol_exchange&#x60;, &#x60;symbol_coinapi&#x60;) is required to identify the market for the order.
        /// </summary>
        /// <value>CoinAPI symbol. One of the properties (&#x60;symbol_exchange&#x60;, &#x60;symbol_coinapi&#x60;) is required to identify the market for the order.</value>
        [DataMember(Name="symbol_coinapi", EmitDefaultValue=false)]
        public string SymbolCoinapi { get; set; }

        /// <summary>
        /// Order quantity.
        /// </summary>
        /// <value>Order quantity.</value>
        [DataMember(Name="amount_order", EmitDefaultValue=false)]
        public decimal AmountOrder { get; set; }

        /// <summary>
        /// Order price.
        /// </summary>
        /// <value>Order price.</value>
        [DataMember(Name="price", EmitDefaultValue=false)]
        public decimal Price { get; set; }

        /// <summary>
        /// Expiration time. Conditionaly required for orders with time_in_force &#x3D; &#x60;GOOD_TILL_TIME_EXCHANGE&#x60; or &#x60;GOOD_TILL_TIME_OEML&#x60;.
        /// </summary>
        /// <value>Expiration time. Conditionaly required for orders with time_in_force &#x3D; &#x60;GOOD_TILL_TIME_EXCHANGE&#x60; or &#x60;GOOD_TILL_TIME_OEML&#x60;.</value>
        [DataMember(Name="expire_time", EmitDefaultValue=false)]
        public DateTime ExpireTime { get; set; }

        /// <summary>
        /// Hash client id
        /// </summary>
        /// <value>Hash client id</value>
        [DataMember(Name="client_order_id_format_exchange", EmitDefaultValue=false)]
        public string ClientOrderIdFormatExchange { get; set; }

        /// <summary>
        /// Exchange order id
        /// </summary>
        /// <value>Exchange order id</value>
        [DataMember(Name="exchange_order_id", EmitDefaultValue=false)]
        public string ExchangeOrderId { get; set; }

        /// <summary>
        /// Amount open
        /// </summary>
        /// <value>Amount open</value>
        [DataMember(Name="amount_open", EmitDefaultValue=false)]
        public decimal AmountOpen { get; set; }

        /// <summary>
        /// Amount filled
        /// </summary>
        /// <value>Amount filled</value>
        [DataMember(Name="amount_filled", EmitDefaultValue=false)]
        public decimal AmountFilled { get; set; }

        /// <summary>
        /// History of order status changes
        /// </summary>
        /// <value>History of order status changes</value>
        [DataMember(Name="time_order", EmitDefaultValue=false)]
        public List<List<string>> TimeOrder { get; set; }

        /// <summary>
        /// Error message
        /// </summary>
        /// <value>Error message</value>
        [DataMember(Name="error_message", EmitDefaultValue=false)]
        public string ErrorMessage { get; set; }

        /// <summary>
        /// Returns the string presentation of the object
        /// </summary>
        /// <returns>String presentation of the object</returns>
        public override string ToString()
        {
            var sb = new StringBuilder();
            sb.Append("class ExecutionReport {\n");
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
            sb.Append("  ClientOrderIdFormatExchange: ").Append(ClientOrderIdFormatExchange).Append("\n");
            sb.Append("  ExchangeOrderId: ").Append(ExchangeOrderId).Append("\n");
            sb.Append("  AmountOpen: ").Append(AmountOpen).Append("\n");
            sb.Append("  AmountFilled: ").Append(AmountFilled).Append("\n");
            sb.Append("  Status: ").Append(Status).Append("\n");
            sb.Append("  TimeOrder: ").Append(TimeOrder).Append("\n");
            sb.Append("  ErrorMessage: ").Append(ErrorMessage).Append("\n");
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
            return this.Equals(input as ExecutionReport);
        }

        /// <summary>
        /// Returns true if ExecutionReport instances are equal
        /// </summary>
        /// <param name="input">Instance of ExecutionReport to be compared</param>
        /// <returns>Boolean</returns>
        public bool Equals(ExecutionReport input)
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
                    this.AmountOrder.Equals(input.AmountOrder)
                ) && 
                (
                    this.Price == input.Price ||
                    this.Price.Equals(input.Price)
                ) && 
                (
                    this.Side == input.Side ||
                    this.Side.Equals(input.Side)
                ) && 
                (
                    this.OrderType == input.OrderType ||
                    this.OrderType.Equals(input.OrderType)
                ) && 
                (
                    this.TimeInForce == input.TimeInForce ||
                    this.TimeInForce.Equals(input.TimeInForce)
                ) && 
                (
                    this.ExpireTime == input.ExpireTime ||
                    (this.ExpireTime != null &&
                    this.ExpireTime.Equals(input.ExpireTime))
                ) && 
                (
                    this.ExecInst == input.ExecInst ||
                    this.ExecInst.SequenceEqual(input.ExecInst)
                ) && 
                (
                    this.ClientOrderIdFormatExchange == input.ClientOrderIdFormatExchange ||
                    (this.ClientOrderIdFormatExchange != null &&
                    this.ClientOrderIdFormatExchange.Equals(input.ClientOrderIdFormatExchange))
                ) && 
                (
                    this.ExchangeOrderId == input.ExchangeOrderId ||
                    (this.ExchangeOrderId != null &&
                    this.ExchangeOrderId.Equals(input.ExchangeOrderId))
                ) && 
                (
                    this.AmountOpen == input.AmountOpen ||
                    this.AmountOpen.Equals(input.AmountOpen)
                ) && 
                (
                    this.AmountFilled == input.AmountFilled ||
                    this.AmountFilled.Equals(input.AmountFilled)
                ) && 
                (
                    this.Status == input.Status ||
                    this.Status.Equals(input.Status)
                ) && 
                (
                    this.TimeOrder == input.TimeOrder ||
                    this.TimeOrder != null &&
                    input.TimeOrder != null &&
                    this.TimeOrder.SequenceEqual(input.TimeOrder)
                ) && 
                (
                    this.ErrorMessage == input.ErrorMessage ||
                    (this.ErrorMessage != null &&
                    this.ErrorMessage.Equals(input.ErrorMessage))
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
                hashCode = hashCode * 59 + this.AmountOrder.GetHashCode();
                hashCode = hashCode * 59 + this.Price.GetHashCode();
                hashCode = hashCode * 59 + this.Side.GetHashCode();
                hashCode = hashCode * 59 + this.OrderType.GetHashCode();
                hashCode = hashCode * 59 + this.TimeInForce.GetHashCode();
                if (this.ExpireTime != null)
                    hashCode = hashCode * 59 + this.ExpireTime.GetHashCode();
                hashCode = hashCode * 59 + this.ExecInst.GetHashCode();
                if (this.ClientOrderIdFormatExchange != null)
                    hashCode = hashCode * 59 + this.ClientOrderIdFormatExchange.GetHashCode();
                if (this.ExchangeOrderId != null)
                    hashCode = hashCode * 59 + this.ExchangeOrderId.GetHashCode();
                hashCode = hashCode * 59 + this.AmountOpen.GetHashCode();
                hashCode = hashCode * 59 + this.AmountFilled.GetHashCode();
                hashCode = hashCode * 59 + this.Status.GetHashCode();
                if (this.TimeOrder != null)
                    hashCode = hashCode * 59 + this.TimeOrder.GetHashCode();
                if (this.ErrorMessage != null)
                    hashCode = hashCode * 59 + this.ErrorMessage.GetHashCode();
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
