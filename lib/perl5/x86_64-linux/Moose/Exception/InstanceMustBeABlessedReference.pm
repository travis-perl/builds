package Moose::Exception::InstanceMustBeABlessedReference;
$Moose::Exception::InstanceMustBeABlessedReference::VERSION = '2.1212';
use Moose;
extends 'Moose::Exception';
with 'Moose::Exception::Role::ParamsHash', 'Moose::Exception::Role::Class';

has 'instance' => (
    is       => 'ro',
    isa      => 'Any',
    required => 1
);

sub _build_message {
    my $self = shift;
    "The __INSTANCE__ parameter must be a blessed reference, not ". $self->instance;
}

1;
