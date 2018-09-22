class Comment < ApplicationRecord
  belongs_to :article
    validates :views, presence: true
    validates :email, format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/ }, allow_blank: true
end