package Dist::Zilla::Role::PrereqSource;
# ABSTRACT: something that registers prerequisites
$Dist::Zilla::Role::PrereqSource::VERSION = '5.029';
use Moose::Role;
with 'Dist::Zilla::Role::Plugin';

use namespace::autoclean;

#pod =head1 DESCRIPTION
#pod
#pod PrereqSource plugins have a C<register_prereqs> method that should register
#pod prereqs with the Dist::Zilla object.
#pod
#pod =cut

requires 'register_prereqs';

1;

__END__

=pod

=encoding UTF-8

=head1 NAME

Dist::Zilla::Role::PrereqSource - something that registers prerequisites

=head1 VERSION

version 5.029

=head1 DESCRIPTION

PrereqSource plugins have a C<register_prereqs> method that should register
prereqs with the Dist::Zilla object.

=head1 AUTHOR

Ricardo SIGNES <rjbs@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by Ricardo SIGNES.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
