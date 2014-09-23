package Moose::Exception::CreateMOPClassTakesArrayRefOfSuperclasses;
$Moose::Exception::CreateMOPClassTakesArrayRefOfSuperclasses::VERSION = '2.1212';
use Moose;
extends 'Moose::Exception';
with 'Moose::Exception::Role::RoleForCreateMOPClass';

sub _build_message {
    "You must pass an ARRAY ref of superclasses";
}

1;
