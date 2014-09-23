package Moose::Exception::Role::Attribute;
$Moose::Exception::Role::Attribute::VERSION = '2.1212';
use Moose::Role;

has 'attribute' => (
    is        => 'ro',
    isa       => 'Class::MOP::Attribute',
    predicate => 'is_attribute_set'
);

1;
