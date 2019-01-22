class StringCalculator
    class << self
        def add(string_numbers)
            numbers = to_numbers(string_numbers)
            numbers.inject(0) {|sum, number| sum + number }
        end
        private
        def to_numbers(string_numbers)
            string_numbers.split(',').map {|number| number.to_i}
        end
    end
end