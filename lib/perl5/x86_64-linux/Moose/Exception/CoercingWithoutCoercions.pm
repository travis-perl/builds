package Moose::Exception::CoercingWithoutCoercions;
$Moose::Exception::CoercingWithoutCoercions::VERSION = '2.1212';
use Moose;
extends 'Moose::Exception';
with 'Moose::Exception::Role::TypeConstraint';

sub _build_message {
    my $self = shift;
    "Cannot coerce without a type coercion";
}
1;
