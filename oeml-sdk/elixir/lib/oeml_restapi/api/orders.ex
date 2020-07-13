# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OEML-RESTAPI.Api.Orders do
  @moduledoc """
  API calls for all endpoints tagged `Orders`.
  """

  alias OEML-RESTAPI.Connection
  import OEML-RESTAPI.RequestBuilder


  @doc """
  Cancel all orders
  This request cancels all open orders across all or single specified exchange.

  ## Parameters

  - connection (OEML-RESTAPI.Connection): Connection to server
  - order_cancel_all_request (OrderCancelAllRequest): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %OEML-RESTAPI.Model.Message{}} on success
  {:error, info} on failure
  """
  @spec v1_orders_cancel_all_post(Tesla.Env.client, OEML-RESTAPI.Model.OrderCancelAllRequest.t, keyword()) :: {:ok, OEML-RESTAPI.Model.Message.t} | {:error, Tesla.Env.t}
  def v1_orders_cancel_all_post(connection, order_cancel_all_request, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/v1/orders/cancel/all")
    |> add_param(:body, :body, order_cancel_all_request)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %OEML-RESTAPI.Model.Message{}}
    ])
  end

  @doc """
  Cancel order
  This request cancels an existing order. The order can be canceled by the client order ID or exchange order ID.

  ## Parameters

  - connection (OEML-RESTAPI.Connection): Connection to server
  - order_cancel_single_request (OrderCancelSingleRequest): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %OEML-RESTAPI.Model.ExecutionReport{}} on success
  {:error, info} on failure
  """
  @spec v1_orders_cancel_post(Tesla.Env.client, OEML-RESTAPI.Model.OrderCancelSingleRequest.t, keyword()) :: {:ok, OEML-RESTAPI.Model.ExecutionReport.t} | {:error, Tesla.Env.t}
  def v1_orders_cancel_post(connection, order_cancel_single_request, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/v1/orders/cancel")
    |> add_param(:body, :body, order_cancel_single_request)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %OEML-RESTAPI.Model.ExecutionReport{}},
      { 400, %OEML-RESTAPI.Model.CreateOrderValidationError{}},
      { 490, %OEML-RESTAPI.Model.Message{}}
    ])
  end

  @doc """
  Get all orders
  Get all current open orders across all or single specified exchange.

  ## Parameters

  - connection (OEML-RESTAPI.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :exchange_id (String.t): Filter the output to the orders from the specific exchange.
  ## Returns

  {:ok, [%ExecutionReport{}, ...]} on success
  {:error, info} on failure
  """
  @spec v1_orders_get(Tesla.Env.client, keyword()) :: {:ok, list(OEML-RESTAPI.Model.ExecutionReport.t)} | {:error, Tesla.Env.t}
  def v1_orders_get(connection, opts \\ []) do
    optional_params = %{
      :"exchange_id" => :query
    }
    %{}
    |> method(:get)
    |> url("/v1/orders")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, [%OEML-RESTAPI.Model.ExecutionReport{}]}
    ])
  end

  @doc """
  Create new order
  This request creating new order for the specific exchange.

  ## Parameters

  - connection (OEML-RESTAPI.Connection): Connection to server
  - new_order_single (NewOrderSingle): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %OEML-RESTAPI.Model.ExecutionReport{}} on success
  {:error, info} on failure
  """
  @spec v1_orders_post(Tesla.Env.client, OEML-RESTAPI.Model.NewOrderSingle.t, keyword()) :: {:ok, OEML-RESTAPI.Model.ExecutionReport.t} | {:error, Tesla.Env.t}
  def v1_orders_post(connection, new_order_single, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/v1/orders")
    |> add_param(:body, :body, new_order_single)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %OEML-RESTAPI.Model.ExecutionReport{}},
      { 400, %OEML-RESTAPI.Model.CreateOrderValidationError{}},
      { 490, %OEML-RESTAPI.Model.Message{}}
    ])
  end

  @doc """
  Get order status
  Get the current order status for the specified order. The requested order can no longer be active.

  ## Parameters

  - connection (OEML-RESTAPI.Connection): Connection to server
  - client_order_id (String.t): Order Client Id of the order for which the status is requested.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, %OEML-RESTAPI.Model.ExecutionReport{}} on success
  {:error, info} on failure
  """
  @spec v1_orders_status_client_order_id_get(Tesla.Env.client, String.t, keyword()) :: {:ok, OEML-RESTAPI.Model.ExecutionReport.t} | {:error, Tesla.Env.t}
  def v1_orders_status_client_order_id_get(connection, client_order_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/v1/orders/status/#{client_order_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %OEML-RESTAPI.Model.ExecutionReport{}},
      { 400, %OEML-RESTAPI.Model.Message{}}
    ])
  end
end
