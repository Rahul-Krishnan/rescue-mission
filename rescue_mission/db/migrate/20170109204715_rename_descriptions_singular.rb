class RenameDescriptionsSingular < ActiveRecord::Migration[5.0]
  def change
    rename_column :questions, :descriptions, :description
  end
end
