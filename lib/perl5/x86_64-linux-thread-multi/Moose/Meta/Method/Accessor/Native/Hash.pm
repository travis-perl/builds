package Moose::Meta::Method::Accessor::Native::Hash;
BEGIN {
  $Moose::Meta::Method::Accessor::Native::Hash::AUTHORITY = 'cpan:STEVAN';
}
$Moose::Meta::Method::Accessor::Native::Hash::VERSION = '2.1210';
use strict;
use warnings;

use Moose::Role;

sub _inline_check_var_is_valid_key {
    my $self = shift;
    my ($var) = @_;

    return (
        'if (!defined(' . $var . ')) {',
            $self->_inline_throw_exception( InvalidArgumentToMethod =>
                                            'argument                => '.$var.','.
                                            'method_name             => "'.$self->delegate_to_method.'",'.
                                            'type_of_argument        => "defined value",'.
                                            'type                    => "Defined",'.
                                            'argument_noun           => "key"',
            ) . ';',
        '}',
    );
}

no Moose::Role;

1;
