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
package WWW::OpenAPIClient::Configuration;

use strict;
use warnings;
use utf8;

use Log::Any qw($log);
use Carp;

use constant VERSION => '1.0.0';

=head1 Name

        WWW::OpenAPIClient::Configuration - holds the configuration for all WWW::OpenAPIClient Modules

=head1 new(%parameters)

=over 4

=item http_timeout: (optional)

Integer. timeout for HTTP requests in seconds

default: 180

=item http_user_agent: (optional)

String. custom UserAgent header

default: OpenAPI-Generator/1.0.0/perl

=item api_key: (optional)

Hashref. Keyed on the name of each key (there can be multiple tokens).

    api_key => {
        secretKey => 'aaaabbbbccccdddd',
        anotherKey => '1111222233334444',
    };

=item api_key_prefix: (optional)

Hashref. Keyed on the name of each key (there can be multiple tokens). Note not all api keys require a prefix.

    api_key_prefix => {
        secretKey => 'string',
        anotherKey => 'same or some other string',
    };

=item api_key_in: (optional)

=item username: (optional)

String. The username for basic auth.

=item password: (optional)

String. The password for basic auth.

=item access_token: (optional)

String. The OAuth access token.

=item base_url: (optional)

String. The base URL of the API

default: http://localhost:8080/v1

=back

=cut

sub new {
    my ($self, %p) = (shift,@_);

    # class/static variables
    $p{http_timeout} //= 180;
    $p{http_user_agent} //= 'OpenAPI-Generator/1.0.0/perl';

    # authentication setting
    $p{api_key} //= {};
    $p{api_key_prefix} //= {};
    $p{api_key_in} //= {};

    # username and password for HTTP basic authentication
    $p{username} //= '';
    $p{password} //= '';

    # access token for OAuth
    $p{access_token} //= '';

    # base_url
    $p{base_url} //= 'http://localhost:8080/v1';

    return bless \%p => $self;
}


sub get_tokens {
    my $self = shift;
   
    my $tokens = {};
    $tokens->{username} = $self->{username} if $self->{username};
    $tokens->{password} = $self->{password} if $self->{password};
    $tokens->{access_token} = $self->{access_token} if $self->{access_token};

    foreach my $token_name (keys %{ $self->{api_key} }) {
        $tokens->{$token_name}->{token} = $self->{api_key}{$token_name};
        $tokens->{$token_name}->{prefix} = $self->{api_key_prefix}{$token_name};
        $tokens->{$token_name}->{in} = $self->{api_key_in}{$token_name};
    }

    return $tokens;
}

sub clear_tokens {
    my $self = shift;
    my %tokens = %{$self->get_tokens}; # copy

    $self->{username} = '';
    $self->{password} = '';
    $self->{access_token} = '';

    $self->{api_key} = {};
    $self->{api_key_prefix} = {};
    $self->{api_key_in} = {};
  
    return \%tokens;
}

sub accept_tokens {
    my ($self, $tokens) = @_;
  
    foreach my $known_name (qw(username password access_token)) {
        next unless $tokens->{$known_name};
        $self->{$known_name} = delete $tokens->{$known_name};
    }

    foreach my $token_name (keys %$tokens) {
        $self->{api_key}{$token_name} = $tokens->{$token_name}{token};
        if ($tokens->{$token_name}{prefix}) {
            $self->{api_key_prefix}{$token_name} = $tokens->{$token_name}{prefix};
        }
        my $in = $tokens->{$token_name}->{in} || 'head';
        croak "Tokens can only go in 'head' or 'query' (not in '$in')" unless $in =~ /^(?:head|query)$/;
        $self->{api_key_in}{$token_name} = $in;
    }
}    

1;
