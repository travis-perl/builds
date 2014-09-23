package Moose::Exception::BothBuilderAndDefaultAreNotAllowed;
$Moose::Exception::BothBuilderAndDefaultAreNotAllowed::VERSION = '2.1212';
use Moose;
extends 'Moose::Exception';
with 'Moose::Exception::Role::ParamsHash';

has 'class' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1
);

sub _build_message {
    "Setting both default and builder is not allowed.";
}

1;
