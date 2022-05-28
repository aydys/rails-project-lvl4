# frozen_string_literal: true

module Web
  class AuthController < ApplicationController
    def callback
      user = User.find_or_initialize_by(email: auth[:info][:email].downcase)

      if user.new_record?
        user.nickname = auth[:info][:nickname]
        user.token = auth[:credentials][:token]
        user.name = auth[:info][:name]
        user.image_url = auth[:info][:image]
        user.save!
      end

      sign_in user
      redirect_to root_path, notice: t('.success')
    rescue ActiveRecord::RecordInvalid
      redirect_to root_path, notice: t('.fail')
    end

    private

    def auth
      request.env['omniauth.auth']
    end
  end
end
