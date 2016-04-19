package FizzBuzz;
use Mojo::Base -base;

sub fizzbuzz {
    my ($self, $i) = @_;
    if ($i % 3 == 0) {
        return 'FizzBuzz' if $i % 5 == 0;
        return 'Fizz';
    }
    return 'Buzz' if $i % 5 == 0;
    return $i;
}

1;
