Factory.define :user do |f|
  f.full_name { Factory.next :full_name }
  f.email { Factory.next :email }
  f.password "12345678"
  f.password_confirmation "12345678"
end

Factory.sequence(:email) {|n| "myuser#{n}@gmail.com"}
Factory.sequence(:full_name) { |n| "João #{n}" }