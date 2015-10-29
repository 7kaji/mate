# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# User
100.times do
  User.find_or_create_by(name: Gimei.kanji)
end

# Club
clubs = %w(バスケ サッカー テニス 卓球 体操 バレー 野球 体操 羽球 将棋)
clubs.each do |c|
  Club.create(name: c)
end

# Member
100.times do
  Member.find_or_create_by(user_id: [*1..10].sample, club_id: [*1..10].sample)
end

puts '-- initialized seed data.'
