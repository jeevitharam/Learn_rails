class Demo1Controller < ApplicationController
  def index
  	#render('hello')
  end
  def hello
  	@array = [1,2,3,4,5]
  #	render(:text => 'Hello everyone')
  end
end
