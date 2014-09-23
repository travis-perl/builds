package Moose::Exception::MustPassAMooseMetaRoleInstanceOrSubclass;
$Moose::Exception::MustPassAMooseMetaRoleInstanceOrSubclass::VERSION = '2.1212';
use Moose;
extends 'Moose::Exception';

has 'class' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1
);

has 'role' => (
    is       => 'ro',
    isa      => 'Any',
    required => 1
);

sub _build_message {
    "You must pass a Moose::Meta::Role instance (or a subclass)";
}

1;
