FactoryGirl.define do

  factory :user, :class => User do
    name "Adriana Santos"
    email "adrianasucena@gmail.com"
    password "password"
    password_confirmation "password"
    password_hash "$2a$10$15ztvKQNUOutY/fp5zDC1eANR1eXufmCRp0zj2tnrszsQ3o8ZFEPG"
    password_salt "$2a$10$15ztvKQNUOutY/fp5zDC1e"
    country "UK"
    city "London"
  end

  factory :baby, :class => Baby do
    user_id 1
    birthday "2010-06-01"
    gender "male"
    name "Sebastiao"
  end

  factory :stat, :class => Stat do
    user_id 1
    baby_id 1
    height 1.5
    weight 15.0
    age_weeks 2
  end

end
