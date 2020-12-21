package Dist::Zilla::Role::FileGatherer 6.017;
# ABSTRACT: something that gathers files into the distribution

use Moose::Role;
with qw/Dist::Zilla::Role::Plugin Dist::Zilla::Role::FileInjector/;

use namespace::autoclean;

#pod =head1 DESCRIPTION
#pod
#pod A FileGatherer plugin is a special sort of
#pod L<FileInjector|Dist::Zilla::Role::FileInjector> that runs early in the build
#pod cycle, finding files to include in the distribution.  It is expected to call
#pod its C<add_file> method to add one or more files to inclusion.
#pod
#pod Plugins implementing FileGatherer must provide a C<gather_files> method, which
#pod will be called during the build process.
#pod
#pod =cut

requires 'gather_files';

1;

__END__

=pod

=encoding UTF-8

=head1 NAME

Dist::Zilla::Role::FileGatherer - something that gathers files into the distribution

=head1 VERSION

version 6.017

=head1 DESCRIPTION

A FileGatherer plugin is a special sort of
L<FileInjector|Dist::Zilla::Role::FileInjector> that runs early in the build
cycle, finding files to include in the distribution.  It is expected to call
its C<add_file> method to add one or more files to inclusion.

Plugins implementing FileGatherer must provide a C<gather_files> method, which
will be called during the build process.

=head1 AUTHOR

Ricardo SIGNES 😏 <rjbs@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2020 by Ricardo SIGNES.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
