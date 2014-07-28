package Moose::Exception::Role::InstanceClass;
BEGIN {
  $Moose::Exception::Role::InstanceClass::AUTHORITY = 'cpan:STEVAN';
}
$Moose::Exception::Role::InstanceClass::VERSION = '2.1210';
use Moose::Role;

has 'instance_class' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1,
);

1;
