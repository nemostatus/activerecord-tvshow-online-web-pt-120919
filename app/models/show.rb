class Show < ActiveRecord::Base 
  def self.highest_rating 
  Show.maximum(:rating)
end

def self.most_popular_show
  best = Show.find_by(tating: "#{self.highest_rating}")
  best
end 
end 