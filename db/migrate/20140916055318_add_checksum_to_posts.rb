class AddChecksumToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :checksum, :string, index: true
  end
end
