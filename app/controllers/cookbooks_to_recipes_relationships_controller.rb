class CookbooksToRecipesRelationshipsController < ApplicationController
  before_action :set_cookbooks_to_recipes_relationship, only: [:show, :edit, :update, :destroy]

  # GET /cookbooks_to_recipes_relationships
  # GET /cookbooks_to_recipes_relationships.json
  def index
    @cookbooks_to_recipes_relationships = CookbooksToRecipesRelationship.all
  end

  # GET /cookbooks_to_recipes_relationships/1
  # GET /cookbooks_to_recipes_relationships/1.json
  def show
  end

  # GET /cookbooks_to_recipes_relationships/new
  def new
    @cookbooks_to_recipes_relationship = CookbooksToRecipesRelationship.new
  end

  # GET /cookbooks_to_recipes_relationships/1/edit
  def edit
  end

  # POST /cookbooks_to_recipes_relationships
  # POST /cookbooks_to_recipes_relationships.json
  def create
    @cookbooks_to_recipes_relationship = CookbooksToRecipesRelationship.new(cookbooks_to_recipes_relationship_params)

    respond_to do |format|
      if @cookbooks_to_recipes_relationship.save
        format.html { redirect_to @cookbooks_to_recipes_relationship, notice: 'Cookbooks to recipes relationship was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cookbooks_to_recipes_relationship }
      else
        format.html { render action: 'new' }
        format.json { render json: @cookbooks_to_recipes_relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cookbooks_to_recipes_relationships/1
  # PATCH/PUT /cookbooks_to_recipes_relationships/1.json
  def update
    respond_to do |format|
      if @cookbooks_to_recipes_relationship.update(cookbooks_to_recipes_relationship_params)
        format.html { redirect_to @cookbooks_to_recipes_relationship, notice: 'Cookbooks to recipes relationship was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cookbooks_to_recipes_relationship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cookbooks_to_recipes_relationships/1
  # DELETE /cookbooks_to_recipes_relationships/1.json
  def destroy
    @cookbooks_to_recipes_relationship.destroy
    respond_to do |format|
      format.html { redirect_to cookbooks_to_recipes_relationships_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cookbooks_to_recipes_relationship
      @cookbooks_to_recipes_relationship = CookbooksToRecipesRelationship.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cookbooks_to_recipes_relationship_params
      params.require(:cookbooks_to_recipes_relationship).permit(:cookbook_id, :recipe_id)
    end
end
