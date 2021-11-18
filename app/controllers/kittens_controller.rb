class KittensController < ApplicationController
  def index
    index_kittens = Kitten.all 
    render json: index_kittens.as_json
  end
  def create
    create_kitten = Kitten.create(
      name: params[:name], 
      age: params[:age], 
      breed: params[:breed], 
      notes: params[:notes],
      image_url: params[:image_url]
    )
      render json: create_kitten.as_json 
  end
end
