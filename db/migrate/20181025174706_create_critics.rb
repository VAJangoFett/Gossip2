class CreateCritics < ActiveRecord::Migration[5.2]
  def change
    create_table :critics do |t|
      t.text :content
      t.references :user, polymorphic: true, index: true
      t.timestamps
    end
  end
end
