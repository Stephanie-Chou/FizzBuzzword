class CreateFizzs < ActiveRecord::Migration
  def change
    create_table :fizzs do |t|
      t.string :phrase

      t.timestamps
    end
  end
end
