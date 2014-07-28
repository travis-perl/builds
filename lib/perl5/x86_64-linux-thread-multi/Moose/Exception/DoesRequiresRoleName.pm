package Moose::Exception::DoesRequiresRoleName;
BEGIN {
  $Moose::Exception::DoesRequiresRoleName::AUTHORITY = 'cpan:STEVAN';
}
$Moose::Exception::DoesRequiresRoleName::VERSION = '2.1210';
use Moose;
extends 'Moose::Exception';
with 'Moose::Exception::Role::Class';

sub _build_message {
    "You must supply a role name to does()";
}

1;
