class MainController < ApplicationController
  def home
    @news = Publication.order('created_at DESC').first(5)
  end

  def about

  end

  def services

  end

  def contact

  end
end
