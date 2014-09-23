package Moose::Exception::Role::Instance;
$Moose::Exception::Role::Instance::VERSION = '2.1212';
use Moose::Role;

has 'instance' => (
    is       => 'ro',
    isa      => 'Object',
    required => 1,
);

1;
