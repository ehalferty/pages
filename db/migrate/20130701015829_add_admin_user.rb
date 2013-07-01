class AddAdminUser < ActiveRecord::Migration
  def up
    user = User.create!({:email => 'edhalferty@gmail.com', :username => 'admin', :password => ENV['ADMIN_PASS'], :password_confirmation => ENV['ADMIN_PASS'], :admin => true}, :without_protection => true)
  end

  def down
    User.find_by_username('admin').destroy
  end
end
