class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]

  # GET /recipes
  # GET /recipes.json
  def index
    @recipes = Recipe.all
  end

  # GET /recipes/1
  # GET /recipes/1.json
  def show
  end

  # GET /recipes/new
  def new
    @recipe = Recipe.new
    @ingredients = Ingredient.all.collect { |p| [p.name, p.id] }
    @supplies = Supply.all.collect { |p| [p.name, p.id] }
  end

  # GET /recipes/1/edit
  def edit
    @ingredients = Ingredient.all.collect { |p| [p.name, p.id] }
    @supplies = Supply.all.collect { |p| [p.name, p.id] }
  end

  # POST /recipes
  # POST /recipes.json
  def create
    @recipe = Recipe.new(recipe_params)

    params[:recipe][:ingredients].each do |ingredient_id|
      next if ingredient_id.to_i == 0

      ingredient = Ingredient.find(ingredient_id.to_i)

      @recipe.ingredients << ingredient
    end

    params[:recipe][:supplies].each do |supply_id|
      next if supply_id.to_i == 0

      supply = Supply.find(supply_id.to_i)

      @recipe.supplies << supply
    end

    respond_to do |format|
      if @recipe.save
        format.html { redirect_to @recipe, notice: 'Recipe was successfully created.' }
        format.json { render action: 'show', status: :created, location: @recipe }
      else
        format.html { render action: 'new' }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipes/1
  # PATCH/PUT /recipes/1.json
  def update
    respond_to do |format|
      if @recipe.update(recipe_params)

        params[:recipe][:ingredients].each do |ingredient_id|
          next if ingredient_id.to_i == 0

          ingredient = Ingredient.find(ingredient_id.to_i)

          @recipe.ingredients << ingredient
        end

        params[:recipe][:supplies].each do |supply_id|
          next if supply_id.to_i == 0

          supply = Supply.find(supply_id.to_i)

          @recipe.supplies << supply
        end


        format.html { redirect_to @recipe, notice: 'Recipe was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipes/1
  # DELETE /recipes/1.json
  def destroy
    @recipe.destroy
    respond_to do |format|
      format.html { redirect_to recipes_url }
      format.json { head :no_content }
    end
  end

  private
  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:name, :description, :process, :vegetarian, :ingredients => {}, :supplies => {})
  end
end
