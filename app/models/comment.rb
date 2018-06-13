class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user

  def user_attributes=(username)
    if username.values[0] != ""
      self.user = User.find_or_create_by(username: username.values[0])
    end
  end

end
