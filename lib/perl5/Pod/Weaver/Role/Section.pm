package Pod::Weaver::Role::Section;
{
  $Pod::Weaver::Role::Section::VERSION = '4.006';
}
use Moose::Role;
with 'Pod::Weaver::Role::Plugin';
# ABSTRACT: a plugin that will get a section into a woven document


requires 'weave_section';

no Moose::Role;
1;

__END__

=pod

=encoding UTF-8

=head1 NAME

Pod::Weaver::Role::Section - a plugin that will get a section into a woven document

=head1 VERSION

version 4.006

=head1 IMPLEMENTING

This role is used by plugins that will append sections to the output document.
They must provide a method, C<weave_section> which will be invoked like this:

  $section_plugin->weave_section($output_document, \%input);

They are expected to append their output to the output document, but they are
free to behave differently if it's needed to do something really cool.

=head1 AUTHOR

Ricardo SIGNES <rjbs@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by Ricardo SIGNES.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
