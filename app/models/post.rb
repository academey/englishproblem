class Post < ActiveRecord::Base
  #include Authority::Abilities
  belongs_to :user
end
