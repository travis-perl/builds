package Lingua::EN::Inflect;

use strict;
use vars qw($VERSION @EXPORT_OK %EXPORT_TAGS @ISA);
use Env;

require Exporter;
@ISA = qw(Exporter);

our $VERSION = '1.904';

%EXPORT_TAGS =
(
    ALL =>      [ qw( classical inflect
                  PL PL_N PL_V PL_ADJ NO NUM A AN
                  PL_eq PL_N_eq PL_V_eq PL_ADJ_eq
                  PART_PRES
                  ORD
                  NUMWORDS
                  WORDLIST
                  def_noun def_verb def_adj def_a def_an )],

    INFLECTIONS =>  [ qw( classical inflect
                  PL PL_N PL_V PL_ADJ PL_eq
                  NO NUM A AN PART_PRES )],

    PLURALS =>  [ qw( classical inflect
                  PL PL_N PL_V PL_ADJ NO NUM
                  PL_eq PL_N_eq PL_V_eq PL_ADJ_eq )],

    COMPARISONS =>  [ qw( classical
                  PL_eq PL_N_eq PL_V_eq PL_ADJ_eq )],

    ARTICLES => [ qw( classical inflect NUM A AN )],

    NUMERICAL =>    [ qw( ORD NUMWORDS )],

    USER_DEFINED => [ qw( def_noun def_verb def_adj def_a def_an )],
);

Exporter::export_ok_tags(qw( ALL ));

# SUPPORT CLASSICAL PLURALIZATIONS

my %def_classical = (
    all      => 0,
    zero     => 0,
    herd     => 0,
    names    => 1,
    persons  => 0,
    ancient  => 0,
);

my %all_classical = (
    all               => 1,
    zero              => 1,
    herd              => 1,
    names             => 1,
    persons           => 1,
    ancient           => 1,
    noble_and_ancient => 10,
);

my %classical = %def_classical;

my $classical_mode = join '|', keys %all_classical;
   $classical_mode = qr/^(?:$classical_mode)$/;

sub classical
{
    if (!@_) {
        %classical = %all_classical;
        return;
    }
    if (@_==1 && $_[0] !~ $classical_mode) {
        %classical = $_[0] ? %all_classical : ();
        return;
    }
    while (@_) {
        my $arg = shift;
        if ($arg !~ $classical_mode) {
            die "Unknown classical mode ($arg)\n";
        }
        if (@_ && $_[0] !~ $classical_mode) { $classical{$arg} = shift; }
        else                                { $classical{$arg} = 1;     }

        if ($arg eq 'all') {
            %classical = $classical{all} ? %all_classical : ();
        }
    }
}

my $persistent_count;

sub NUM     # (;$count,$show)
{
    if (defined $_[0])
    {
        $persistent_count = $_[0];
        return $_[0] if !defined($_[1]) || $_[1];
    }
    else
    {
        $persistent_count = undef;
    }
    return '';
}


# 0. PERFORM GENERAL INFLECTIONS IN A STRING

sub enclose { "(?:$_[0])" }

sub inflect
{
    my $save_persistent_count = $persistent_count;
    my @sections = split /(NUM\([^)]*\))/, $_[0];
    my $inflection = "";

    foreach ( @sections )
    {
        unless (s/NUM\(\s*?(?:([^),]*)(?:,([^)]*))?)?\)/ NUM($1,$2) /xe)
        {
            1 while
               s/\bPL   \( ([^),]*) (, ([^)]*) )? \)  / PL($1,$3)   /xeg
            || s/\bPL_N \( ([^),]*) (, ([^)]*) )? \)  / PL_N($1,$3) /xeg
            || s/\bPL_V \( ([^),]*) (, ([^)]*) )? \)  / PL_V($1,$3) /xeg
            || s/\bPL_ADJ \( ([^),]*) (, ([^)]*) )? \)  / PL_ADJ($1,$3) /xeg
            || s/\bAN?  \( ([^),]*) (, ([^)]*) )? \)  / A($1,$3)    /xeg
            || s/\bNO   \( ([^),]*) (, ([^)]*) )? \)  / NO($1,$3)   /xeg
            || s/\bORD  \( ([^)]*) \)                 / ORD($1)   /xeg
            || s/\bNUMWORDS  \( ([^)]*) \)            / NUMWORDS($1)   /xeg
            || s/\bPART_PRES  \( ([^)]*) \)            / PART_PRES($1)   /xeg
        }

        $inflection .= $_;
    }

    $persistent_count = $save_persistent_count;
    return $inflection;
}


# 1. PLURALS

my %PL_sb_irregular_s =
(
    "corpus"          => "corpuses|corpora",
    "opus"            => "opuses|opera",
    "magnum opus"     => "magnum opuses|magna opera",
    "genus"           => "genera",
    "mythos"          => "mythoi",
    "penis"           => "penises|penes",
    "testis"          => "testes",
    "atlas"           => "atlases|atlantes",
    "yes"             => "yeses",
    'editio princeps' => 'editiones principes',
    'starets'         => 'startsy',
    'staretz'         => 'startzy',
    'cyclops'         => 'cyclopses',
    'tursiops'        => 'tursiopses',
    'triceratops'     => 'triceratopses',
    'protoceratops'   => 'protoceratopses',
);

my %PL_sb_irregular =
(
    "child"       => "children",
    "brother"     => "brothers|brethren",
    "loaf"        => "loaves",
    "hoof"        => "hoofs|hooves",
    "beef"        => "beefs|beeves",
    "thief"       => "thiefs|thieves",
    "money"       => "monies",
    "mongoose"    => "mongooses",
    "ox"          => "oxen",
    "cow"         => "cows|kine",
    "graffito"    => "graffiti",
    "prima donna" => "prima donnas|prime donne",
    "octopus"     => "octopuses|octopodes",
    "genie"       => "genies|genii",
    "ganglion"    => "ganglions|ganglia",
    "trilby"      => "trilbys",
    "turf"        => "turfs|turves",
    "numen"       => "numina",
    "atman"       => "atmas",
    "occiput"     => "occiputs|occipita",
    'sabretooth'  => 'sabretooths',
    'sabertooth'  => 'sabertooths',
    'lowlife'     => 'lowlifes',
    'flatfoot'    => 'flatfoots',
    'tenderfoot'  => 'tenderfoots',
    'Romany'      => 'Romanies',
    'romany'      => 'romanies',
    'Tornese'     => 'Tornesi',
    'Jerry'       => 'Jerrys',
    'jerry'       => 'jerries',
    'Mary'        => 'Marys',
    'mary'        => 'maries',
    'talouse'     => 'talouses',
    'blouse'      => 'blouses',
    'Rom'         => 'Roma',
    'rom'         => 'roma',
    'carmen'      => 'carmina',
    'cheval'      => 'chevaux',
    'chervonetz'  => 'chervontzi',
    'kuvasz'      => 'kuvaszok',
    'felo'        => 'felones',
    'put-off'     => 'put-offs',
    'set-off'     => 'set-offs',
    'set-out'     => 'set-outs',
    'set-to'      => 'set-tos',
    'brother-german' => 'brothers-german|brethren-german',
    'studium generale' => 'studia generali',

    %PL_sb_irregular_s,
);

my $PL_sb_irregular = enclose join '|', reverse sort keys %PL_sb_irregular;

# Z's that don't double

my @PL_sb_z_zes =
(
    "batz", "quartz", "topaz", "snooz(?=e)", "kibbutz",
);
my $PL_sb_z_zes = enclose join '|', @PL_sb_z_zes;

# UNCONDITIONAL "..is" -> "..ides"

my @PL_sb_U_is_ides =
(
    "aphis",
);

my $PL_sb_U_is_ides = enclose join "|", map { substr($_,0,-2) } @PL_sb_U_is_ides;

# CLASSICAL "..is" -> "..ides"

my @PL_sb_C_is_ides =
(
# GENERAL WORDS...

    "ephemeris", "iris", "clitoris",
    "chrysalis", "epididymis",

# INFLAMATIONS...

    ".*itis",

);

my $PL_sb_C_is_ides = enclose join "|", map { substr($_,0,-2) } @PL_sb_C_is_ides;

# UNCONDITIONAL "..a" -> "..ata"

my @PL_sb_U_a_ata =
(
    "plasmalemma", "pseudostoma",
);

my $PL_sb_U_a_ata = enclose join "|", map { substr($_,0,-1) } @PL_sb_U_a_ata;

# CLASSICAL "..a" -> "..ata"

my @PL_sb_C_a_ata =
(
    "anathema", "bema", "carcinoma", "charisma", "diploma",
    "dogma", "drama", "edema", "enema", "enigma", "lemma",
    "lymphoma", "magma", "melisma", "miasma", "oedema",
    "sarcoma", "schema", "soma", "stigma", "stoma", "trauma",
    "gumma", "pragma", "bema",
);

my $PL_sb_C_a_ata = enclose join "|", map { substr($_,0,-1) } @PL_sb_C_a_ata;

# UNCONDITIONAL "..a" -> "..ae"

my $PL_sb_U_a_ae = enclose join "|",
(
    "alumna", "alga", "vertebra", "persona"
);

# CLASSICAL "..a" -> "..ae"

my $PL_sb_C_a_ae = enclose join "|",
(
    "amoeba", "antenna", "formula", "hyperbola",
    "medusa", "nebula", "parabola", "abscissa",
    "hydra", "nova", "lacuna", "aurora", ".*umbra",
    "flora", "fauna",
);

# CLASSICAL "..en" -> "..ina"

my $PL_sb_C_en_ina = enclose join "|", map { substr($_,0,-2) }
(
    "stamen", "foramen", "lumen"
);

# UNCONDITIONAL "..um" -> "..a"

my $PL_sb_U_um_a = enclose join "|", map { substr($_,0,-2) }
(
    "bacterium",    "agendum",  "desideratum",  "erratum",
    "stratum",  "datum",    "ovum",     "extremum",
    "candelabrum", "intermedium", "malum", "Progymnasium",
);

# CLASSICAL "..um" -> "..a"

my $PL_sb_C_um_a = enclose join "|", map { substr($_,0,-2) }
(
    "maximum",  "minimum",    "momentum",   "optimum",
    "quantum",  "cranium",    "curriculum", "dictum",
    "phylum",   "aquarium",   "compendium", "emporium",
    "enconium", "gymnasium",  "honorarium", "interregnum",
    "lustrum",  "memorandum", "millennium", "rostrum",
    "spectrum", "speculum",   "stadium",    "trapezium",
    "ultimatum",    "medium",   "vacuum",   "velum",
    "consortium",
);

# UNCONDITIONAL "..us" -> "i"

my $PL_sb_U_us_i = enclose join "|", map { substr($_,0,-2) }
(
    "alumnus",  "alveolus", "bacillus", "bronchus",
    "locus",    "nucleus",  "stimulus", "meniscus",
    "sarcophagus", "interradius", "perradius", "triradius",
);

# CLASSICAL "..us" -> "..i"

my $PL_sb_C_us_i = enclose join "|", map { substr($_,0,-2) }
(
    "focus",    "radius",   "genius",
    "incubus",  "succubus", "nimbus",
    "fungus",   "nucleolus",    "stylus",
    "torus",    "umbilicus",    "uterus",
    "hippopotamus", "cactus",
);

# CLASSICAL "..us" -> "..us"  (ASSIMILATED 4TH DECLENSION LATIN NOUNS)

my $PL_sb_C_us_us = enclose join "|",
(
    "status", "apparatus", "prospectus", "sinus",
    "hiatus", "impetus", "plexus",
);

# UNCONDITIONAL "..on" -> "a"

my $PL_sb_U_on_a = enclose join "|", map { substr($_,0,-2) }
(
    "criterion",    "perihelion",   "aphelion",
    "phenomenon",   "prolegomenon", "noumenon",
    "organon",  "asyndeton",    "hyperbaton",
    "legomenon",
);

# CLASSICAL "..on" -> "..a"

my $PL_sb_C_on_a = enclose join "|", map { substr($_,0,-2) }
(
    "oxymoron",
);

# CLASSICAL "..o" -> "..i"  (BUT NORMALLY -> "..os")

my @PL_sb_C_o_i =
(
    "solo",     "soprano",  "basso",    "alto",
    "contralto",    "tempo",    "piano",    "virtuoso",
);
my $PL_sb_C_o_i = enclose join "|", map { substr($_,0,-1) } @PL_sb_C_o_i;

# ALWAYS "..o" -> "..os"

my $PL_sb_U_o_os = enclose join "|",
(
        "^ado",          "aficionado",   "aggro",
        "albino",       "allegro",      "ammo",
        "Antananarivo", "archipelago",  "armadillo",
        "auto",         "avocado",      "Bamako",
        "Barquisimeto", "bimbo",        "bingo",
        "Biro",         "bolero",       "Bolzano",
        "bongo",        "Boto",         "burro",
        "Cairo",        "canto",        "cappuccino",
        "casino",       "cello",        "Chicago",
        "Chimango",     "cilantro",     "cochito",
        "coco",         "Colombo",      "Colorado",
        "commando",     "concertino",   "contango",
        "credo",        "crescendo",    "cyano",
        "demo",         "ditto",        "Draco",
        "dynamo",       "embryo",       "Esperanto",
        "espresso",     "euro",         "falsetto",
        "Faro",         "fiasco",       "Filipino",
        "flamenco",     "furioso",      "generalissimo",
        "Gestapo",      "ghetto",       "gigolo",
        "gizmo",        "Greensboro",   "gringo",
        "Guaiabero",    "guano",        "gumbo",
        "gyro",         "hairdo",       "hippo",
        "Idaho",        "impetigo",     "inferno",
        "info",         "intermezzo",   "intertrigo",
        "Iquico",       "^ISO",          "jumbo",
        "junto",        "Kakapo",       "kilo",
        "Kinkimavo",    "Kokako",       "Kosovo",
        "Lesotho",      "libero",       "libido",
        "libretto",     "lido",         "Lilo",
        "limbo",        "limo",         "lineno",
        "lingo",        "lino",         "livedo",
        "loco",         "logo",         "lumbago",
        "macho",        "macro",        "mafioso",
        "magneto",      "magnifico",    "Majuro",
        "Malabo",       "manifesto",    "Maputo",
        "Maracaibo",    "medico",       "memo",
        "metro",        "Mexico",       "micro",
        "Milano",       "Monaco",       "mono",
        "Montenegro",   "Morocco",      "Muqdisho",
        "myo",          "^NATO",         "^NCO",
        "neutrino",     "^NGO",          "Ningbo",
        "octavo",       "oregano",      "Orinoco",
        "Orlando",      "Oslo",         "^oto",
        "panto",        "Paramaribo",   "Pardusco",
        "pedalo",       "photo",        "pimento",
        "pinto",        "pleco",        "Pluto",
        "pogo",         "polo",         "poncho",
        "Porto-Novo",   "Porto",        "pro",
        "psycho",       "pueblo",       "quarto",
        "Quito",        "rhino",        "risotto",
        "rococo",       "rondo",        "Sacramento",
        "saddo",        "sago",         "salvo",
        "Santiago",     "Sapporo",      "Sarajevo",
        "scherzando",   "scherzo",      "silo",
        "sirocco",      "sombrero",     "staccato",
        "sterno",       "stucco",       "stylo",
        "sumo",         "Taiko",        "techno",
        "terrazzo",     "testudo",      "timpano",
        "tiro",         "tobacco",      "Togo",
        "Tokyo",        "torero",       "Torino",
        "Toronto",      "torso",        "tremolo",
        "typo",         "tyro",         "ufo",
        "UNESCO",       "vaquero",      "vermicello",
        "verso",        "vibrato",      "violoncello",
        "Virgo",        "weirdo",       "WHO",
        "WTO",          "Yamoussoukro", "yo-yo",
        "zero",         "Zibo",

    @PL_sb_C_o_i,
);


