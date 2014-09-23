package Moose::Exception::PackageNameAndNameParamsNotGivenToWrap;
$Moose::Exception::PackageNameAndNameParamsNotGivenToWrap::VERSION = '2.1212';
use Moose;
extends 'Moose::Exception';
with 'Moose::Exception::Role::ParamsHash';

has 'code' => (
    is       => 'ro',
    isa      => 'CodeRef',
    required => 1
);

has 'class' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1
);

sub _build_message {
    "You must supply the package_name and name parameters";
}

1;
