    class CurrenciesController < ApplicationController

      def index
        Scraper.new.save
        @currency = Currency.new
      end

      def show
        @currency = Currency.find(params[:currency][:id])
        Currency.destroy_all
      end

      def update
      end

    end
