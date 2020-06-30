/*
 * OMS - REST API
 * Lorem2 Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. ###Lifecycle Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham. ###Lifecycle 2 Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackhama. 
 *
 * The version of the OpenAPI document: v1
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package org.openapitools.client.model;

import java.util.Objects;
import java.util.Arrays;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import org.openapitools.client.model.OrderStatus;
import org.openapitools.client.model.TimeInForce;
import org.threeten.bp.LocalDate;

/**
 * OrderLive
 */
@javax.annotation.Generated(value = "org.openapitools.codegen.languages.JavaClientCodegen", date = "2020-06-30T12:37:39.164Z[Etc/UTC]")
public class OrderLive {
  public static final String SERIALIZED_NAME_TYPE = "type";
  @SerializedName(SERIALIZED_NAME_TYPE)
  private String type;

  public static final String SERIALIZED_NAME_EXCHANGE_ID = "exchange_id";
  @SerializedName(SERIALIZED_NAME_EXCHANGE_ID)
  private String exchangeId;

  public static final String SERIALIZED_NAME_ID = "id";
  @SerializedName(SERIALIZED_NAME_ID)
  private String id;

  public static final String SERIALIZED_NAME_CLIENT_ORDER_ID_FORMAT_EXCHANGE = "client_order_id_format_exchange";
  @SerializedName(SERIALIZED_NAME_CLIENT_ORDER_ID_FORMAT_EXCHANGE)
  private String clientOrderIdFormatExchange;

  public static final String SERIALIZED_NAME_EXCHANGE_ORDER_ID = "exchange_order_id";
  @SerializedName(SERIALIZED_NAME_EXCHANGE_ORDER_ID)
  private String exchangeOrderId;

  public static final String SERIALIZED_NAME_AMOUNT_OPEN = "amount_open";
  @SerializedName(SERIALIZED_NAME_AMOUNT_OPEN)
  private BigDecimal amountOpen;

  public static final String SERIALIZED_NAME_AMOUNT_FILLED = "amount_filled";
  @SerializedName(SERIALIZED_NAME_AMOUNT_FILLED)
  private BigDecimal amountFilled;

  public static final String SERIALIZED_NAME_STATUS = "status";
  @SerializedName(SERIALIZED_NAME_STATUS)
  private OrderStatus status;

  public static final String SERIALIZED_NAME_TIME_ORDER = "time_order";
  @SerializedName(SERIALIZED_NAME_TIME_ORDER)
  private List<List<String>> timeOrder = null;

  public static final String SERIALIZED_NAME_ERROR_MESSAGE = "error_message";
  @SerializedName(SERIALIZED_NAME_ERROR_MESSAGE)
  private String errorMessage;

  public static final String SERIALIZED_NAME_CLIENT_ORDER_ID = "client_order_id";
  @SerializedName(SERIALIZED_NAME_CLIENT_ORDER_ID)
  private String clientOrderId;

  public static final String SERIALIZED_NAME_SYMBOL_EXCHANGE = "symbol_exchange";
  @SerializedName(SERIALIZED_NAME_SYMBOL_EXCHANGE)
  private String symbolExchange;

  public static final String SERIALIZED_NAME_SYMBOL_COINAPI = "symbol_coinapi";
  @SerializedName(SERIALIZED_NAME_SYMBOL_COINAPI)
  private String symbolCoinapi;

  public static final String SERIALIZED_NAME_AMOUNT_ORDER = "amount_order";
  @SerializedName(SERIALIZED_NAME_AMOUNT_ORDER)
  private BigDecimal amountOrder;

  public static final String SERIALIZED_NAME_PRICE = "price";
  @SerializedName(SERIALIZED_NAME_PRICE)
  private BigDecimal price;

  /**
   * Buy or Sell
   */
  @JsonAdapter(SideEnum.Adapter.class)
  public enum SideEnum {
    BUY("BUY"),
    
    SELL("SELL");

    private String value;

    SideEnum(String value) {
      this.value = value;
    }

    public String getValue() {
      return value;
    }

    @Override
    public String toString() {
      return String.valueOf(value);
    }

    public static SideEnum fromValue(String value) {
      for (SideEnum b : SideEnum.values()) {
        if (b.value.equals(value)) {
          return b;
        }
      }
      throw new IllegalArgumentException("Unexpected value '" + value + "'");
    }

