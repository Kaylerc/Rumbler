  require 'bcrypt'

  class User < ActiveRecord::Base
    include BCrypt

    def password
      @password ||= Password.new(password_hash)
    end

    def password=(new_password)
      @password = Password.create(new_password)
      self.password_hash = @password
    end
    has_many :posts, dependent: :destroy 
  end


class Post < ActiveRecord::Base
  belongs_to :user

end
