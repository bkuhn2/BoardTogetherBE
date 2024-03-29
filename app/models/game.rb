class Game < ApplicationRecord
  has_many :user_games
  has_many :users, through: :user_games

  validates :board_game_atlas_id, :name, :min_players, :max_players, :min_playtime, :max_playtime, :min_age,
            :year_published, :description, :thumb_url, :image_url, :url, presence: true
end
