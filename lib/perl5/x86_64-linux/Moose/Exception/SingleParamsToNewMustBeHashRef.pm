package Moose::Exception::SingleParamsToNewMustBeHashRef;
$Moose::Exception::SingleParamsToNewMustBeHashRef::VERSION = '2.1212';
use Moose;
extends 'Moose::Exception';

sub _build_message {
    "Single parameters to new() must be a HASH ref";
}

1;
