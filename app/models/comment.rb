class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  accepts_nested_attributes_for :user, reject_if: :username_blank

  private
  def username_blank(user)
    user[:username].empty?
  end


end
