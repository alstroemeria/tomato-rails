class TomatoesController < ApplicationController
  
  def index
    @box_office = Movie.where(box_office: true)
    @in_theaters = Movie.where(in_theaters: true)
    @opening = Movie.where(opening: true)
    @upcoming = Movie.where(upcoming: true)
  end

  def box_office
    @box_office = Movie.where(box_office: true)
  end

  def in_theaters
    @in_theaters = Movie.where(in_theaters: true)
  end

  def opening
    @opening = Movie.where(opening: true)
  end

  def upcoming
    @upcoming = Movie.where(upcoming: true)
  end
end
