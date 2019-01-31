    class CurrenciesController < ApplicationController

      def index
        if Currency.exists?
          Scraper.new
          @currency = Currency.new
        else
          Scraper.new.save
          @currency = Currency.new
        end

      end

      def show
        @currency = Currency.find(params[:currency][:id])
        Currency.destroy_all
      end

      def update
      end

    end
