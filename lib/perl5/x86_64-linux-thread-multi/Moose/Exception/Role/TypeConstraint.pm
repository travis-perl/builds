package Moose::Exception::Role::TypeConstraint;
$Moose::Exception::Role::TypeConstraint::VERSION = '2.1212';
use Moose::Role;

has 'type_name' => (
    is            => 'ro',
    isa           => 'Str',
    required      => 1,
    documentation => "This attribute can be used for fetching type constraint(Moose::Meta::TypeConstraint):\n".
                     "    my \$type_constraint =  Moose::Util::TypeConstraints::find_type_constraint( \$exception->type_name );\n",
);

1;
