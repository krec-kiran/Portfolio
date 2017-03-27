class CreateTeches < ActiveRecord::Migration[5.0]
  def change
    create_table :teches do |t|
      t.string :name
      t.references :biodatum, foreign_key: true

      t.timestamps
    end
  end
end
