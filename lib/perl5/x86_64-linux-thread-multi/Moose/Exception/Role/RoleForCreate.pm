package Moose::Exception::Role::RoleForCreate;
$Moose::Exception::Role::RoleForCreate::VERSION = '2.1212';
use Moose::Role;
with 'Moose::Exception::Role::ParamsHash';

has 'attribute_class' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1,
);

1;
