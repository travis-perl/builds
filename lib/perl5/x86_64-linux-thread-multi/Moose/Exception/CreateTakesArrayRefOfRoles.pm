package Moose::Exception::CreateTakesArrayRefOfRoles;
$Moose::Exception::CreateTakesArrayRefOfRoles::VERSION = '2.1212';
use Moose;
extends 'Moose::Exception';
with 'Moose::Exception::Role::RoleForCreate';

sub _build_message {
    "You must pass an ARRAY ref of roles";
}

1;
