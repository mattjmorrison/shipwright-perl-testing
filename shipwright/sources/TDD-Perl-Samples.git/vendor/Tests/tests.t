use Cwd;
my $cwd = getcwd;
my $testUnitPath = "$cwd/cpan-Test-Unit/vendor/lib/";
use lib qw($testUnitPath);
use Test::Unit::HarnessUnit;
my $r = Test::Unit::HarnessUnit->new();
$r->start('Tests::BlogTests');
