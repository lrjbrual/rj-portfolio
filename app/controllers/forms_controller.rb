 class FormsController < ApplicationController

   def new
     @form = Form.new
   end

   def create
     @form = Form.new(params[:form])
     @form.request = request
     if @form.deliver
       flash.now[:error] = nil
     else
       flash.now[:error] = 'Contact send message'
       render :new
     end
   end

end
