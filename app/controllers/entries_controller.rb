class EntriesController < ApplicationController

	def index
    	@entries = Entry.all
	end

	def show
    	@entry = Entry.find(params[:id])

	end

  	def new
  		@entry = Entry.new
	end

	def edit
  		@entry = Entry.find(params[:id])
	end

	def create
		@entry = Entry.new(entry_params)
 		@entry.user_id = current_user.id

  		if @entry.save
    		redirect_to @entry
  		else
    		render 'new'
  		end
	end
	  
	def update
  		@entry = Entry.find(params[:id])
 
  		if @entry.update(entry_params)
    	redirect_to @entry
  		else
    	render 'edit'
  		end
	end

	def destroy
 		 	@entry = Entry.find(params[:id])
  			@entry.destroy

  			redirect_to entry_path
	end

  def search
      @entries = Entry.all
      @entries = @entries.description(params[:description]) if params[:description].present?
      render "index"
  end


  private
  	def entry_params
   	 	params.require(:entry).permit(:name, :description ,images: [])
  	end

end