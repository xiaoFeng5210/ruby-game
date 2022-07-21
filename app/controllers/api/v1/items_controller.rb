class Api::V1::ItemsController < ApplicationController
    # 分页
    def index
        items = Item.page params[:page]
        render json: { resources: items }
    end

    def create
        item = Item.new amount: 1
        if item.save
            render json: { resource: item }
        else
            render json: { error: item.errors}
        end
    end
end
