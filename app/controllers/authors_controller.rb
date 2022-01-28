class AuthorsController < ApplicationController
    def index
    end
    
    def form
    end

    def create
      @author=Author.new(author_params)
      if @author.save
        flash[:notice] = "successfully created author"
        redirect_to root_path
      else 
        redirect_to author_path
        flash[:alert] = "invalid author name"
     end
    
    end

    private
    def author_params
        params.require(:author).permit(:name)
    end
end