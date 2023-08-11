class PagesController < ApplicationController
  def home
    @prisons = Prison.all
  end
end
