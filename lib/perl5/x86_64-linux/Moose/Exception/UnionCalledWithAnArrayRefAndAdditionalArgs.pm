package Moose::Exception::UnionCalledWithAnArrayRefAndAdditionalArgs;
$Moose::Exception::UnionCalledWithAnArrayRefAndAdditionalArgs::VERSION = '2.1212';
use Moose;
extends 'Moose::Exception';

has 'array' => (
    is       => 'ro',
    isa      => 'ArrayRef',
    required => 1
);

has 'args' => (
    is       => 'ro',
    isa      => 'ArrayRef',
    required => 1
);

sub _build_message {
    "union called with an array reference and additional arguments";
}

1;
