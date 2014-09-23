package Moose::Exception::ApplyTakesABlessedInstance;
$Moose::Exception::ApplyTakesABlessedInstance::VERSION = '2.1212';
use Moose;
extends 'Moose::Exception';
with 'Moose::Exception::Role::Role';

has 'param' => (
    is       => 'ro',
    isa      => 'Any',
    required => 1,
);

sub _build_message {
    "You must pass in an blessed instance";
}

1;
