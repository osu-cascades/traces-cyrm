class AddFeaturedToMeasures < ActiveRecord::Migration[5.2]
  def change
    add_column :measures, :featured, :boolean, default: false, null: false
  end
end
