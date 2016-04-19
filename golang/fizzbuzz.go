package fizzbuzz

import (
	"strconv"
)

type FizzBuzz struct {
}

func NewFizzBuzz() FizzBuzz {
	fb := FizzBuzz{}
	return fb
}

func (fb FizzBuzz) Do(i int) string {
	if i%3 == 0 {
		if i%5 == 0 {
			return "FizzBuzz"
		}
		return "Fizz"
	} else if i%5 == 0 {
		return "Buzz"
	}
	return strconv.Itoa(i)
}
