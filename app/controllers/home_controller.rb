class HomeController < ApplicationController
  def index
  	@lists = List.where(:status => 'a')
  end
end
