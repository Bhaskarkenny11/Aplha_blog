class Article < ApplicationRecord
validates_presence_of :title
validates_length_of :title, minimum:5
validates :description,presence: true,length:{minimum:4,maximum:10}

end