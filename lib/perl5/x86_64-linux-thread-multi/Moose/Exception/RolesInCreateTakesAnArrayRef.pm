package Moose::Exception::RolesInCreateTakesAnArrayRef;
$Moose::Exception::RolesInCreateTakesAnArrayRef::VERSION = '2.1212';
use Moose;
extends 'Moose::Exception';
with 'Moose::Exception::Role::ParamsHash';

sub _build_message {
    my $self = shift;
    "You must pass an ARRAY ref of roles";
}

1;
