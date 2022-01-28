class AddAuthorToTables < ActiveRecord::Migration[7.0]
  def change
    add_reference :tables, :author
  end
end
