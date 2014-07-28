package Pod::Weaver::Config::Assembler;
{
  $Pod::Weaver::Config::Assembler::VERSION = '4.006';
}
use Moose;
extends 'Config::MVP::Assembler';
with 'Config::MVP::Assembler::WithBundles';
# ABSTRACT: Pod::Weaver-specific subclass of Config::MVP::Assembler

use String::RewritePrefix;

sub expand_package {
  my $str = $_[1];

  return scalar String::RewritePrefix->rewrite(
    {
      ''  => 'Pod::Weaver::Section::',
      '-' => 'Pod::Weaver::Plugin::',
      '@' => 'Pod::Weaver::PluginBundle::',
      '=' => '',
    },
    $str,
  );
}

no Moose;
1;

__END__

=pod

=encoding UTF-8

=head1 NAME

Pod::Weaver::Config::Assembler - Pod::Weaver-specific subclass of Config::MVP::Assembler

=head1 VERSION

version 4.006

=head1 AUTHOR

Ricardo SIGNES <rjbs@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by Ricardo SIGNES.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
