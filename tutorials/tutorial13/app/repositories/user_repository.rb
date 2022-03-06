class UserRepository
  class << self
    # Retrieve all users from user table
    def get_all_users
      sql = "
        SELECT id, name, email, address, phone_number,  
        FROM users;
      "
      ActiveRecord::Base.connection.execute(sql)
    end

    # Find user by id
    def findby_id(id)
      User.find(id)
    end

    # Find user by name
    def findby_name(name)
      User.find_by(name: name)
    end

    # Update user
    def update_user(user, params)
      user.update(params)
    end

    # Destroy user
    def destroy_user(user)
      user.destroy
    end
  end
end
