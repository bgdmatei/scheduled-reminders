class RemindersController < ApplicationController
    def index 
        @reminders = Reminder.all 
    end

    def show 
        @reminder = Reminder.find(params[:id])
    end

    def new
        @reminder = Reminder.new
    end

    def create 
        @reminder = Reminder.new(reminder_params)
        @reminder.user = current_user
        if @reminder.save 
            redirect_to reminders_path
        else
            render :new
        end
    end 

    private

    def reminder_params
        params.require(:reminder).permit(:title, :description)
    end
    
end