    public static class Adapter extends TypeAdapter<SideEnum> {
      @Override
      public void write(final JsonWriter jsonWriter, final SideEnum enumeration) throws IOException {
        jsonWriter.value(enumeration.getValue());
      }

      @Override
      public SideEnum read(final JsonReader jsonReader) throws IOException {
        String value =  jsonReader.nextString();
        return SideEnum.fromValue(value);
      }
    }
  }

  public static final String SERIALIZED_NAME_SIDE = "side";
  @SerializedName(SERIALIZED_NAME_SIDE)
  private SideEnum side;

  /**
   * The order type.
   */
  @JsonAdapter(OrderTypeEnum.Adapter.class)
  public enum OrderTypeEnum {
    LIMIT("LIMIT");

    private String value;

    OrderTypeEnum(String value) {
      this.value = value;
    }

    public String getValue() {
      return value;
    }

    @Override
    public String toString() {
      return String.valueOf(value);
    }

    public static OrderTypeEnum fromValue(String value) {
      for (OrderTypeEnum b : OrderTypeEnum.values()) {
        if (b.value.equals(value)) {
          return b;
        }
      }
      throw new IllegalArgumentException("Unexpected value '" + value + "'");
    }

    public static class Adapter extends TypeAdapter<OrderTypeEnum> {
      @Override
      public void write(final JsonWriter jsonWriter, final OrderTypeEnum enumeration) throws IOException {
        jsonWriter.value(enumeration.getValue());
      }

      @Override
      public OrderTypeEnum read(final JsonReader jsonReader) throws IOException {
        String value =  jsonReader.nextString();
        return OrderTypeEnum.fromValue(value);
      }
    }
  }

  public static final String SERIALIZED_NAME_ORDER_TYPE = "order_type";
  @SerializedName(SERIALIZED_NAME_ORDER_TYPE)
  private OrderTypeEnum orderType;

  public static final String SERIALIZED_NAME_TIME_IN_FORCE = "time_in_force";
  @SerializedName(SERIALIZED_NAME_TIME_IN_FORCE)
  private TimeInForce timeInForce;

  public static final String SERIALIZED_NAME_EXPIRE_TIME = "expire_time";
  @SerializedName(SERIALIZED_NAME_EXPIRE_TIME)
  private LocalDate expireTime = null;

  /**
   * Gets or Sets execInst
   */
  @JsonAdapter(ExecInstEnum.Adapter.class)
  public enum ExecInstEnum {
    MAKER_OR_CANCEL("MAKER_OR_CANCEL");

    private String value;

    ExecInstEnum(String value) {
      this.value = value;
    }

    public String getValue() {
      return value;
    }

    @Override
    public String toString() {
      return String.valueOf(value);
    }

    public static ExecInstEnum fromValue(String value) {
      for (ExecInstEnum b : ExecInstEnum.values()) {
        if (b.value.equals(value)) {
          return b;
        }
      }
      throw new IllegalArgumentException("Unexpected value '" + value + "'");
    }

    public static class Adapter extends TypeAdapter<ExecInstEnum> {
      @Override
      public void write(final JsonWriter jsonWriter, final ExecInstEnum enumeration) throws IOException {
        jsonWriter.value(enumeration.getValue());
      }

      @Override
      public ExecInstEnum read(final JsonReader jsonReader) throws IOException {
        String value =  jsonReader.nextString();
        return ExecInstEnum.fromValue(value);
      }
    }
  }

  public static final String SERIALIZED_NAME_EXEC_INST = "exec_inst";
  @SerializedName(SERIALIZED_NAME_EXEC_INST)
  private List<ExecInstEnum> execInst = null;


  public OrderLive type(String type) {
    
    this.type = type;
    return this;
  }

