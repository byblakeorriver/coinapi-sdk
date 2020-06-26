/**
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

import io.swagger.annotations.*;
import com.google.gson.annotations.SerializedName;

@ApiModel(description = "")
public class BalanceData {
  
  @SerializedName("id")
  private String id = null;
  @SerializedName("symbol_exchange")
  private String symbolExchange = null;
  @SerializedName("symbol_coinapi")
  private String symbolCoinapi = null;
  @SerializedName("balance")
  private Float balance = null;
  @SerializedName("available")
  private Float available = null;
  @SerializedName("locked")
  private Float locked = null;
  public enum UpdateOriginEnum {
     INITIALIZATION,  BALANCE_MANAGER,  EXCHANGE, 
  };
  @SerializedName("update_origin")
  private UpdateOriginEnum updateOrigin = null;

  /**
   * symbol_exchange
   **/
  @ApiModelProperty(value = "symbol_exchange")
  public String getId() {
    return id;
  }
  public void setId(String id) {
    this.id = id;
  }

  /**
   * Currency code.
   **/
  @ApiModelProperty(value = "Currency code.")
  public String getSymbolExchange() {
    return symbolExchange;
  }
  public void setSymbolExchange(String symbolExchange) {
    this.symbolExchange = symbolExchange;
  }

  /**
   * CoinAPI currency code.
   **/
  @ApiModelProperty(value = "CoinAPI currency code.")
  public String getSymbolCoinapi() {
    return symbolCoinapi;
  }
  public void setSymbolCoinapi(String symbolCoinapi) {
    this.symbolCoinapi = symbolCoinapi;
  }

  /**
   * The current balance.
   **/
  @ApiModelProperty(value = "The current balance.")
  public Float getBalance() {
    return balance;
  }
  public void setBalance(Float balance) {
    this.balance = balance;
  }

  /**
   * The amount that is available to trade.
   **/
  @ApiModelProperty(value = "The amount that is available to trade.")
  public Float getAvailable() {
    return available;
  }
  public void setAvailable(Float available) {
    this.available = available;
  }

  /**
   * Blocked funds.
   **/
  @ApiModelProperty(value = "Blocked funds.")
  public Float getLocked() {
    return locked;
  }
  public void setLocked(Float locked) {
    this.locked = locked;
  }

  /**
   * Source of last modification. 
   **/
  @ApiModelProperty(value = "Source of last modification. ")
  public UpdateOriginEnum getUpdateOrigin() {
    return updateOrigin;
  }
  public void setUpdateOrigin(UpdateOriginEnum updateOrigin) {
    this.updateOrigin = updateOrigin;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    BalanceData balanceData = (BalanceData) o;
    return (this.id == null ? balanceData.id == null : this.id.equals(balanceData.id)) &&
        (this.symbolExchange == null ? balanceData.symbolExchange == null : this.symbolExchange.equals(balanceData.symbolExchange)) &&
        (this.symbolCoinapi == null ? balanceData.symbolCoinapi == null : this.symbolCoinapi.equals(balanceData.symbolCoinapi)) &&
        (this.balance == null ? balanceData.balance == null : this.balance.equals(balanceData.balance)) &&
        (this.available == null ? balanceData.available == null : this.available.equals(balanceData.available)) &&
        (this.locked == null ? balanceData.locked == null : this.locked.equals(balanceData.locked)) &&
        (this.updateOrigin == null ? balanceData.updateOrigin == null : this.updateOrigin.equals(balanceData.updateOrigin));
  }

  @Override
  public int hashCode() {
    int result = 17;
    result = 31 * result + (this.id == null ? 0: this.id.hashCode());
    result = 31 * result + (this.symbolExchange == null ? 0: this.symbolExchange.hashCode());
    result = 31 * result + (this.symbolCoinapi == null ? 0: this.symbolCoinapi.hashCode());
    result = 31 * result + (this.balance == null ? 0: this.balance.hashCode());
    result = 31 * result + (this.available == null ? 0: this.available.hashCode());
    result = 31 * result + (this.locked == null ? 0: this.locked.hashCode());
    result = 31 * result + (this.updateOrigin == null ? 0: this.updateOrigin.hashCode());
    return result;
  }

  @Override
  public String toString()  {
    StringBuilder sb = new StringBuilder();
    sb.append("class BalanceData {\n");
    
    sb.append("  id: ").append(id).append("\n");
    sb.append("  symbolExchange: ").append(symbolExchange).append("\n");
    sb.append("  symbolCoinapi: ").append(symbolCoinapi).append("\n");
    sb.append("  balance: ").append(balance).append("\n");
    sb.append("  available: ").append(available).append("\n");
    sb.append("  locked: ").append(locked).append("\n");
    sb.append("  updateOrigin: ").append(updateOrigin).append("\n");
    sb.append("}\n");
    return sb.toString();
  }
}
