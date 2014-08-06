package Dist::Zilla::MVP::Section;
# ABSTRACT: a standard section in Dist::Zilla's configuration sequence
$Dist::Zilla::MVP::Section::VERSION = '5.020';
use Moose;
extends 'Config::MVP::Section';

use namespace::autoclean;

use Config::MVP::Section 2.200002; # for not-installed error

use Moose::Autobox;

after finalize => sub {
  my ($self) = @_;

  my ($name, $plugin_class, $arg) = (
    $self->name,
    $self->package,
    $self->payload,
  );

  my %payload = %{ $self->payload };

  my %dzil;
  $dzil{$_} = delete $payload{":$_"} for grep { s/\A:// } keys %payload;

  if (defined $dzil{version}) {
    Dist::Zilla::Util->_assert_loaded_class_version_ok(
      $plugin_class,
      $dzil{version},
    );
  }

  $plugin_class->register_component($name, \%payload, $self);

  return;
};

__PACKAGE__->meta->make_immutable;
1;

__END__

=pod

=encoding UTF-8

=head1 NAME

Dist::Zilla::MVP::Section - a standard section in Dist::Zilla's configuration sequence

=head1 VERSION

version 5.020

=head1 AUTHOR

Ricardo SIGNES <rjbs@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by Ricardo SIGNES.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
