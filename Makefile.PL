use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME         => 'lgbtsupport',
    AUTHOR       => q{Alexandria Wolcott <alyx@spartairc.org>},
    VERSION_FROM => 'lib/lgbtsupport.pm',
    ABSTRACT =>
'LGBTsupport.org, an online community built to support the entire LGBT community.',
    ( $ExtUtils::MakeMaker::VERSION >= 6.3002
        ? ( 'LICENSE' => 'perl' )
        : () ),
    PL_FILES  => {},
    PREREQ_PM => {
        'Test::More' => 0,
        'YAML'       => 0,
        'Dancer'     => 1.1901,
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES    => 'lgbtsupport-*' },
);
