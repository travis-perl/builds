package Moose::Exception::Role::InvalidAttributeOptions;
$Moose::Exception::Role::InvalidAttributeOptions::VERSION = '2.1212';
use Moose::Role;
with 'Moose::Exception::Role::ParamsHash';

has 'attribute_name' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1,
);

1;
