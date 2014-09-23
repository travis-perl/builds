package Moose::Exception::NeitherClassNorClassNameIsGiven;
$Moose::Exception::NeitherClassNorClassNameIsGiven::VERSION = '2.1212';
use Moose;
extends 'Moose::Exception';

sub _build_message {
    "You need to give class or class_name or both";
}

1;
