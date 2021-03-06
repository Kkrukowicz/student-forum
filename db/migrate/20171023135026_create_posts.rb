class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :body
      t.references :student, foreign_key: true
      t.references :topic, foreign_key: true

      t.timestamps
    end
  end
end
