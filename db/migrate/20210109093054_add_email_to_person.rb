class AddEmailToPerson < ActiveRecord::Migration[6.1]
  def change
    add_column :people, :email, :string
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
    add_column :people, :token, :string 
  end
end
