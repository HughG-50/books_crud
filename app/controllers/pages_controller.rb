class PagesController < ApplicationController
    skip_before_action :verify_authenticity_token
    
    def home
        render plain: "Hello World"
    end

    def sayhi
        render plain: "Hello your name is #{params[:name]} you are #{params[:age]}"
        # render html: "<h1>'Hi #{params[:name]}'</h1>".html_safe
    end

    def redirectme
        redirect_to "/redirectedto"
    end

    def redirectedto
        render plain: "You were redirected here!"
    end
end