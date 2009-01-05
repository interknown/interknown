class AddTagToQuestion < ActiveRecord::Migration
  def self.up
    add_column :questions, :tag, :string
  end

  def self.down
    remove_column :questions, :tag
  end
end
