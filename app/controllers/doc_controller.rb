class DocController < ApplicationController
  
  def new
    @doc = Doc.new
  end

  def create
    @doc = Doc.new(doc_params)
    if @doc.save
      redirect_to @doc
    else
      render 'new'
    end
  end

 private

  def doc_params
    params.require(:doc).permit(:title, :content)
  end
  before_action :find_doc, only: [:show, :edit, :update, :destroy]
 
  def show
  end
  #...

  private
 
 def find_doc
	@doc = Doc.find(params[:id])
 end
 def index
    @docs = Doc.all(“created_at_DESC”)
 end

 def update
    if @doc.update(doc_params)
      redirect_to @doc
    else
      render 'edit'
    end
  end

  def destroy
    @doc.destroy
    redirect_to docs_path
  end

end
