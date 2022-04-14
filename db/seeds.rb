require 'faker'

puts "Cleaning database..."
WeeklyFeedback.destroy_all
User.destroy_all

puts "Creating users..."

users = [
    {
        email: "coach@fitcoach.com",
        password: "bestcoach"
    },
    {
        email: "agathe@fitcoach.com",
        password: "bestcoach",
        first_name: "Agathe",
        last_name: "Puget",
        date_of_birth: DateTime.new(1987, 5, 3),
        telephone: "0601010101",
        medical_data: "Cras est ex, sodales ac suscipit in, bibendum id risus. Nullam suscipit est sem. Vestibulum et libero id diam lacinia malesuada non id quam. Integer luctus libero vel tristique ornare. Fusce magna purus, rhoncus eu lectus eu, tempus convallis nisi. Nulla vulputate vehicula felis, rutrum porttitor elit pulvinar eget.",
        start_weight: 62.4,
        start_date: DateTime.new(2021, 9, 3)
    },
    {
        email: "florence@fitcoach.com",
        password: "bestcoach",
        first_name: "Florence",
        last_name: "Rombi",
        date_of_birth: DateTime.new(1987, 6, 17),
        telephone: "0602020202",
        medical_data: "Suspendisse tellus diam, tincidunt vitae cursus sed, consequat sed massa. Sed quis commodo erat. Aenean hendrerit sed erat sit amet molestie. Fusce nec erat at urna blandit hendrerit. Vivamus vitae tempor massa. In placerat facilisis ultricies. Aenean sed leo sit amet lectus congue facilisis.",
        start_weight: 77.6,
        start_date: DateTime.new(2021, 12, 1)
    },
    {
        email: "marc@fitcoach.com",
        password: "bestcoach",
        first_name: "Marc",
        last_name: "Buonomo",
        date_of_birth: DateTime.new(1987, 2, 4),
        telephone: "0603030303",
        medical_data: "Vestibulum fermentum, lorem eu auctor rhoncus, arcu est porttitor felis, dapibus volutpat magna orci nec lectus. Cras a vulputate dolor, et posuere felis.",
        start_weight: 88.1,
        start_date: DateTime.new(2022, 2, 4)
    },
    {
        email: "thomas@fitcoach.com",
        password: "bestcoach"
    },
    {
        email: "beryl@fitcoach.com",
        password: "bestcoach"
    }
]
  
users.each do |user|
    User.create!(user)
end

puts "Creating weekly feedbacks..."

weekly_feedbacks = [
    {
        user: User.find(2),
        date: DateTime.new(2021, 9, 11),
        weight: 62.1,
        comments: Faker::Lorem.paragraph(sentence_count: 4, supplemental: true, random_sentences_to_add: 5)
    },
    {
        user: User.find(2),
        date: DateTime.new(2021, 9, 18),
        weight: 61.6,
        comments: Faker::Lorem.paragraph(sentence_count: 4, supplemental: true, random_sentences_to_add: 5)
    },
    {
        user: User.find(2),
        date: DateTime.new(2021, 9, 25),
        weight: 61.8,
        comments: Faker::Lorem.paragraph(sentence_count: 4, supplemental: true, random_sentences_to_add: 5)
    },
    {
        user: User.find(2),
        date: DateTime.new(2021, 10, 2),
        weight: 61.2,
        comments: Faker::Lorem.paragraph(sentence_count: 4, supplemental: true, random_sentences_to_add: 5)
    },
    {
        user: User.find(2),
        date: DateTime.new(2021, 10, 9),
        weight: 60.3,
        comments: Faker::Lorem.paragraph(sentence_count: 4, supplemental: true, random_sentences_to_add: 5)
    },
    {
        user: User.find(2),
        date: DateTime.new(2021, 10, 16),
        weight: 59.2,
        comments: Faker::Lorem.paragraph(sentence_count: 4, supplemental: true, random_sentences_to_add: 5)
    },
    {
        user: User.find(2),
        date: DateTime.new(2021, 10, 23),
        weight: 58.5,
        comments: Faker::Lorem.paragraph(sentence_count: 4, supplemental: true, random_sentences_to_add: 5)
    },
    {
        user: User.find(2),
        date: DateTime.new(2021, 10, 30),
        weight: 57.9,
        comments: Faker::Lorem.paragraph(sentence_count: 4, supplemental: true, random_sentences_to_add: 5)
    },
    {
        user: User.find(2),
        date: DateTime.new(2021, 11, 6),
        weight: 57.0,
        comments: Faker::Lorem.paragraph(sentence_count: 4, supplemental: true, random_sentences_to_add: 5)
    },
    {
        user: User.find(2),
        date: DateTime.new(2021, 11, 13),
        weight: 56.5,
        comments: Faker::Lorem.paragraph(sentence_count: 4, supplemental: true, random_sentences_to_add: 5),
    },

    {
        user: User.find(3),
        date: DateTime.new(2021, 12, 4),
        weight: 76.5,
        comments: Faker::Lorem.paragraph(sentence_count: 4, supplemental: true, random_sentences_to_add: 5),
    },
    {
        user: User.find(3),
        date: DateTime.new(2021, 12, 11),
        weight: 74.9,
        comments: Faker::Lorem.paragraph(sentence_count: 4, supplemental: true, random_sentences_to_add: 5),
    },
    {
        user: User.find(3),
        date: DateTime.new(2021, 12, 18),
        weight: 74.1,
        comments: Faker::Lorem.paragraph(sentence_count: 4, supplemental: true, random_sentences_to_add: 5),
    },
    {
        user: User.find(3),
        date: DateTime.new(2021, 12, 25),
        weight: 73.5,
        comments: Faker::Lorem.paragraph(sentence_count: 4, supplemental: true, random_sentences_to_add: 5),
    },

    {
        user: User.find(4),
        date: DateTime.new(2022, 2, 12),
        weight: 86.7,
        comments: Faker::Lorem.paragraph(sentence_count: 4, supplemental: true, random_sentences_to_add: 5),
    },
    {
        user: User.find(4),
        date: DateTime.new(2022, 2, 19),
        weight: 85.9,
        comments: Faker::Lorem.paragraph(sentence_count: 4, supplemental: true, random_sentences_to_add: 5),
    }
]

weekly_feedbacks.each do |weekly_feedback|
    WeeklyFeedback.create!(weekly_feedback)
end

puts "Finished!"
