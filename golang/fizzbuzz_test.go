package fizzbuzz

import (
	"testing"
)

func TestFizzBuzz(t *testing.T) {
	fb := NewFizzBuzz()
	var expected, result string
	expected = "1"
	result = fb.Do(1)
	if expected != result {
		t.Errorf("Expected:%s, but result is:%v", expected, result)
	}
	expected = "2"
	result = fb.Do(2)
	if expected != result {
		t.Errorf("Expected:%s, but result is:%v", expected, result)
	}
	expected = "Fizz"
	result = fb.Do(3)
	if expected != result {
		t.Errorf("Expected:%s, but result is:%v", expected, result)
	}
	expected = "Buzz"
	result = fb.Do(5)
	if expected != result {
		t.Errorf("Expected:%s, but result is:%v", expected, result)
	}
	expected = "FizzBuzz"
	result = fb.Do(15)
	if expected != result {
		t.Errorf("Expected:%s, but result is:%v", expected, result)
	}
}
