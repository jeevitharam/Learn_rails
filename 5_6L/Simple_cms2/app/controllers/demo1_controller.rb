class Demo1Controller < ApplicationController
  def index
  	redirect_to('http://www.google.com')
  end
  def hello
  	#@array = [1,2,3,4,5]
  	#@id = params[:id].to_i
  	#@page = params[:page].to_i
  redirect_to(:action => 'other_hello')
  end
  def other_hello
  	 render(:text => "Hello....this is other hello :P ")
  end
end
