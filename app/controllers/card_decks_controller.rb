class CardDecksController < ApplicationController
    def index
        @cardDeck = CardDeck.all
    end
    def new
        @cardDeck = CardDeck.new
    end
    
    def destroy
        @cardDeck = CardDeck.find(params[:id])
        @cardDeck.destroy
        
        redirect_to card_decks_path
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
            params.require(:CardDeck).permit(:name)
        end
end

