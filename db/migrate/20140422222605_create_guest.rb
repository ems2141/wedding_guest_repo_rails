class CreateGuest < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :name
    end
  end
end
