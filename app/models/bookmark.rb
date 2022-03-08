# == Schema Information
#
# Table name: bookmarks
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  movie_id   :integer
#  user_id    :integer
#
class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :user
  validates(:movie_id, { :uniqueness => { :scope => [:user_id]}})
  validates(:user_id, { :presence => true})
  validates(:movie_id, { :presence => true})
end
