=begin comment

OMS - REST API

Lorem2 Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. ###Lifecycle Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham. ###Lifecycle 2 Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackhama. 

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
# Cancel all order
# 
# @param CancelAllOrder $cancel_all_order  (required)
{
    my $params = {
    'cancel_all_order' => {
        data_type => 'CancelAllOrder',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'v1_orders_cancel_all_post' } = { 
        summary => 'Cancel all order',
        params => $params,
        returns => 'MessagesOk',
        };
}
# @return MessagesOk
#
sub v1_orders_cancel_all_post {
    my ($self, %args) = @_;

    # verify the required parameter 'cancel_all_order' is set
    unless (exists $args{'cancel_all_order'}) {
      croak("Missing the required parameter 'cancel_all_order' when calling v1_orders_cancel_all_post");
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
    if ( exists $args{'cancel_all_order'}) {
        $_body_data = $args{'cancel_all_order'};
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
    my $_response_object = $self->{api_client}->deserialize('MessagesOk', $response);
    return $_response_object;
}

#
# v1_orders_cancel_post
#
# Cancel order
# 
# @param CancelOrder $cancel_order  (required)
{
    my $params = {
    'cancel_order' => {
        data_type => 'CancelOrder',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'v1_orders_cancel_post' } = { 
        summary => 'Cancel order',
        params => $params,
        returns => 'OrderLive',
        };
}
# @return OrderLive
#
sub v1_orders_cancel_post {
    my ($self, %args) = @_;

    # verify the required parameter 'cancel_order' is set
    unless (exists $args{'cancel_order'}) {
      croak("Missing the required parameter 'cancel_order' when calling v1_orders_cancel_post");
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
    if ( exists $args{'cancel_order'}) {
        $_body_data = $args{'cancel_order'};
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
    my $_response_object = $self->{api_client}->deserialize('OrderLive', $response);
    return $_response_object;
}

#
# v1_orders_get
#
# Get orders
# 
# @param string $exchange_id Exchange name (optional)
{
    my $params = {
    'exchange_id' => {
        data_type => 'string',
        description => 'Exchange name',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'v1_orders_get' } = { 
        summary => 'Get orders',
        params => $params,
        returns => 'ARRAY[Order]',
        };
}
# @return ARRAY[Order]
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
    my $_response_object = $self->{api_client}->deserialize('ARRAY[Order]', $response);
    return $_response_object;
}

#
# v1_orders_post
#
# Create new order
# 
# @param NewOrder $new_order  (required)
{
    my $params = {
    'new_order' => {
        data_type => 'NewOrder',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'v1_orders_post' } = { 
        summary => 'Create new order',
        params => $params,
        returns => 'OrderLive',
        };
}
# @return OrderLive
#
sub v1_orders_post {
    my ($self, %args) = @_;

    # verify the required parameter 'new_order' is set
    unless (exists $args{'new_order'}) {
      croak("Missing the required parameter 'new_order' when calling v1_orders_post");
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
    if ( exists $args{'new_order'}) {
        $_body_data = $args{'new_order'};
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
    my $_response_object = $self->{api_client}->deserialize('OrderLive', $response);
    return $_response_object;
}

1;
