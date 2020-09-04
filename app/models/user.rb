class User < ApplicationRecord
    has_many :questions, dependent: :destroy
    # accepts_nested_attributes_for :questions, allow_destroy: true, reject_if: :all_blank
    before_save {self.email = email.downcase } #or { email.downcase!}
    validates :first_name, :last_name, presence: true, length: { maximum: 50 }
    validates :email, presence: true,
                    length: { maximum: 50 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i},
                    uniqueness: { case_sensitive: false }
    has_secure_password
    validates :password, length: { minimum: 6 }
##############################################################
    def full_name
        "#{self.first_name} #{self.last_name}"
    end
end
