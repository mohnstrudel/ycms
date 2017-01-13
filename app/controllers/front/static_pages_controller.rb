class Front::StaticPagesController < ApplicationController
  def root
  	@page_categories = PageCategory.all
  end
end
