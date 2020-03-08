class Show < ActiveRecord::Base 
  def self.highest_rating 
  Show.maximum(:rating)
end

def self.most_popular_show
  best = Show.find_by(rating: "#{self.highest_rating}")
  best
end 

def self.lowest_rating
  Show.minimum(:rating)
end

def self.least_popular_show
end 