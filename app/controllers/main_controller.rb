class MainController < ApplicationController
  def home
    @news = Publication.last(5);
  end

  def about

  end

  def services

  end

  def contact

  end
end