# UNCONDITIONAL "..ch" -> "..chs"

my $PL_sb_U_ch_chs = enclose join "|", map { substr($_,0,-2) }
qw(
    czech eunuch stomach
);

# UNCONDITIONAL "..[ei]x" -> "..ices"

my $PL_sb_U_ex_ices = enclose join "|", map { substr($_,0,-2) }
(
    "codex",    "murex",    "silex",
);

my $PL_sb_U_ix_ices = enclose join "|", map { substr($_,0,-2) }
(
    "radix",    "helix",
);

# CLASSICAL "..[ei]x" -> "..ices"

my $PL_sb_C_ex_ices = enclose join "|", map { substr($_,0,-2) }
(
    "vortex",   "vertex",   "cortex",   "latex",
    "pontifex", "apex",     "index",    "simplex",
);

my $PL_sb_C_ix_ices = enclose join "|", map { substr($_,0,-2) }
(
    "appendix",
);

# ARABIC: ".." -> "..i"

my $PL_sb_C_i = enclose join "|",
(
    "afrit",    "afreet",   "efreet",
);

# HEBREW: ".." -> "..im"

my $PL_sb_C_im = enclose join "|",
(
    "goy",      "seraph",   "cherub",  "zuz", "kibbutz",
);

# UNCONDITIONAL "..man" -> "..mans"

my $PL_sb_U_man_mans = enclose join "|",
qw(
    \bataman caiman cayman ceriman
    \bdesman \bdolman \bfarman \bharman \bhetman
    human \bleman ottoman shaman talisman
    Alabaman Bahaman Burman German
    Hiroshiman Liman Nakayaman Norman Oklahoman
    Panaman Roman Selman Sonaman Tacoman Yakiman
    Yokohaman Yuman
);

my @PL_sb_uninflected_s =
(
# PAIRS OR GROUPS SUBSUMED TO A SINGULAR...
    "breeches", "britches", "pajamas", "pyjamas", "clippers", "gallows",
    "hijinks", "headquarters", "pliers", "scissors", "testes", "herpes",
    "pincers", "shears", "proceedings", "trousers",

# UNASSIMILATED LATIN 4th DECLENSION

    "cantus", "coitus", "nexus",

# RECENT IMPORTS...
    "contretemps", "corps", "debris",
    ".*ois", "siemens",

# DISEASES
    ".*measles", "mumps",

# MISCELLANEOUS OTHERS...
    "diabetes", "jackanapes", ".*series", "species", "rabies",
    "chassis", "innings", "news", "mews", "haggis",
);

my $PL_sb_uninflected_herd = enclose join "|",
# DON'T INFLECT IN CLASSICAL MODE, OTHERWISE NORMAL INFLECTION
(
    "wildebeest", "swine", "eland", "bison", "buffalo",
    "elk", "rhinoceros", 'zucchini',
    'caribou', 'dace', 'grouse', 'guinea[- ]fowl',
    'haddock', 'hake', 'halibut', 'herring', 'mackerel',
    'pickerel', 'pike', 'roe', 'seed', 'shad',
    'snipe', 'teal', 'turbot', 'water[- ]fowl',
);

my $PL_sb_lese_lesen = enclose join "|",
(
    'Auslese',
    'beerenauslese',
    'Spaetlese',
    'trockenbeerenauslese',
);

my $PL_sb_uninflected = enclose join "|",
(
# SOME FISH AND HERD ANIMALS
    ".*fish", "tuna", "salmon", "mackerel", "trout",
    "bream", "sea[- ]bass", "carp", "cod", "flounder", "whiting",

    ".*deer", ".*sheep", "moose",

# ALL NATIONALS ENDING IN -ese
    "Portuguese", "Amoyese", "Borghese", "Congoese", "Faroese",
    "Foochowese", "Genevese", "Genoese", "Gilbertese", "Hottentotese",
    "Kiplingese", "Kongoese", "Lucchese", "Maltese", "Nankingese",
    "Niasese", "Pekingese", "Piedmontese", "Pistoiese", "Sarawakese",
    "Shavese", "Vermontese", "Wenchowese", "Yengeese",
    ".*[nrlm]ese",

# SOME WORDS ENDING IN ...s (OFTEN PAIRS TAKEN AS A WHOLE)

    @PL_sb_uninflected_s,

# DISEASES
    ".*pox",


# OTHER ODDITIES
    "graffiti", "djinn", 'samuri',
    '.*craft$', 'offspring', 'pence', 'quid', 'hertz',
);

# SINGULAR WORDS ENDING IN ...s (ALL INFLECT WITH ...es)

my $PL_sb_singular_s = enclose join '|',
(
    ".*ss",
        "acropolis", "aegis", "alias", "asbestos", "bathos", "bias",
    "bronchitis", "bursitis", "caddis", "cannabis",
        "canvas", "chaos", "cosmos", "dais", "digitalis",
        "epidermis", "ethos", "eyas", "gas", "glottis",
    "hubris", "ibis", "lens", "mantis", "marquis", "metropolis",
        "pathos", "pelvis", "polis", "rhinoceros",
        "sassafras", "trellis", ".*us", "[A-Z].*es",

    @PL_sb_C_is_ides,
    @PL_sb_U_is_ides,
);

my $PL_v_special_s = enclose join '|',
(
    $PL_sb_singular_s,
    @PL_sb_uninflected_s,
    keys %PL_sb_irregular_s,
    '(.*[csx])is',
    '(.*)ceps',
    '[A-Z].*s',
);

my %PL_sb_postfix_adj = (
    'general' => ['(?!major|lieutenant|brigadier|adjutant|.*star)\S+'],
    'martial' => [qw(court)],
);

foreach (keys %PL_sb_postfix_adj) {
    $PL_sb_postfix_adj{$_} = enclose
                 enclose(join('|', @{$PL_sb_postfix_adj{$_}}))
                   . "(?=(?:-|\\s+)$_)";
}

my $PL_sb_postfix_adj = '(' . join('|', values %PL_sb_postfix_adj) . ')(.*)';

my $PL_prep = enclose join '|', qw (
    about above across after against amid amidst among around as at athwart atop
    barring before behind below beneath beside besides between betwixt beyond but by
    circa
    despite down during
    except
    failing for from
    given
    in inside into
    like
    minus
    near next
    of off on onto out outside over
    pace past per plus pro
    qua
    round
    sans save since
    than through throughout thru thruout till times to toward towards
    under underneath unlike until unto up upon
    versus via vs
    with within without worth
);

my $PL_sb_prep_dual_compound = '(.*?)((?:-|\s+)(?:'.$PL_prep.'|d[eua])(?:-|\s+))a(?:-|\s+)(.*)';

my $PL_sb_prep_compound = '(.*?)((-|\s+)('.$PL_prep.'|d[eua])((-|\s+)(.*))?)';


my %PL_pron_nom =
(
#   NOMINATIVE      REFLEXIVE

"i" => "we",    "myself"   =>   "ourselves",
"you"   => "you",   "yourself" =>   "yourselves",
"she"   => "they",  "herself"  =>   "themselves",
"he"    => "they",  "himself"  =>   "themselves",
"it"    => "they",  "itself"   =>   "themselves",
"they"  => "they",  "themself" =>   "themselves",

#   POSSESSIVE

"mine"   => "ours",
"yours"  => "yours",
"hers"   => "theirs",
"his"    => "theirs",
"its"    => "theirs",
"theirs" => "theirs",
);

my %PL_pron_acc =
(
#   ACCUSATIVE      REFLEXIVE

"me"    => "us",    "myself"   =>   "ourselves",
"you"   => "you",   "yourself" =>   "yourselves",
"her"   => "them",  "herself"  =>   "themselves",
"him"   => "them",  "himself"  =>   "themselves",
"it"    => "them",  "itself"   =>   "themselves",
"them"  => "them",  "themself" =>   "themselves",
);

my $PL_pron_acc = enclose join '|', keys %PL_pron_acc;

my %PL_v_irregular_pres =
(
#   1st PERS. SING.     2ND PERS. SING.     3RD PERS. SINGULAR
#               3RD PERS. (INDET.)

"am"    => "are",   "are"   => "are",   "is"     => "are",
"was"   => "were",  "were"  => "were",  "was"    => "were",
"have"  => "have",  "have"  => "have",  "has"    => "have",
"do"    => "do",    "do"    => "do",    "does"   => "do",
);

my $PL_v_irregular_pres = enclose join '|', keys %PL_v_irregular_pres;

my %PL_v_ambiguous_pres =
(
#   1st PERS. SING.     2ND PERS. SING.     3RD PERS. SINGULAR
#               3RD PERS. (INDET.)

"act"   => "act",   "act"   => "act",   "acts"    => "act",
"blame" => "blame", "blame" => "blame", "blames"  => "blame",
"can"   => "can",   "can"   => "can",   "can"     => "can",
"must"  => "must",  "must"  => "must",  "must"    => "must",
"fly"   => "fly",   "fly"   => "fly",   "flies"   => "fly",
"copy"  => "copy",  "copy"  => "copy",  "copies"  => "copy",
"drink" => "drink", "drink" => "drink", "drinks"  => "drink",
"fight" => "fight", "fight" => "fight", "fights"  => "fight",
"fire"  => "fire",  "fire"  => "fire",  "fires"   => "fire",
"like"  => "like",  "like"  => "like",  "likes"   => "like",
"look"  => "look",  "look"  => "look",  "looks"   => "look",
"make"  => "make",  "make"  => "make",  "makes"   => "make",
"reach" => "reach", "reach" => "reach", "reaches" => "reach",
"run"   => "run",   "run"   => "run",   "runs"    => "run",
"sink"  => "sink",  "sink"  => "sink",  "sinks"   => "sink",
"sleep" => "sleep", "sleep" => "sleep", "sleeps"  => "sleep",
"view"  => "view",  "view"  => "view",  "views"   => "view",
);

my $PL_v_ambiguous_pres = enclose join '|', keys %PL_v_ambiguous_pres;


my $PL_v_irregular_non_pres = enclose join '|',
(
"did", "had", "ate", "made", "put",
"spent", "fought", "sank", "gave", "sought",
"shall", "could", "ought", "should",
);

my $PL_v_ambiguous_non_pres = enclose join '|',
(
"thought", "saw", "bent", "will", "might", "cut",
);

# "..oes" -> "..oe" (the rest are "..oes" -> "o")

my $PL_v_oes_oe = enclose join "|",
qw(
    .*shoes  .*hoes  .*toes
    canoes   floes   oboes  roes  throes  woes
);

my $PL_count_zero = enclose join '|',
(
0, "no", "zero", "nil"
);

my $PL_count_one = enclose join '|',
(
1, "a", "an", "one", "each", "every", "this", "that",
);

my %PL_adj_special =
(
"a"    => "some",   "an"   =>  "some",
"this" => "these",  "that" => "those",
);
my $PL_adj_special = enclose join '|', keys %PL_adj_special;

my %PL_adj_poss =
(
"my"    => "our",
"your"  => "your",
"its"   => "their",
"her"   => "their",
"his"   => "their",
"their" => "their",
);
my $PL_adj_poss = enclose join '|', keys %PL_adj_poss;


sub checkpat
{
local $SIG{__WARN__} = sub {0};
do {$@ =~ s/at.*?$//;
    die "\nBad user-defined singular pattern:\n\t$@\n"}
    if (!eval "'' =~ m/$_[0]/; 1;" or $@);
return @_;
}

sub checkpatsubs
{
checkpat($_[0]);
if (defined $_[1])
{
    local $SIG{__WARN__} = sub {0};
    do {$@ =~ s/at.*?$//;
        die "\nBad user-defined plural string: '$_[1]'\n\t$@\n"}
        if (!eval "qq{$_[1]}; 1;" or $@);
}
return @_;
}

my @PL_sb_user_defined = ();
my @PL_v_user_defined  = ();
my @PL_adj_user_defined  = ();
my @A_a_user_defined   = ();

sub def_noun
{
    unshift @PL_sb_user_defined, checkpatsubs(@_);
    return 1;
}

sub def_verb
{
    unshift @PL_v_user_defined, checkpatsubs(@_[4,5]);
    unshift @PL_v_user_defined, checkpatsubs(@_[2,3]);
    unshift @PL_v_user_defined, checkpatsubs(@_[0,1]);
    return 1;
}

sub def_adj
{
    unshift @PL_adj_user_defined, checkpatsubs(@_);
    return 1;
}

sub def_a
{
unshift @A_a_user_defined, checkpat(@_,'a');
return 1;
}

sub def_an
{
unshift @A_a_user_defined, checkpat(@_,'an');
return 1;
}

sub ud_match
{
my $word = shift;
for (my $i=0; $i < @_; $i+=2)
{
    if ($word =~ /^(?:$_[$i])$/i)
    {
        last unless defined $_[$i+1];
        return eval '"'.$_[$i+1].'"';
    }
}
return undef;
}

