class Search < ApplicationRecord
  def search_users
    users = User.all

    users = users.where(["name LIKE ?","%#{keywords}%"]) if keywords.present?
    users = users.where(["email LIKE ?",email]) if email.present?
    users = users.where(["address LIKE ?",address]) if address.present?
    users = users.where(["phone_number LIKE ?",phone_number]) if phone_number.present?

    return users
  end  

end
