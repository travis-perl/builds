# This file was created by configpm when Perl was built. Any changes
# made to this file will be lost the next time perl is built.

package Config;
use strict;
# use warnings; Pulls in Carp
# use vars pulls in Carp
##
## This file was produced by running the Configure script. It holds all the
## definitions figured out by Configure. Should you modify one of these values,
## do not forget to propagate your changes by running "Configure -der". You may
## instead choose to run each of the .SH files by yourself, or "Configure -S".
##
#
## Package name      : perl5
## Source directory  : .
## Configuration time: Wed Aug  6 22:38:22 UTC 2014
## Configured by     : travis
## Target system     : linux testing-worker-linux-7-2-32004-linux-17-31859760 2.6.32-042stab090.5 #1 smp sat jun 21 00:15:09 msk 2014 x86_64 x86_64 x86_64 gnulinux 
#
## Configure command line arguments.
#PERL_PATCHLEVEL=
## Variables propagated from previous config.sh file.

our $summary = <<'!END!';
Summary of my $package (revision $revision $version_patchlevel_string) configuration:
  Platform:
    osname=$osname, osvers=$osvers, archname=$archname
    uname='$myuname'
    config_args='$config_args'
    hint=$hint, useposix=$useposix, d_sigaction=$d_sigaction
    usethreads=$usethreads use5005threads=$use5005threads useithreads=$useithreads usemultiplicity=$usemultiplicity
    useperlio=$useperlio d_sfio=$d_sfio uselargefiles=$uselargefiles usesocks=$usesocks
    use64bitint=$use64bitint use64bitall=$use64bitall uselongdouble=$uselongdouble
    usemymalloc=$usemymalloc, bincompat5005=undef
  Compiler:
    cc='$cc', ccflags ='$ccflags',
    optimize='$optimize',
    cppflags='$cppflags'
    ccversion='$ccversion', gccversion='$gccversion', gccosandvers='$gccosandvers'
    intsize=$intsize, longsize=$longsize, ptrsize=$ptrsize, doublesize=$doublesize, byteorder=$byteorder
    d_longlong=$d_longlong, longlongsize=$longlongsize, d_longdbl=$d_longdbl, longdblsize=$longdblsize
    ivtype='$ivtype', ivsize=$ivsize, nvtype='$nvtype', nvsize=$nvsize, Off_t='$lseektype', lseeksize=$lseeksize
    alignbytes=$alignbytes, prototype=$prototype
  Linker and Libraries:
    ld='$ld', ldflags ='$ldflags'
    libpth=$libpth
    libs=$libs
    perllibs=$perllibs
    libc=$libc, so=$so, useshrplib=$useshrplib, libperl=$libperl
    gnulibc_version='$gnulibc_version'
  Dynamic Linking:
    dlsrc=$dlsrc, dlext=$dlext, d_dlsymun=$d_dlsymun, ccdlflags='$ccdlflags'
    cccdlflags='$cccdlflags', lddlflags='$lddlflags'

!END!
my $summary_expanded;

sub myconfig {
    return $summary_expanded if $summary_expanded;
    ($summary_expanded = $summary) =~ s{\$(\w+)}
		 { my $c = $Config::Config{$1}; defined($c) ? $c : 'undef' }ge;
    $summary_expanded;
}

