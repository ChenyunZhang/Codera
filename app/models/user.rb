class User < ApplicationRecord
    has_many :questions
    accepts_nested_attributes_for :questions, allow_destroy: true, reject_if: :all_blank

    has_secure_password

    def full_name
        "#{self.first_name} #{self.last_name}"
    end
end
