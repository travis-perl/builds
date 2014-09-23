package Moose::Exception::CannotRegisterUnnamedTypeConstraint;
$Moose::Exception::CannotRegisterUnnamedTypeConstraint::VERSION = '2.1212';
use Moose;
extends 'Moose::Exception';

sub _build_message {
    "can't register an unnamed type constraint";
}

1;