local *_ = \my $a;
$_ = <<'!END!';
Author=''
CONFIG='true'
Date='$Date'
Header=''
Id='$Id'
Locker=''
Log='$Log'
Mcc='Mcc'
PATCHLEVEL='8'
PERL_API_REVISION='5'
PERL_API_SUBVERSION='0'
PERL_API_VERSION='8'
PERL_CONFIG_SH='true'
PERL_REVISION='5'
PERL_SUBVERSION='9'
PERL_VERSION='8'
RCSfile='$RCSfile'
Revision='$Revision'
SUBVERSION='9'
Source=''
State=''
_a='.a'
_exe=''
_o='.o'
afs='false'
afsroot='/afs'
alignbytes='8'
ansi2knr=''
aphostname='/bin/hostname'
api_revision='5'
api_subversion='0'
api_version='8'
api_versionstring='5.8.0'
ar='ar'
archlib='/home/travis/perl5/perlbrew/perls/5.8.9-thr/lib/5.8.9/x86_64-linux-thread-multi'
archlibexp='/home/travis/perl5/perlbrew/perls/5.8.9-thr/lib/5.8.9/x86_64-linux-thread-multi'
archname64=''
archname='x86_64-linux-thread-multi'
archobjs=''
asctime_r_proto='REENTRANT_PROTO_B_SB'
awk='awk'
baserev='5.0'
bash=''
bin='/home/travis/perl5/perlbrew/perls/5.8.9-thr/bin'
binexp='/home/travis/perl5/perlbrew/perls/5.8.9-thr/bin'
bison='bison'
byacc='byacc'
byteorder='12345678'
c=''
castflags='0'
cat='cat'
cc='cc'
cccdlflags='-fPIC'
ccdlflags='-Wl,-E'
ccflags='-D_REENTRANT -D_GNU_SOURCE -fno-strict-aliasing -pipe -I/usr/local/include -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64'
ccflags_uselargefiles='-D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64'
ccname='gcc'
ccsymbols=''
ccversion=''
cf_by='travis'
cf_email='travis@testing-worker-linux-7-2-32004-linux-17-31859760.c45665.blueboxgrid.com'
cf_time='Wed Aug  6 22:38:22 UTC 2014'
chgrp=''
chmod='chmod'
chown=''
clocktype='clock_t'
comm='comm'
compress=''
config_arg0='Configure'
config_arg1='-de'
config_arg2='-Dprefix=/home/travis/perl5/perlbrew/perls/5.8.9-thr'
config_arg3='-Duseithreads'
config_arg4='-Dman1dir=none'
config_arg5='-Dman3dir=none'
config_arg6='-Aeval:scriptdir=/home/travis/perl5/perlbrew/perls/5.8.9-thr/bin'
config_argc='6'
config_args='-de -Dprefix=/home/travis/perl5/perlbrew/perls/5.8.9-thr -Duseithreads -Dman1dir=none -Dman3dir=none -Aeval:scriptdir=/home/travis/perl5/perlbrew/perls/5.8.9-thr/bin'
contains='grep'
cp='cp'
cpio=''
cpp='cpp'
cpp_stuff='42'
cppccsymbols=''
cppflags='-D_REENTRANT -D_GNU_SOURCE -fno-strict-aliasing -pipe -I/usr/local/include'
cpplast='-'
cppminus='-'
cpprun='cc -E'
cppstdin='cc -E'
cppsymbols='__amd64=1 __amd64__=1 __BIGGEST_ALIGNMENT__=16 __BYTE_ORDER__=1234 __CHAR16_TYPE__=short\ unsigned\ int __CHAR32_TYPE__=unsigned\ int __CHAR_BIT__=8 __DBL_DECIMAL_DIG__=17 __DBL_DENORM_MIN__=((double)4.94065645841246544177e-324L) __DBL_DIG__=15 __DBL_EPSILON__=((double)2.22044604925031308085e-16L) __DBL_HAS_DENORM__=1 __DBL_HAS_INFINITY__=1 __DBL_HAS_QUIET_NAN__=1 __DBL_MANT_DIG__=53 __DBL_MAX_10_EXP__=308 __DBL_MAX__=((double)1.79769313486231570815e+308L) __DBL_MAX_EXP__=1024 __DBL_MIN_10_EXP__=(-307) __DBL_MIN__=((double)2.22507385850720138309e-308L) __DBL_MIN_EXP__=(-1021) __DEC128_EPSILON__=1E-33DL __DEC128_MANT_DIG__=34 __DEC128_MAX__=9.999999999999999999999999999999999E6144DL __DEC128_MAX_EXP__=6145 __DEC128_MIN__=1E-6143DL __DEC128_MIN_EXP__=(-6142) __DEC128_SUBNORMAL_MIN__=0.000000000000000000000000000000001E-6143DL __DEC32_EPSILON__=1E-6DF __DEC32_MANT_DIG__=7 __DEC32_MAX__=9.999999E96DF __DEC32_MAX_EXP__=97 __DEC32_MIN__=1E-95DF __DEC32_MIN_EXP__=(-94) __DEC32_SUBNORMAL_MIN__=0.000001E-95DF __DEC64_EPSILON__=1E-15DD __DEC64_MANT_DIG__=16 __DEC64_MAX__=9.999999999999999E384DD __DEC64_MAX_EXP__=385 __DEC64_MIN__=1E-383DD __DEC64_MIN_EXP__=(-382) __DEC64_SUBNORMAL_MIN__=0.000000000000001E-383DD __DEC_EVAL_METHOD__=2 __DECIMAL_BID_FORMAT__=1 __DECIMAL_DIG__=21 __ELF__=1 _FILE_OFFSET_BITS=64 __FINITE_MATH_ONLY__=0 __FLOAT_WORD_ORDER__=1234 __FLT_DECIMAL_DIG__=9 __FLT_DENORM_MIN__=1.40129846432481707092e-45F __FLT_DIG__=6 __FLT_EPSILON__=1.19209289550781250000e-7F __FLT_EVAL_METHOD__=0 __FLT_HAS_DENORM__=1 __FLT_HAS_INFINITY__=1 __FLT_HAS_QUIET_NAN__=1 __FLT_MANT_DIG__=24 __FLT_MAX_10_EXP__=38 __FLT_MAX__=3.40282346638528859812e+38F __FLT_MAX_EXP__=128 __FLT_MIN_10_EXP__=(-37) __FLT_MIN__=1.17549435082228750797e-38F __FLT_MIN_EXP__=(-125) __FLT_RADIX__=2 _FORTIFY_SOURCE=2 __GCC_HAVE_DWARF2_CFI_ASM=1 __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1=1 __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2=1 __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4=1 __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8=1 __GLIBC__=2 __GLIBC_MINOR__=15 __GNUC__=4 __GNUC_GNU_INLINE__=1 __GNUC_MINOR__=6 __GNUC_PATCHLEVEL__=3 __GNU_LIBRARY__=6 __gnu_linux__=1 _GNU_SOURCE=1 __GXX_ABI_VERSION=1002 __INT16_C(c)=c __INT16_MAX__=32767 __INT16_TYPE__=short\ int __INT32_C(c)=c __INT32_MAX__=2147483647 __INT32_TYPE__=int __INT64_C(c)=cL __INT64_MAX__=9223372036854775807L __INT64_TYPE__=long\ int __INT8_C(c)=c __INT8_MAX__=127 __INT8_TYPE__=signed\ char __INT_FAST16_MAX__=9223372036854775807L __INT_FAST16_TYPE__=long\ int __INT_FAST32_MAX__=9223372036854775807L __INT_FAST32_TYPE__=long\ int __INT_FAST64_MAX__=9223372036854775807L __INT_FAST64_TYPE__=long\ int __INT_FAST8_MAX__=127 __INT_FAST8_TYPE__=signed\ char __INT_LEAST16_MAX__=32767 __INT_LEAST16_TYPE__=short\ int __INT_LEAST32_MAX__=2147483647 __INT_LEAST32_TYPE__=int __INT_LEAST64_MAX__=9223372036854775807L __INT_LEAST64_TYPE__=long\ int __INT_LEAST8_MAX__=127 __INT_LEAST8_TYPE__=signed\ char __INT_MAX__=2147483647 __INTMAX_C(c)=cL __INTMAX_MAX__=9223372036854775807L __INTMAX_TYPE__=long\ int __INTPTR_MAX__=9223372036854775807L __INTPTR_TYPE__=long\ int __k8=1 __k8__=1 _LARGEFILE64_SOURCE=1 _LARGEFILE_SOURCE=1 __LDBL_DENORM_MIN__=3.64519953188247460253e-4951L __LDBL_DIG__=18 __LDBL_EPSILON__=1.08420217248550443401e-19L __LDBL_HAS_DENORM__=1 __LDBL_HAS_INFINITY__=1 __LDBL_HAS_QUIET_NAN__=1 __LDBL_MANT_DIG__=64 __LDBL_MAX_10_EXP__=4932 __LDBL_MAX__=1.18973149535723176502e+4932L __LDBL_MAX_EXP__=16384 __LDBL_MIN_10_EXP__=(-4931) __LDBL_MIN__=3.36210314311209350626e-4932L __LDBL_MIN_EXP__=(-16381) __linux=1 __linux__=1 linux=1 __LONG_LONG_MAX__=9223372036854775807LL __LONG_MAX__=9223372036854775807L __LP64__=1 _LP64=1 __MMX__=1 __ORDER_BIG_ENDIAN__=4321 __ORDER_LITTLE_ENDIAN__=1234 __ORDER_PDP_ENDIAN__=3412 _POSIX_C_SOURCE=200809L _POSIX_SOURCE=1 __PRAGMA_REDEFINE_EXTNAME=1 __PTRDIFF_MAX__=9223372036854775807L __PTRDIFF_TYPE__=long\ int _REENTRANT=1 __REGISTER_PREFIX__= __SCHAR_MAX__=127 __SHRT_MAX__=32767 __SIG_ATOMIC_MAX__=2147483647 __SIG_ATOMIC_MIN__=(-2147483647\ -\ 1) __SIG_ATOMIC_TYPE__=int __SIZE_MAX__=18446744073709551615UL __SIZEOF_DOUBLE__=8 __SIZEOF_FLOAT__=4 __SIZEOF_INT128__=16 __SIZEOF_INT__=4 __SIZEOF_LONG__=8 __SIZEOF_LONG_DOUBLE__=16 __SIZEOF_LONG_LONG__=8 __SIZEOF_POINTER__=8 __SIZEOF_PTRDIFF_T__=8 __SIZEOF_SHORT__=2 __SIZEOF_SIZE_T__=8 __SIZEOF_WCHAR_T__=4 __SIZEOF_WINT_T__=4 __SIZE_TYPE__=long\ unsigned\ int __SSE__=1 __SSE2__=1 __SSE2_MATH__=1 __SSE_MATH__=1 __SSP__=1 __STDC__=1 __STDC_HOSTED__=1 __UINT16_C(c)=c __UINT16_MAX__=65535 __UINT16_TYPE__=short\ unsigned\ int __UINT32_C(c)=cU __UINT32_MAX__=4294967295U __UINT32_TYPE__=unsigned\ int __UINT64_C(c)=cUL __UINT64_MAX__=18446744073709551615UL __UINT64_TYPE__=long\ unsigned\ int __UINT8_C(c)=c __UINT8_MAX__=255 __UINT8_TYPE__=unsigned\ char __UINT_FAST16_MAX__=18446744073709551615UL __UINT_FAST16_TYPE__=long\ unsigned\ int __UINT_FAST32_MAX__=18446744073709551615UL __UINT_FAST32_TYPE__=long\ unsigned\ int __UINT_FAST64_MAX__=18446744073709551615UL __UINT_FAST64_TYPE__=long\ unsigned\ int __UINT_FAST8_MAX__=255 __UINT_FAST8_TYPE__=unsigned\ char __UINT_LEAST16_MAX__=65535 __UINT_LEAST16_TYPE__=short\ unsigned\ int __UINT_LEAST32_MAX__=4294967295U __UINT_LEAST32_TYPE__=unsigned\ int __UINT_LEAST64_MAX__=18446744073709551615UL __UINT_LEAST64_TYPE__=long\ unsigned\ int __UINT_LEAST8_MAX__=255 __UINT_LEAST8_TYPE__=unsigned\ char __UINTMAX_C(c)=cUL __UINTMAX_MAX__=18446744073709551615UL __UINTMAX_TYPE__=long\ unsigned\ int __UINTPTR_MAX__=18446744073709551615UL __UINTPTR_TYPE__=long\ unsigned\ int __unix=1 __unix__=1 unix=1 __USE_BSD=1 __USE_FILE_OFFSET64=1 __USE_GNU=1 __USE_LARGEFILE=1 __USE_LARGEFILE64=1 __USE_MISC=1 __USE_POSIX=1 __USE_POSIX199309=1 __USE_POSIX199506=1 __USE_POSIX2=1 __USE_REENTRANT=1 __USER_LABEL_PREFIX__= __USE_SVID=1 __USE_UNIX98=1 __USE_XOPEN=1 __USE_XOPEN_EXTENDED=1 __VERSION__="4.6.3" __WCHAR_MAX__=2147483647 __WCHAR_MIN__=(-2147483647\ -\ 1) __WCHAR_TYPE__=int __WINT_MAX__=4294967295U __WINT_MIN__=0U __WINT_TYPE__=unsigned\ int __x86_64=1 __x86_64__=1 _XOPEN_SOURCE=700 _XOPEN_SOURCE_EXTENDED=1'
crypt_r_proto='REENTRANT_PROTO_B_CCS'
cryptlib=''
csh='csh'
ctermid_r_proto='0'
ctime_r_proto='REENTRANT_PROTO_B_SB'
d_Gconvert='gcvt((x),(n),(b))'
d_PRIEUldbl='define'
d_PRIFUldbl='define'
d_PRIGUldbl='define'
d_PRIXU64='define'
d_PRId64='define'
d_PRIeldbl='define'
d_PRIfldbl='define'
d_PRIgldbl='define'
d_PRIi64='define'
d_PRIo64='define'
d_PRIu64='define'
d_PRIx64='define'
d_SCNfldbl='define'
d__fwalk='undef'
d_access='define'
d_accessx='undef'
d_aintl='undef'
d_alarm='define'
d_archlib='define'
d_asctime_r='define'
d_atolf='undef'
d_atoll='define'
d_attribute_format='define'
d_attribute_malloc='define'
d_attribute_nonnull='define'
d_attribute_noreturn='define'
d_attribute_pure='define'
d_attribute_unused='define'
d_attribute_warn_unused_result='define'
d_bcmp='define'
d_bcopy='define'
d_bsd='undef'
d_bsdgetpgrp='undef'
d_bsdsetpgrp='undef'
d_builtin_choose_expr='define'
d_builtin_expect='define'
d_bzero='define'
d_c99_variadic_macros='define'
d_casti32='undef'
d_castneg='define'
d_charvspr='undef'
d_chown='define'
d_chroot='define'
d_chsize='undef'
d_class='undef'
d_clearenv='define'
d_closedir='define'
d_cmsghdr_s='define'
d_const='define'
d_copysignl='define'
d_cplusplus='undef'
d_crypt='define'
d_crypt_r='define'
d_csh='undef'
d_ctermid='define'
d_ctermid_r='undef'
d_ctime_r='define'
d_cuserid='define'
d_dbl_dig='define'
d_dbminitproto='define'
d_difftime='define'
d_dir_dd_fd='undef'
d_dirfd='define'
d_dirnamlen='undef'
d_dlerror='define'
d_dlopen='define'
d_dlsymun='undef'
d_dosuid='undef'
d_drand48_r='define'
d_drand48proto='define'
d_dup2='define'
d_eaccess='define'
d_endgrent='define'
d_endgrent_r='undef'
d_endhent='define'
d_endhostent_r='undef'
d_endnent='define'
d_endnetent_r='undef'
d_endpent='define'
d_endprotoent_r='undef'
d_endpwent='define'
d_endpwent_r='undef'
d_endsent='define'
d_endservent_r='undef'
d_eofnblk='define'
d_eunice='undef'
d_faststdio='define'
d_fchdir='define'
d_fchmod='define'
d_fchown='define'
d_fcntl='define'
d_fcntl_can_lock='define'
d_fd_macros='define'
d_fd_set='define'
d_fds_bits='define'
d_fgetpos='define'
d_finite='define'
d_finitel='define'
d_flexfnam='define'
d_flock='define'
d_flockproto='define'
d_fork='define'
d_fp_class='undef'
d_fpathconf='define'
d_fpclass='undef'
d_fpclassify='undef'
d_fpclassl='undef'
d_fpos64_t='undef'
d_frexpl='define'
d_fs_data_s='undef'
d_fseeko='define'
d_fsetpos='define'
d_fstatfs='define'
d_fstatvfs='define'
d_fsync='define'
d_ftello='define'
d_ftime='undef'
d_futimes='define'
d_getcwd='define'
d_getespwnam='undef'
d_getfsstat='undef'
d_getgrent='define'
d_getgrent_r='define'
d_getgrgid_r='define'
d_getgrnam_r='define'
d_getgrps='define'
d_gethbyaddr='define'
d_gethbyname='define'
d_gethent='define'
d_gethname='define'
d_gethostbyaddr_r='define'
d_gethostbyname_r='define'
d_gethostent_r='define'
d_gethostprotos='define'
d_getitimer='define'
d_getlogin='define'
d_getlogin_r='define'
d_getmnt='undef'
d_getmntent='define'
d_getnbyaddr='define'
d_getnbyname='define'
d_getnent='define'
d_getnetbyaddr_r='define'
d_getnetbyname_r='define'
d_getnetent_r='define'
d_getnetprotos='define'
d_getpagsz='define'
d_getpbyname='define'
d_getpbynumber='define'
d_getpent='define'
d_getpgid='define'
d_getpgrp2='undef'
d_getpgrp='define'
d_getppid='define'
d_getprior='define'
d_getprotobyname_r='define'
d_getprotobynumber_r='define'
d_getprotoent_r='define'
d_getprotoprotos='define'
d_getprpwnam='undef'
d_getpwent='define'
d_getpwent_r='define'
d_getpwnam_r='define'
d_getpwuid_r='define'
d_getsbyname='define'
d_getsbyport='define'
d_getsent='define'
d_getservbyname_r='define'
d_getservbyport_r='define'
d_getservent_r='define'
d_getservprotos='define'
d_getspnam='define'
d_getspnam_r='define'
d_gettimeod='define'
d_gmtime_r='define'
d_gnulibc='define'
d_grpasswd='define'
d_hasmntopt='define'
d_htonl='define'
d_ilogbl='define'
d_inc_version_list='undef'
d_index='undef'
d_inetaton='define'
d_int64_t='define'
d_isascii='define'
d_isfinite='undef'
d_isinf='define'
d_isnan='define'
d_isnanl='define'
d_killpg='define'
d_lchown='define'
d_ldbl_dig='define'
d_libm_lib_version='define'
d_link='define'
d_localtime_r='define'
d_localtime_r_needs_tzset='define'
d_locconv='define'
d_lockf='define'
d_longdbl='define'
d_longlong='define'
d_lseekproto='define'
d_lstat='define'
d_madvise='define'
d_malloc_good_size='undef'
d_malloc_size='undef'
d_mblen='define'
d_mbstowcs='define'
d_mbtowc='define'
d_memchr='define'
d_memcmp='define'
d_memcpy='define'
d_memmove='define'
d_memset='define'
d_mkdir='define'
d_mkdtemp='define'
d_mkfifo='define'
d_mkstemp='define'
d_mkstemps='define'
d_mktime='define'
d_mmap='define'
d_modfl='define'
d_modfl_pow32_bug='undef'
d_modflproto='define'
d_mprotect='define'
d_msg='define'
d_msg_ctrunc='define'
d_msg_dontroute='define'
d_msg_oob='define'
d_msg_peek='define'
d_msg_proxy='define'
d_msgctl='define'
d_msgget='define'
d_msghdr_s='define'
d_msgrcv='define'
d_msgsnd='define'
d_msync='define'
d_munmap='define'
d_mymalloc='undef'
d_nice='define'
d_nl_langinfo='define'
d_nv_preserves_uv='undef'
d_nv_zero_is_allbits_zero='define'
d_off64_t='define'
d_old_pthread_create_joinable='undef'
d_oldpthreads='undef'
d_oldsock='undef'
d_open3='define'
d_pathconf='define'
d_pause='define'
d_perl_otherlibdirs='undef'
d_phostname='undef'
d_pipe='define'
d_poll='define'
d_portable='define'
d_printf_format_null='undef'
d_procselfexe='define'
d_pseudofork='undef'
d_pthread_atfork='define'
d_pthread_attr_setscope='define'
d_pthread_yield='define'
d_pwage='undef'
d_pwchange='undef'
d_pwclass='undef'
d_pwcomment='undef'
d_pwexpire='undef'
d_pwgecos='define'
d_pwpasswd='define'
d_pwquota='undef'
d_qgcvt='define'
d_quad='define'
d_random_r='define'
d_readdir64_r='define'
d_readdir='define'
d_readdir_r='define'
d_readlink='define'
d_readv='define'
d_recvmsg='define'
d_rename='define'
d_rewinddir='define'
d_rmdir='define'
d_safebcpy='undef'
d_safemcpy='undef'
d_sanemcmp='define'
d_sbrkproto='define'
d_scalbnl='define'
d_sched_yield='define'
d_scm_rights='define'
d_seekdir='define'
d_select='define'
d_sem='define'
d_semctl='define'
d_semctl_semid_ds='define'
d_semctl_semun='define'
d_semget='define'
d_semop='define'
d_sendmsg='define'
d_setegid='define'
d_seteuid='define'
d_setgrent='define'
d_setgrent_r='undef'
d_setgrps='define'
d_sethent='define'
d_sethostent_r='undef'
d_setitimer='define'
d_setlinebuf='define'
d_setlocale='define'
d_setlocale_r='undef'
d_setnent='define'
d_setnetent_r='undef'
d_setpent='define'
d_setpgid='define'
d_setpgrp2='undef'
d_setpgrp='define'
d_setprior='define'
d_setproctitle='undef'
d_setprotoent_r='undef'
d_setpwent='define'
d_setpwent_r='undef'
d_setregid='define'
d_setresgid='define'
d_setresuid='define'
d_setreuid='define'
d_setrgid='undef'
d_setruid='undef'
d_setsent='define'
d_setservent_r='undef'
d_setsid='define'
d_setvbuf='define'
d_sfio='undef'
d_shm='define'
d_shmat='define'
d_shmatprototype='define'
d_shmctl='define'
d_shmdt='define'
d_shmget='define'
d_sigaction='define'
d_signbit='define'
d_sigprocmask='define'
d_sigsetjmp='define'
d_sitearch='define'
d_snprintf='define'
d_sockatmark='define'
d_sockatmarkproto='define'
d_socket='define'
d_socklen_t='define'
d_sockpair='define'
d_socks5_init='undef'
d_sprintf_returns_strlen='define'
d_sqrtl='define'
d_srand48_r='define'
d_srandom_r='define'
d_sresgproto='define'
d_sresuproto='define'
d_statblks='define'
d_statfs_f_flags='define'
d_statfs_s='define'
d_statvfs='define'
d_stdio_cnt_lval='undef'
d_stdio_ptr_lval='define'
d_stdio_ptr_lval_nochange_cnt='undef'
d_stdio_ptr_lval_sets_cnt='define'
d_stdio_stream_array='undef'
d_stdiobase='define'
d_stdstdio='define'
d_strchr='define'
d_strcoll='define'
d_strctcpy='define'
d_strerrm='strerror(e)'
d_strerror='define'
d_strerror_r='define'
d_strftime='define'
d_strlcat='undef'
d_strlcpy='undef'
d_strtod='define'
d_strtol='define'
d_strtold='define'
d_strtoll='define'
d_strtoq='define'
d_strtoul='define'
d_strtoull='define'
d_strtouq='define'
d_strxfrm='define'
d_suidsafe='undef'
d_symlink='define'
d_syscall='define'
d_syscallproto='define'
d_sysconf='define'
d_sysernlst=''
d_syserrlst='define'
d_system='define'
d_tcgetpgrp='define'
d_tcsetpgrp='define'
d_telldir='define'
d_telldirproto='define'
d_time='define'
d_times='define'
d_tm_tm_gmtoff='define'
d_tm_tm_zone='define'
d_tmpnam_r='define'
d_truncate='define'
d_ttyname_r='define'
d_tzname='define'
d_u32align='define'
d_ualarm='define'
d_umask='define'
d_uname='define'
d_union_semun='undef'
d_unordered='undef'
d_unsetenv='define'
d_usleep='define'
d_usleepproto='define'
d_ustat='define'
d_vendorarch='undef'
d_vendorbin='undef'
d_vendorlib='undef'
d_vendorscript='undef'
d_vfork='undef'
d_void_closedir='undef'
d_voidsig='define'
d_voidtty=''
d_volatile='define'
d_vprintf='define'
d_vsnprintf='define'
d_wait4='define'
d_waitpid='define'
d_wcstombs='define'
d_wctomb='define'
d_writev='define'
d_xenix='undef'
date='date'
db_hashtype='u_int32_t'
db_prefixtype='size_t'
db_version_major=''
db_version_minor=''
db_version_patch=''
defvoidused='15'
direntrytype='struct dirent'
dlext='so'
dlsrc='dl_dlopen.xs'
doublesize='8'
drand01='drand48()'
drand48_r_proto='REENTRANT_PROTO_I_ST'
dynamic_ext='B ByteLoader Cwd Data/Dumper Devel/DProf Devel/PPPort Devel/Peek Digest/MD5 Encode Fcntl File/Glob Filter/Util/Call GDBM_File Hash/Util I18N/Langinfo IO IPC/SysV List/Util MIME/Base64 ODBM_File Opcode POSIX PerlIO/encoding PerlIO/scalar PerlIO/via SDBM_File Socket Storable Sys/Hostname Sys/Syslog Text/Soundex Time/HiRes Unicode/Normalize XS/APItest XS/Typemap attrs re threads threads/shared'
eagain='EAGAIN'
ebcdic='undef'
echo='echo'
egrep='egrep'
emacs=''
endgrent_r_proto='0'
endhostent_r_proto='0'
endnetent_r_proto='0'
endprotoent_r_proto='0'
endpwent_r_proto='0'
endservent_r_proto='0'
eunicefix=':'
exe_ext=''
expr='expr'
extensions='B ByteLoader Cwd Data/Dumper Devel/DProf Devel/PPPort Devel/Peek Digest/MD5 Encode Fcntl File/Glob Filter/Util/Call GDBM_File Hash/Util I18N/Langinfo IO IPC/SysV List/Util MIME/Base64 ODBM_File Opcode POSIX PerlIO/encoding PerlIO/scalar PerlIO/via SDBM_File Socket Storable Sys/Hostname Sys/Syslog Text/Soundex Time/HiRes Unicode/Normalize XS/APItest XS/Typemap attrs re threads threads/shared Errno Module/Pluggable'
extern_C='extern'
extras=''
fflushNULL='define'
fflushall='undef'
find=''
firstmakefile='makefile'
flex=''
fpossize='16'
fpostype='fpos_t'
freetype='void'
from=':'
full_ar='/usr/bin/ar'
full_csh='csh'
full_sed='/bin/sed'
gccansipedantic=''
gccosandvers=''
gccversion='4.6.3'
getgrent_r_proto='REENTRANT_PROTO_I_SBWR'
getgrgid_r_proto='REENTRANT_PROTO_I_TSBWR'
getgrnam_r_proto='REENTRANT_PROTO_I_CSBWR'
gethostbyaddr_r_proto='REENTRANT_PROTO_I_TsISBWRE'
gethostbyname_r_proto='REENTRANT_PROTO_I_CSBWRE'
gethostent_r_proto='REENTRANT_PROTO_I_SBWRE'
getlogin_r_proto='REENTRANT_PROTO_I_BW'
getnetbyaddr_r_proto='REENTRANT_PROTO_I_uISBWRE'
getnetbyname_r_proto='REENTRANT_PROTO_I_CSBWRE'
getnetent_r_proto='REENTRANT_PROTO_I_SBWRE'
getprotobyname_r_proto='REENTRANT_PROTO_I_CSBWR'
getprotobynumber_r_proto='REENTRANT_PROTO_I_ISBWR'
getprotoent_r_proto='REENTRANT_PROTO_I_SBWR'
getpwent_r_proto='REENTRANT_PROTO_I_SBWR'
getpwnam_r_proto='REENTRANT_PROTO_I_CSBWR'
getpwuid_r_proto='REENTRANT_PROTO_I_TSBWR'
getservbyname_r_proto='REENTRANT_PROTO_I_CCSBWR'
getservbyport_r_proto='REENTRANT_PROTO_I_ICSBWR'
getservent_r_proto='REENTRANT_PROTO_I_SBWR'
getspnam_r_proto='REENTRANT_PROTO_I_CSBWR'
gidformat='"u"'
gidsign='1'
gidsize='4'
gidtype='gid_t'
glibpth='/usr/shlib  /lib /usr/lib /usr/lib/386 /lib/386 /usr/ccs/lib /usr/ucblib /usr/local/lib '
gmake='gmake'
gmtime_r_proto='REENTRANT_PROTO_S_TS'
gnulibc_version='2.15'
grep='grep'
groupcat='cat /etc/group'
groupstype='gid_t'
gzip='gzip'
h_fcntl='false'
h_sysfile='true'
hint='recommended'
hostcat='cat /etc/hosts'
html1dir=' '
html1direxp=''
html3dir=' '
html3direxp=''
i16size='2'
i16type='short'
i32size='4'
i32type='int'
i64size='8'
i64type='long'
i8size='1'
i8type='char'
i_arpainet='define'
i_bsdioctl=''
i_crypt='define'
i_db='undef'
i_dbm='define'
i_dirent='define'
i_dld='undef'
i_dlfcn='define'
i_fcntl='undef'
i_float='define'
i_fp='undef'
i_fp_class='undef'
i_gdbm='define'
i_grp='define'
i_ieeefp='undef'
i_inttypes='define'
i_langinfo='define'
i_libutil='undef'
i_limits='define'
i_locale='define'
i_machcthr='undef'
i_malloc='define'
i_math='define'
i_memory='undef'
i_mntent='define'
i_ndbm='undef'
i_netdb='define'
i_neterrno='undef'
i_netinettcp='define'
i_niin='define'
i_poll='define'
i_prot='undef'
i_pthread='define'
i_pwd='define'
i_rpcsvcdbm='undef'
i_sfio='undef'
i_sgtty='undef'
i_shadow='define'
i_socks='undef'
i_stdarg='define'
i_stddef='define'
i_stdlib='define'
i_string='define'
i_sunmath='undef'
i_sysaccess='undef'
i_sysdir='define'
i_sysfile='define'
i_sysfilio='undef'
i_sysin='undef'
i_sysioctl='define'
i_syslog='define'
i_sysmman='define'
i_sysmode='undef'
i_sysmount='define'
i_sysndir='undef'
i_sysparam='define'
i_sysresrc='define'
i_syssecrt='undef'
i_sysselct='define'
i_syssockio='undef'
i_sysstat='define'
i_sysstatfs='define'
i_sysstatvfs='define'
i_systime='define'
i_systimek='undef'
i_systimes='define'
i_systypes='define'
i_sysuio='define'
i_sysun='define'
i_sysutsname='define'
i_sysvfs='define'
i_syswait='define'
i_termio='undef'
i_termios='define'
i_time='define'
i_unistd='define'
i_ustat='define'
i_utime='define'
i_values='define'
i_varargs='undef'
i_varhdr='stdarg.h'
i_vfork='undef'
ignore_versioned_solibs='y'
inc_version_list=' '
inc_version_list_init='0'
incpath=''
inews=''
initialinstalllocation='/home/travis/perl5/perlbrew/perls/5.8.9-thr/bin'
installarchlib='/home/travis/perl5/perlbrew/perls/5.8.9-thr/lib/5.8.9/x86_64-linux-thread-multi'
installbin='/home/travis/perl5/perlbrew/perls/5.8.9-thr/bin'
installhtml1dir=''
installhtml3dir=''
installman1dir=''
installman3dir=''
installprefix='/home/travis/perl5/perlbrew/perls/5.8.9-thr'
installprefixexp='/home/travis/perl5/perlbrew/perls/5.8.9-thr'
installprivlib='/home/travis/perl5/perlbrew/perls/5.8.9-thr/lib/5.8.9'
installscript='/home/travis/perl5/perlbrew/perls/5.8.9-thr/bin'
installsitearch='/home/travis/perl5/perlbrew/perls/5.8.9-thr/lib/site_perl/5.8.9/x86_64-linux-thread-multi'
installsitebin='/home/travis/perl5/perlbrew/perls/5.8.9-thr/bin'
installsitehtml1dir=''
installsitehtml3dir=''
installsitelib='/home/travis/perl5/perlbrew/perls/5.8.9-thr/lib/site_perl/5.8.9'
installsiteman1dir=''
installsiteman3dir=''
installsitescript='/home/travis/perl5/perlbrew/perls/5.8.9-thr/bin'
installstyle='lib'
installusrbinperl='undef'
installvendorarch=''
installvendorbin=''
installvendorhtml1dir=''
installvendorhtml3dir=''
installvendorlib=''
installvendorman1dir=''
installvendorman3dir=''
installvendorscript=''
intsize='4'
issymlink='test -h'
ivdformat='"ld"'
ivsize='8'
ivtype='long'
known_extensions='B ByteLoader Cwd DB_File Data/Dumper Devel/DProf Devel/PPPort Devel/Peek Digest/MD5 Encode Fcntl File/Glob Filter/Util/Call GDBM_File Hash/Util I18N/Langinfo IO IPC/SysV List/Util MIME/Base64 NDBM_File ODBM_File Opcode POSIX PerlIO/encoding PerlIO/scalar PerlIO/via SDBM_File Socket Storable Sys/Hostname Sys/Syslog Text/Soundex Thread Time/HiRes Unicode/Normalize Win32 Win32API/File Win32CORE XS/APItest XS/Typemap attrs re threads threads/shared'
ksh=''
ld='cc'
lddlflags='-shared -O2 -L/usr/local/lib'
ldflags=' -L/usr/local/lib'
ldflags_uselargefiles=''
ldlibpthname='LD_LIBRARY_PATH'
less='less'
lib_ext='.a'
libc='libc-2.15.so'
libdb_needs_pthread='N'
libperl='libperl.a'
libpth='/usr/local/lib /lib/x86_64-linux-gnu /lib/../lib /usr/lib/x86_64-linux-gnu /usr/lib/../lib /lib /usr/lib'
libs='-lnsl -lgdbm -ldl -lm -lcrypt -lutil -lpthread -lc -lgdbm_compat'
libsdirs=' /usr/lib/x86_64-linux-gnu'
libsfiles=' libnsl.so libgdbm.so libdl.so libm.so libcrypt.so libutil.so libpthread.so libc.so libgdbm_compat.so'
libsfound=' /usr/lib/x86_64-linux-gnu/libnsl.so /usr/lib/x86_64-linux-gnu/libgdbm.so /usr/lib/x86_64-linux-gnu/libdl.so /usr/lib/x86_64-linux-gnu/libm.so /usr/lib/x86_64-linux-gnu/libcrypt.so /usr/lib/x86_64-linux-gnu/libutil.so /usr/lib/x86_64-linux-gnu/libpthread.so /usr/lib/x86_64-linux-gnu/libc.so /usr/lib/x86_64-linux-gnu/libgdbm_compat.so'
libspath=' /usr/local/lib /lib/x86_64-linux-gnu /lib/../lib /usr/lib/x86_64-linux-gnu /usr/lib/../lib /lib /usr/lib'
libswanted='sfio socket inet nsl nm gdbm dbm db malloc dl dld ld sun m crypt sec util pthread c cposix posix ucb BSD gdbm_compat'
libswanted_uselargefiles=''
line=''
lint=''
lkflags=''
ln='ln'
lns='/bin/ln -s'
localtime_r_proto='REENTRANT_PROTO_S_TS'
locincpth='/usr/local/include /opt/local/include /usr/gnu/include /opt/gnu/include /usr/GNU/include /opt/GNU/include'
loclibpth='/usr/local/lib /opt/local/lib /usr/gnu/lib /opt/gnu/lib /usr/GNU/lib /opt/GNU/lib'
longdblsize='16'
longlongsize='8'
longsize='8'
lp=''
lpr=''
ls='ls'
lseeksize='8'
lseektype='off_t'
mad='undef'
madlyh=''
madlyobj=''
madlysrc=''
mail=''
mailx=''
make='make'
make_set_make='#'
mallocobj=''
mallocsrc=''
malloctype='void *'
man1dir=' '
man1direxp=''
man1ext='0'
man3dir=' '
man3direxp=''
man3ext='0'
mips_type=''
mistrustnm=''
mkdir='mkdir'
mmaptype='void *'
modetype='mode_t'
more='more'
multiarch='undef'
mv=''
myarchname='x86_64-linux'
mydomain='.c45665.blueboxgrid.com'
myhostname='testing-worker-linux-7-2-32004-linux-17-31859760'
myuname='linux testing-worker-linux-7-2-32004-linux-17-31859760 2.6.32-042stab090.5 #1 smp sat jun 21 00:15:09 msk 2014 x86_64 x86_64 x86_64 gnulinux '
n='-n'
need_va_copy='define'
netdb_hlen_type='size_t'
netdb_host_type='char *'
netdb_name_type='const char *'
netdb_net_type='in_addr_t'
nm='nm'
nm_opt=''
nm_so_opt='--dynamic'
nonxs_ext='Errno Module/Pluggable'
nroff='nroff'
nvEUformat='"E"'
nvFUformat='"F"'
nvGUformat='"G"'
nv_preserves_uv_bits='53'
nveformat='"e"'
nvfformat='"f"'
nvgformat='"g"'
nvsize='8'
nvtype='double'
o_nonblock='O_NONBLOCK'
obj_ext='.o'
old_pthread_create_joinable=''
optimize='-O2'
orderlib='false'
osname='linux'
osvers='2.6.32-042stab090.5'
otherlibdirs=' '
package='perl5'
pager='/usr/bin/less'
passcat='cat /etc/passwd'
patchlevel='8'
path_sep=':'
perl5='/usr/bin/perl'
perl=''
perl_patchlevel=''
perladmin='travis@testing-worker-linux-7-2-32004-linux-17-31859760.c45665.blueboxgrid.com'
perllibs='-lnsl -ldl -lm -lcrypt -lutil -lpthread -lc -lgdbm_compat'
perlpath='/home/travis/perl5/perlbrew/perls/5.8.9-thr/bin/perl'
pg='pg'
phostname='hostname'
pidtype='pid_t'
plibpth='/lib/x86_64-linux-gnu/4.6 /lib/x86_64-linux-gnu /lib/../lib /usr/lib/x86_64-linux-gnu/4.6 /usr/lib/x86_64-linux-gnu /usr/lib/../lib /lib /usr/lib'
pmake=''
pr=''
prefix='/home/travis/perl5/perlbrew/perls/5.8.9-thr'
prefixexp='/home/travis/perl5/perlbrew/perls/5.8.9-thr'
privlib='/home/travis/perl5/perlbrew/perls/5.8.9-thr/lib/5.8.9'
privlibexp='/home/travis/perl5/perlbrew/perls/5.8.9-thr/lib/5.8.9'
procselfexe='"/proc/self/exe"'
prototype='define'
ptrsize='8'
quadkind='2'
quadtype='long'
randbits='48'
randfunc='drand48'
random_r_proto='REENTRANT_PROTO_I_St'
randseedtype='long'
ranlib=':'
rd_nodata='-1'
readdir64_r_proto='REENTRANT_PROTO_I_TSR'
readdir_r_proto='REENTRANT_PROTO_I_TSR'
revision='5'
rm='rm'
rm_try='/bin/rm -f try try a.out .out try.[cho] try..o core core.try* try.core*'
rmail=''
run=''
runnm='false'
sPRIEUldbl='"LE"'
sPRIFUldbl='"LF"'
sPRIGUldbl='"LG"'
sPRIXU64='"lX"'
sPRId64='"ld"'
sPRIeldbl='"Le"'
sPRIfldbl='"Lf"'
sPRIgldbl='"Lg"'
sPRIi64='"li"'
sPRIo64='"lo"'
sPRIu64='"lu"'
sPRIx64='"lx"'
sSCNfldbl='"Lf"'
sched_yield='sched_yield()'
scriptdir='/home/travis/perl5/perlbrew/perls/5.8.9-thr/bin'
scriptdirexp='/home/travis/perl5/perlbrew/perls/5.8.9-thr/bin'
sed='sed'
seedfunc='srand48'
selectminbits='64'
selecttype='fd_set *'
sendmail=''
setgrent_r_proto='0'
sethostent_r_proto='0'
setlocale_r_proto='0'
setnetent_r_proto='0'
setprotoent_r_proto='0'
setpwent_r_proto='0'
setservent_r_proto='0'
sh='/bin/sh'
shar=''
sharpbang='#!'
shmattype='void *'
shortsize='2'
shrpenv=''
shsharp='true'
sig_count='65'
sig_name='ZERO HUP INT QUIT ILL TRAP ABRT BUS FPE KILL USR1 SEGV USR2 PIPE ALRM TERM STKFLT CHLD CONT STOP TSTP TTIN TTOU URG XCPU XFSZ VTALRM PROF WINCH IO PWR SYS NUM32 NUM33 RTMIN NUM35 NUM36 NUM37 NUM38 NUM39 NUM40 NUM41 NUM42 NUM43 NUM44 NUM45 NUM46 NUM47 NUM48 NUM49 NUM50 NUM51 NUM52 NUM53 NUM54 NUM55 NUM56 NUM57 NUM58 NUM59 NUM60 NUM61 NUM62 NUM63 RTMAX IOT CLD POLL UNUSED '
sig_name_init='"ZERO", "HUP", "INT", "QUIT", "ILL", "TRAP", "ABRT", "BUS", "FPE", "KILL", "USR1", "SEGV", "USR2", "PIPE", "ALRM", "TERM", "STKFLT", "CHLD", "CONT", "STOP", "TSTP", "TTIN", "TTOU", "URG", "XCPU", "XFSZ", "VTALRM", "PROF", "WINCH", "IO", "PWR", "SYS", "NUM32", "NUM33", "RTMIN", "NUM35", "NUM36", "NUM37", "NUM38", "NUM39", "NUM40", "NUM41", "NUM42", "NUM43", "NUM44", "NUM45", "NUM46", "NUM47", "NUM48", "NUM49", "NUM50", "NUM51", "NUM52", "NUM53", "NUM54", "NUM55", "NUM56", "NUM57", "NUM58", "NUM59", "NUM60", "NUM61", "NUM62", "NUM63", "RTMAX", "IOT", "CLD", "POLL", "UNUSED", 0'
sig_num='0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 6 17 29 31 '
sig_num_init='0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 6, 17, 29, 31, 0'
sig_size='69'
signal_t='void'
sitearch='/home/travis/perl5/perlbrew/perls/5.8.9-thr/lib/site_perl/5.8.9/x86_64-linux-thread-multi'
sitearchexp='/home/travis/perl5/perlbrew/perls/5.8.9-thr/lib/site_perl/5.8.9/x86_64-linux-thread-multi'
sitebin='/home/travis/perl5/perlbrew/perls/5.8.9-thr/bin'
sitebinexp='/home/travis/perl5/perlbrew/perls/5.8.9-thr/bin'
sitehtml1dir=''
sitehtml1direxp=''
sitehtml3dir=''
sitehtml3direxp=''
sitelib='/home/travis/perl5/perlbrew/perls/5.8.9-thr/lib/site_perl/5.8.9'
sitelib_stem='/home/travis/perl5/perlbrew/perls/5.8.9-thr/lib/site_perl'
sitelibexp='/home/travis/perl5/perlbrew/perls/5.8.9-thr/lib/site_perl/5.8.9'
siteman1dir=''
siteman1direxp=''
siteman3dir=''
siteman3direxp=''
siteprefix='/home/travis/perl5/perlbrew/perls/5.8.9-thr'
siteprefixexp='/home/travis/perl5/perlbrew/perls/5.8.9-thr'
sitescript='/home/travis/perl5/perlbrew/perls/5.8.9-thr/bin'
sitescriptexp='/home/travis/perl5/perlbrew/perls/5.8.9-thr/bin'
sizesize='8'
sizetype='size_t'
sleep=''
smail=''
so='so'
sockethdr=''
socketlib=''
socksizetype='socklen_t'
sort='sort'
spackage='Perl5'
spitshell='cat'
srand48_r_proto='REENTRANT_PROTO_I_LS'
srandom_r_proto='REENTRANT_PROTO_I_TS'
src='.'
ssizetype='ssize_t'
startperl='#!/home/travis/perl5/perlbrew/perls/5.8.9-thr/bin/perl'
startsh='#!/bin/sh'
static_ext=' '
stdchar='char'
stdio_base='((fp)->_IO_read_base)'
stdio_bufsiz='((fp)->_IO_read_end - (fp)->_IO_read_base)'
stdio_cnt='((fp)->_IO_read_end - (fp)->_IO_read_ptr)'
stdio_filbuf=''
stdio_ptr='((fp)->_IO_read_ptr)'
stdio_stream_array=''
strerror_r_proto='REENTRANT_PROTO_B_IBW'
strings='/usr/include/string.h'
submit=''
subversion='9'
sysman='/usr/share/man/man1'
tail=''
tar=''
targetarch=''
tbl=''
tee=''
test='test'
timeincl='/usr/include/x86_64-linux-gnu/sys/time.h /usr/include/time.h '
timetype='time_t'
tmpnam_r_proto='REENTRANT_PROTO_B_B'
to=':'
touch='touch'
tr='tr'
trnl='\n'
troff=''
ttyname_r_proto='REENTRANT_PROTO_I_IBW'
u16size='2'
u16type='unsigned short'
u32size='4'
u32type='unsigned int'
u64size='8'
u64type='unsigned long'
u8size='1'
u8type='unsigned char'
uidformat='"u"'
uidsign='1'
uidsize='4'
uidtype='uid_t'
uname='uname'
uniq='uniq'
uquadtype='unsigned long'
use5005threads='undef'
use64bitall='define'
use64bitint='define'
usecrosscompile='undef'
usedl='define'
usefaststdio='define'
useithreads='define'
uselargefiles='define'
uselongdouble='undef'
usemallocwrap='define'
usemorebits='undef'
usemultiplicity='define'
usemymalloc='n'
usenm='false'
useopcode='true'
useperlio='define'
useposix='true'
usereentrant='undef'
userelocatableinc='undef'
usesfio='false'
useshrplib='false'
usesitecustomize='undef'
usesocks='undef'
usethreads='define'
usevendorprefix='undef'
usevfork='false'
usrinc='/usr/include'
uuname=''
uvXUformat='"lX"'
uvoformat='"lo"'
uvsize='8'
uvtype='unsigned long'
uvuformat='"lu"'
uvxformat='"lx"'
vendorarch=''
vendorarchexp=''
vendorbin=''
vendorbinexp=''
vendorhtml1dir=' '
vendorhtml1direxp=''
vendorhtml3dir=' '
vendorhtml3direxp=''
vendorlib=''
vendorlib_stem=''
vendorlibexp=''
vendorman1dir=' '
vendorman1direxp=''
vendorman3dir=' '
vendorman3direxp=''
vendorprefix=''
vendorprefixexp=''
vendorscript=''
vendorscriptexp=''
version='5.8.9'
version_patchlevel_string='version 8 subversion 9'
versiononly='undef'
vi=''
voidflags='15'
xlibpth='/usr/lib/386 /lib/386'
yacc='yacc'
yaccflags=''
zcat=''
zip='zip'
!END!

