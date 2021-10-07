class WelcomeController < ActionController::Base
    def hello
        first_pet = Pet.first

        @title = "Hola, soy #{first_pet.name} y soy un #{first_pet.breed}"
    end
end