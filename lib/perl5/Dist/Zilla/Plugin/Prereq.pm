package Dist::Zilla::Plugin::Prereq;
# ABSTRACT: (DEPRECATED) the old name of the Prereqs plugin
$Dist::Zilla::Plugin::Prereq::VERSION = '5.043';
use Moose;
extends 'Dist::Zilla::Plugin::Prereqs';

use namespace::autoclean;

#pod =head1 SYNOPSIS
#pod
#pod This plugin extends C<[Prereqs]> and adds nothing.  It is the old name for
#pod Prereqs, and will be removed in a few versions.
#pod
#pod =head1 SEE ALSO
#pod
#pod Dist::Zilla plugins: L<Prereqs|Dist::Zilla::Plugin::Prereqs>.
#pod
#pod =cut

before register_component => sub {
  die "[Prereq] is incompatible with Dist::Zilla >= v5; replace it with [Prereqs] (note the
  's')"
    if Dist::Zilla->VERSION >= 5;
  warn "!!! [Prereq] will be removed in Dist::Zilla v5; replace it with [Prereqs] (note the 's')\n";
};

__PACKAGE__->meta->make_immutable;
1;

__END__

=pod

=encoding UTF-8

=head1 NAME

Dist::Zilla::Plugin::Prereq - (DEPRECATED) the old name of the Prereqs plugin

=head1 VERSION

version 5.043

=head1 SYNOPSIS

This plugin extends C<[Prereqs]> and adds nothing.  It is the old name for
Prereqs, and will be removed in a few versions.

=head1 SEE ALSO

Dist::Zilla plugins: L<Prereqs|Dist::Zilla::Plugin::Prereqs>.

=head1 AUTHOR

Ricardo SIGNES <rjbs@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2016 by Ricardo SIGNES.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
