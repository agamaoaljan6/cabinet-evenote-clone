class Doc < ApplicationRecord
    belongs_to :user

    validates(
        :title,
        presence: true,
        uniqueness: { case_sensitive: false },
        length: { minimum: 10, maximum: 50 }
      )
    
      validates(
        :content,
        presence: true,
        length: { minimum: 10, maximum: 200 }
      )

end
