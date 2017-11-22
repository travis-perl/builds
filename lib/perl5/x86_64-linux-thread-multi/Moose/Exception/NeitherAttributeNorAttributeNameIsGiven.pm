package Moose::Exception::NeitherAttributeNorAttributeNameIsGiven;
our $VERSION = '2.2008';

use Moose;
extends 'Moose::Exception';

sub _build_message {
    "You need to give attribute or attribute_name or both";
}

__PACKAGE__->meta->make_immutable;
1;
