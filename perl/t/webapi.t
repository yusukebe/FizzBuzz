use strict;
use Test::More;
use Test::Mojo;

BEGIN {
    use_ok 'FizzBuzz::WebAPI';
    use_ok 'FizzBuzz::WebAPI::Controller::Root';
};

$ENV{MOJO_LOG_LEVEL} = 'warn';

subtest 'root' => sub {
    my $t = Test::Mojo->new('FizzBuzz::WebAPI');
    $t->get_ok('/')->status_is(200)->json_has('/message');
};

subtest 'fizzbuzz' => sub {
    my $t = Test::Mojo->new('FizzBuzz::WebAPI');
    $t->get_ok('/fizzbuzz')->status_is(200)->json_has('/error');
    $t->get_ok('/fizzbuzz' => form => {number => 1})->status_is(200)->json_is('/message', 1);
    $t->get_ok('/fizzbuzz' => form => {number => 2})->status_is(200)->json_is('/message', 2);
    $t->get_ok('/fizzbuzz' => form => {number => 3})->status_is(200)->json_is('/message', 'Fizz');
    $t->get_ok('/fizzbuzz' => form => {number => 5})->status_is(200)->json_is('/message', 'Buzz');
    $t->get_ok('/fizzbuzz' => form => {number => 15})->status_is(200)->json_is('/message', 'FizzBuzz');
    $t->get_ok('/fizzbuzz' => form => {number => 'Fizz'})->status_is(200)->json_has('/error');
};

done_testing();
