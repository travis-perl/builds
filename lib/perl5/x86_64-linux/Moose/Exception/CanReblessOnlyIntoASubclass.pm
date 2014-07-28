package Moose::Exception::CanReblessOnlyIntoASubclass;
BEGIN {
  $Moose::Exception::CanReblessOnlyIntoASubclass::AUTHORITY = 'cpan:STEVAN';
}
$Moose::Exception::CanReblessOnlyIntoASubclass::VERSION = '2.1210';
use Moose;
extends 'Moose::Exception';
with 'Moose::Exception::Role::ParamsHash', 'Moose::Exception::Role::Class', 'Moose::Exception::Role::Instance', 'Moose::Exception::Role::InstanceClass';

sub _build_message {
    my $self           = shift;
    my $instance_class = $self->instance_class;
    "You may rebless only into a subclass of ($instance_class), of which (". $self->class_name .") isn't."
}

1;
