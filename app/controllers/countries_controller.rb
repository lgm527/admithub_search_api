class CountriesController < ApplicationController

    def index
        @countries = Country.all
        render json: @countries
    end

    def new
        @country = Country.new
    end

    def create
        @country = Country.new(country_params)
        if @country.save
            render json: @country, status: :created, location: @country
          else
            render json: @country.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @country = Country.find(params[:id])
        @country.destroy
      end

    private

    def country_params
        params.require(:country).permit(:name, :ein, :address_1, :address_2, :city, :state, :phone_number)
    end

end