   /**
   * Result type name
   * @return type
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "updateOrder", value = "Result type name")

  public String getType() {
    return type;
  }


  public void setType(String type) {
    this.type = type;
  }


  public OrderLive exchangeId(String exchangeId) {
    
    this.exchangeId = exchangeId;
    return this;
  }

   /**
   * Exchange name
   * @return exchangeId
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "KRAKEN", value = "Exchange name")

  public String getExchangeId() {
    return exchangeId;
  }


  public void setExchangeId(String exchangeId) {
    this.exchangeId = exchangeId;
  }


  public OrderLive id(String id) {
    
    this.id = id;
    return this;
  }

   /**
   * Client unique identifier for the trade.
   * @return id
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "KPP-222389382-AQ", value = "Client unique identifier for the trade.")

  public String getId() {
    return id;
  }


  public void setId(String id) {
    this.id = id;
  }


  public OrderLive clientOrderIdFormatExchange(String clientOrderIdFormatExchange) {
    
    this.clientOrderIdFormatExchange = clientOrderIdFormatExchange;
    return this;
  }

   /**
   * Hash client id
   * @return clientOrderIdFormatExchange
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "f81211e2-27c4-b86a-8143-01088ba9222c", value = "Hash client id")

  public String getClientOrderIdFormatExchange() {
    return clientOrderIdFormatExchange;
  }


  public void setClientOrderIdFormatExchange(String clientOrderIdFormatExchange) {
    this.clientOrderIdFormatExchange = clientOrderIdFormatExchange;
  }


  public OrderLive exchangeOrderId(String exchangeOrderId) {
    
    this.exchangeOrderId = exchangeOrderId;
    return this;
  }

   /**
   * Exchange order id
   * @return exchangeOrderId
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "90832ASASAS89789-1112", value = "Exchange order id")

  public String getExchangeOrderId() {
    return exchangeOrderId;
  }


  public void setExchangeOrderId(String exchangeOrderId) {
    this.exchangeOrderId = exchangeOrderId;
  }


  public OrderLive amountOpen(BigDecimal amountOpen) {
    
    this.amountOpen = amountOpen;
    return this;
  }

   /**
   * Amount open
   * @return amountOpen
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "0.22", value = "Amount open")

  public BigDecimal getAmountOpen() {
    return amountOpen;
  }


  public void setAmountOpen(BigDecimal amountOpen) {
    this.amountOpen = amountOpen;
  }


  public OrderLive amountFilled(BigDecimal amountFilled) {
    
    this.amountFilled = amountFilled;
    return this;
  }

   /**
   * Amount filled
   * @return amountFilled
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "0.0", value = "Amount filled")

  public BigDecimal getAmountFilled() {
    return amountFilled;
  }


  public void setAmountFilled(BigDecimal amountFilled) {
    this.amountFilled = amountFilled;
  }


  public OrderLive status(OrderStatus status) {
    
    this.status = status;
    return this;
  }

   /**
   * Get status
   * @return status
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public OrderStatus getStatus() {
    return status;
  }


  public void setStatus(OrderStatus status) {
    this.status = status;
  }


  public OrderLive timeOrder(List<List<String>> timeOrder) {
    
    this.timeOrder = timeOrder;
    return this;
  }

  public OrderLive addTimeOrderItem(List<String> timeOrderItem) {
    if (this.timeOrder == null) {
      this.timeOrder = new ArrayList<List<String>>();
    }
    this.timeOrder.add(timeOrderItem);
    return this;
  }

   /**
   * History of order status changes
   * @return timeOrder
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "History of order status changes")

  public List<List<String>> getTimeOrder() {
    return timeOrder;
  }


  public void setTimeOrder(List<List<String>> timeOrder) {
    this.timeOrder = timeOrder;
  }


  public OrderLive errorMessage(String errorMessage) {
    
    this.errorMessage = errorMessage;
    return this;
  }

   /**
   * Error message
   * @return errorMessage
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "{\"result\":\"error\",\"reason\":\"InsufficientFunds\",\"message\":\"Failed to place buy order on symbol 'BTCUSD' for price $7,000.00 and quantity 0.22 BTC due to insufficient funds\"}", value = "Error message")

  public String getErrorMessage() {
    return errorMessage;
  }


  public void setErrorMessage(String errorMessage) {
    this.errorMessage = errorMessage;
  }


  public OrderLive clientOrderId(String clientOrderId) {
    
    this.clientOrderId = clientOrderId;
    return this;
  }

   /**
   * Client unique identifier for the trade.
   * @return clientOrderId
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "KPP-222389382-AQ", value = "Client unique identifier for the trade.")

  public String getClientOrderId() {
    return clientOrderId;
  }


  public void setClientOrderId(String clientOrderId) {
    this.clientOrderId = clientOrderId;
  }


  public OrderLive symbolExchange(String symbolExchange) {
    
    this.symbolExchange = symbolExchange;
    return this;
  }

   /**
   * The symbol of the order.
   * @return symbolExchange
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "BTCUSD", value = "The symbol of the order.")

  public String getSymbolExchange() {
    return symbolExchange;
  }


  public void setSymbolExchange(String symbolExchange) {
    this.symbolExchange = symbolExchange;
  }


  public OrderLive symbolCoinapi(String symbolCoinapi) {
    
    this.symbolCoinapi = symbolCoinapi;
    return this;
  }

   /**
   * The CoinAPI symbol of the order.
   * @return symbolCoinapi
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "KRAKEN_SPOT_BTC_USD", value = "The CoinAPI symbol of the order.")

  public String getSymbolCoinapi() {
    return symbolCoinapi;
  }


  public void setSymbolCoinapi(String symbolCoinapi) {
    this.symbolCoinapi = symbolCoinapi;
  }


  public OrderLive amountOrder(BigDecimal amountOrder) {
    
    this.amountOrder = amountOrder;
    return this;
  }

   /**
   * Quoted decimal amount to purchase.
   * @return amountOrder
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "0.045", value = "Quoted decimal amount to purchase.")

  public BigDecimal getAmountOrder() {
    return amountOrder;
  }


  public void setAmountOrder(BigDecimal amountOrder) {
    this.amountOrder = amountOrder;
  }


  public OrderLive price(BigDecimal price) {
    
    this.price = price;
    return this;
  }

   /**
   * Quoted decimal amount to spend per unit.
   * @return price
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "0.0783", value = "Quoted decimal amount to spend per unit.")

  public BigDecimal getPrice() {
    return price;
  }


  public void setPrice(BigDecimal price) {
    this.price = price;
  }


  public OrderLive side(SideEnum side) {
    
    this.side = side;
    return this;
  }

   /**
   * Buy or Sell
   * @return side
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "BUY", value = "Buy or Sell")

  public SideEnum getSide() {
    return side;
  }


  public void setSide(SideEnum side) {
    this.side = side;
  }


  public OrderLive orderType(OrderTypeEnum orderType) {
    
    this.orderType = orderType;
    return this;
  }

   /**
   * The order type.
   * @return orderType
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(example = "LIMIT", value = "The order type.")

  public OrderTypeEnum getOrderType() {
    return orderType;
  }


  public void setOrderType(OrderTypeEnum orderType) {
    this.orderType = orderType;
  }


  public OrderLive timeInForce(TimeInForce timeInForce) {
    
    this.timeInForce = timeInForce;
    return this;
  }

   /**
   * Get timeInForce
   * @return timeInForce
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")

  public TimeInForce getTimeInForce() {
    return timeInForce;
  }


  public void setTimeInForce(TimeInForce timeInForce) {
    this.timeInForce = timeInForce;
  }


  public OrderLive expireTime(LocalDate expireTime) {
    
    this.expireTime = expireTime;
    return this;
  }

   /**
   * Required for orders with time_in_force &#x3D; GOOD_TILL_TIME_EXCHANGE, GOOD_TILL_TIME_OMS
   * @return expireTime
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "Required for orders with time_in_force = GOOD_TILL_TIME_EXCHANGE, GOOD_TILL_TIME_OMS")

  public LocalDate getExpireTime() {
    return expireTime;
  }


  public void setExpireTime(LocalDate expireTime) {
    this.expireTime = expireTime;
  }


  public OrderLive execInst(List<ExecInstEnum> execInst) {
    
    this.execInst = execInst;
    return this;
  }

  public OrderLive addExecInstItem(ExecInstEnum execInstItem) {
    if (this.execInst == null) {
      this.execInst = new ArrayList<ExecInstEnum>();
    }
    this.execInst.add(execInstItem);
    return this;
  }

   /**
   * TODO: description exec inst  | Parameter | Description | |-----------|--------| | &#x60;MAKER_OR_CANCEL&#x60; | Rests on the continuous order book at a specified price. If any quantity can be filled immediately, the entire order is canceled. | ##### Exec inst options  | Exchange | MAKER_OR_CANCEL | | --- | --- | | BINANCE | X | | BITFINEX | X | | BITMEX | X | | BLOCKCHAINEXCHANGE | X | | BITSTAMP |  | | COINBASE | X | | GEMINI | X | | KRAKEN | X | | POLONIEX | X | | HITBTC |  | | KRAKENFTS | X | 
   * @return execInst
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "TODO: description exec inst  | Parameter | Description | |-----------|--------| | `MAKER_OR_CANCEL` | Rests on the continuous order book at a specified price. If any quantity can be filled immediately, the entire order is canceled. | ##### Exec inst options  | Exchange | MAKER_OR_CANCEL | | --- | --- | | BINANCE | X | | BITFINEX | X | | BITMEX | X | | BLOCKCHAINEXCHANGE | X | | BITSTAMP |  | | COINBASE | X | | GEMINI | X | | KRAKEN | X | | POLONIEX | X | | HITBTC |  | | KRAKENFTS | X | ")

  public List<ExecInstEnum> getExecInst() {
    return execInst;
  }


  public void setExecInst(List<ExecInstEnum> execInst) {
    this.execInst = execInst;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    OrderLive orderLive = (OrderLive) o;
    return Objects.equals(this.type, orderLive.type) &&
        Objects.equals(this.exchangeId, orderLive.exchangeId) &&
        Objects.equals(this.id, orderLive.id) &&
        Objects.equals(this.clientOrderIdFormatExchange, orderLive.clientOrderIdFormatExchange) &&
        Objects.equals(this.exchangeOrderId, orderLive.exchangeOrderId) &&
        Objects.equals(this.amountOpen, orderLive.amountOpen) &&
        Objects.equals(this.amountFilled, orderLive.amountFilled) &&
        Objects.equals(this.status, orderLive.status) &&
        Objects.equals(this.timeOrder, orderLive.timeOrder) &&
        Objects.equals(this.errorMessage, orderLive.errorMessage) &&
        Objects.equals(this.clientOrderId, orderLive.clientOrderId) &&
        Objects.equals(this.symbolExchange, orderLive.symbolExchange) &&
        Objects.equals(this.symbolCoinapi, orderLive.symbolCoinapi) &&
        Objects.equals(this.amountOrder, orderLive.amountOrder) &&
        Objects.equals(this.price, orderLive.price) &&
        Objects.equals(this.side, orderLive.side) &&
        Objects.equals(this.orderType, orderLive.orderType) &&
        Objects.equals(this.timeInForce, orderLive.timeInForce) &&
        Objects.equals(this.expireTime, orderLive.expireTime) &&
        Objects.equals(this.execInst, orderLive.execInst);
  }

  @Override
  public int hashCode() {
    return Objects.hash(type, exchangeId, id, clientOrderIdFormatExchange, exchangeOrderId, amountOpen, amountFilled, status, timeOrder, errorMessage, clientOrderId, symbolExchange, symbolCoinapi, amountOrder, price, side, orderType, timeInForce, expireTime, execInst);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class OrderLive {\n");
    sb.append("    type: ").append(toIndentedString(type)).append("\n");
    sb.append("    exchangeId: ").append(toIndentedString(exchangeId)).append("\n");
    sb.append("    id: ").append(toIndentedString(id)).append("\n");
    sb.append("    clientOrderIdFormatExchange: ").append(toIndentedString(clientOrderIdFormatExchange)).append("\n");
    sb.append("    exchangeOrderId: ").append(toIndentedString(exchangeOrderId)).append("\n");
    sb.append("    amountOpen: ").append(toIndentedString(amountOpen)).append("\n");
    sb.append("    amountFilled: ").append(toIndentedString(amountFilled)).append("\n");
    sb.append("    status: ").append(toIndentedString(status)).append("\n");
    sb.append("    timeOrder: ").append(toIndentedString(timeOrder)).append("\n");
    sb.append("    errorMessage: ").append(toIndentedString(errorMessage)).append("\n");
    sb.append("    clientOrderId: ").append(toIndentedString(clientOrderId)).append("\n");
    sb.append("    symbolExchange: ").append(toIndentedString(symbolExchange)).append("\n");
    sb.append("    symbolCoinapi: ").append(toIndentedString(symbolCoinapi)).append("\n");
    sb.append("    amountOrder: ").append(toIndentedString(amountOrder)).append("\n");
    sb.append("    price: ").append(toIndentedString(price)).append("\n");
    sb.append("    side: ").append(toIndentedString(side)).append("\n");
    sb.append("    orderType: ").append(toIndentedString(orderType)).append("\n");
    sb.append("    timeInForce: ").append(toIndentedString(timeInForce)).append("\n");
    sb.append("    expireTime: ").append(toIndentedString(expireTime)).append("\n");
    sb.append("    execInst: ").append(toIndentedString(execInst)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }

}

