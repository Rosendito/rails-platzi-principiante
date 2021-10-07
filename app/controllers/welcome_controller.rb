class WelcomeController < ActionController::Base
    def hello
        @title = 'Hola mundo!'
    end
end