FactoryGirl.define do

  factory(:devesh, class: Restaurant) do
    name 'Devesh'
    description "I'm loving it"
    address "new york usa"
    owner_email 'devesh@hotmail.com'
  end

end