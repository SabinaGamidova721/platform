<<<<<<< HEAD
class CreateClientProfiles < ActiveRecord::Migration[7.1]
  def change
    create_table :client_profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :currency_type
      t.references :client, null: false, foreign_key: true

      t.timestamps
    end
  end
end
=======
class CreateClientProfiles < ActiveRecord::Migration[7.1]
  def change
    create_table :client_profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.references :client, null: false, foreign_key: true

      t.timestamps
    end
  end
end
>>>>>>> 8994db95e97503f998e933da9501c0c1b79165cb
