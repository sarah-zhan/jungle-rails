class Admin::DashboardController < ApplicationController
  # fetch the data and pass it to the template
  # get '/products/:id', to: 'products'
  # get '/categories/:id', to: 'categories'
  # num_product = Product.count
  # num_category = Category.count
  # set instance variables in the controller action with values, and then render those instance variables in the ERB template

  # Display a count of how many products are in the database
  # Display a count of how many categories are in the database

  def show
    @num_product = Product.all.count
    @num_category = Category.all.count
  end
end
