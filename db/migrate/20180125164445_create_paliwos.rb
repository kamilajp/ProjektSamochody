class CreatePaliwos < ActiveRecord::Migration[5.1]
  def change
    create_table :paliwos do |t|
      t.string :name

      t.timestamps
    end
  end
end