do
{
local $SIG{__WARN__} = sub {0};
my $rcfile;

$rcfile = $INC{'Lingua//EN/Inflect.pm'} || '';
$rcfile =~ s/Inflect.pm$/.inflectrc/;
do $rcfile or die "\nBad .inflectrc file ($rcfile):\n\t$@\n"
if $rcfile && -r $rcfile && -s $rcfile;

$rcfile = "$ENV{HOME}/.inflectrc" || '';
do $rcfile or die "\nBad .inflectrc file ($rcfile):\n\t$@\n"
if $rcfile && -r $rcfile && -s $rcfile;
};

sub postprocess     # FIX PEDANTRY AND CAPITALIZATION :-)
{
my ($orig, $inflected) = @_;
$inflected =~ s/([^|]+)\|(.+)/ $classical{all}?$2:$1 /e;
return $orig =~ /^I$/   ? $inflected
 : $orig =~ /^[A-Z]+$/  ? uc $inflected
 : $orig =~ /^[A-Z]/    ? ucfirst $inflected
 :            $inflected;
}

sub PL
#   PL($word,$number)
{
my ($str, $count) = @_;
my ($pre, $word, $post) = ($str =~ m/\A(\s*)(.+?)(\s*)\Z/);
return $str unless $word;
my $plural = postprocess $word,  _PL_special_adjective($word,$count)
              || _PL_special_verb($word,$count)
              || _PL_noun($word,$count);
return $pre.$plural.$post;
}

sub PL_N
#   PL_N($word,$number)
{
my ($str, $count) = @_;
my ($pre, $word, $post) = ($str =~ m/\A(\s*)(.+?)(\s*)\Z/);
return $str unless $word;
my $plural = postprocess $word, _PL_noun($word,$count);
return $pre.$plural.$post;
}

sub PL_V
#   PL_V($word,$number)
{
my ($str, $count) = @_;
my ($pre, $word, $post) = ($str =~ m/\A(\s*)(.+?)(\s*)\Z/);
return $str unless $word;
my $plural = postprocess $word, _PL_special_verb($word,$count)
              || _PL_general_verb($word,$count);
return $pre.$plural.$post;
}

sub PL_ADJ
#   PL_ADJ($word,$number)
{
my ($str, $count) = @_;
my ($pre, $word, $post) = ($str =~ m/\A(\s*)(.+?)(\s*)\Z/);
return $str unless $word;
my $plural = postprocess $word, _PL_special_adjective($word,$count)
              || $word;
return $pre.$plural.$post;
}

sub PL_eq     { _PL_eq(@_, \&PL_N) || _PL_eq(@_, \&PL_V) || _PL_eq(@_, \&PL_ADJ); }
sub PL_N_eq   { _PL_eq(@_, \&PL_N); }
sub PL_V_eq   { _PL_eq(@_, \&PL_V); }
sub PL_ADJ_eq     { _PL_eq(@_, \&PL_ADJ); }

sub _PL_eq
{
my ( $word1, $word2, $PL ) = @_;
my %classval = %classical;
%classical = %all_classical;
my $result = "";
$result = "eq"  if !$result && $word1 eq $word2;
$result = "p:s" if !$result && $word1 eq &$PL($word2);
$result = "s:p" if !$result && &$PL($word1) eq $word2;
%classical = ();
$result = "p:s" if !$result && $word1 eq &$PL($word2);
$result = "s:p" if !$result && &$PL($word1) eq $word2;
%classical = %classval;

if ($PL == \&PL || $PL == \&PL_N)
{
    $result = "p:p"
        if !$result && _PL_check_plurals_N($word1,$word2);
    $result = "p:p"
        if !$result && _PL_check_plurals_N($word2,$word1);
}
if ($PL == \&PL || $PL == \&PL_ADJ)
{
    $result = "p:p"
        if !$result && _PL_check_plurals_ADJ($word1,$word2,$PL);
}

return $result;
}

sub _PL_reg_plurals
{
    $_[0] =~ /($_[1])($_[2]\|\1$_[3]|$_[3]\|\1$_[2])/
}

sub _PL_check_plurals_N
{
my $pair = "$_[0]|$_[1]";
foreach ( values %PL_sb_irregular_s )   { return 1 if $_ eq $pair; }
foreach ( values %PL_sb_irregular ) { return 1 if $_ eq $pair; }

return 1 if
        _PL_reg_plurals($pair, $PL_sb_U_a_ata,   "as","ata")
     || _PL_reg_plurals($pair, $PL_sb_C_a_ata,   "as","ata")
     || _PL_reg_plurals($pair, $PL_sb_U_is_ides, "is","ides")
     || _PL_reg_plurals($pair, $PL_sb_C_is_ides, "is","ides")
     || _PL_reg_plurals($pair, $PL_sb_C_a_ae,    "s","e")
     || _PL_reg_plurals($pair, $PL_sb_C_en_ina,  "ens","ina")
     || _PL_reg_plurals($pair, $PL_sb_C_um_a,    "ums","a")
     || _PL_reg_plurals($pair, $PL_sb_C_us_i,    "uses","i")
     || _PL_reg_plurals($pair, $PL_sb_C_on_a,    "ons","a")
     || _PL_reg_plurals($pair, $PL_sb_C_o_i,     "os","i")
     || _PL_reg_plurals($pair, $PL_sb_C_ex_ices, "exes","ices")
     || _PL_reg_plurals($pair, $PL_sb_C_ix_ices, "ixes","ices")
     || _PL_reg_plurals($pair, $PL_sb_C_i,       "s","i")
     || _PL_reg_plurals($pair, $PL_sb_C_im,      "s","im")

     || _PL_reg_plurals($pair, '.*eau',       "s","x")
     || _PL_reg_plurals($pair, '.*ieu',       "s","x")
     || _PL_reg_plurals($pair, '.*tri',       "xes","ces")
     || _PL_reg_plurals($pair, '.{2,}[yia]n', "xes","ges");


return 0;
}

sub _PL_check_plurals_ADJ
{
my ( $word1a, $word2a ) = @_;
my ( $word1b, $word2b ) = @_;

$word1a = '' unless $word1a =~ s/'s?$//;
$word2a = '' unless $word2a =~ s/'s?$//;
$word1b = '' unless $word1b =~ s/s'$//;
$word2b = '' unless $word2b =~ s/s'$//;

if ($word1a)
{
    return 1 if $word2a && ( _PL_check_plurals_N($word1a, $word2a)
                || _PL_check_plurals_N($word2a, $word1a) );
    return 1 if $word2b && ( _PL_check_plurals_N($word1a, $word2b)
                || _PL_check_plurals_N($word2b, $word1a) );
}
if ($word1b)
{
    return 1 if $word2a && ( _PL_check_plurals_N($word1b, $word2a)
                || _PL_check_plurals_N($word2a, $word1b) );
    return 1 if $word2b && ( _PL_check_plurals_N($word1b, $word2b)
                || _PL_check_plurals_N($word2b, $word1b) );
}


return "";
}

sub _PL_noun
{
my ( $word, $count ) = @_;
my $value;              # UTILITY VARIABLE

# DEFAULT TO PLURAL

$count = $persistent_count
    if !defined($count) && defined($persistent_count);

$count = (defined $count and $count=~/^($PL_count_one)$/io
         or defined $count and $classical{zero}
         and $count=~/^($PL_count_zero)$/io)
            ? 1
            : 2;

return $word if $count==1;

# HANDLE USER-DEFINED NOUNS

return $value if defined($value = ud_match($word, @PL_sb_user_defined));


# HANDLE EMPTY WORD, SINGULAR COUNT AND UNINFLECTED PLURALS

$word eq ''         and return $word;

$word =~ /^($PL_sb_uninflected)$/i && !exists $PL_sb_irregular{$word} && $word !~ /^($PL_sb_lese_lesen)$/i
                and return $word;

$classical{herd} and $word =~ /^($PL_sb_uninflected_herd)$/i
                and return $word;


# HANDLE ISOLATED IRREGULAR PLURALS

$word =~ /^($PL_sb_irregular)$/i
                and return ( $PL_sb_irregular{$1} || $PL_sb_irregular{lc $1} );
$word =~ /(.*)\b($PL_sb_irregular)$/i
                and return $1 . ( $PL_sb_irregular{$2} || $PL_sb_irregular{lc $2} );


# HANDLE COMPOUNDS ("Governor General", "mother-in-law", "aide-de-camp", ETC.)

$word =~ /^(?:$PL_sb_postfix_adj)$/i
                and $value = $2
                and return _PL_noun($1,2)
                       . $value;

$word =~ /^(?:$PL_sb_prep_dual_compound)$/i
                and $value = [$2,$3]
                and return _PL_noun($1,2)
                       . $value->[0]
                       . _PL_noun($value->[1]);

$word =~ /^(?:$PL_sb_prep_compound)$/i
                and $value = $2
                and return _PL_noun($1,2)
                       . $value;

# HANDLE PRONOUNS

$word =~ /^((?:$PL_prep)\s+)($PL_pron_acc)$/i
                and return $1.$PL_pron_acc{lc($2)};

$value = $PL_pron_nom{lc($word)}
                and return $value;

$word =~ /^($PL_pron_acc)$/i
                and return $PL_pron_acc{lc($1)};


# HANDLE FAMILIES OF IRREGULAR PLURALS

$word =~ /(.*$PL_sb_U_man_mans)$/i
                and return "$1s";
$word =~ /(\S*)quy$/i
                and return "$1quies";
$word =~ /(\S*)(person)$/i and return $classical{persons}?"$1persons":"$1people";
$word =~ /(.*)man$/i        and return "$1men";
$word =~ /(.*[ml])ouse$/i   and return "$1ice";
$word =~ /(.*)goose$/i      and return "$1geese";
$word =~ /(.*)tooth$/i      and return "$1teeth";
$word =~ /(.*)foot$/i       and return "$1feet";

# HANDLE UNASSIMILATED IMPORTS

$word =~ /(.*)ceps$/i       and return $word;
$word =~ /(.*)zoon$/i       and return "$1zoa";
$word =~ /(.*[csx])is$/i    and return "$1es";
$word =~ /(.*$PL_sb_U_a_ata)a$/i  and return "$1ata";
$word =~ /(.*$PL_sb_U_is_ides)is$/i   and return "$1ides";
$word =~ /(.*$PL_sb_U_ch_chs)ch$/i    and return "$1chs";
$word =~ /(.*$PL_sb_U_ex_ices)ex$/i   and return "$1ices";
$word =~ /(.*$PL_sb_U_ix_ices)ix$/i   and return "$1ices";
$word =~ /(.*$PL_sb_U_um_a)um$/i  and return "$1a";
$word =~ /(.*$PL_sb_U_us_i)us$/i  and return "$1i";
$word =~ /(.*$PL_sb_U_on_a)on$/i  and return "$1a";
$word =~ /(.*$PL_sb_U_a_ae)$/i    and return "$1e";
$word =~ /(.*$PL_sb_lese_lesen)$/i    and return "$1n";

# HANDLE INCOMPLETELY ASSIMILATED IMPORTS

if ($classical{ancient})
{
    $word =~ /(.*)trix$/i       and return "$1trices";
    $word =~ /(.*)eau$/i        and return "$1eaux";
    $word =~ /(.*)ieu$/i        and return "$1ieux";
    $word =~ /(.{2,}[yia])nx$/i     and return "$1nges";
    $word =~ /(.*$PL_sb_C_en_ina)en$/i    and return "$1ina";
    $word =~ /(.*$PL_sb_C_ex_ices)ex$/i   and return "$1ices";
    $word =~ /(.*$PL_sb_C_ix_ices)ix$/i   and return "$1ices";
    $word =~ /(.*$PL_sb_C_um_a)um$/i  and return "$1a";
    $word =~ /(.*$PL_sb_C_us_i)us$/i  and return "$1i";
    $word =~ /(.*$PL_sb_C_us_us)$/i   and return "$1";
    $word =~ /(.*$PL_sb_C_a_ae)$/i    and return "$1e";
    $word =~ /(.*$PL_sb_C_a_ata)a$/i  and return "$1ata";
    $word =~ /(.*$PL_sb_C_is_ides)is$/i   and return "$1ides";
    $word =~ /(.*$PL_sb_C_o_i)o$/i    and return "$1i";
    $word =~ /(.*$PL_sb_C_on_a)on$/i  and return "$1a";
    $word =~ /$PL_sb_C_im$/i        and return "${word}im";
    $word =~ /$PL_sb_C_i$/i     and return "${word}i";
}


# HANDLE SINGULAR NOUNS ENDING IN ...s OR OTHER SILIBANTS

$word =~ /^($PL_sb_singular_s)$/i   and return "$1es";
$word =~ /^([A-Z].*s)$/             and $classical{names} and return "$1es";
$word =~ /^($PL_sb_z_zes)$/i        and return "$1es";
$word =~ /^(.*[^z])(z)$/i           and return "$1zzes";
$word =~ /^(.*)([cs]h|x|zz|ss)$/i   and return "$1$2es";
# $word =~ /(.*)(us)$/i             and return "$1$2es";

# HANDLE ...f -> ...ves

$word =~ /(.*[eao])lf$/i    and return "$1lves";
$word =~ /(.*[^d])eaf$/i    and return "$1eaves";
$word =~ /(.*[nlw])ife$/i   and return "$1ives";
$word =~ /(.*)arf$/i        and return "$1arves";

# HANDLE ...y

$word =~ /(.*[aeiou])y$/i   and return "$1ys";
$word =~ /([A-Z].*y)$/      and $classical{names} and return "$1s";
$word =~ /(.*)y$/i      and return "$1ies";

# HANDLE ...o

$word =~ /$PL_sb_U_o_os$/i  and return "${word}s";
$word =~ /[aeiou]o$/i       and return "${word}s";
$word =~ /o$/i          and return "${word}es";


# OTHERWISE JUST ADD ...s

return "${word}s";
}


