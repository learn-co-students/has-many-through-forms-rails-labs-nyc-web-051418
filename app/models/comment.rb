class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user, reject_if: :attributes_invalid


  def attributes_invalid(user_attributes)
    user_attributes[:username].empty? 
  end


end
