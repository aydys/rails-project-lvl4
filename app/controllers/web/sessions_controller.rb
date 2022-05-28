# frozen_string_literal: true

module Web
  class SessionsController < ApplicationController
    def destroy
      sign_out
      redirect_to root_path, notice: t('.logout')  
    end
  end
end