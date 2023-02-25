class IndexController < ApplicationController
    def index
        response = HTTParty.get("https://api.dictionaryapi.dev/api/v2/entries/en/#{params[:search]}")

        if response.code == 200
            @word = response.first
        else
            @word = nil
        end
    end
end
