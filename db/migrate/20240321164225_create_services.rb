<<<<<<< HEAD
class CreateServices < ActiveRecord::Migration[7.1]
  def change
    create_table :services do |t|
      t.string :title
      t.string :service_type
      t.string :description
      t.references :difficulty, null: false, foreign_key: true
      t.references :employee_profile, foreign_key: true

      t.timestamps
    end
  end
end
=======
class CreateServices < ActiveRecord::Migration[7.1]
  def change
    create_table :services do |t|
      t.string :title
      t.string :service_type
      t.references :difficulty, null: false, foreign_key: true
      t.references :employee_profile, foreign_key: true

      t.timestamps
    end
  end
end
>>>>>>> 8994db95e97503f998e933da9501c0c1b79165cb
