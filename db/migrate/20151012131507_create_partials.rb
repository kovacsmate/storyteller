class CreatePartials < ActiveRecord::Migration
  def change
    create_table :partials do |t|
      t.text :text
      t.references :post, index: true
      t.string :background_color
      t.references :user, index: true

      t.timestamps
    end
  end
end
