package Moose::Exception::InvalidBaseTypeGivenToCreateParameterizedTypeConstraint;
$Moose::Exception::InvalidBaseTypeGivenToCreateParameterizedTypeConstraint::VERSION = '2.1212';
use Moose;
extends 'Moose::Exception';
with 'Moose::Exception::Role::TypeConstraint';

sub _build_message {
    my $self = shift;
    "Could not locate the base type (".$self->type_name.")";
}

1;
