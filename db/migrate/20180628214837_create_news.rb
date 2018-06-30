class CreateNews < ActiveRecord::Migration[5.2]
  def change
    create_table :publications do |t|
      t.string :cover
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
