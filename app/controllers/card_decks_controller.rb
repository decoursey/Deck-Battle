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
    
    def add
        @cards = Card.all
    end
    
    def add_card
        @cardDeck = CardDeck.find(params[:id])
        @card = Card.find(params[:card_id])
        
        if (@cardDeck.user == current_user)
            @cardDeck.cards << @card
            redirect_to @cardDeck
        else
            redirect_to root_url
        end
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
        @cardDeck.user_id = current_user.id
        
        if @cardDeck.save
            redirect_to current_user
        else
            render 'new'
        end
    end
    
    def destroy
        @cardDeck = CardDeck.find(params[:id])
        @cardDeck.destroy
        
        redirect_to @user
    end
    
    private
        def cardDeck_params
            params.require(:card_deck).permit(:name)
        end
end

