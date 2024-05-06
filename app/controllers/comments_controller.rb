class CommentsController < ApplicationController
  before_action :set_comment, only: %i[show edit update destroy]

  # GET /comments or /comments.json
  def index
    @comments = Comment.all
  end

  # GET /comments/1 or /comments/1.json
  def show
<<<<<<< HEAD

=======
>>>>>>> 8994db95e97503f998e933da9501c0c1b79165cb
  end

  # GET /comments/new
  def new
    @comment = Comment.new
  end

  # GET /comments/1/edit
<<<<<<< HEAD
  def edit 
  
=======
  def edit
>>>>>>> 8994db95e97503f998e933da9501c0c1b79165cb
  end

  # POST /comments or /comments.json
  def create
    # @comment = Comment.new(comment_params)
    # @order = Order.find(params[:order_id])
    # @comment = @order.comments.create(comment_params2)

    @order = Order.find(params[:order_id])
    @comment = @order.comments.new(comment_params)
<<<<<<< HEAD
    @comment.created_at = DateTime.current 

    respond_to do |format|
      if @comment.save
        #format.html { redirect_to comment_url(@comment), notice: 'Comment was successfully created.' }
        format.html { redirect_to order_url(@comment.order_id), notice: 'Comment was successfully created' }
=======
    @comment.created_at = DateTime.current

    respond_to do |format|
      if @comment.save
        # format.html { redirect_to comment_url(@comment), notice: 'Comment was successfully created.' }
        format.html { redirect_to order_url(@comment.order_id), notice: t("comm-create") }
>>>>>>> 8994db95e97503f998e933da9501c0c1b79165cb
        format.json { render :show, status: :created, location: @comment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comments/1 or /comments/1.json
  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to comment_url(@comment), notice: 'Comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @comment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1 or /comments/1.json
  def destroy
    @comment.destroy!

    respond_to do |format|
<<<<<<< HEAD
      format.html { redirect_to order_url(@comment.order_id), notice: 'Comment was successfully destroyed' }
=======
      format.html { redirect_to order_url(@comment.order_id), notice: t("comm-delete") }
>>>>>>> 8994db95e97503f998e933da9501c0c1b79165cb
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_comment
    @comment = Comment.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def comment_params
    params.require(:comment).permit(:content, :order_id, :created_at)
  end
end