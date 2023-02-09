puts "🌱 Seeding spices..."

# Seed your database here

50.times do
    artist = Artist.create(
        name: Faker::Artist.name,
        bio: Faker::Lorem.paragraph,
        birth_date: Faker::Date.between(from: '1900-09-23', to: '1930-09-25'),
        death_date: Faker::Date.between(from: '1931-09-23', to: '2022-09-25'),
        headshot_url: Faker::Avatar.image
    )

    rand(5..10).times do
        Artwork.create(
            title: Faker::Book.title,
            description: Faker::Lorem.paragraph,
            medium: Faker::Lorem.sentence(word_count:3),
            price: rand(10000..100000),
            date_created: Faker::Date.between(from: '1920-09-23', to: '2014-09-25'),
            image_url: Faker::Placeholdit.image,
            artist_id: artist.id
        )
    end
end

puts "✅ Done seeding!"
