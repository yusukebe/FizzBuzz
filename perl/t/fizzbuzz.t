use strict;
use Test::More;

BEGIN {
    use_ok 'FizzBuzz';
}

subtest 'new' => sub {
    my $fizzbuzz = FizzBuzz->new();
    ok $fizzbuzz;
    isa_ok $fizzbuzz, 'FizzBuzz';
};

subtest 'fizzbuzz' => sub {
    my $fizzbuzz = FizzBuzz->new();
    is $fizzbuzz->fizzbuzz(1), "1";
    is $fizzbuzz->fizzbuzz(2), "2";
    is $fizzbuzz->fizzbuzz(3), "Fizz";
    is $fizzbuzz->fizzbuzz(5), "Buzz";
    is $fizzbuzz->fizzbuzz(15), "FizzBuzz";
};

done_testing();
