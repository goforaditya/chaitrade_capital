class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable

  has_many :chat_messages,  dependent: :destroy
  has_many :user_progresses, dependent: :destroy

  # XP helpers
  after_initialize :set_defaults, if: :new_record?

  def gain_xp(amount = 10)
    self.experience += amount
    level_up if experience >= next_level_threshold
    save!
  end

  private

  def set_defaults
    self.level ||= 1
    self.trader_class ||= "Intern"
    self.coins ||= 100
  end

  def next_level_threshold
    level * 100
  end

  def level_up
    self.level += 1
    # simple class upgrade
    self.trader_class = "Analyst" if level == 3
  end
end
