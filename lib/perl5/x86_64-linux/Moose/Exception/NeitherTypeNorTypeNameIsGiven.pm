package Moose::Exception::NeitherTypeNorTypeNameIsGiven;
$Moose::Exception::NeitherTypeNorTypeNameIsGiven::VERSION = '2.1212';
use Moose;
extends 'Moose::Exception';

sub _build_message {
    "You need to give type or type_name or both";
}

1;