sub _PL_special_verb
{
my ( $word, $count ) = @_;
$count = $persistent_count
    if !defined($count) && defined($persistent_count);
$count = (defined $count and $count=~/^($PL_count_one)$/io or
      defined $count and $classical{zero} and $count=~/^($PL_count_zero)$/io) ? 1
       : 2;

return undef if $count=~/^($PL_count_one)$/io;

my $value;              # UTILITY VARIABLE

# HANDLE USER-DEFINED VERBS

return $value if defined($value = ud_match($word, @PL_v_user_defined));

# HANDLE IRREGULAR PRESENT TENSE (SIMPLE AND COMPOUND)

$word =~ /^($PL_v_irregular_pres)((\s.*)?)$/i
        and return $PL_v_irregular_pres{lc $1}.$2;

# HANDLE IRREGULAR FUTURE, PRETERITE AND PERFECT TENSES

$word =~ /^($PL_v_irregular_non_pres)((\s.*)?)$/i
        and return $word;

# HANDLE PRESENT NEGATIONS (SIMPLE AND COMPOUND)

$word =~ /^($PL_v_irregular_pres)(n't(\s.*)?)$/i
        and return $PL_v_irregular_pres{lc $1}.$2;

$word =~ /^\S+n't\b/i
        and return $word;

# HANDLE SPECIAL CASES

$word =~ /^($PL_v_special_s)$/      and return undef;
$word =~ /\s/                       and return undef;
$word =~ /^quizzes$/i               and return "quiz";

# HANDLE STANDARD 3RD PERSON (CHOP THE ...(e)s OFF SINGLE WORDS)

$word =~ /^(.*)([cs]h|[x]|zz|ss)es$/i   and return "$1$2";

$word =~ /^(..+)ies$/i          and return "$1y";

$word =~ /($PL_v_oes_oe)$/      and return substr($1,0,-1);
$word =~ /^(.+)oes$/i           and return "$1o";

$word =~ /^(.*[^s])s$/i         and return $1;

# OTHERWISE, A REGULAR VERB (HANDLE ELSEWHERE)

return undef;
}

sub _PL_general_verb
{
my ( $word, $count ) = @_;
$count = $persistent_count
    if !defined($count) && defined($persistent_count);
$count = (defined $count and $count=~/^($PL_count_one)$/io or
      defined $count and $classical{zero} and $count=~/^($PL_count_zero)$/io) ? 1
       : 2;

return $word if $count=~/^($PL_count_one)$/io;

# HANDLE AMBIGUOUS PRESENT TENSES  (SIMPLE AND COMPOUND)

$word =~ /^($PL_v_ambiguous_pres)((\s.*)?)$/i
        and return $PL_v_ambiguous_pres{lc $1}.$2;

# HANDLE AMBIGUOUS PRETERITE AND PERFECT TENSES

$word =~ /^($PL_v_ambiguous_non_pres)((\s.*)?)$/i
        and return $word;

# OTHERWISE, 1st OR 2ND PERSON IS UNINFLECTED

return $word;

}

sub _PL_special_adjective
{
my ( $word, $count ) = @_;
$count = $persistent_count
    if !defined($count) && defined($persistent_count);
$count = (defined $count and $count=~/^($PL_count_one)$/io or
      defined $count and $classical{zero} and $count=~/^($PL_count_zero)$/io) ? 1
       : 2;

return $word if $count=~/^($PL_count_one)$/io;


# HANDLE USER-DEFINED ADJECTIVES

my $value;
return $value if defined($value = ud_match($word, @PL_adj_user_defined));

# HANDLE KNOWN CASES

$word =~ /^($PL_adj_special)$/i
            and return $PL_adj_special{lc $1};

# HANDLE POSSESSIVES

$word =~ /^($PL_adj_poss)$/i
            and return $PL_adj_poss{lc $1};

$word =~ /^(.*)'s?$/    and do { my $pl = PL_N($1);
                 return "$pl'" . ($pl =~ m/s$/ ? "" : "s");
                   };

# OTHERWISE, NO IDEA

return undef;

}


# 2. INDEFINITE ARTICLES

# THIS PATTERN MATCHES STRINGS OF CAPITALS STARTING WITH A "VOWEL-SOUND"
# CONSONANT FOLLOWED BY ANOTHER CONSONANT, AND WHICH ARE NOT LIKELY
# TO BE REAL WORDS (OH, ALL RIGHT THEN, IT'S JUST MAGIC!)

my $A_abbrev = q{
(?! FJO | [HLMNS]Y.  | RY[EO] | SQU
  | ( F[LR]? | [HL] | MN? | N | RH? | S[CHKLMNPTVW]? | X(YL)?) [AEIOU])
[FHLMNRSX][A-Z]
};

# THIS PATTERN CODES THE BEGINNINGS OF ALL ENGLISH WORDS BEGINING WITH A
# 'y' FOLLOWED BY A CONSONANT. ANY OTHER Y-CONSONANT PREFIX THEREFORE
# IMPLIES AN ABBREVIATION.

my $A_y_cons = 'y(b[lor]|cl[ea]|fere|gg|p[ios]|rou|tt)';

# EXCEPTIONS TO EXCEPTIONS

my $A_explicit_an = enclose join '|',
(
    "euler",
    "hour(?!i)", "heir", "honest", "hono",
);

my $A_ordinal_an = enclose join '|',
(
    "[aefhilmnorsx]-?th",
);

my $A_ordinal_a = enclose join '|',
(
    "[bcdgjkpqtuvwyz]-?th",
);

sub A {
    my ($str, $count) = @_;
    my ($pre, $word, $post) = ( $str =~ m/\A(\s*)(?:an?\s+)?(.+?)(\s*)\Z/i );
    return $str unless $word;
    my $result = _indef_article($word,$count);
    return $pre.$result.$post;
}

sub AN { goto &A }

sub _indef_article {
    my ( $word, $count ) = @_;

    $count = $persistent_count
        if !defined($count) && defined($persistent_count);

    return "$count $word"
        if defined $count && $count!~/^($PL_count_one)$/io;

    # HANDLE USER-DEFINED VARIANTS

    my $value;
    return "$value $word"
        if defined($value = ud_match($word, @A_a_user_defined));

    # HANDLE ORDINAL FORMS

    $word =~ /^($A_ordinal_a)/i         and return "a $word";
    $word =~ /^($A_ordinal_an)/i        and return "an $word";

    # HANDLE SPECIAL CASES

    $word =~ /^($A_explicit_an)/i       and return "an $word";
    $word =~ /^[aefhilmnorsx]$/i        and return "an $word";
    $word =~ /^[bcdgjkpqtuvwyz]$/i      and return "a $word";


    # HANDLE ABBREVIATIONS

    $word =~ /^($A_abbrev)/ox           and return "an $word";
    $word =~ /^[aefhilmnorsx][.-]/i     and return "an $word";
    $word =~ /^[a-z][.-]/i              and return "a $word";

    # HANDLE CONSONANTS

    $word =~ /^[^aeiouy]/i              and return "a $word";

    # HANDLE SPECIAL VOWEL-FORMS

    $word =~ /^e[uw]/i                  and return "a $word";
    $word =~ /^onc?e\b/i                and return "a $word";
    $word =~ /^uni([^nmd]|mo)/i         and return "a $word";
    $word =~ /^ut[th]/i                 and return "an $word";
    $word =~ /^u[bcfhjkqrst][aeiou]/i   and return "a $word";

    # HANDLE SPECIAL CAPITALS

    $word =~ /^U[NK][AIEO]?/            and return "a $word";

    # HANDLE VOWELS

    $word =~ /^[aeiou]/i                and return "an $word";

    # HANDLE y... (BEFORE CERTAIN CONSONANTS IMPLIES (UNNATURALIZED) "i.." SOUND)

    $word =~ /^($A_y_cons)/io           and return "an $word";

    # OTHERWISE, GUESS "a"
    return "a $word";
}

# 2. TRANSLATE ZERO-QUANTIFIED $word TO "no PL($word)"

sub NO
{
    my ($str, $count, $opt_ref) = @_;
    my ($pre, $word, $post) = ($str =~ m/\A(\s*)(.+?)(\s*)\Z/);

    $count = $persistent_count
        if !defined($count) && defined($persistent_count);
    $count = 0 unless $count;

    if ($count =~ /^$PL_count_zero$/) {
        return "${pre}no ". PL($word,0) . $post ;
    }

    $count =~ s{[^\d.e+-]}{}gi;
    1 while $count =~ s{([.].*)[.]}{$1};
    $count = defined $opt_ref->{words_below} && $count < $opt_ref->{words_below}
                 ? NUMWORDS($count)
                 : $count;

    if (defined $opt_ref->{comma} || defined $opt_ref->{comma_every}) {
        $opt_ref->{comma_every} = 3   if !defined $opt_ref->{comma_every};
        $opt_ref->{comma}       = ',' if !defined $opt_ref->{comma}
                                      || $opt_ref->{comma} =~ /^\d+$/;

        $count = _commify($count, @{$opt_ref}{'comma','comma_every'});
    }

    return "$pre$count " . PL($word,$count) . $post
}

sub _commify {
    my ($number, $comma, $every) = @_;
    return if !defined $comma;
    return if !defined $comma;
    $number =~ s{(?:(?<=^)|(?<=^-))(\d\d{$every,})}
                { my $n = $1;
                  $n=~s/(?<=.)(?=(?:.{$every})+$)/$comma/g;
                  $n;
                }e;
    return $number;
}

# PARTICIPLES

sub PART_PRES
{
        local $_ = PL_V(shift,2);
           s/ie$/y/
        or s/ue$/u/
        or s/([auy])e$/$1/
        or s/ski$/ski/
        or s/[^b]i$//
        or s/^(are|were)$/be/
        or s/^(had)$/hav/
        or s/(hoe)$/$1/
        or s/([^e])e$/$1/
        or m/er$/
        or s/([^aeiou][aeiouy]([bdgmnprst]))$/$1$2/;
        return "${_}ing";
}



# NUMERICAL INFLECTIONS

my %nth =
(
    0 => 'th',
    1 => 'st',
    2 => 'nd',
    3 => 'rd',
    4 => 'th',
    5 => 'th',
    6 => 'th',
    7 => 'th',
    8 => 'th',
    9 => 'th',
    11 => 'th',
    12 => 'th',
    13 => 'th',
);


my %ordinal;
@ordinal{qw(ty    one   two    three five  eight  nine  twelve )}=
         qw(tieth first second third fifth eighth ninth twelfth);

my $ordinal_suff = join '|', keys %ordinal, "";

$ordinal{""} = 'th';

sub ORD($)
{
    my $num = shift;
    if ($num =~ /\d/) {
        my $tail = substr($num, -3);
        return $num . ($nth{$tail%100} || $nth{$tail%10});
    }
    else {
        $num =~ s/($ordinal_suff)\Z/$ordinal{$1}/;
        return $num;
    }
}


my %default_args =
(
    'group'   => 0,
    'comma'   => ',',
    'and'     => 'and',
    'zero'    => 'zero',
    'one'     => 'one',
    'decimal' => 'point',
);

my @unit = ('',qw(one two three four five six seven eight nine));
my @teen = qw(ten eleven twelve thirteen fourteen
          fifteen sixteen seventeen eighteen nineteen);
my @ten  = ('','',qw(twenty thirty forty fifty sixty seventy eighty ninety));

