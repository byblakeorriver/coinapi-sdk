# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OEML-RESTAPI.Model.ExecutionReport do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"exchange_id",
    :"client_order_id",
    :"symbol_exchange",
    :"symbol_coinapi",
    :"amount_order",
    :"price",
    :"side",
    :"order_type",
    :"time_in_force",
    :"expire_time",
    :"exec_inst",
    :"client_order_id_format_exchange",
    :"exchange_order_id",
    :"amount_open",
    :"amount_filled",
    :"status",
    :"time_order",
    :"error_message"
  ]

  @type t :: %__MODULE__{
    :"exchange_id" => String.t,
    :"client_order_id" => String.t,
    :"symbol_exchange" => String.t | nil,
    :"symbol_coinapi" => String.t | nil,
    :"amount_order" => float(),
    :"price" => float(),
    :"side" => OrdSide,
    :"order_type" => OrdType,
    :"time_in_force" => TimeInForce,
    :"expire_time" => DateTime | nil,
    :"exec_inst" => [String.t] | nil,
    :"client_order_id_format_exchange" => String.t | nil,
    :"exchange_order_id" => String.t | nil,
    :"amount_open" => float() | nil,
    :"amount_filled" => float() | nil,
    :"status" => OrdStatus | nil,
    :"time_order" => [[String.t]] | nil,
    :"error_message" => String.t | nil
  }
end

defimpl Poison.Decoder, for: OEML-RESTAPI.Model.ExecutionReport do
  import OEML-RESTAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"side", :struct, OEML-RESTAPI.Model.OrdSide, options)
    |> deserialize(:"order_type", :struct, OEML-RESTAPI.Model.OrdType, options)
    |> deserialize(:"time_in_force", :struct, OEML-RESTAPI.Model.TimeInForce, options)
    |> deserialize(:"expire_time", :struct, OEML-RESTAPI.Model.DateTime, options)
    |> deserialize(:"status", :struct, OEML-RESTAPI.Model.OrdStatus, options)
  end
end

