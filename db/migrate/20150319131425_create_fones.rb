class CreateFones < ActiveRecord::Migration
  def change
    create_table :fones do |t|
      t.text :json_string

      t.timestamps null: false
    end
  end
end
