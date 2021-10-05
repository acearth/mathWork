class AddPowerToMathPower < ActiveRecord::Migration[6.1]
  def change
    add_column :math_powers, :power, :integer
  end
end
