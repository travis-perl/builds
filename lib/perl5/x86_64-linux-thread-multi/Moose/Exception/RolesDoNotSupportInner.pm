package Moose::Exception::RolesDoNotSupportInner;
our $VERSION = '2.1600';

use Moose;
extends 'Moose::Exception';

sub _build_message {
    "Roles cannot support 'inner'";
}

1;
