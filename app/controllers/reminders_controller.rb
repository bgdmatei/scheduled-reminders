class RemindersController < ApplicationController
    before_action :authenticate_user!
    before_action :set_reminder, only: [:show, :edit, :update, :destroy]

    def index 
        if user_signed_in?
            @reminders = Reminder.where(user: current_user)
          else
            @reminders = []
          end
    end

    def show 
    end

    def new
        @reminder = Reminder.new
    end

    def edit
    end

    def create 
        @reminder = Reminder.new(reminder_params)
        @reminder.user = current_user
        if @reminder.save 
            send_reminder
            redirect_to reminders_path, notice: "Reminder created!"
        else
            render :new
        end
    end 

    def update
        if @reminder.update(reminder_params)
            send_reminder
            redirect_to @reminder, notice: "Reminder updated!"
        else
            render :edit
        end
    end

    def destroy
        @reminder.destroy
        redirect_to reminders_path, notice: "Reminder deleted!"
    end


    private

    def set_reminder
        @reminder = Reminder.find(params[:id])
      end

    def reminder_params
        params.require(:reminder).permit(:title, :description, :date_scheduled)
    end

    def send_reminder
        ReminderMailer.with(user: current_user, reminder: @reminder).reminder_email.deliver_later!(wait_until: @reminder.date_scheduled)
    end
    
end
