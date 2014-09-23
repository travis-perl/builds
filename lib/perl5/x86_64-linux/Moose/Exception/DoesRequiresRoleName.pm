package Moose::Exception::DoesRequiresRoleName;
$Moose::Exception::DoesRequiresRoleName::VERSION = '2.1212';
use Moose;
extends 'Moose::Exception';
with 'Moose::Exception::Role::Class';

sub _build_message {
    "You must supply a role name to does()";
}

1;
