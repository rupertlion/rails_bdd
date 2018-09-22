class Comment < ApplicationRecord
  belongs_to :article
    validates :body, presence: true
    validates :commenter, format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/ }, allow_blank: true
end