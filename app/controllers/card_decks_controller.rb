class CardDecksController < ApplicationController
    def new
        @cardDeck = CardDeck.new
    end
    
    def index
        @cardDecks = CardDeck.all
    end
    
    def show
        @cardDeck = CardDeck.find(params[:id])
    end
    
    def edit
        @cardDeck = CardDeck.find(params[:id])
    end
    
    def update
        @cardDeck = CardDeck.find(params[:id])
        
        if @cardDeck.update(cardDeck_params)
            redirect_to @cardDeck
        else
            render 'edit'
        end
    end
    
    def create
        @cardDeck = CardDeck.new(cardDeck_params)
        
        @cardDeck.save
        redirect_to @cardDeck
    end
    
    def destroy
        @cardDeck = CardDeck.find(params[:id])
        @cardDeck.destroy
        
        redirect_to card_decks_path
    end
    
    private
        def cardDeck_params
            params.require(:card_deck).permit(:name)
        end
end

