class CreateOsobas < ActiveRecord::Migration[5.1]
  def change
    create_table :osobas do |t|
      t.string :ime
      t.string :prezime
      t.string :godiste

      t.timestamps
    end
  end
end
