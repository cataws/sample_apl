class HelloCatsController < ApplicationController
  def index
    @catsinfo = CatsInfo.all
  end
end
