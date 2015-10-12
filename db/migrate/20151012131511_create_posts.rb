class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.references :user, index: true
      t.references :comment, index: true

      t.timestamps
    end
  end
end
