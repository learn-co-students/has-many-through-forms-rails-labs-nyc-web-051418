class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user, reject_if: :username_not_entered

  private
  def username_not_entered(attributes)
    attributes["username"].empty?
  end

end
