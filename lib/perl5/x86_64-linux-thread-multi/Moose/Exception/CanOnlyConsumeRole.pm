package Moose::Exception::CanOnlyConsumeRole;
$Moose::Exception::CanOnlyConsumeRole::VERSION = '2.1212';
use Moose;
extends 'Moose::Exception';

has 'role_name' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1,
);

sub _build_message {
    my $self = shift;
    "You can only consume roles, ".$self->role_name." is not a Moose role";
}
1;
