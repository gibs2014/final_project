class User < ActiveRecord::Base
  has_many :orders

  def full_name
    return first_name + " " + second_name
  end
end
