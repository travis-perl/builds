package Dist::Zilla::Role::Stash::Login;
# ABSTRACT: a stash with username/password credentials
$Dist::Zilla::Role::Stash::Login::VERSION = '5.020';
use Moose::Role;
with 'Dist::Zilla::Role::Stash';

use namespace::autoclean;

#pod =head1 OVERVIEW
#pod
#pod A Login stash must provide a C<username> and C<password> method.
#pod
#pod =cut

requires 'username';
requires 'password';

1;

__END__

=pod

=encoding UTF-8

=head1 NAME

Dist::Zilla::Role::Stash::Login - a stash with username/password credentials

=head1 VERSION

version 5.020

=head1 OVERVIEW

A Login stash must provide a C<username> and C<password> method.

=head1 AUTHOR

Ricardo SIGNES <rjbs@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by Ricardo SIGNES.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
