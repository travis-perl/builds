package Moose::Exception::CannotFindType;
$Moose::Exception::CannotFindType::VERSION = '2.1212';
use Moose;
extends 'Moose::Exception';

has 'type_name' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1
);

sub _build_message {
    my $self = shift;
    "Cannot find type '".$self->type_name."', perhaps you forgot to load it";
}

1;
