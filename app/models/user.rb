class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  #include Authority::UserAbilities
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
					:confirmable
  has_many :posts, dependent: :destroy
end
