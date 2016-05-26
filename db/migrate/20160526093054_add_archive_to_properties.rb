class AddArchiveToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :archive, :boolean, default: false
  end
end
