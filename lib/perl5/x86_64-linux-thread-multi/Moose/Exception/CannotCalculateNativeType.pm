package Moose::Exception::CannotCalculateNativeType;
$Moose::Exception::CannotCalculateNativeType::VERSION = '2.1212';
use Moose;
extends 'Moose::Exception';
with 'Moose::Exception::Role::Instance';

sub _build_message {
    my $self = shift;
    "Cannot calculate native type for " . ref $self->instance;
}

1;
