<?php

require_once('./lib/FizzBuzz.php');

class FizzBuzzTest extends PHPUnit_Framework_TestCase {
    function testFizzBuzz() {
        $fizzbuzz = new FizzBuzz();
        $this -> assertEquals('1', $fizzbuzz->do(1));
        $this -> assertEquals('2', $fizzbuzz->do(2));
        $this -> assertEquals('Fizz', $fizzbuzz->do(3));
        $this -> assertEquals('Buzz', $fizzbuzz->do(5));
        $this -> assertEquals('FizzBuzz', $fizzbuzz->do(15));
    }
}
