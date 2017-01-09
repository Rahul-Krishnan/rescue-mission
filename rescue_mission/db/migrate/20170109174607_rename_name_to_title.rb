class RenameNameToTitle < ActiveRecord::Migration[5.0]
  def change
    rename_column :questions, :name, :title
  end
end
