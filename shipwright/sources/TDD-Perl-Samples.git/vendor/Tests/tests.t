BEGIN {
	use Cwd;
	my $cwd = getcwd;
	my $testUnitPath = "$cwd/cpan-Test-Unit/vendor/lib/";
	push(@INC, $testUnitPath);
}

use Test::Unit::HarnessUnit;
my $r = Test::Unit::HarnessUnit->new();
$r->start('Tests::BlogTests');
