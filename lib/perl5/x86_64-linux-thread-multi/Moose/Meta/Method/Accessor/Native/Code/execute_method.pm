package Moose::Meta::Method::Accessor::Native::Code::execute_method;
$Moose::Meta::Method::Accessor::Native::Code::execute_method::VERSION = '2.1212';
use strict;
use warnings;

use Moose::Role;

with 'Moose::Meta::Method::Accessor::Native::Reader';

sub _return_value {
    my $self = shift;
    my ($slot_access) = @_;

    return $slot_access . '->($self, @_)';
}

no Moose::Role;

1;
