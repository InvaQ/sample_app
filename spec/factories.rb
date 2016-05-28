FactoryGirl.define do
  factory :user do
    name     "Ivan Ku"
    email    "free@mail.com"
    password "foobar"
    password_confirmation "foobar"
  end
end