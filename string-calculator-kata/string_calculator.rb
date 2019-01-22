class StringCalculator
    def add(string_numbers)
        return 0 if string_numbers == ''

        numbers = string_numbers.split(',').map {|number| number.to_i}
        sum = 0
        numbers.each {|number| sum = sum + number}
        return sum
    end
end