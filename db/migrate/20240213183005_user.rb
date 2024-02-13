class User < ActiveRecord::Migration[7.0]
  def change
    create_table :users unless table_exists?(:users) # Add this line to check if the table exists before creating it
  end
end
