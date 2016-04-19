<?php

class FizzBuzz {
    public function do($i) {
        if ($i % 3 == 0) {
            if ($i % 5 == 0) {
                return 'FizzBuzz';
            }
            return 'Fizz';
        }elseif($i % 5 == 0) {
            return 'Buzz';
        }
        return $i;
    }
}
