class CheckoutsController < ApplicationController
  def create
    if current_user.present?
      redirect_to library_path,
                  notice: 'You have successfully checked out the item.'
    else
      redirect_to library_path,
                  alert: 'You must be signed in to check out an item.'
    end
  end
end
