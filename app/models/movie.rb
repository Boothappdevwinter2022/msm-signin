# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  description :text
#  duration    :integer
#  image       :string
#  title       :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#
class Movie < ApplicationRecord
  has_many :characters
  belongs_to :director
  has_many :cast, :through => :characters, :source => :actor
  has_many :users, :through => :bookmarks

  validates(:title,  {:presence => true})
  validates(:director_id,  {:presence => true})
end
