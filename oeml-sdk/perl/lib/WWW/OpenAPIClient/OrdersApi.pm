=begin comment

OEML - REST API

This section will provide necessary information about the `CoinAPI OEML REST API` protocol. 

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package WWW::OpenAPIClient::OrdersApi;

require 5.6.0;
use strict;
use warnings;
use utf8; 
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use WWW::OpenAPIClient::ApiClient;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class = shift;
    my $api_client;

    if ($_[0] && ref $_[0] && ref $_[0] eq 'WWW::OpenAPIClient::ApiClient' ) {
        $api_client = $_[0];
    } else {
        $api_client = WWW::OpenAPIClient::ApiClient->new(@_);
    }

    bless { api_client => $api_client }, $class;

}


#
# v1_orders_cancel_all_post
#
# Cancel all orders
# 
# @param OrderCancelAllRequest $order_cancel_all_request  (required)
{
    my $params = {
    'order_cancel_all_request' => {
        data_type => 'OrderCancelAllRequest',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'v1_orders_cancel_all_post' } = { 
        summary => 'Cancel all orders',
        params => $params,
        returns => 'Message',
        };
}
# @return Message
#
sub v1_orders_cancel_all_post {
    my ($self, %args) = @_;

    # verify the required parameter 'order_cancel_all_request' is set
    unless (exists $args{'order_cancel_all_request'}) {
      croak("Missing the required parameter 'order_cancel_all_request' when calling v1_orders_cancel_all_post");
    }

    # parse inputs
    my $_resource_path = '/v1/orders/cancel/all';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    my $_body_data;
    # body params
    if ( exists $args{'order_cancel_all_request'}) {
        $_body_data = $args{'order_cancel_all_request'};
    }

    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('Message', $response);
    return $_response_object;
}

#
# v1_orders_cancel_post
#
# Cancel order
# 
# @param OrderCancelSingleRequest $order_cancel_single_request  (required)
{
    my $params = {
    'order_cancel_single_request' => {
        data_type => 'OrderCancelSingleRequest',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'v1_orders_cancel_post' } = { 
        summary => 'Cancel order',
        params => $params,
        returns => 'ExecutionReport',
        };
}
# @return ExecutionReport
#
sub v1_orders_cancel_post {
    my ($self, %args) = @_;

    # verify the required parameter 'order_cancel_single_request' is set
    unless (exists $args{'order_cancel_single_request'}) {
      croak("Missing the required parameter 'order_cancel_single_request' when calling v1_orders_cancel_post");
    }

    # parse inputs
    my $_resource_path = '/v1/orders/cancel';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'appliction/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    my $_body_data;
    # body params
    if ( exists $args{'order_cancel_single_request'}) {
        $_body_data = $args{'order_cancel_single_request'};
    }

    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ExecutionReport', $response);
    return $_response_object;
}

#
# v1_orders_get
#
# Get all orders
# 
# @param string $exchange_id Filter the output to the orders from the specific exchange. (optional)
{
    my $params = {
    'exchange_id' => {
        data_type => 'string',
        description => 'Filter the output to the orders from the specific exchange.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'v1_orders_get' } = { 
        summary => 'Get all orders',
        params => $params,
        returns => 'ARRAY[ExecutionReport]',
        };
}
# @return ARRAY[ExecutionReport]
#
sub v1_orders_get {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/v1/orders';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'exchange_id'}) {
        $query_params->{'exchange_id'} = $self->{api_client}->to_query_value($args{'exchange_id'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ARRAY[ExecutionReport]', $response);
    return $_response_object;
}

#
# v1_orders_post
#
# Create new order
# 
# @param NewOrderSingle $new_order_single  (required)
{
    my $params = {
    'new_order_single' => {
        data_type => 'NewOrderSingle',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'v1_orders_post' } = { 
        summary => 'Create new order',
        params => $params,
        returns => 'ExecutionReport',
        };
}
# @return ExecutionReport
#
sub v1_orders_post {
    my ($self, %args) = @_;

    # verify the required parameter 'new_order_single' is set
    unless (exists $args{'new_order_single'}) {
      croak("Missing the required parameter 'new_order_single' when calling v1_orders_post");
    }

    # parse inputs
    my $_resource_path = '/v1/orders';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'appliction/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    my $_body_data;
    # body params
    if ( exists $args{'new_order_single'}) {
        $_body_data = $args{'new_order_single'};
    }

    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ExecutionReport', $response);
    return $_response_object;
}

#
# v1_orders_status_client_order_id_get
#
# Get order status
# 
# @param string $client_order_id Order Client Id of the order for which the status is requested. (required)
{
    my $params = {
    'client_order_id' => {
        data_type => 'string',
        description => 'Order Client Id of the order for which the status is requested.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'v1_orders_status_client_order_id_get' } = { 
        summary => 'Get order status',
        params => $params,
        returns => 'ExecutionReport',
        };
}
# @return ExecutionReport
#
sub v1_orders_status_client_order_id_get {
    my ($self, %args) = @_;

    # verify the required parameter 'client_order_id' is set
    unless (exists $args{'client_order_id'}) {
      croak("Missing the required parameter 'client_order_id' when calling v1_orders_status_client_order_id_get");
    }

    # parse inputs
    my $_resource_path = '/v1/orders/status/{client_order_id}';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'client_order_id'}) {
        my $_base_variable = "{" . "client_order_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'client_order_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ExecutionReport', $response);
    return $_response_object;
}

1;
