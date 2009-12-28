#!perl
use strict;
use warnings;
use Test::More tests => 3;
use Compress::LZMA::External qw(compress decompress);

my $data = 'X' x 1000;

my $compressed = compress($data);
is( length($compressed), 25 );

my $uncompressed = decompress($compressed);
is( length($uncompressed), 1000 );
is( $uncompressed, $data );
