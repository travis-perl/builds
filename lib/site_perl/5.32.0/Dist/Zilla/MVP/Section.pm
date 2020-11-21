package Dist::Zilla::MVP::Section 6.017;
# ABSTRACT: a standard section in Dist::Zilla's configuration sequence

use Moose;
extends 'Config::MVP::Section';

use namespace::autoclean;

use Config::MVP::Section 2.200009; # not-installed error with section_name

around add_value => sub {
  my ($orig, $self, $name, $value) = @_;

  if ($name =~ s/\A://) {
    if ($name eq 'version') {
      Dist::Zilla::Util->_assert_loaded_class_version_ok(
        $self->package,
        $value,
      );
    }

    return;
  }

  $self->$orig($name, $value);
};

after finalize => sub {
  my ($self) = @_;

  my ($name, $plugin_class, $arg) = (
    $self->name,
    $self->package,
    $self->payload,
  );

  my %payload = %{ $self->payload };

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

version 6.017

=head1 AUTHOR

Ricardo SIGNES 😏 <rjbs@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2020 by Ricardo SIGNES.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
