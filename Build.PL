use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'IO::Any',
    license             => 'perl',
    dist_author         => 'Jozef Kutej <jkutej@cpan.org>',
    dist_version_from   => 'lib/IO/Any.pm',
    requires => {
        'Carp'       => 0,
        'File::Spec' => 0,
        'IO::String' => 0,
        'IO::File'   => 0,
        'Scalar::Util' => 0,
    },
    build_requires => {
        'Test::More'        => 0,
        'Test::Differences' => 0,
        'File::Slurp'       => 0,
        'File::Temp'        => 0,
    },
    add_to_cleanup      => [ 'IO-Any-*' ],
    create_makefile_pl => 'traditional',
    create_readme       => 1,
    sign                => 1,
);

$builder->create_build_script();