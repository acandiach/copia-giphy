class AddLabelRefToPublications < ActiveRecord::Migration[7.0]
  def change
    add_reference :publications, :label, null: false, foreign_key: true
  end
end
