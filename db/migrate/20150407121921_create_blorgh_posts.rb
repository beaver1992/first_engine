class CreateBlorghPosts < ActiveRecord::Migration
  def change
    create_table :blorgh_posts do |t|
      t.string :title
      t.text :text

      t.timestamps null: false
    end
  end
end
