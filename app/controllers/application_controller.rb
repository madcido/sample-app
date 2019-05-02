class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    def hello
        render body: "hello, world"
    end
end
