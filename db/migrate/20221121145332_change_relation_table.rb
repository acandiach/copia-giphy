class ChangeRelationTable < ActiveRecord::Migration[7.0]
  def change
    add_column :publication :label_id
  end
end
