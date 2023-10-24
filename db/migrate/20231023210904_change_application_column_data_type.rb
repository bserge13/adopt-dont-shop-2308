class ChangeApplicationColumnDataType < ActiveRecord::Migration[7.0]
  def change
    change_column_default :applications, :status, nil

    change_column :applications, :status, :integer, using: 'status::integer'  

    change_column_default :applications, :status, 0
  end
end