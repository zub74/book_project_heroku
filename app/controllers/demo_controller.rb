class DemoController < ApplicationController

  layout false
  def index
  end

  def hello
    @array = [1,2,3,4,5]
    @id = params['id']
    @page = params[:page]
  end

  def AddBook
  end

  def DeletePage
  end

  def HomePage
  end

  def ShowDetails
  end

  def UpdateBook
  end

end
