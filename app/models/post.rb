class Post < ApplicationRecord
    belongs_to :blogger
    belongs_to :destination

    def to_s
        return "#{self.title} - Likes: #{self.likes}"
    end

end
