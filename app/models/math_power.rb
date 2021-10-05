class MathPower < ApplicationRecord
	before_save :set_power

	def set_power
    puts "#{self.base.class}: <--"
    puts "#{self.exp}: <--"
    puts "#{self.to_json}: <--"
		self.power = (self.base) ** (self.exp)
  end
end
