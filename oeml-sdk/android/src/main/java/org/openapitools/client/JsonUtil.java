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

package org.openapitools.client;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonParseException;
import com.google.gson.reflect.TypeToken;
import java.lang.reflect.Type;
import java.util.List;
import java.util.Date;
import org.openapitools.client.model.*;

public class JsonUtil {
  public static GsonBuilder gsonBuilder;

  static {
    gsonBuilder = new GsonBuilder();
    gsonBuilder.serializeNulls();
    gsonBuilder.setDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ");
    gsonBuilder.registerTypeAdapter(Date.class, new JsonDeserializer<Date>() {
      public Date deserialize(JsonElement json, Type typeOfT, JsonDeserializationContext context) throws JsonParseException {
        return new Date(json.getAsJsonPrimitive().getAsLong());
      }
    });
  }

  public static Gson getGson() {
    return gsonBuilder.create();
  }

  public static String serialize(Object obj){
    return getGson().toJson(obj);
  }

  public static <T> T deserializeToList(String jsonString, Class cls){
    return getGson().fromJson(jsonString, getListTypeForDeserialization(cls));
  }

  public static <T> T deserializeToObject(String jsonString, Class cls){
    return getGson().fromJson(jsonString, getTypeForDeserialization(cls));
  }

  public static Type getListTypeForDeserialization(Class cls) {
    String className = cls.getSimpleName();
    
    if ("Balance".equalsIgnoreCase(className)) {
      return new TypeToken<List<Balance>>(){}.getType();
    }
    
    if ("BalanceData".equalsIgnoreCase(className)) {
      return new TypeToken<List<BalanceData>>(){}.getType();
    }
    
    if ("CreateOrderValidationError".equalsIgnoreCase(className)) {
      return new TypeToken<List<CreateOrderValidationError>>(){}.getType();
    }
    
    if ("ExecutionReport".equalsIgnoreCase(className)) {
      return new TypeToken<List<ExecutionReport>>(){}.getType();
    }
    
    if ("ExecutionReportAllOf".equalsIgnoreCase(className)) {
      return new TypeToken<List<ExecutionReportAllOf>>(){}.getType();
    }
    
    if ("Message".equalsIgnoreCase(className)) {
      return new TypeToken<List<Message>>(){}.getType();
    }
    
    if ("NewOrderSingle".equalsIgnoreCase(className)) {
      return new TypeToken<List<NewOrderSingle>>(){}.getType();
    }
    
    if ("OrdSide".equalsIgnoreCase(className)) {
      return new TypeToken<List<OrdSide>>(){}.getType();
    }
    
    if ("OrdStatus".equalsIgnoreCase(className)) {
      return new TypeToken<List<OrdStatus>>(){}.getType();
    }
    
    if ("OrdType".equalsIgnoreCase(className)) {
      return new TypeToken<List<OrdType>>(){}.getType();
    }
    
    if ("OrderCancelAllRequest".equalsIgnoreCase(className)) {
      return new TypeToken<List<OrderCancelAllRequest>>(){}.getType();
    }
    
    if ("OrderCancelSingleRequest".equalsIgnoreCase(className)) {
      return new TypeToken<List<OrderCancelSingleRequest>>(){}.getType();
    }
    
    if ("Position".equalsIgnoreCase(className)) {
      return new TypeToken<List<Position>>(){}.getType();
    }
    
    if ("PositionData".equalsIgnoreCase(className)) {
      return new TypeToken<List<PositionData>>(){}.getType();
    }
    
    if ("Severity".equalsIgnoreCase(className)) {
      return new TypeToken<List<Severity>>(){}.getType();
    }
    
    if ("TimeInForce".equalsIgnoreCase(className)) {
      return new TypeToken<List<TimeInForce>>(){}.getType();
    }
    
    return new TypeToken<List<Object>>(){}.getType();
  }

  public static Type getTypeForDeserialization(Class cls) {
    String className = cls.getSimpleName();
    
    if ("Balance".equalsIgnoreCase(className)) {
      return new TypeToken<Balance>(){}.getType();
    }
    
    if ("BalanceData".equalsIgnoreCase(className)) {
      return new TypeToken<BalanceData>(){}.getType();
    }
    
    if ("CreateOrderValidationError".equalsIgnoreCase(className)) {
      return new TypeToken<CreateOrderValidationError>(){}.getType();
    }
    
    if ("ExecutionReport".equalsIgnoreCase(className)) {
      return new TypeToken<ExecutionReport>(){}.getType();
    }
    
    if ("ExecutionReportAllOf".equalsIgnoreCase(className)) {
      return new TypeToken<ExecutionReportAllOf>(){}.getType();
    }
    
    if ("Message".equalsIgnoreCase(className)) {
      return new TypeToken<Message>(){}.getType();
    }
    
    if ("NewOrderSingle".equalsIgnoreCase(className)) {
      return new TypeToken<NewOrderSingle>(){}.getType();
    }
    
    if ("OrdSide".equalsIgnoreCase(className)) {
      return new TypeToken<OrdSide>(){}.getType();
    }
    
    if ("OrdStatus".equalsIgnoreCase(className)) {
      return new TypeToken<OrdStatus>(){}.getType();
    }
    
    if ("OrdType".equalsIgnoreCase(className)) {
      return new TypeToken<OrdType>(){}.getType();
    }
    
    if ("OrderCancelAllRequest".equalsIgnoreCase(className)) {
      return new TypeToken<OrderCancelAllRequest>(){}.getType();
    }
    
    if ("OrderCancelSingleRequest".equalsIgnoreCase(className)) {
      return new TypeToken<OrderCancelSingleRequest>(){}.getType();
    }
    
    if ("Position".equalsIgnoreCase(className)) {
      return new TypeToken<Position>(){}.getType();
    }
    
    if ("PositionData".equalsIgnoreCase(className)) {
      return new TypeToken<PositionData>(){}.getType();
    }
    
    if ("Severity".equalsIgnoreCase(className)) {
      return new TypeToken<Severity>(){}.getType();
    }
    
    if ("TimeInForce".equalsIgnoreCase(className)) {
      return new TypeToken<TimeInForce>(){}.getType();
    }
    
    return new TypeToken<Object>(){}.getType();
  }

};
