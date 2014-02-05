class OgladsController < ApplicationController
  after_filter :wr_to_hist_doct, only: [:create, :update, :delete]
  def new
    @og = Oglad.new
    @woman = Woman.find(params[:woman_id])
  end

  def create
    #@woman = Woman.new(params[:woman])
    @og = Oglad.new(params[:og])
    @woman = Woman.find(params[:woman_id])
    @woman.oglad = @og
    if @og.save
      redirect_to woman_path(@woman)
    else
      render 'new'
    end

  end

  def edit
    @og = Oglad.find(params[:id])
    @woman = Woman.find(params[:woman_id])
  end

  def update
    @og = Oglad.find(params[:id])
    @woman = Woman.find(params[:woman_id])
    if @og.update_attributes(params[:og])
      redirect_to woman_path(@woman)
    else
      render 'edit'
    end
  end
end
