# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
#

# db/seeds.rb

# This file seeds the database with initial data for development and testing.
# Run with `rails db:seed` (or created alongside the database with `db:setup`).

# Clear existing data to avoid duplicates (use with caution in production!)
User.destroy_all
Tutorial.destroy_all
Achievement.destroy_all
NewsItem.destroy_all
Portfolio.destroy_all
Trade.destroy_all
TradingStrategy.destroy_all
UserProgress.destroy_all
UserAchievement.destroy_all
ChatMessage.destroy_all

# Create sample users
puts "Creating users..."
user1 = User.create!(
  email: "a@a.a",
  password: "aaaaaa",
  level: 1,
  experience: 0,
  trader_class: "Intern",
  coins: 100
)

user2 = User.create!(
  email: "trader2@example.com",
  password: "password123",
  level: 2,
  experience: 150,
  trader_class: "Analyst",
  coins: 250
)

# Create sample tutorials
puts "Creating tutorials..."
tutorial1 = Tutorial.create!(
  title: "Introduction to Programming Basics",
  content: "# Welcome to Basics\nLearn loops and conditionals with Scratch-like blocks.",
  slug: "intro-programming"
)

tutorial2 = Tutorial.create!(
  title: "Fundamental Analysis with Python",
  content: "# Analyzing Stocks\nUse pandas to calculate P/E ratios.",
  slug: "fundamental-analysis"
)

tutorial3 = Tutorial.create!(
  title: "Automating Trades with Postgres",
  content: "# Database Queries\nStore and query trade data.",
  slug: "automating-trades"
)

# Create sample user progress
UserProgress.create!(user: user1, tutorial: tutorial1, completed: true)
UserProgress.create!(user: user1, tutorial: tutorial2, completed: false)
UserProgress.create!(user: user2, tutorial: tutorial1, completed: true)

# Create sample achievements
puts "Creating achievements..."
achievement1 = Achievement.create!(
  name: "First Step",
  description: "Complete your first tutorial",
  points: 50
)

achievement2 = Achievement.create!(
  name: "Strategy Master",
  description: "Build 5 trading strategies",
  points: 200
)

# Assign achievements to users
UserAchievement.create!(user: user1, achievement: achievement1, earned_at: Time.current)
UserAchievement.create!(user: user2, achievement: achievement1, earned_at: Time.current)
UserAchievement.create!(user: user2, achievement: achievement2, earned_at: Time.current)

# Create sample news items (mock data)
puts "Creating news items..."
NewsItem.create!(headline: "Market Hits Record High", url: "https://example.com/news1")
NewsItem.create!(headline: "Tech Stocks Surge", url: "https://example.com/news2")
NewsItem.create!(headline: "Algo Trading Tips", url: "https://example.com/news3")

# Create sample portfolios and trades
puts "Creating portfolios and trades..."
portfolio1 = Portfolio.create!(user: user1, total_value: 10000.0)
Trade.create!(portfolio: portfolio1, symbol: "AAPL", quantity: 10, price: 150.0, trade_type: "buy")

portfolio2 = Portfolio.create!(user: user2, total_value: 20000.0)
Trade.create!(portfolio: portfolio2, symbol: "GOOGL", quantity: 5, price: 2500.0, trade_type: "sell")

# Create sample trading strategies
puts "Creating trading strategies..."
TradingStrategy.create!(name: "Moving Average Crossover", description: "Buy when short MA crosses long MA", level_required: 1)
TradingStrategy.create!(name: "RSI Divergence", description: "Sell on overbought RSI", level_required: 3)

# Create sample chat messages
puts "Creating chat messages..."
ChatMessage.create!(user: user1, content: "Hey, anyone tried the new tutorial?")
ChatMessage.create!(user: user2, content: "Yes, it's great for beginners!")

puts "Seeding complete! Created #{User.count} users, #{Tutorial.count} tutorials, and more."

