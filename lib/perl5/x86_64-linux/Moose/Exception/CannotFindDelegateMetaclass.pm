package Moose::Exception::CannotFindDelegateMetaclass;
$Moose::Exception::CannotFindDelegateMetaclass::VERSION = '2.1212';
use Moose;
extends 'Moose::Exception';
with 'Moose::Exception::Role::Attribute';

sub _build_message {
    my $self = shift;
    "Cannot find delegate metaclass for attribute ".$self->attribute->name;
}

1;
