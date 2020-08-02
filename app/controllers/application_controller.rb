class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def add_to_cart
       
     # Load the cart from the session, or create a new empty cart.
    cart = session[:cart] || []
       
     # Save the cart in the session.
    session[:cart] = cart
  end
end
