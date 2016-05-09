class SubjectsController < ApplicationController
	def index
		list
		render('list')
	end

	def list
		@subjects = Subject.order("subjects.position ASC")
	end
	
	def show
		@subject = Subject.find_by(id: params[:id])
	end
	
	def new
		@subject = Subject.new
		#@subject = Subject.new(:name => "Blue Jay")
	end

	def create
    
     @subject = Subject.create(subject_params)
    
     if @subject.save
     
      redirect_to(:action => 'list')
     else
      render('new')
     end
  end

  private
  def subject_params
  	params.require(:subject).permit(:name, :visible, :position)
  end

  def edit
  	@subject= Subject.find_by(id: params[:id])
  end

  def update
  	@subject = Subject.find_by(id: params[:id])

     if @subject.update_attributes(subject_params)
      
      redirect_to(:action => 'show', :id => @subject.id)
     else
     
     end
  end
end
