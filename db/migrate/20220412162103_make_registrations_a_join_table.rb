class MakeRegistrationsAJoinTable < ActiveRecord::Migration[6.1]
  def change
    remove_column :registrations, :name, :string
    remove_column :registrations, :email, :string
    add_column :registrations, :user_id, :integer
    Registration.delete_all
  end
end
