# frozen_string_literal: true

require 'test_helper'

class Web::SessionsControllerTest < ActionDispatch::IntegrationTest
  test '#destroy' do
    sign_in users :one
    delete session_url
    assert_nil session[:user_id] 
  end
end
