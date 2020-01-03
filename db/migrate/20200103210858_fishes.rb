class Fishes < ActiveRecord::Migration[5.2]
  def change
    create_table :fishes do |t|
      t.string :name
      t.string :url
      t.string :image_url
      t.string :price
      t.string :location
      t.string :shadow_size
      t.string :time
      t.string :start_time
      t.string :end_time
      t.boolean :january
      t.boolean :february
      t.boolean :march
      t.boolean :april
      t.boolean :may
      t.boolean :june
      t.boolean :july
      t.boolean :august
      t.boolean :september
      t.boolean :october
      t.boolean :november
      t.boolean :december
    end
  end
end
