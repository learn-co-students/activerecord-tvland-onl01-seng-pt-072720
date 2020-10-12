class CreatesActors < ActiveRecord::Migration[5.1]
  #to make an additive change to a schema we create
  #a new migration, and then in the change method,
  #we make the change.
  create_table :actors do |t|
      t.string :first_name
      t.string :last_name
    end
end