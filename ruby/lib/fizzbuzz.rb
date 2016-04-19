class FizzBuzz
  def fizzbuzz(i)
    if i % 3 == 0
      return "FizzBuzz" if i % 5 == 0
      return "Fizz"
    elsif i % 5 == 0
      return "Buzz"
    end
    return i.to_s
  end
end
