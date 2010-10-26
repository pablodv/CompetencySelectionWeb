class AddComentToStudies < ActiveRecord::Migration
  def self.up
    add_column :studies, :comment, :text
  end

  def self.down
    remove_column :studies, :comment
  end
end