my $i = 0;
foreach my $c (8,7,6,5,4,3,2) { $i |= ord($c); $i <<= 8 }
$i |= ord(1);
our $byteorder = join('', unpack('aaaaaaaa', pack('L!', $i)));
s/(byteorder=)(['"]).*?\2/$1$2$Config::byteorder$2/m;

my $config_sh_len = length $_;

our $Config_SH_expanded = "\n$_" . << 'EOVIRTUAL';
ccflags_nolargefiles='-D_REENTRANT -D_GNU_SOURCE -fno-strict-aliasing -pipe -I/usr/local/include '
ldflags_nolargefiles=' -L/usr/local/lib'
libs_nolargefiles='-lnsl -lgdbm -ldl -lm -lcrypt -lutil -lpthread -lc -lgdbm_compat'
libswanted_nolargefiles='sfio socket inet nsl nm gdbm dbm db malloc dl dld ld sun m crypt sec util pthread c cposix posix ucb BSD gdbm_compat'
EOVIRTUAL

# Search for it in the big string
sub fetch_string {
    my($self, $key) = @_;

    # We only have ' delimted.
    my $start = index($Config_SH_expanded, "\n$key=\'");
    # Start can never be -1 now, as we've rigged the long string we're
    # searching with an initial dummy newline.
    return undef if $start == -1;

    $start += length($key) + 3;

    my $value = substr($Config_SH_expanded, $start,
                       index($Config_SH_expanded, "'\n", $start)
		       - $start);
    # So we can say "if $Config{'foo'}".
    $value = undef if $value eq 'undef';
    $self->{$key} = $value; # cache it
}

my $prevpos = 0;

sub FIRSTKEY {
    $prevpos = 0;
    substr($Config_SH_expanded, 1, index($Config_SH_expanded, '=') - 1 );
}

sub NEXTKEY {
    my $pos = index($Config_SH_expanded, qq('\n), $prevpos) + 2;
    my $len = index($Config_SH_expanded, "=", $pos) - $pos;
    $prevpos = $pos;
    $len > 0 ? substr($Config_SH_expanded, $pos, $len) : undef;
}

sub EXISTS {
    return 1 if exists($_[0]->{$_[1]});

    return(index($Config_SH_expanded, "\n$_[1]='") != -1
          );
}

sub STORE  { die "\%Config::Config is read-only\n" }
*DELETE = \&STORE;
*CLEAR  = \&STORE;


sub config_sh {
    substr $Config_SH_expanded, 1, $config_sh_len;
}

sub config_re {
    my $re = shift;
    return map { chomp; $_ } grep eval{ /^(?:$re)=/ }, split /^/,
    $Config_SH_expanded;
}

sub config_vars {
    # implements -V:cfgvar option (see perlrun -V:)
    foreach (@_) {
	# find optional leading, trailing colons; and query-spec
	my ($notag,$qry,$lncont) = m/^(:)?(.*?)(:)?$/;	# flags fore and aft, 
	# map colon-flags to print decorations
	my $prfx = $notag ? '': "$qry=";		# tag-prefix for print
	my $lnend = $lncont ? ' ' : ";\n";		# line ending for print

	# all config-vars are by definition \w only, any \W means regex
	if ($qry =~ /\W/) {
	    my @matches = config_re($qry);
	    print map "$_$lnend", @matches ? @matches : "$qry: not found"		if !$notag;
	    print map { s/\w+=//; "$_$lnend" } @matches ? @matches : "$qry: not found"	if  $notag;
	} else {
	    my $v = (exists $Config::Config{$qry}) ? $Config::Config{$qry}
						   : 'UNKNOWN';
	    $v = 'undef' unless defined $v;
	    print "${prfx}'${v}'$lnend";
	}
    }
}

# Called by the real AUTOLOAD
sub launcher {
    undef &AUTOLOAD;
    goto \&$Config::AUTOLOAD;
}

1;
