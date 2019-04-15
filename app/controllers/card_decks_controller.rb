class CardDecksController < ApplicationController
    def index
        @cardDeck = CardDeck.all
    end
    def new
        @cardDeck = CardDeck.new
    end
    
    def show
        @cardDeck = CardDeck.find(params[:id])
    end
    
    def create
        @cardDeck = CardDeck.new(cardDeck_params)
        
        @cardDeck.save
        redirect_to @cardDeck
    end
    
    private
        def cardDeck_params
            params.require(:cardDeck).permit(:name)
        end
end

