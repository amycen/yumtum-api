class ItemsController < ApplicationController

    def index
        items = Item.all
        render json: items.shuffle
    end
end
