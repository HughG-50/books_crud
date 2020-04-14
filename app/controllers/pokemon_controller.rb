class PokemonController < ApplicationController
    skip_before_action :verify_authenticity_token

    def show 
        # render json: "\"pokemon_name\": #{params[:name]}, \"pokemon_type\": "fire", \"pokemon_level\": "40""
        
        # render json: {name: params[:name], type: "fire", level}
        render json: {:name => params[:name], :type => "fire", :level => 40}
        # render json: '{
        #     "name": "#{params[:name]}",
        #     "type": "fire",
        #     "level": 40,
        # }'
    end
end