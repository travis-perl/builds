package Dist::Zilla::Role::MintingProfile;
# ABSTRACT: something that can find a minting profile dir
$Dist::Zilla::Role::MintingProfile::VERSION = '5.039';
use Moose::Role;

use namespace::autoclean;

use File::ShareDir;
use Path::Class;

#pod =head1 DESCRIPTION
#pod
#pod Plugins implementing this role should provide C<profile_dir> method, which,
#pod given a minting profile name, returns its directory.
#pod
#pod The minting profile is a directory, containing arbitrary files used during
#pod creation of new distribution. Among other things notably, it should contain the
#pod 'profile.ini' file, listing the plugins used for minter initialization.
#pod
#pod The default implementation C<profile_dir> looks in the module's
#pod L<ShareDir|File::ShareDir>.
#pod
#pod After installing your profile, users will be able to start a new distribution,
#pod based on your profile with the:
#pod
#pod   $ dzil new -P Provider -p profile_name Distribution::Name
#pod
#pod =cut

requires 'profile_dir';

1;

__END__

=pod

=encoding UTF-8

=head1 NAME

Dist::Zilla::Role::MintingProfile - something that can find a minting profile dir

=head1 VERSION

version 5.039

=head1 DESCRIPTION

Plugins implementing this role should provide C<profile_dir> method, which,
given a minting profile name, returns its directory.

The minting profile is a directory, containing arbitrary files used during
creation of new distribution. Among other things notably, it should contain the
'profile.ini' file, listing the plugins used for minter initialization.

The default implementation C<profile_dir> looks in the module's
L<ShareDir|File::ShareDir>.

After installing your profile, users will be able to start a new distribution,
based on your profile with the:

  $ dzil new -P Provider -p profile_name Distribution::Name

=head1 AUTHOR

Ricardo SIGNES <rjbs@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2015 by Ricardo SIGNES.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
