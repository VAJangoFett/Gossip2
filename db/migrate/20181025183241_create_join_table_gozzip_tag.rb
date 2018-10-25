class CreateJoinTableGozzipTag < ActiveRecord::Migration[5.2]
  def change
    create_join_table :gozzips, :tags do |t|
      # t.index [:gozzip_id, :tag_id]
      # t.index [:tag_id, :gozzip_id]
    end
  end
end
