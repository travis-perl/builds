package Moose::Exception::InitializeTakesUnBlessedPackageName;
$Moose::Exception::InitializeTakesUnBlessedPackageName::VERSION = '2.1212';
use Moose;
extends 'Moose::Exception';

has 'package_name' => (
    is       => 'ro',
    isa      => 'Any',
    required => 1,
);

sub _build_message {
    "You must pass a package name and it cannot be blessed";
}

1;
