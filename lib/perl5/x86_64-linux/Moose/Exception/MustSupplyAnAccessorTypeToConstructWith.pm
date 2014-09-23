package Moose::Exception::MustSupplyAnAccessorTypeToConstructWith;
$Moose::Exception::MustSupplyAnAccessorTypeToConstructWith::VERSION = '2.1212';
use Moose;
extends 'Moose::Exception';
with 'Moose::Exception::Role::ParamsHash';

has 'class' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1
);

sub _build_message {
    "You must supply an accessor_type to construct with";
}

1;
