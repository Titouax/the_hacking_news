class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.belongs_to :users, polymorphic: true
      t.belongs_to :posts, polymorphic: true
      t.text :body
      t.timestamps
    end
  end
end
