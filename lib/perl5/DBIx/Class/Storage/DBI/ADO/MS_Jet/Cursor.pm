package DBIx::Class::Storage::DBI::ADO::MS_Jet::Cursor;

use strict;
use warnings;
use base 'DBIx::Class::Storage::DBI::Cursor';
use mro 'c3';
use DBIx::Class::Storage::DBI::ADO::CursorUtils '_normalize_guids';
use namespace::clean;

=head1 NAME

DBIx::Class::Storage::DBI::ADO::MS_Jet::Cursor - GUID Support for MS Access over
ADO

=head1 DESCRIPTION

This class is for normalizing GUIDs retrieved from Microsoft Access over ADO.

You probably don't want to be here, see
L<DBIx::Class::Storage::DBI::ACCESS> for information on the Microsoft
Access driver.

Unfortunately when using L<DBD::ADO>, GUIDs come back wrapped in braces, the
purpose of this class is to remove them.
L<DBIx::Class::Storage::DBI::ADO::MS_Jet> sets
L<cursor_class|DBIx::Class::Storage::DBI/cursor_class> to this class by default.
It is overridable via your
L<connect_info|DBIx::Class::Storage::DBI/connect_info>.

You can use L<DBIx::Class::Cursor::Cached> safely with this class and not lose
the GUID normalizing functionality,
L<::Cursor::Cached|DBIx::Class::Cursor::Cached> uses the underlying class data
for the inner cursor class.

=cut

sub next {
  my $self = shift;

  my @row = $self->next::method(@_);

  _normalize_guids(
    $self->args->[1],
    $self->{_colinfos} ||= $self->storage->_resolve_column_info($self->args->[0]),
    \@row,
    $self->storage
  );

  return @row;
}

sub all {
  my $self = shift;

  my @rows = $self->next::method(@_);

  _normalize_guids(
    $self->args->[1],
    $self->{_colinfos} ||= $self->storage->_resolve_column_info($self->args->[0]),
    $_,
    $self->storage
  ) for @rows;

  return @rows;
}

1;

=head1 AUTHOR

See L<DBIx::Class/AUTHOR> and L<DBIx::Class/CONTRIBUTORS>.

=head1 LICENSE

You may distribute this code under the same terms as Perl itself.

=cut

# vim:sts=2 sw=2:
