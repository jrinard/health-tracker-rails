class Food < ApplicationRecord
  belongs_to :user

  validates :name, :presence => true

  def self.food_history(user)
    @foods = Food.where(user_id: user.id)
    dates = @foods.map(&:date).sort { |x,y| y <=> x }
    p "="*40
    p dates.uniq
    p "="*40
    dates.uniq.map {|date| @foods.where(date: date) }
  end
  def to_str
    "#{amount} #{name} on #{date}"
  end
end
