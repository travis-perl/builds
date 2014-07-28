package Pod::Weaver::Config::Finder;
{
  $Pod::Weaver::Config::Finder::VERSION = '4.006';
}
use Moose;
extends 'Config::MVP::Reader::Finder';
with 'Pod::Weaver::Config';
# ABSTRACT: the reader for weaver.ini files

sub default_search_path {
  return qw(Pod::Weaver::Config Config::MVP::Reader);
}

no Moose;
__PACKAGE__->meta->make_immutable;
1;

__END__

=pod

=encoding UTF-8

=head1 NAME

Pod::Weaver::Config::Finder - the reader for weaver.ini files

=head1 VERSION

version 4.006

=head1 AUTHOR

Ricardo SIGNES <rjbs@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by Ricardo SIGNES.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
