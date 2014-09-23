package Moose::Exception::MethodModifierNeedsMethodName;
$Moose::Exception::MethodModifierNeedsMethodName::VERSION = '2.1212';
use Moose;
extends 'Moose::Exception';
with 'Moose::Exception::Role::Class';

sub _build_message {
    "You must pass in a method name";
}

1;
