Factory.define :user do |u|
  u.name "Adriana Santos"
  u.email "adrianasucena@gmail.com"
  u.username "adriana"
  u.password "mypass"
  u.password_confirmation "mypass"
  u.country "UK"
  u.city "London"
end

Factory.define :baby do |b|
  b.user_id 1
  b.birthday "2010-06-01"
  b.gender "male"
  b.name "Sebastiao"
end
