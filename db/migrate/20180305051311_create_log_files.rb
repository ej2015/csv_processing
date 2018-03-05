class CreateLogFiles < ActiveRecord::Migration[5.1]
  def change
    create_table :log_files do |t|
      t.string :directory

      t.timestamps
    end
  end
end
