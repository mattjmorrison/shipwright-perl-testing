package WillDie;

use Error;

use base qw(Test::Unit::TestCase ExceptionChecker);

sub test_dies {
    my $self = shift;
    $self->check_failures(
        'Died' => [ __LINE__, sub { die;        } ],
        'BANG' => [ __LINE__, sub { die "BANG"; } ],
    );
}

sub test_throws_error_simple {
    my $self = shift;
    $self->check_failures(
        'BANG!' => [ __LINE__, sub { Error::Simple->throw("BANG!"); } ],
    );
}

1;
