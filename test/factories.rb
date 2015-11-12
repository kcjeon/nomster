FactoryGirl.define do 

	factory :user do 
		sequence :email do |n|
      "person#{n}@gmail.com"
    end

    password "password123"
    password_confirmation "password123"
  end

  factory :comment do
    message "this place is great"
    rating "3_stars"
    association :user
    association :place
  end

  factory :place do
    name "Chipotle"
    description "Mexican food"
    address "100 Summer Street, Boston, MA 02134"
    association :user
  end
end

# Need to edit this so that it applies to the Nomster app