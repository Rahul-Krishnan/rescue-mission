class AddDescriptionOfQuestion < ActiveRecord::Migration[5.0]
  def change
    add_column :questions, :descriptions, :text
  end
end
