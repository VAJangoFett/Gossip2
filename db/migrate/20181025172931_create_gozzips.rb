class CreateGozzips < ActiveRecord::Migration[5.2]
  def change
    create_table :gozzips do |t|
      t.string :title
      t.text :content
      t.datetime :date
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
