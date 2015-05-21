class CreateServiceHistories < ActiveRecord::Migration
  def change
    create_table :service_histories do |t|
      t.string :user
      t.string :service
      t.string :charge
      t.string :feedback

      t.timestamps null: false
    end
  end
end
