class Question 
  attr_reader :first_number, :second_number
  def initialize
    @first_number = rand(1..20)
    @second_number = rand(1..20)
  end

  def ask
    puts "What is #{@first_number} plus #{@second_number}?" 
  end

  def answer
    @first_number + @second_number
  end
end