class User < ApplicationRecord
    validates :name, :session_token, :password_digest, presence: true
    validates :password, length: {minimum: 6, allow_nil: true}

    attr_reader :password
    after_initialize :ensure_session_token

    has_many :investments,
    dependent: :destroy

    has_many :totals,
    through: :investments,
    source: :total,
    dependent: :destroy

    def self.find_by_credentials(name, password)
        user = User.find_by(name: name)
        return nil unless user && user.is_passowrd?(password)
        user
    end

    def is_password?(password)
        BCrypt::Password.new(self.password_digest).is_password?(password)
    end

    def password=(password)
        @password = password
        self.password_digest = BCrypt::Password.create(password)
    end

    def reset_session_token!
        self.session_token = SecureRandom.urlsafe_base64(16)
        self.save!
        self.session_token
    end

    def ensure_session_token
        self.session_token ||= SecureRandom.urlsafe_base64(16)
    end


end