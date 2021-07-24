class PublicationsController < ApplicationController
  def index
  end

  def new
    @publication = Publication.new
  end
end
