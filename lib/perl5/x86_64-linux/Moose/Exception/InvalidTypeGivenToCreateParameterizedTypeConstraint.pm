package Moose::Exception::InvalidTypeGivenToCreateParameterizedTypeConstraint;
$Moose::Exception::InvalidTypeGivenToCreateParameterizedTypeConstraint::VERSION = '2.1212';
use Moose;
extends 'Moose::Exception';
with 'Moose::Exception::Role::TypeConstraint';

sub _build_message {
    my $self = shift;
    "Could not parse type name (".$self->type_name.") correctly";
}

1;