## From http://en.wikipedia.org/wiki/Names_of_large_numbers
our %millmap = (
     #num zeros
     '0'    => { US => q(),                       UK => q(),                                       EU => q()},
     '3'    => { US => q(thousand),               UK => q(thousand),                               EU => q(thousand)},
     '6'    => { US => q(million),                UK => q(million),                                EU => q(million)},
     '9'    => { US => q(billion),                UK => q(thousand million),                       EU => q(milliard)},
     '12'   => { US => q(trillion),               UK => q(billion),                                EU => q(billion)},
     '15'   => { US => q(quadrillion),            UK => q(thousand billion),                       EU => q(billiard)},
     '18'   => { US => q(quintillion),            UK => q(trillion),                               EU => q(trillion)},
     '21'   => { US => q(sextillion),             UK => q(thousand trillion),                      EU => q(trilliard)},
     '24'   => { US => q(septillion),             UK => q(quadrillion),                            EU => q(quadrillion)},
     '27'   => { US => q(octillion),              UK => q(thousand quadrillion),                   EU => q(quadrilliard)},
     '30'   => { US => q(nonillion),              UK => q(quintillion),                            EU => q(quintillion)},
     '33'   => { US => q(decillion),              UK => q(thousand quintillion),                   EU => q(quintilliard)},
     '36'   => { US => q(undecillion),            UK => q(sextillion),                             EU => q(sextillion)},
     '39'   => { US => q(duodecillion),           UK => q(thousand sextillion),                    EU => q(sextilliard)},
     '42'   => { US => q(tredecillion),           UK => q(septillion),                             EU => q(septillion)},
     '45'   => { US => q(quattuordecillion),      UK => q(thousand septillion),                    EU => q(septilliard)},
     '48'   => { US => q(quindecillion),          UK => q(octillion),                              EU => q(octillion)},
     '51'   => { US => q(sedecillion),            UK => q(thousand octillion),                     EU => q(octilliard)},
     '54'   => { US => q(septendecillion),        UK => q(nonillion),                              EU => q(nonillion)},
     '57'   => { US => q(octodecillion),          UK => q(thousand nonillion),                     EU => q(nonilliard)},
     '60'   => { US => q(novendecillion),         UK => q(decillion),                              EU => q(decillion)},
     '63'   => { US => q(vigintillion),           UK => q(thousand decillion),                     EU => q(decilliard)},
     '66'   => { US => q(unvigintillion),         UK => q(undecillion),                            EU => q(undecillion)},
     '69'   => { US => q(duovigintillion),        UK => q(thousand undecillion),                   EU => q(undecilliard)},
     '72'   => { US => q(tresvigintillion),       UK => q(duodecillion),                           EU => q(duodecillion)},
     '75'   => { US => q(quattuorvigintillion),   UK => q(thousand duodecillion),                  EU => q(duodecilliard)},
     '78'   => { US => q(quinquavigintillion),    UK => q(tredecillion),                           EU => q(tredecillion)},
     '81'   => { US => q(sesvigintillion),        UK => q(thousand tredecillion),                  EU => q(tredecilliard)},
     '84'   => { US => q(septemvigintillion),     UK => q(quattuordecillion),                      EU => q(quattuordecillion)},
     '87'   => { US => q(octovigintillion),       UK => q(thousand quattuordecillion),             EU => q(quattuordecilliard)},
     '90'   => { US => q(novemvigintillion),      UK => q(quindecillion),                          EU => q(quindecillion)},
     '93'   => { US => q(trigintillion),          UK => q(thousand quindecillion),                 EU => q(quindecilliard)},
     '96'   => { US => q(untrigintillion),        UK => q(sedecillion),                            EU => q(sedecillion)},
     '99'   => { US => q(duotrigintillion),       UK => q(thousand sedecillion),                   EU => q(sedecilliard)},
     '102'  => { US => q(trestrigintillion),      UK => q(septendecillion),                        EU => q(septendecillion)},
     '105'  => { US => q(quattuortrigintillion),  UK => q(thousand septendecillion),               EU => q(septendecilliard)},
     '108'  => { US => q(quinquatrigintillion),   UK => q(octodecillion),                          EU => q(octodecillion)},
     '111'  => { US => q(sestrigintillion),       UK => q(thousand octodecillion),                 EU => q(octodecilliard)},
     '114'  => { US => q(septentrigintillion),    UK => q(novendecillion),                         EU => q(novendecillion)},
     '117'  => { US => q(octotrigintillion),      UK => q(thousand novendecillion),                EU => q(novendecilliard)},
     '120'  => { US => q(noventrigintillion),     UK => q(vigintillion),                           EU => q(vigintillion)},
     '123'  => { US => q(quadragintillion),       UK => q(thousand vigintillion),                  EU => q(vigintilliard)},
     '153'  => { US => q(quinquagintillion),      UK => q(thousand quinquavigintillion),           EU => q(quinquavigintilliard) },
     '183'  => { US => q(sexagintillion),         UK => q(thousand trigintillion),                 EU => q(trigintilliard) },
     '213'  => { US => q(septuagintillion),       UK => q(thousand quinquatrigintillion),          EU => q(quinquatrigintilliard) },
     '243'  => { US => q(octogintillion),         UK => q(thousand quadragintillion),              EU => q(quadragintilliard) },
     '273'  => { US => q(nonagintillion),         UK => q(thousand quinquaquadragintillion),       EU => q(quinquaquadragintilliard) },
     '303'  => { US => q(centillion),             UK => q(thousand quinquagintillion),             EU => q(quinquagintilliard) },
     '306'  => { US => q(uncentillion),           UK => q(unquinquagintillion),                    EU => q(unquinquagintillion) },
     '309'  => { US => q(duocentillion),          UK => q(thousand unquinquagintillion),           EU => q(unquinquagintilliard) },
     '312'  => { US => q(trescentillion),         UK => q(duoquinquagintillion),                   EU => q(duoquinquagintillion) },
     '333'  => { US => q(decicentillion),         UK => q(thousand quinquaquinquagintillion),      EU => q(quinquaquinquagintilliard) },
     '336'  => { US => q(undecicentillion),       UK => q(sesquinquagintillion),                   EU => q(sesquinquagintillion) },
     '363'  => { US => q(viginticentillion),      UK => q(thousand sexagintillion),                EU => q(sexagintilliard) },
     '366'  => { US => q(unviginticentillion),    UK => q(unsexagintillion),                       EU => q(unsexagintillion) },
     '393'  => { US => q(trigintacentillion),     UK => q(thousand quinquasexagintillion),         EU => q(quinquasexagintilliard) },
     '423'  => { US => q(quadragintacentillion),  UK => q(thousand septuagintillion),              EU => q(septuagintilliard) },
     '453'  => { US => q(quinquagintacentillion), UK => q(thousand quinquaseptuagintillion),       EU => q(quinquaseptuagintilliard) },
     '483'  => { US => q(sexagintacentillion),    UK => q(thousand octogintillion),                EU => q(octogintilliard) },
     '513'  => { US => q(septuagintacentillion),  UK => q(thousand quinquaoctogintillion),         EU => q(quinquaoctogintilliard) },
     '543'  => { US => q(octogintacentillion),    UK => q(thousand nonagintillion),                EU => q(nonagintilliard) },
     '573'  => { US => q(nonagintacentillion),    UK => q(thousand quinquanonagintillion),         EU => q(quinquanonagintilliard) },
     '603'  => { US => q(ducentillion),           UK => q(thousand centillion),                    EU => q(centilliard) },
     '903'  => { US => q(trecentillion),          UK => q(thousand quinquagintacentillion),        EU => q(quinquagintacentilliard) },
     '1203' => { US => q(quadringentillion),      UK => q(thousand ducentillion),                  EU => q(ducentilliard) },
     '1503' => { US => q(quingentillion),         UK => q(thousand quinquagintaducentillion),      EU => q(quinquagintaducentilliard) },
     '1803' => { US => q(sescentillion),          UK => q(thousand trecentillion),                 EU => q(trecentilliard) },
     '2103' => { US => q(septingentillion),       UK => q(thousand quinquagintatrecentillion),     EU => q(quinquagintatrecentilliard) },
     '2403' => { US => q(octingentillion),        UK => q(thousand quadringentillion),             EU => q(quadringentilliard) },
     '2703' => { US => q(nongentillion),          UK => q(thousand quinquagintaquadringentillion), EU => q(quinquagintaquadringentilliard) },
     '3003' => { US => q(millinillion),           UK => q(thousand quingentillion),                EU => q(quingentilliard) },
);

my $millchoice = 'US';
my @millkeys = sort {$a <=> $b } keys %millmap;
my $maxmill = (sort {$a <=> $b } keys %millmap)[-1];
our $millast = undef;
our @mill;
for my $numZeros ( 0..$maxmill ) {
    next if $numZeros%3 != 0;
    my $arraySlot = $numZeros/3;
    if( defined( $millmap{$numZeros} ) ) {
        $mill[$arraySlot] = " $millmap{$numZeros}->{$millchoice}";
        $millast = $arraySlot;
    } else {
        my $missing = $arraySlot - $millast;
        $mill[$arraySlot] = $mill[$missing] . $mill[$millast];
    }
}

sub mill { my $ind = $_[0]||0;
       die "Number out of range\n" if $ind > $#mill;
       return $ind<@mill ? $mill[$ind] : ' ???illion'; }

sub unit { return $unit[$_[0]]. mill($_[1]); }

sub ten
{
    return $ten[$_[0]] . ($_[0]&&$_[1]?'-':'') . $unit[$_[1]] . mill($_[2])
        if $_[0] ne '1';
    return $teen[$_[1]]. $mill[$_[2]||0];
}

sub hund
{
    return unit($_[0]) . " hundred" . ($_[1] || $_[2] ? " $_[4] " : '')
         . ten($_[1],$_[2]) . mill($_[3]) . ', ' if $_[0];
    return ten($_[1],$_[2]) . mill($_[3]) . ', ' if $_[1] || $_[2];
    return '';
}


sub enword
{
    my ($num,$group,$zero,$one,$comma,$and) = @_;

    if ($group==1)
    {
        $num =~ s/(\d)/ ($1==1 ? " $one" : $1 ? unit($1) :" $zero")."$comma " /eg;
    }
    elsif ($group==2)
    {
        $num =~ s/(\d)(\d)/ ($1 ? ten($1,$2) : $2 ? " $zero " . unit($2) : " $zero $zero") . "$comma " /eg;
        $num =~ s/(\d)/ ($1 ? unit($1) :" $zero")."$comma " /e;
    }
    elsif ($group==3)
    {
        $num =~ s/(\d)(\d)(\d)/ ($1==1 ? " $one" : $1 ? unit($1) :" $zero")." ".($2 ? ten($2,$3) : $3 ? " $zero " . unit($3) : " $zero $zero") . "$comma " /eg;
        $num =~ s/(\d)(\d)/ ($1 ? ten($1,$2) : $2 ? " $zero " . unit($2) : " $zero $zero") . "$comma " /e;
        $num =~ s/(\d)/ ($1==1 ? " $one" : $1 ? unit($1) :" $zero")."$comma " /e;
    }
    elsif ($num+0==0) {
        $num = $zero;
    }
    elsif ($num+0==1) {
        $num = $one;
    }
    else {
        $num =~ s/\A\s*0+//;
        my $mill = 0;
        1 while $num =~ s/(\d)(\d)(\d)(?=\D*\Z)/ hund($1,$2,$3,$mill++,$and) /e;
        $num =~ s/(\d)(\d)(?=\D*\Z)/ ten($1,$2,$mill)."$comma " /e;
        $num =~ s/(\d)(?=\D*\Z)/ unit($1,$mill) . "$comma "/e;
    }
    return $num;
}

