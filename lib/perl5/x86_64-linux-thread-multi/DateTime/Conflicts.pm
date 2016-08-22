package # hide from PAUSE
    DateTime::Conflicts;

use strict;
use warnings;

# this module was generated with Dist::Zilla::Plugin::Conflicts 0.18

use Dist::CheckConflicts
    -dist      => 'DateTime',
    -conflicts => {
        'DateTime::Format::Mail' => '0.402',
    },
    -also => [ qw(
        Carp
        DateTime::Locale
        DateTime::TimeZone
        Dist::CheckConflicts
        POSIX
        Params::Validate
        Scalar::Util
        Try::Tiny
        XSLoader
        base
        constant
        integer
        namespace::autoclean
        overload
        strict
        warnings
        warnings::register
    ) ],

;

1;

# ABSTRACT: Provide information on conflicts for DateTime
# Dist::Zilla: -PodWeaver
