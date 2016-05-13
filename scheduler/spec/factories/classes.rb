FactoryGirl.define do 
	factory :class do 
		quantity 5
  
  		association :class_room
  		association :subject
  		association :staff
	end
end
