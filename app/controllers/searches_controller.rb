class SearchesController < ApplicationController


    def index
        @searches = Search.all
        render json: @searches
    end 


    def create
        @user = User.first
        @search = Search.new(search_params)
        @user.searches << @search 
        if @search.save
            render json: @search, status: :created
        else
    
          render json: @search.errors.full_messages, status: :unprocessable_entity
        end
    end 



    private
    def search_params
      params.require(:search).permit(:country, :continent, :totalCases, :recovered, :newCases, :activeCases, :newDeaths, :totalDeaths,
      :countryPopulation, :totalTests, :date)
    end
    





end
