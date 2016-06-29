class DentalnetController < ApplicationController
  def index
    @eva = Eva.find(2)
  end

  def detail_search
    @eva = Eva.find(2)
  end

  def result
    @eva = Eva.find(2)
  end

  def comment
    @eva = Eva.find(2)
  end

  def location
    @eva = Eva.find(2)
  end



end
