package Moose::Exception::MustSpecifyAtleastOneRole;
$Moose::Exception::MustSpecifyAtleastOneRole::VERSION = '2.1212';
use Moose;
extends 'Moose::Exception';
with 'Moose::Exception::Role::Role';

sub _build_message {
    "Must specify at least one role";
}

1;
