class Product < ApplicationRecord
    before_destroy :not_referenced_by_any_item
    belongs_to :user, optional: true
    has_many :items
    
    mount_uploader :image, ImageUploader 
    serialize :image, JSON 

    validates :name, :brand, presence: true
    
    validates :description, length: { maximum: 1000, too_long: "%{count} characters is the maximum aloud. "}

    validates   :price, length: { maximum: 7 }

    BRAND = %w{ one two three}

    private

    def not_referenced_by_any_item
        unless items.empty?
            errors.add(:base, "items present")
            throw :abort             
        end        
    end
end
