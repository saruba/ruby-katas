require_relative '../string_calculator'

describe 'String Calculator' do
    it 'return 0 if empty string' do
        # Arrange
        calculator = StringCalculator.new()
        # Act
        result = calculator.add('')
        # Assert
        expect(result).to eq(0)
    end
    it 'returns 1 if string is "1"' do
        # Arrange
        calculator = StringCalculator.new()
        # Act
        result = calculator.add('1')
        # Assert
        expect(result).to eq(1)
    end
    it 'returns 3 if string is "1,2"' do
        # Arrange
        calculator = StringCalculator.new()
        # Act
        result = calculator.add('1,2')
        # Assert
        expect(result).to eq(3)
    end
    it 'returns 15 if string is "10,5"' do
        # Arrange
        calculator = StringCalculator.new()
        # Act
        result = calculator.add('10,5')
        # Assert
        expect(result).to eq(15)
    end
end