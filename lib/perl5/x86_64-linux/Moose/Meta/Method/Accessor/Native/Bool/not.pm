package Moose::Meta::Method::Accessor::Native::Bool::not;
$Moose::Meta::Method::Accessor::Native::Bool::not::VERSION = '2.1212';
use strict;
use warnings;

use Moose::Role;

with 'Moose::Meta::Method::Accessor::Native::Reader';

sub _maximum_arguments { 0 }

sub _return_value {
    my $self = shift;
    my ($slot_access) = @_;

    return '!' . $slot_access;
}

1;
