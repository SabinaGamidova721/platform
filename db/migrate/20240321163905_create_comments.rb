<<<<<<< HEAD
class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|
      t.references :order, null: false, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end
=======
class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|
      t.references :order, null: false, foreign_key: true
      t.string :content

      t.timestamps
    end
  end
end
>>>>>>> 8994db95e97503f998e933da9501c0c1b79165cb
