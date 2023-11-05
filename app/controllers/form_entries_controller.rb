class FormEntriesController < ApplicationController
    before_action :set_form_entry, only: [:show, :update, :destroy]
  
    def index
      @form_entries = FormEntry.all
      render json: @form_entries
    end
  
    def create
      @form_entry = FormEntry.new(form_entry_params)
  
      if @form_entry.save
        render json: @form_entry, status: :created
      else
        render json: @form_entry.errors, status: :unprocessable_entity
      end
    end
  
    def show
      render json: @form_entry
    end
  
    def update
      if @form_entry.update(form_entry_params)
        render json: @form_entry
      else
        render json: @form_entry.errors, status: :unprocessable_entity
      end
    end
  
    def destroy
      @form_entry.destroy
    end
  
    private
  
    def set_form_entry
      @form_entry = FormEntry.find(params[:id])
    end
  
    def form_entry_params
      params.require(:form_entry).permit(:customer_name, :contact, :service, :vehicle, :cleaner, :share, :price, :p_m, :cashier)
    end    
end
