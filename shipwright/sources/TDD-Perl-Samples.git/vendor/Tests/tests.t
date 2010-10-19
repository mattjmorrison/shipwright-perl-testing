use Cwd;
my $cwd = getcwd;
use lib qw('$cwd/cpan-Test-Unit/vendor/lib/');
use Test::Unit::HarnessUnit;
my $r = Test::Unit::HarnessUnit->new();
$r->start('Tests::BlogTests');