sub NUMWORDS
{
    my $num = shift;

    if (@_ % 2 and require Carp) {
        die "Missing value in option list (odd number of option args) at"
          . join ' line ', (caller)[1,2];
    }

    my %arg = ( %default_args, @_ );
    my $group = $arg{group};

    # Handle "stylistic" conversions (up to a given threshold)...
    if (exists $arg{threshold} && $num > $arg{threshold}) {
        my ($whole, $frac) = split /[.]/, $num;
        while ($arg{comma}) {
            $whole =~ s{ (\d) ( \d{3}(?:,|\z) ) }{$1,$2}xms
                or last;
        }
        return $frac ? "$whole.$frac" : $whole;
    }

    die "Bad chunking option: $group\n" unless $group =~ /\A[0-3]\Z/;
    my $sign = ($num =~ /\A\s*\+/) ? "plus"
         : ($num =~ /\A\s*\-/) ? "minus"
         : '';

    my ($zero, $one) = @arg{'zero','one'};
    my $comma = $arg{comma};
    my $and = $arg{'and'};

    my $ord = $num =~ s/(st|nd|rd|th)\Z//;
    my @chunks = ($arg{decimal})
            ? $group ? split(/\./, $num) : split(/\./, $num, 2)
            : ($num);

    my $first = 1;

    if ($chunks[0] eq '') { $first=0; shift @chunks; }

    foreach ( @chunks )
    {
        s/\D//g;
        $_ = '0' unless $_;

        if (!$group && !$first) { $_ = enword($_,1,$zero,$one,$comma,$and) }
        else                    { $_ = enword($_,$group,$zero,$one,$comma,$and) }

        s/, \Z//;
        s/\s+,/,/g;
        s/, (\S+)\s+\Z/ $and $1/ if !$group and $first;
        s/\s+/ /g;
        s/(\A\s|\s\Z)//g;
        $first = '' if $first;
    }

    my @numchunks = ();
    if ($first =~ /0/)
    {
        unshift @chunks, '';
    }
    else
    {
        @numchunks = split /\Q$comma /, $chunks[0];
    }

    $numchunks[-1] =~ s/($ordinal_suff)\Z/$ordinal{$1}/
        if $ord and @numchunks;

    foreach (@chunks[1..$#chunks])
    {
        push @numchunks, $arg{decimal};
        push @numchunks, split /\Q$comma /;
    }

    if (wantarray)
    {
        unshift @numchunks, $sign if $sign;
        return @numchunks
    }
    elsif ($group)
    {
        return ($sign?"$sign ":'') .  join ", ", @numchunks;
    }
    else
    {
        $num = ($sign?"$sign ":'') . shift @numchunks;
        $first = ($num !~ /$arg{decimal}\Z/);
        foreach ( @numchunks )
        {
            if (/\A$arg{decimal}\Z/)
            {
                $num .= " $_";
                $first = 0;
            }
            elsif ($first)
            {
                $num .= "$comma $_";
            }
            else
            {
                $num .= " $_";
            }
        }
        return $num;
    }
}

# Join words with commas and a trailing 'and' (when appropriate)...

sub WORDLIST {
    my %opt;
    my @words;

    for my $arg (@_) {
        if (ref $arg eq 'HASH' ) {
            %opt = (%opt, %{$arg});
        }
        else {
            push @words, $arg;
        }
    }

    return ""                               if @words == 0;
    return "$words[0]"                      if @words == 1;

    my $conj = exists($opt{conj}) ? $opt{conj} : 'and';
    if (@words == 2) {
        $conj =~ s/^ (?=\S)  |  (?<=\S) $/ /gxms;
        return "$words[0]$conj$words[1]";
    }

    my $sep = exists $opt{sep}  ? $opt{sep}
              : grep(/,/, @words)   ? q{; }
              :                       q{, }
              ;

    my $final_sep = !exists $opt{final_sep}        ? "$sep $conj"
                    : length($opt{final_sep}) == 0 ? $conj
                    :                                "$opt{final_sep} $conj"
                    ;
    $final_sep =~ s/\s+/ /gmxs;
    $final_sep =~ s/^ (?=[^\W\d_])  |  (?<=\S) $/ /gxms;

    return join($sep, @words[0..@words-2]) . "$final_sep$words[-1]";
}



1;

__END__

=head1 NAME

Lingua::EN::Inflect - Convert singular to plural. Select "a" or "an".

=head1 VERSION

This document describes version 1.904 of Lingua::EN::Inflect

=head1 SYNOPSIS

 use Lingua::EN::Inflect qw ( PL PL_N PL_V PL_ADJ NO NUM
                  PL_eq PL_N_eq PL_V_eq PL_ADJ_eq
                  A AN
                  PART_PRES
                  ORD NUMWORDS
                  WORDLIST
                  inflect classical
                  def_noun def_verb def_adj def_a def_an );


 # UNCONDITIONALLY FORM THE PLURAL

      print "The plural of ", $word, " is ", PL($word), "\n";


 # CONDITIONALLY FORM THE PLURAL

      print "I saw $cat_count ", PL("cat",$cat_count), "\n";


 # FORM PLURALS FOR SPECIFIC PARTS OF SPEECH

      print PL_N("I",$N1), PL_V("saw",$N1),
        PL_ADJ("my",$N2), PL_N("saw",$N2), "\n";


 # DEAL WITH "0/1/N" -> "no/1/N" TRANSLATION:

      print "There ", PL_V("was",$errors), NO(" error",$errors), "\n";


 # USE DEFAULT COUNTS:

      print NUM($N1,""), PL("I"), PL_V(" saw"), NUM($N2), PL_N(" saw");
      print "There ", NUM($errors,''), PL_V("was"), NO(" error"), "\n";


 # COMPARE TWO WORDS "NUMBER-INSENSITIVELY":

      print "same\n"      if PL_eq($word1, $word2);
      print "same noun\n" if PL_N_eq($word1, $word2);
      print "same verb\n" if PL_V_eq($word1, $word2);
      print "same adj.\n" if PL_ADJ_eq($word1, $word2);


 # ADD CORRECT "a" OR "an" FOR A GIVEN WORD:

      print "Did you want ", A($thing), " or ", AN($idea), "\n";


 # CONVERT NUMERALS INTO ORDINALS (i.e. 1->1st, 2->2nd, 3->3rd, etc.)

      print "It was", ORD($position), " from the left\n";

 # CONVERT NUMERALS TO WORDS (i.e. 1->"one", 101->"one hundred and one", etc.)
 # IN A SCALAR CONTEXT: GET BACK A SINGLE STRING...

    $words = NUMWORDS(1234);      # "one thousand, two hundred and thirty-four"
    $words = NUMWORDS(ORD(1234)); # "one thousand, two hundred and thirty-fourth"


 # IN A LIST CONTEXT: GET BACK A LIST OF STRINGSi, ONE FOR EACH "CHUNK"...

    @words = NUMWORDS(1234);    # ("one thousand","two hundred and thirty-four")


 # OPTIONAL PARAMETERS CHANGE TRANSLATION:

    $words = NUMWORDS(12345, group=>1);
                # "one, two, three, four, five"

    $words = NUMWORDS(12345, group=>2);
                # "twelve, thirty-four, five"

    $words = NUMWORDS(12345, group=>3);
                # "one twenty-three, forty-five"

    $words = NUMWORDS(1234, 'and'=>'');
                # "one thousand, two hundred thirty-four"

    $words = NUMWORDS(1234, 'and'=>', plus');
                # "one thousand, two hundred, plus thirty-four"

    $words = NUMWORDS(555_1202, group=>1, zero=>'oh');
                # "five, five, five, one, two, oh, two"

    $words = NUMWORDS(555_1202, group=>1, one=>'unity');
                # "five, five, five, unity, two, zero, two"

    $words = NUMWORDS(123.456, group=>1, decimal=>'mark');
                # "one two three mark four five six"

 # LITERAL STYLE ONLY NAMES NUMBERS LESS THAN A CERTAIN THRESHOLD...

    $words = NUMWORDS(   9, threshold=>10);    # "nine"
    $words = NUMWORDS(  10, threshold=>10);    # "ten"
    $words = NUMWORDS(  11, threshold=>10);    # "11"
    $words = NUMWORDS(1000, threshold=>10);    # "1,000"

 # JOIN WORDS INTO A LIST:

    $list = WORDLIST("apple", "banana", "carrot");
                # "apple, banana, and carrot"

    $list = WORDLIST("apple", "banana");
                # "apple and banana"

    $list = WORDLIST("apple", "banana", "carrot", {final_sep=>""});
                # "apple, banana and carrot"


 # REQUIRE "CLASSICAL" PLURALS (EG: "focus"->"foci", "cherub"->"cherubim")

      classical;          # USE ALL CLASSICAL PLURALS

      classical 1;           #  USE ALL CLASSICAL PLURALS
      classical 0;           #  USE ALL MODERN PLURALS (DEFAULT)

      classical 'zero';      #  "no error" INSTEAD OF "no errors"
      classical zero=>1;     #  "no error" INSTEAD OF "no errors"
      classical zero=>0;     #  "no errors" INSTEAD OF "no error"

      classical 'herd';      #  "2 buffalo" INSTEAD OF "2 buffalos"
      classical herd=>1;     #  "2 buffalo" INSTEAD OF "2 buffalos"
      classical herd=>0;     #  "2 buffalos" INSTEAD OF "2 buffalo"

      classical 'persons';   # "2 chairpersons" INSTEAD OF "2 chairpeople"
      classical persons=>1;  # "2 chairpersons" INSTEAD OF "2 chairpeople"
      classical persons=>0;  # "2 chairpeople" INSTEAD OF "2 chairpersons"

      classical 'ancient';   # "2 formulae" INSTEAD OF "2 formulas"
      classical ancient=>1;  # "2 formulae" INSTEAD OF "2 formulas"
      classical ancient=>0;  # "2 formulas" INSTEAD OF "2 formulae"



 # INTERPOLATE "PL()", "PL_N()", "PL_V()", "PL_ADJ()", A()", "AN()"
 # "NUM()" AND "ORD()" WITHIN STRINGS:

      print inflect("The plural of $word is PL($word)\n");
      print inflect("I saw $cat_count PL(cat,$cat_count)\n");
      print inflect("PL(I,$N1) PL_V(saw,$N1) PL(a,$N2) PL_N(saw,$N2)\n");
      print inflect("NUM($N1,)PL(I) PL_V(saw) NUM($N2,)PL(a) PL_N(saw)\n");
      print inflect("I saw NUM($cat_count) PL(cat)\n");
      print inflect("There PL_V(was,$errors) NO(error,$errors)\n");
      print inflect("There NUM($errors,)PL_V(was) NO(error)\n");
      print inflect("Did you want A($thing) or AN($idea)\n");
      print inflect("It was ORD($position) from the left\n");


 # ADD USER-DEFINED INFLECTIONS (OVERRIDING INBUILT RULES):

      def_noun  "VAX"  => "VAXen";  # SINGULAR => PLURAL

      def_verb  "will" => "shall",  # 1ST PERSON SINGULAR => PLURAL
                "will" => "will",   # 2ND PERSON SINGULAR => PLURAL
                "will" => "will";   # 3RD PERSON SINGULAR => PLURAL

      def_adj   "hir"  => "their";  # SINGULAR => PLURAL

      def_a     "h";                # "AY HALWAYS SEZ 'HAITCH'!"

      def_an    "horrendous.*";     # "AN HORRENDOUS AFFECTATION"


=head1 DESCRIPTION

B<< [I<Note:> This module is strictly in maintenance mode now.
Take a look at the newer L<Lingua::EN::Inflexion> module, which offers a
cleaner and more convenient interface, has many more features (including
plural->singular inflexions), and is also much better tested.
If you have existing code that relies on Lingua::EN::Inflect, see the
section of the documentation entitled "CONVERTING FROM LINGUA::EN::INFLECT". ] >>

The exportable subroutines of Lingua::EN::Inflect provide plural
inflections, "a"/"an" selection for English words, and manipulation
of numbers as words

Plural forms of all nouns, most verbs, and some adjectives are
provided. Where appropriate, "classical" variants (for example: "brother" ->
"brethren", "dogma" -> "dogmata", etc.) are also provided.

Pronunciation-based "a"/"an" selection is provided for all English
words, and most initialisms.

It is also possible to inflect numerals (1,2,3) to ordinals (1st, 2nd, 3rd)
and to English words ("one", "two", "three).

In generating these inflections, Lingua::EN::Inflect follows the Oxford
English Dictionary and the guidelines in Fowler's Modern English
Usage, preferring the former where the two disagree.

The module is built around standard British spelling, but is designed
to cope with common American variants as well. Slang, jargon, and
other English dialects are I<not> explicitly catered for.

Where two or more inflected forms exist for a single word (typically a
"classical" form and a "modern" form), Lingua::EN::Inflect prefers the
more common form (typically the "modern" one), unless "classical"
processing has been specified
(see L<"MODERN VS CLASSICAL INFLECTIONS">).

=head1 FORMING PLURALS

=head2 Inflecting Plurals

All of the C<PL_...> plural inflection subroutines take the word to be
inflected as their first argument and return the corresponding inflection.
Note that all such subroutines expect the I<singular> form of the word. The
results of passing a plural form are undefined (and unlikely to be correct).

The C<PL_...> subroutines also take an optional second argument,
which indicates the grammatical "number" of the word (or of another word
with which the word being inflected must agree). If the "number" argument is
supplied and is not C<1> (or C<"one"> or C<"a">, or some other adjective that
implies the singular), the plural form of the word is returned. If the
"number" argument I<does> indicate singularity, the (uninflected) word
itself is returned. If the number argument is omitted, the plural form
is returned unconditionally.

The various subroutines are:

=over 8

=item C<PL_N($;$)>

The exportable subroutine C<PL_N()> takes a I<singular> English noun or
pronoun and returns its plural. Pronouns in the nominative ("I" ->
"we") and accusative ("me" -> "us") cases are handled, as are
possessive pronouns ("mine" -> "ours").


=item C<PL_V($;$)>

The exportable subroutine C<PL_V()> takes the I<singular> form of a
conjugated verb (that is, one which is already in the correct "person"
and "mood") and returns the corresponding plural conjugation.


=item C<PL_ADJ($;$)>

The exportable subroutine C<PL_ADJ()> takes the I<singular> form of
certain types of adjectives and returns the corresponding plural form.
Adjectives that are correctly handled include: "numerical" adjectives
("a" -> "some"), demonstrative adjectives ("this" -> "these", "that" ->
"those"), and possessives ("my" -> "our", "cat's" -> "cats'", "child's"
-> "childrens'", etc.)


=item C<PL($;$)>

The exportable subroutine C<PL()> takes a I<singular> English noun,
pronoun, verb, or adjective and returns its plural form. Where a word
has more than one inflection depending on its part of speech (for
example, the noun "thought" inflects to "thoughts", the verb "thought"
to "thought"), the (singular) noun sense is preferred to the (singular)
verb sense.

Hence C<PL("knife")> will return "knives" ("knife" having been treated
as a singular noun), whereas C<PL("knifes")> will return "knife"
("knifes" having been treated as a 3rd person singular verb).

The inherent ambiguity of such cases suggests that,
where the part of speech is known, C<PL_N>, C<PL_V>, and
C<PL_ADJ> should be used in preference to C<PL>.

=back

Note that all these subroutines ignore any whitespace surrounding the
word being inflected, but preserve that whitespace when the result is
returned. For example, C<S<PL(" cat  ")>> returns S<" cats  ">.


=head2 Numbered plurals

The C<PL_...> subroutines return only the inflected word, not the count that
was used to inflect it. Thus, in order to produce "I saw 3 ducks", it
is necessary to use:

    print "I saw $N ", PL_N($animal,$N), "\n";

Since the usual purpose of producing a plural is to make it agree with
a preceding count, Lingua::EN::Inflect provides an exportable subroutine
(C<NO($;$)>) which, given a word and a(n optional) count, returns the
count followed by the correctly inflected word. Hence the previous
example can be rewritten:

    print "I saw ", NO($animal,$N), "\n";

In addition, if the count is zero (or some other term which implies
zero, such as C<"zero">, C<"nil">, etc.) the count is replaced by the
word "no". Hence, if C<$N> had the value zero, the previous example
would print the somewhat more elegant:

    I saw no animals

rather than:

    I saw 0 animals

Note that the name of the subroutine is a pun: the subroutine
returns either a number (a I<No.>) or a C<"no">, in front of the
inflected word.

=head3 Wordy and comma'd plurals

The C<NO()> subroutine takes an optional third argument: a hash of named
options that configure its behaviour.

The C<'words_below'> option informs C<NO()> what other numbers (i.e.
apart from zero) it should convert to words. For example:S

    for my $count (0..12) {
        print NO('cat', $count, {words_below => 10}), "\n";
    }

would print:

    no cats
    one cat
    two cats
    three cats
    four cats
    five cats
    six cats
    seven cats
    eight cats
    nine cats
    10 cats
    11 cats
    12 cats

The C<'comma'> and C<'comma_every'> options determine whether or
not the numbers produced by C<NO()> have commas in them. That is:

    2001 space odysseys

versus:

    2,001 space odysseys

Normally, numbers are produced without commas, but if C<'comma'> or
C<'comma_every'> is specified, then commas are added as requested.

The C<'comma'> option specifies which character to use as a comma.
It defaults to C<','>, but may be set to anything convenient:

    print NO('Euro', $amount, {comma=>'.'});

    # prints:  1.000.000 Euros

The C<'comma_every'> option specifies how many characters between commas.
It defaults to 3, but may be set to any positive number:

    print NO('Euro', $amount, {comma_every=>4});

    # prints:  100,0000 Euros

Note that you can set both options at once, if you wish:

    print NO('Euro', $amount, {comma_every=>2, comma=>'_'});

    # prints:  1_00_00_00 Euros


=head2 Reducing the number of counts required

In some contexts, the need to supply an explicit count to the various
C<PL_...> subroutines makes for tiresome repetition. For example:

    print PL_ADJ("This",$errors), PL_N(" error",$errors),
          PL_V(" was",$errors), " fatal.\n";

Lingua::EN::Inflect therefore provides an exportable subroutine
(C<NUM($;$)>) that may be used to set a persistent "default number"
value. If such a value is set, it is subsequently used whenever an
optional second "number" argument is omitted. The default value thus set
can subsequently be removed by calling C<NUM()> with no arguments.
Hence we could rewrite the previous example:

    NUM($errors);
    print PL_ADJ("This"), PL_N(" error"), PL_V(" was"), "fatal.\n";
    NUM();

Normally, C<NUM()> returns its first argument, so that it may also
be "inlined" in contexts like:

    print NUM($errors), PL_N(" error"), PL_V(" was"), " detected.\n"
    print PL_ADJ("This"), PL_N(" error"), PL_V(" was"), "fatal.\n"
        if $severity > 1;

However, in certain contexts (see L<"INTERPOLATING INFLECTIONS IN STRINGS">)
it is preferable that C<NUM()> return an empty string. Hence C<NUM()>
provides an optional second argument. If that argument is supplied (that is, if
it is defined) and evaluates to false, C<NUM> returns an empty string
instead of its first argument. For example:

    print NUM($errors,0), NO("error"), PL_V(" was"), " detected.\n";
    print PL_ADJ("This"), PL_N(" error"), PL_V(" was"), "fatal.\n"
        if $severity > 1;



=head2 Number-insensitive equality

Lingua::EN::Inflect also provides a solution to the problem
of comparing words of differing plurality through the exportable subroutines
C<PL_eq($$)>, C<PL_N_eq($$)>, C<PL_V_eq($$)>, and C<PL_ADJ_eq($$)>.
Each  of these subroutines takes two strings, and  compares them
using the corresponding plural-inflection subroutine (C<PL()>, C<PL_N()>,
C<PL_V()>, and C<PL_ADJ()> respectively).

The comparison returns true if:

=over 8

=item *

the strings are C<eq>-equal, or

=item *

one string is C<eq>-equal to a plural form of the other, or

=item *

the strings are two different plural forms of the one word.

=back

Hence all of the following return true:

    PL_eq("index","index")      # RETURNS "eq"
    PL_eq("index","indexes")    # RETURNS "s:p"
    PL_eq("index","indices")    # RETURNS "s:p"
    PL_eq("indexes","index")    # RETURNS "p:s"
    PL_eq("indices","index")    # RETURNS "p:s"
    PL_eq("indices","indexes")  # RETURNS "p:p"
    PL_eq("indexes","indices")  # RETURNS "p:p"
    PL_eq("indices","indices")  # RETURNS "eq"

As indicated by the comments in the previous example, the actual value
returned by the various C<PL_eq> subroutines encodes which of the
three equality rules succeeded: "eq" is returned if the strings were
identical, "s:p" if the strings were singular and plural respectively,
"p:s" for plural and singular, and "p:p" for two distinct plurals.
Inequality is indicated by returning an empty string.

It should be noted that two distinct singular words which happen to take
the same plural form are I<not> considered equal, nor are cases where
one (singular) word's plural is the other (plural) word's singular.
Hence all of the following return false:

    PL_eq("base","basis")       # ALTHOUGH BOTH -> "bases"
    PL_eq("syrinx","syringe")   # ALTHOUGH BOTH -> "syringes"
    PL_eq("she","he")       # ALTHOUGH BOTH -> "they"

    PL_eq("opus","operas")      # ALTHOUGH "opus" -> "opera" -> "operas"
    PL_eq("taxi","taxes")       # ALTHOUGH "taxi" -> "taxis" -> "taxes"

Note too that, although the comparison is "number-insensitive" it is I<not>
case-insensitive (that is, C<PL("time","Times")> returns false. To obtain
both number and case insensitivity, prefix both arguments with C<lc>
(that is, C<PL(lc "time", lc "Times")> returns true).


=head1 OTHER VERB FORMS

=head2 Present participles

C<Lingua::EN::Inflect> also provides the C<PART_PRES> subroutine,
which can take a 3rd person singular verb and
correctly inflect it to its present participle:

    PART_PRES("runs")   # "running"
    PART_PRES("loves")  # "loving"
    PART_PRES("eats")   # "eating"
    PART_PRES("bats")   # "batting"
    PART_PRES("spies")  # "spying"


=head1 PROVIDING INDEFINITE ARTICLES

=head2 Selecting indefinite articles

Lingua::EN::Inflect provides two exportable subroutines (C<A($;$)> and
C<AN($;$)>) which will correctly prepend the appropriate indefinite
article to a word, depending on its pronunciation. For example:

    A("cat")        # -> "a cat"
    AN("cat")       # -> "a cat"
    A("euphemism")      # -> "a euphemism"
    A("Euler number")   # -> "an Euler number"
    A("hour")       # -> "an hour"
    A("houri")      # -> "a houri"

The two subroutines are I<identical> in function and may be used
interchangeably. The only reason that two versions are provided is to
enhance the readability of code such as:

    print "That is ", AN($errortype), " error\n;
    print "That is ", A($fataltype), " fatal error\n;

Note that in both cases the actual article provided depends I<only> on
the pronunciation of the first argument, I<not> on the name of the
subroutine.

C<A()> and C<AN()> will ignore any indefinite article that already
exists at the start of the string. Thus:

    @half_arked = (
        "a elephant",
        "a giraffe",
        "an ewe",
        "a orangutan",
    );

    print A($_), "\n" for @half_arked;

    # prints:
    #     an elephant
    #     a giraffe
    #     a ewe
    #     an orangutan


C<A()> and C<AN()> both take an optional second argument. As with the
C<PL_...> subroutines, this second argument is a "number" specifier. If
its value is C<1> (or some other value implying singularity), C<A()> and
C<AN()> insert "a" or "an" as appropriate. If the number specifier
implies plurality, (C<A()> and C<AN()> insert the actual second argument instead.
For example:

    A("cat",1)      # -> "a cat"
    A("cat",2)      # -> "2 cat"
    A("cat","one")      # -> "one cat"
    A("cat","no")       # -> "no cat"

Note that, as implied by the previous examples, C<A()> and
C<AN()> both assume that their job is merely to provide the correct
qualifier for a word (that is: "a", "an", or the specified count).
In other words, they assume that the word they are given has
already been correctly inflected for plurality. Hence, if C<$N>
has the value 2, then:

      print A("cat",$N);

prints "2 cat", instead of "2 cats". The correct approach is to use:

      print A(PL("cat",$N),$N);

or, better still:

      print NO("cat",$N);

Note too that, like the various C<PL_...> subroutines, whenever C<A()>
and C<AN()> are called with only one argument they are subject to the
effects of any preceding call to C<NUM()>. Hence, another possible
solution is:

      NUM($N);
      print A(PL("cat"));


=head2 Indefinite articles and initialisms

"Initialisms" (sometimes inaccurately called "acronyms") are terms which
have been formed from the initial letters of words in a phrase (for
example, "NATO", "NBL", "S.O.S.", "SCUBA", etc.)

Such terms present a particular challenge when selecting between "a"
and "an", since they are sometimes pronounced as if they were a single
word ("nay-tow", "sku-ba") and sometimes as a series of letter names
("en-eff-ell", "ess-oh-ess").

C<A()> and C<AN()> cope with this dichotomy using a series of inbuilt
rules, which may be summarized as:

=over 8

=item 1.

If the word starts with a single letter, followed by a period or dash
(for example, "R.I.P.", "C.O.D.", "e-mail", "X-ray", "T-square"), then
choose the appropriate article for the I<sound> of the first letter
("an R.I.P.", "a C.O.D.", "an e-mail", "an X-ray", "a T-square").

=item 2.

If the first two letters of the word are capitals,
consonants, and do not appear at the start of any known English word,
(for example, "LCD", "XML", "YWCA"), then once again choose "a" or
"an" depending on the I<sound> of the first letter ("an LCD", "an
XML", "a YWCA").

=item 3.

Otherwise, assume the string is a capitalized word or a
pronounceable initialism (for example, "LED", "OPEC", "FAQ", "UNESCO"), and
therefore takes "a" or "an" according to the (apparent) pronunciation of
the entire word ("a LED", "an OPEC", "a FAQ", "a UNESCO").

=back

Note that rules 1 and 3 together imply that the presence or absence of
punctuation may change the selection of indefinite article for a
particular initialism (for example, "a FAQ" but "an F.A.Q.").


=head2 Indefinite articles and "soft H's"

Words beginning in the letter 'H' present another type of difficulty
when selecting a suitable indefinite article. In a few such words
(for example, "hour", "honour", "heir") the 'H' is not voiced at
all, and so such words inflect with "an". The remaining cases
("voiced H's") may be divided into two categories:
"hard H's" (such as "hangman", "holograph", "hat", etc.) and
"soft H's" (such as "hysterical", "horrendous", "holy", etc.)

Hard H's always take "a" as their indefinite article, and soft
H's normally do so as well. But I<some> English speakers prefer
"an" for soft H's (although the practice is now generally considered an
affectation, rather than a legitimate grammatical alternative).

At present, the C<A()> and C<AN()> subroutines ignore soft H's and use
"a" for any voiced 'H'. The author would, however, welcome feedback on
this decision (envisaging a possible future "soft H" mode).


=head1 INFLECTING ORDINALS

Occasionally it is useful to present an integer value as an ordinal
rather than as a numeral. For example:

    Enter password (1st attempt): ********
    Enter password (2nd attempt): *********
    Enter password (3rd attempt): *********
    No 4th attempt. Access denied.

To this end, Lingua::EN::Inflect provides the C<ORD()> subroutine.
<ORD()> takes a single argument and forms its ordinal equivalent.
If the argument isn't a numerical integer, it just adds "-th".


=head1 CONVERTING NUMBERS TO WORDS

The exportable subroutine C<NUMWORDS> takes a number (cardinal or ordinal)
and returns an English representation of that number. In a scalar context
a string is returned. Hence:

    use Lingua::EN::Inflect qw( NUMWORDS );

    $words = NUMWORDS(1234567);

puts the string:

    "one million, two hundred and thirty-four thousand, five hundred and sixty-seven"

into $words.

In a list context each comma-separated chunk is returned as a separate element.
Hence:

    @words = NUMWORDS(1234567);

puts the list:

    ("one million",
     "two hundred and thirty-four thousand",
     "five hundred and sixty-seven")

into @words.

Note that this also means that:

    print NUMWORDS(1234567);


will (misprint) print:

    one milliontwo hundred and thirty-four thousandfive hundred and sixty-seven

To get readable output, make sure the call in in scalar context:

    print scalar NUMWORDS(1234567);

Non-digits (apart from an optional leading plus or minus sign,
any decimal points, and ordinal suffixes -- see below) are silently
ignored, so the following all produce identical results:

        NUMWORDS(5551202);
        NUMWORDS(5_551_202);
        NUMWORDS("5,551,202");
        NUMWORDS("555-1202");

That last case is a little awkward since it's almost certainly a phone number,
and "five million, five hundred and fifty-one thousand, two hundred and two"
probably isn't what's wanted.

To overcome this, C<NUMWORDS()> takes an optional named argument, 'group',
which changes how numbers are translated. The argument must be a
positive integer less than four, which indicated how the digits of the
number are to be grouped. If the argument is C<1>, then each digit is
translated separately. If the argument is C<2>, pairs of digits
(starting from the I<left>) are grouped together. If the argument is
C<3>, triples of numbers (again, from the I<left>) are grouped. Hence:

        NUMWORDS("555-1202", group=>1)

returns C<"five, five, five, one, two, zero, two">, whilst:

        NUMWORDS("555-1202", group=>2)

returns C<"fifty-five, fifty-one, twenty, two">, and:

        NUMWORDS("555-1202", group=>3)

returns C<"five fifty-five, one twenty, two">.

Phone numbers are often written in words as
C<"five..five..five..one..two..zero..two">, which is also easy to
achieve:

        join '..', NUMWORDS("555-1202", group=>1)

C<NUMWORDS> also handles decimal fractions. Hence:

        NUMWORDS("1.2345")

returns C<"one point two three four five"> in a scalar context
and C<("one","point","two","three","four","five")>) in an array context.
Exponent form (C<"1.234e56">) is not yet handled.

Multiple decimal points are only translated in one of the "grouping" modes.
Hence:

        NUMWORDS(101.202.303)

returns C<"one hundred and one point two zero two three zero three">,
whereas:

        NUMWORDS(101.202.303, group=>1)

returns C<"one zero one point two zero two point three zero three">.

The digit C<'0'> is unusual in that in may be translated to English as "zero",
"oh", or "nought". To cater for this diversity, C<NUMWORDS> may be passed
a named argument, 'zero', which may be set to
the desired translation of C<'0'>. For example:

        print join "..", NUMWORDS("555-1202", group=>3, zero=>'oh')

prints C<"five..five..five..one..two..oh..two">.
By default, zero is rendered as "zero".

Likewise, the digit C<'1'> may be rendered as "one" or "a/an" (or very
occasionally other variants), depending on the context. So there is a
C<'one'> argument as well:

        print NUMWORDS($_, one=>'a solitary', zero=>'no more'),
              PL(" bottle of beer on the wall\n", $_)
                   for (3,2,1,0);

        # prints:
        #     three bottles of beer on the wall
        #     two bottles of beer on the wall
        #     a solitary bottle of beer on the wall
        #     no more bottles of beer on the wall

Care is needed if the word "a/an" is to be used as a C<'one'> value.
Unless the next word is known in advance, it's almost always necessary
to use the C<A> function as well:

        print A( NUMWORDS(1, one=>'a') . " $_\n")
         for qw(cat aardvark ewe hour);

    # prints:
    #     a cat
    #     an aardvark
    #     a ewe
    #     an hour

Another major regional variation in number translation is the use of
"and" in certain contexts. The named argument 'and'
allows the programmer to specify how "and" should be handled. Hence:

        print scalar NUMWORDS("765", 'and'=>'')

prints "seven hundred sixty-five", instead of "seven hundred and sixty-five".
By default, the "and" is included.

The translation of the decimal point is also subject to variation
(with "point", "dot", and "decimal" being the favorites).
The named argument 'decimal' allows the
programmer to how the decimal point should be rendered. Hence:

        print scalar NUMWORDS("666.124.64.101", group=>3, decimal=>'dot')

prints "six sixty-six, dot, one twenty-four, dot, sixty-four, dot, one zero one"
By default, the decimal point is rendered as "point".

C<NUMWORDS> also handles the ordinal forms of numbers. So:

        print scalar NUMWORDS('1st');
        print scalar NUMWORDS('3rd');
        print scalar NUMWORDS('202nd');
        print scalar NUMWORDS('1000000th');

print:

        first
        third
        two hundred and twenty-second
        one millionth

Two common idioms in this regard are:

        print scalar NUMWORDS(ORD($number));

and:

        print scalar ORD(NUMWORDS($number));

These are identical in effect, except when $number contains a decimal:

        $number = 99.09;
        print scalar NUMWORDS(ORD($number));    # ninety-ninth point zero nine
        print scalar ORD(NUMWORDS($number));    # ninety-nine point zero ninth

Use whichever you feel is most appropriate.


=head1 CONVERTING LISTS OF WORDS TO PHRASES

When creating a list of words, commas are used between adjacent items,
except if the items contain commas, in which case semicolons are used.
But if there are less than two items, the commas/semicolons are omitted
entirely. The final item also has a conjunction (usually "and" or "or")
before it. And although it's technically incorrect (and sometimes
misleading), some people prefer to omit the comma before that final
conjunction, even when there are more than two items.

That's complicated enough to warrant its own subroutine: C<WORDLIST()>.
This subroutine expects a list of words, possibly with one or more hash
references containing options. It returns a string that joins the list
together in the normal English usage. For example:

    print "You chose ", WORDLIST(@selected_items), "\n";
    # You chose barley soup, roast beef, and Yorkshire pudding

    print "You chose ", WORDLIST(@selected_items, {final_sep=>""}), "\n";
    # You chose barley soup, roast beef and Yorkshire pudding

    print "Please chose ", WORDLIST(@side_orders, {conj=>"or"}), "\n";
    # Please chose salad, vegetables, or ice-cream

The available options are:

    Option named    Specifies                Default value

    conj            Final conjunction        "and"
    sep             Inter-item separator     ","
    last_sep        Final separator          value of 'sep' option


=head1 INTERPOLATING INFLECTIONS IN STRINGS

By far the commonest use of the inflection subroutines is to
produce message strings for various purposes. For example:

        print NUM($errors), PL_N(" error"), PL_V(" was"), " detected.\n";
        print PL_ADJ("This"), PL_N(" error"), PL_V(" was"), "fatal.\n"
                if $severity > 1;

Unfortunately the need to separate each subroutine call detracts
significantly from the readability of the resulting code. To ameliorate
this problem, Lingua::EN::Inflect provides an exportable string-interpolating
subroutine (C<inflect($)>), which recognizes calls to the various inflection
subroutines within a string and interpolates them appropriately.

Using C<inflect> the previous example could be rewritten:

        print inflect "NUM($errors) PL_N(error) PL_V(was) detected.\n";
        print inflect "PL_ADJ(This) PL_N(error) PL_V(was) fatal.\n"
                if $severity > 1;

Note that C<inflect> also correctly handles calls to the C<NUM()> subroutine
(whether interpolated or antecedent). The C<inflect()> subroutine has
a related extra feature, in that it I<automatically> cancels any "default
number" value before it returns its interpolated string. This means that
calls to C<NUM()> which are embedded in an C<inflect()>-interpolated
string do not "escape" and interfere with subsequent inflections.


=head1 MODERN VS CLASSICAL INFLECTIONS

Certain words, mainly of Latin or Ancient Greek origin, can form
plurals either using the standard English "-s" suffix, or with
their original Latin or Greek inflections. For example:

        PL("stigma")            # -> "stigmas" or "stigmata"
        PL("torus")             # -> "toruses" or "tori"
        PL("index")             # -> "indexes" or "indices"
        PL("millennium")        # -> "millenniums" or "millennia"
        PL("ganglion")          # -> "ganglions" or "ganglia"
        PL("octopus")           # -> "octopuses" or "octopodes"


Lingua::EN::Inflect caters to such words by providing an
"alternate state" of inflection known as "classical mode".
By default, words are inflected using their contemporary English
plurals, but if classical mode is invoked, the more traditional
plural forms are returned instead.

The exportable subroutine C<classical()> controls this feature.
If C<classical()> is called with no arguments, it unconditionally
invokes classical mode. If it is called with a single argument, it
turns all classical inflects on or off (depending on whether the argument is
true or false). If called with two or more arguments, those arguments
specify which aspects of classical behaviour are to be used.

Thus:

        classical;                  # SWITCH ON CLASSICAL MODE
        print PL("formula");        # -> "formulae"

        classical 0;                # SWITCH OFF CLASSICAL MODE
        print PL("formula");        # -> "formulas"

        classical $cmode;           # CLASSICAL MODE IFF $cmode
        print PL("formula");        # -> "formulae" (IF $cmode)
                                    # -> "formulas" (OTHERWISE)

        classical herd=>1;          # SWITCH ON CLASSICAL MODE FOR "HERD" NOUNS
        print PL("wilderbeest");    # -> "wilderbeest"

        classical names=>1;         # SWITCH ON CLASSICAL MODE FOR NAMES
        print PL("sally");          # -> "sallies"
        print PL("Sally");          # -> "Sallys"

Note however that C<classical()> has no effect on the inflection of words which
are now fully assimilated. Hence:

        PL("forum")             # ALWAYS -> "forums"
        PL("criterion")         # ALWAYS -> "criteria"

LEI assumes that a capitalized word is a person's name. So it forms the
plural according to the rules for names (which is that you don't
inflect, you just add -s or -es). You can choose to turn that behaviour
off (it's on by the default, even when the module isn't in classical
mode) by calling C<< classical(names=>0) >>.

=head1 USER-DEFINED INFLECTIONS

=head2 Adding plurals at run-time

Lingua::EN::Inflect provides five exportable subroutines which allow
the programmer to override the module's behaviour for specific cases:

=over 8

=item C<def_noun($$)>

The C<def_noun> subroutine takes a pair of string arguments: the singular and
plural forms of the noun being specified. The singular form
specifies a pattern to be interpolated (as C<m/^(?:$first_arg)$/i>).
Any noun matching this pattern is then replaced by the string in the
second argument. The second argument specifies a string which is
interpolated after the match succeeds, and is then used as the plural
form. For example:

      def_noun  'cow'        => 'kine';
      def_noun  '(.+i)o'     => '$1i';
      def_noun  'spam(mer)?' => '\\$\\%\\@#\\$\\@#!!';

Note that both arguments should usually be specified in single quotes,
so that they are not interpolated when they are specified, but later (when
words are compared to them). As indicated by the last example, care
also needs to be taken with certain characters in the second argument,
to ensure that they are not unintentionally interpolated during comparison.

The second argument string may also specify a second variant of the plural
form, to be used when "classical" plurals have been requested. The beginning
of the second variant is marked by a '|' character:

      def_noun  'cow'        => 'cows|kine';
      def_noun  '(.+i)o'     => '$1os|$1i';
      def_noun  'spam(mer)?' => '\\$\\%\\@#\\$\\@#!!|varmints';

If no classical variant is given, the specified plural form is used in
both normal and "classical" modes.

If the second argument is C<undef> instead of a string, then the
current user definition for the first argument is removed, and the
standard plural inflection(s) restored.

Note that in all cases, later plural definitions for a particular
singular form replace earlier definitions of the same form. For example:

      # FIRST, HIDE THE MODERN FORM....
      def_noun  'aviatrix' => 'aviatrices';

      # LATER, HIDE THE CLASSICAL FORM...
      def_noun  'aviatrix' => 'aviatrixes';

      # FINALLY, RESTORE THE DEFAULT BEHAVIOUR...
      def_noun  'aviatrix' => undef;


Special care is also required when defining general patterns and
associated specific exceptions: put the more specific cases I<after>
the general pattern. For example:

      def_noun  '(.+)us' => '$1i';      # EVERY "-us" TO "-i"
      def_noun  'bus'    => 'buses';    # EXCEPT FOR "bus"

This "try-most-recently-defined-first" approach to matching
user-defined words is also used by C<def_verb>, C<def_a> and C<def_an>.


=item C<def_verb($$$$$$)>

The C<def_verb> subroutine takes three pairs of string arguments (that is, six
arguments in total), specifying the singular and plural forms of the three
"persons" of verb. As with C<def_noun>, the singular forms are specifications of
run-time-interpolated patterns, whilst the plural forms are specifications of
(up to two) run-time-interpolated strings:

       def_verb 'am'       => 'are',
                'are'      => 'are|art',
                'is'       => 'are';

       def_verb 'have'     => 'have',
                'have'     => 'have',
                'ha(s|th)' => 'have';

Note that as with C<def_noun>, modern/classical variants of plurals
may be separately specified, subsequent definitions replace previous
ones, and C<undef>'ed plural forms revert to the standard behaviour.


=item C<def_adj($$)>

The C<def_adj> subroutine takes a pair of string arguments, which specify
the singular and plural forms of the adjective being defined.
As with C<def_noun> and C<def_adj>, the singular forms are specifications of
run-time-interpolated patterns, whilst the plural forms are specifications of
(up to two) run-time-interpolated strings:

       def_adj  'this'     => 'these',
       def_adj  'red'      => 'red|gules',

As previously, modern/classical variants of plurals
may be separately specified, subsequent definitions replace previous
ones, and C<undef>'ed plural forms revert to the standard behaviour.


=item C<def_a($)> and C<def_an($)>

The C<def_a> and C<def_an> subroutines each take a single argument, which
specifies a pattern. If a word passed to C<A()> or C<AN()> matches this
pattern, it will be prefixed (unconditionally) with the corresponding indefinite
article. For example:

      def_a  'error';
      def_a  'in.+';

      def_an 'mistake';
      def_an 'error';

As with the other C<def_...> subroutines, such redefinitions are sequential
in effect so that, after the above example, "error" will be inflected with "an".

=back

=head2 The F<$HOME/.inflectrc> file

When it is imported, Lingua::EN::Inflect executes (as Perl code)
the contents of any file named F<.inflectrc> which it finds in the
in the directory where F<Lingua/EN/Inflect.pm> is installed,
or in the current home directory (C<$ENV{HOME}>), or in both.
Note that the code is executed within the Lingua::EN::Inflect
namespace.

Hence the user or the local Perl guru can make appropriate calls to
C<def_noun>, C<def_verb>, etc. in one of these F<.inflectrc> files, to
permanently and universally modify the behaviour of the module. For example

      > cat /usr/local/lib/perl5/Text/Inflect/.inflectrc

      def_noun  "UNIX"  => "UN*X|UNICES";

      def_verb  "teco"  => "teco",      # LITERALLY: "to edit with TECO"
                "teco"  => "teco",
                "tecos" => "teco";

      def_a     "Euler.*";              # "Yewler" TURNS IN HIS GRAVE


Note that calls to the C<def_...> subroutines from within a program
will take precedence over the contents of the home directory
F<.inflectrc> file, which in turn takes precedence over the system-wide
F<.inflectrc> file.


=head1 DIAGNOSTICS

On loading, if the Perl code in a F<.inflectrc> file is invalid
(syntactically or otherwise), an appropriate fatal error is issued.
A common problem is not ending the file with something that
evaluates to true (as the five C<def_...> subroutines do).

Using the five C<def_...> subroutines directly in a program may also
result in fatal diagnostics, if a (singular) pattern or an interpolated
(plural) string is somehow invalid.

Specific diagnostics related to user-defined inflections are:

=over 8

=item C<"Bad user-defined singular pattern:\n\t %s">

The singular form of a user-defined noun or verb
(as defined by a call to C<def_noun>, C<def_verb>, C<def_adj>,
C<def_a> or C<def_an>) is not a valid Perl regular expression. The
actual Perl error message is also given.

=item C<"Bad user-defined plural string: '%s'">

The plural form(s) of a user-defined noun or verb
(as defined by a call to C<def_noun>, C<def_verb> or C<def_adj>)
is not a valid Perl interpolated string (usually because it
interpolates some undefined variable).

=item C<"Bad .inflectrc file (%s):\n %s">

Some other problem occurred in loading the named local
or global F<.inflectrc> file. The Perl error message (including
the line number) is also given.

=back

There are I<no> diagnosable run-time error conditions for the actual
inflection subroutines, except C<NUMWORDS> and hence no run-time
diagnostics. If the inflection subroutines are unable to form a plural
via a user-definition or an inbuilt rule, they just "guess" the
commonest English inflection: adding "-s" for nouns, removing "-s" for
verbs, and no inflection for adjectives.

C<Lingua::EN::Inflect::NUMWORDS()> can C<die> with the following messages:

=over 8

=item C<"Bad grouping option: %s">

The optional argument to C<NUMWORDS()> wasn't 1, 2 or 3.

=item C<"Number out of range">

C<NUMWORDS()> was passed a number larger than the number represented
by 3006 consecutive nines. The words representing that number are
63,681 characters long, including commas and spaces. If you're
interested in the actual value, see t/numwords.t.

The reference for the names is http://en.wikipedia.org/wiki/Names_of_large_numbers

There are no names for any higher numbers.

=back

=head1 OTHER ISSUES

=head2 2nd Person precedence

If a verb has identical 1st and 2nd person singular forms, but
different 1st and 2nd person plural forms, then when its plural is
constructed, the 2nd person plural form is always preferred.

The author is not currently aware of any such verbs in English, but is
not quite arrogant enough to assume I<ipso facto> that none exist.


=head2 Nominative precedence

The singular pronoun "it" presents a special problem because its plural form
can vary, depending on its "case". For example:

        It ate my homework       ->  They ate my homework
        It ate it                ->  They ate them
        I fed my homework to it  ->  I fed my homework to them

As a consequence of this ambiguity, C<PL()> or C<PL_N> have been implemented
so that they always return the I<nominative> plural (that is, "they").

However, when asked for the plural of an unambiguously I<accusative>
"it" (namely, C<PL("to it")>, C<PL_N("from it")>, C<PL("with it")>,
etc.), both subroutines will correctly return the accusative plural
("to them", "from them", "with them", etc.)


=head2 The plurality of zero

The rules governing the choice between:

      There were no errors.

and

      There was no error.

are complex and often depend more on I<intent> rather than I<content>.
Hence it is infeasible to specify such rules algorithmically.

Therefore, Lingua::EN::Text contents itself with the following compromise: If
the governing number is zero, inflections always return the plural form
unless the appropriate "classical" inflection is in effect, in which case the
singular form is always returned.

Thus, the sequence:

      NUM(0);
      print inflect "There PL(was) NO(choice)";

produces "There were no choices", whereas:

      classical 'zero';     # or: classical(zero=>1);
      NUM(0);
      print inflect "There PL(was) NO(choice)";

it will print "There was no choice".


=head2 Homographs with heterogeneous plurals

Another context in which intent (and not content) sometimes determines
plurality is where two distinct meanings of a word require different
plurals. For example:

      Three basses were stolen from the band's equipment trailer.
      Three bass were stolen from the band's aquarium.

      I put the mice next to the cheese.
      I put the mouses next to the computers.

      Several thoughts about leaving crossed my mind.
      Several thought about leaving across my lawn.

Lingua::EN::Inflect handles such words in two ways:

=over 8

=item *

If both meanings of the word are the I<same> part of speech (for
example, "bass" is a noun in both sentences above), then one meaning
is chosen as the "usual" meaning, and only that meaning's plural is
ever returned by any of the inflection subroutines.

=item *

If each meaning of the word is a different part of speech (for
example, "thought" is both a noun and a verb), then the noun's
plural is returned by C<PL()> and C<PL_N()> and the verb's plural is
returned only by C<PL_V()>.

=back

Such contexts are, fortunately, uncommon (particularly
"same-part-of-speech" examples). An informal study of nearly 600
"difficult plurals" indicates that C<PL()> can be relied upon to "get
it right" about 98% of the time (although, of course, ichthyophilic
guitarists or cyber-behaviouralists may experience higher rates of
confusion).

If the choice of a particular "usual inflection" is considered
inappropriate, it can always be reversed with a preliminary call
to the corresponding C<def_...> subroutine.

=head1 NOTE

I'm not taking any further correspondence on:

=over

=item "octopi".

Despite the populist pandering of certain New World dictionaries, the
plural is "octopuses" or (for the pedantic classicist) "octopodes". The
suffix "-pus" is Greek, not Latin, so the plural is "-podes", not "pi".


=item "virus".

Had no plural in Latin (possibly because it was a mass noun).
The only plural is the Anglicized "viruses".

=back

=head1 AUTHOR

Damian Conway (damian@conway.org)


=head1 BUGS AND IRRITATIONS

The endless inconsistencies of English.

(I<Please> report words for which the correct plural or
indefinite article is not formed, so that the reliability
of Lingua::EN::Inflect can be improved.)



=head1 COPYRIGHT

 Copyright (c) 1997-2009, Damian Conway. All Rights Reserved.
 This module is free software. It may be used, redistributed
     and/or modified under the same terms as Perl itself.
