 class FormsController < ApplicationController

   def new
     @form = Form.new
   end

   def create
     @form = Form.new(params[:form])
     @form.request = request
     if @form.deliver
       flash[:notice] = " test"
       #flash.now[:error] = nil
       redirect_to root_path
     else
       #flash.now[:error] = 'Contact send message'
       render :new
       redirect_to root_path
     end
   end

end
