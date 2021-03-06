BEGIN {
	use Cwd;
	my $cwd = getcwd . '/../../..';
	my @paths = (
		"..",
		"$cwd/cpan-Test-Unit/vendor/lib/",
		"$cwd/cpan-Class-Inner/vendor/lib/",
		"$cwd/cpan-Class-Inspector/vendor/lib/",
		"$cwd/cpan-Devel-Symdump/vendor/lib/",
		"$cwd/cpan-Error/vendor/lib/",
		"$cwd/cpan-Exception-Base/vendor/lib/",
		"$cwd/cpan-Symbol-Util/vendor/lib/",
		"$cwd/cpan-Test-Assert/vendor/lib/",
		"$cwd/cpan-Test-Unit/vendor/lib/",
		"$cwd/cpan-Test-Unit-Lite/vendor/lib/",
		"$cwd/cpan-constant-boolean/vendor/lib/",
		"$cwd/cpan-parent/vendor/lib/");

	push(@INC, @paths);
	@INC = reverse(@INC);
}
use Test::Unit::Runner::XML;
my $r = Test::Unit::Runner::XML->new('testxml');
$r->start('Tests::BlogTests');
