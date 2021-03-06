# frozen_string_literal: true

# create colors table that contains all valid assignable gel colors
class CreateColors < ActiveRecord::Migration[5.2]
  def change
    create_table :colors do |t|
      t.string :gel_num
      t.string :gel_name
      t.string :gel_hex
      t.references :manufacturer

      t.timestamps
    end
  end
end
