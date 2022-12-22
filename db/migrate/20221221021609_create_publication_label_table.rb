class CreatePublicationLabelTable < ActiveRecord::Migration[7.0]
  def change
    create_table :publication_label_tables do |t|
      create_join_table :labels, :publications

      t.timestamps
    end
  end
end
