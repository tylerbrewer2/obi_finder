class Like < ActiveRecord::Base
  belongs_to :dog
  belongs_to :user
end
