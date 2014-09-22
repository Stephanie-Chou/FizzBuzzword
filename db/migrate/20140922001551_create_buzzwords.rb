class CreateBuzzwords < ActiveRecord::Migration
  def change
    create_table :buzzwords do |t|
      t.string :word

      t.timestamps
    end
  end
end
