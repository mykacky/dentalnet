class DentalnetController < ApplicationController
  def index
    @eva = Eva.find(2)
  end

  def detail_search
    @eva = Eva.find(2)
  end

  def result
    #@hospitals = Hospital.all
    @hospitals = Hospital.where('dental_name LIKE(?)', "%#{params[:dental_name]}%")
    #@hospital = Hospital.find(params[:dental_id])
  end

  def result_category
    #@hospitals = Hospital.all
    # @hospitals = Hospital.where(genre_waittime: params[:waittime])
    @hospitals = Hospital.where('genre_waittime = ? or genre_bridge = ? or genre_whitening = ? or genre_cleaning = ? or genre_implant = ? or genre_cosmetic = ? or genre_denture = ? or genre_ceramic = ? or genre_root = ? or genre_short = ? or genre_second = ? or genre_anesthesia = ? or genre_correction = ? or genre_child = ?', params[:waittime], params[:bridge], params[:whitening], params[:cleaning], params[:implant], params[:cosmetic], params[:denture], params[:ceramic], params[:root], params[:short],params[:second],params[:anesthesia],params[:correction],params[:child])


#genre_ceramic(?)' , {params genre_waittime
# where("genre_waittime = ? or job2 = ? or job3 = ? or job4 = ? or job5 = ?", {params[:waittime]},{params[:waittime]}

  end

  def _forum
  end


  def dental_detail
   # Hospital.joins(:reps) N+1
   #binding.pry
    @hospital = Hospital.find(params[:id])

  end

  def comment

  end

  def comment_new
    Eva.create(user_comment: params[:user_comment], evaluation: params[:evaluation])
    #redirect_to action: :index
  end

  def location
    @hospitals = Hospital.all
  end



end
