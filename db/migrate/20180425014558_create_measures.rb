class CreateMeasures < ActiveRecord::Migration[5.1]
  def change
    create_table :measures do |t|
      t.string :title, null: false, default: ""
      t.integer :category, null: false, default: 0

      t.timestamps
    end
  end
end
