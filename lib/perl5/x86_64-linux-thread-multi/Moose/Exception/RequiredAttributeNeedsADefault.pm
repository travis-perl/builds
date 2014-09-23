package Moose::Exception::RequiredAttributeNeedsADefault;
$Moose::Exception::RequiredAttributeNeedsADefault::VERSION = '2.1212';
use Moose;
extends 'Moose::Exception';
with 'Moose::Exception::Role::InvalidAttributeOptions';

sub _build_message {
    my $self = shift;
    "You cannot have a required attribute (".$self->attribute_name.") without a default, builder, or an init_arg";
}

1;
