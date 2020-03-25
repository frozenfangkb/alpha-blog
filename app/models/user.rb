class User < ApplicationRecord
    validates :username, uniqueness: { case_sensitive: false }, 
    presence: true, length: {minimum: 3, maximum: 25}

    VALID_EMAIL_REGEX = /\A([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})\z/i

    validates :email, presence: true, length: { maximum: 105 },
    uniqueness: { case_sensitive: false },
    format: { with: VALID_EMAIL_REGEX }

end
