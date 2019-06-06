class AddOmniauthToOwner < ActiveRecord::Migration[5.2]
  def change
    add_column :owners, :provider, :string
    add_column :owners, :uid, :string
  end
end
