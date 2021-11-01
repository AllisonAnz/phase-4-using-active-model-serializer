# movie_serializer.rb
class MovieSerializer < ActiveModel::Serializer
  # to customize our JSON, provide the list of attributes we want to be included
  attributes :id, :title, :year, :length, :director, :description, :poster_url, :category, :discount, :female_director, :summary
end

# AMS also allows us to customize the info returned using an instance method 
# In byebyg 
#   self: returns an object attribute, in turn contains the first movie instance 
#   self.object: returns the movie instance
#   self.object.<attribute_name>: access a specific attribute
def summary 
  #byebug
  #"#{self.object.title} - #{self.object.description[0..49]}..."
  "#{self.title} - #{self.description[0..49]}..."
end
