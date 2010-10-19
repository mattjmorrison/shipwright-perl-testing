use vars qw(@INC);
push(@INC, '../../../cpan-Test-Unit/vendor/lib/');
use Test::Unit::HarnessUnit;
my $r = Test::Unit::HarnessUnit->new();
$r->start('Tests::BlogTests');
