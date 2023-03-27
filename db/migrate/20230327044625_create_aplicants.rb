class CreateAplicants < ActiveRecord::Migration[7.0]
  def change
    create_table :aplicants do |t|
      t.string :name
      t.references :vacancy, null: false, foreign_key: true

      t.timestamps
    end
  end
end
