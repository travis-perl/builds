package Moose::Exception::MustSpecifyAtleastOneRoleToApplicant;
$Moose::Exception::MustSpecifyAtleastOneRoleToApplicant::VERSION = '2.1212';
use Moose;
extends 'Moose::Exception';

has 'applicant' => (
    is       => 'ro',
    isa      => 'Any',
    required => 1,
);

sub _build_message {
    my $self = shift;
    "Must specify at least one role to apply to ".$self->applicant;
}

1;
