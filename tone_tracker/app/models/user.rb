class User < ActiveRecord::Base

validates :username, :email, :password, presence: true

has_secure_password

has_many :contents
has_many :emotions, through: :contents
has_many :languages, through: :contents
has_many :tendencies, through: :contents

end
