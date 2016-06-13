class RegistrationsController < ApplicationController
  def create
    if current_user.present?
      redirect_to events_path,
                  notice: 'You have successfully registered for the event.'
    else
      redirect_to events_path,
                  alert: 'You must be signed in to register for an event.'
    end
  end
end
