require 'csv'

puts "Loading Labels..."
CSV.foreach(Rails.root.join('db/seeds/csv/labels.csv'), headers: true) do |row|
  Label.create! do |label|
    label.id = row[0]
    label.name = row[1]
  end
end

puts 'Creating User...'
CSV.foreach(Rails.root.join('db/seeds/csv/users.csv'), headers: true) do |row|
  User.create! do |user|
    user.id = row[0]
    user.email = row[1]
    user.password = row[2]
  end
end

puts 'Creating Publications for example...'
CSV.foreach(Rails.root.join('db/seeds/csv/publications.csv'), headers: true) do |row|
  Publication.create! do |publication|
    publication.id = row[0]
    publication.title = row[1]
    publication.description = row[2]
    publication.label_id = row[3]
    publication.user_id = row[4]
  end
end

