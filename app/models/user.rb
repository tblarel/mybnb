# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  email           :string           not null
#  password_digest :string           not null
#  fname           :string           not null
#  lname           :string           not null
#  session_token   :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
    attr_reader :password
    validates :email, :session_token, presence: true, uniqueness:true
    validates :fname, :lname, :password_digest, presence: true
    validates :password, length: { minimum: 6}, allow_nil: true

    after_initialize :ensure_session_token

    def self.find_by_credentials(email,password) 
        user = User.find_by(email: email)
        return user if user && user.is_password?(password)
        return nil
    end

    def password=(password)
        @password = password
        self.password_digest = BCrypt::Password.create(password)
    end

    def is_password?(password)
        BCrypt::Password.new(self.password_digest).is_password?(password)
    end

    def reset_session_token!
        generate_new_session_token
        save!
        self.session_token
    end

    private

    def ensure_session_token
        generate_new_session_token unless self.session_token
    end

    def new_session_token
        SecureRandom.urlsafe_base64
    end

    def generate_new_session_token
        self.session_token = new_session_token
        while User.find_by_session_token(self.session_token)
            self.session_token = new_session_token
        end
        self.session_token
    end

end
