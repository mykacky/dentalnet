class DentalnetController < ApplicationController
  def index
    @eva = Eva.find(2)
  end

  def detail_search
    @eva = Eva.find(2)
  end

  def result
    @hospitals = Hospital.all
  end

  def comment
    @eva = Eva.find(2)
  end

  def location
    @hospitals = Hospital.all
  end



end
