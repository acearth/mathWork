class CreateMathPowers < ActiveRecord::Migration[6.1]
  def change
    create_table :math_powers do |t|
      t.integer :base
      t.integer :exp

      t.timestamps
    end
  end
end
