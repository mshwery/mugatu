Factory.define :user do |f|
  f.name "FooBar"
  f.email "foo@bar.com"
  f.password "secret"
  f.password_confirmation { |u| u.password }  
  f.account_id 1
end

Factory.define :account do |f|
  f.name "Account1"
end