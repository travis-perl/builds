package Dist::Zilla::Plugin::AutoPrereq;
# ABSTRACT: (DEPRECATED) the old name for Dist::Zilla::Plugin::AutoPrereqs
$Dist::Zilla::Plugin::AutoPrereq::VERSION = '5.041';
use Moose;
extends 'Dist::Zilla::Plugin::AutoPrereqs';

use namespace::autoclean;

before register_component => sub {
  die "[AutoPrereq] will be removed in Dist::Zilla v5; replace it with [AutoPrereqs] (note the 's')\n"
    if Dist::Zilla->VERSION >= 5;

  warn "!!! [AutoPrereq] will be removed in Dist::Zilla v5; replace it with [AutoPrereqs] (note the 's')\n";
};

__PACKAGE__->meta->make_immutable;
1;

#pod =head1 SEE ALSO
#pod
#pod L<AutoPrereqs|Dist::Zilla::Plugin::AutoPrereqs>
#pod
#pod =cut

__END__

=pod

=encoding UTF-8

=head1 NAME

Dist::Zilla::Plugin::AutoPrereq - (DEPRECATED) the old name for Dist::Zilla::Plugin::AutoPrereqs

=head1 VERSION

version 5.041

=head1 SEE ALSO

L<AutoPrereqs|Dist::Zilla::Plugin::AutoPrereqs>

=head1 AUTHOR

Ricardo SIGNES <rjbs@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2015 by Ricardo SIGNES.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
