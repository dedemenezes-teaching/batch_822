# frozen_string_literal: true

require_relative '../views/session_view'

class SessionsController
  def initialize(employee_repository)
    @employee_repository = employee_repository
    @session_view = SessionView.new
  end

  def sign_in
    username = @session_view.ask_for(:username)
    password = @session_view.ask_for(:password)
    current_user = @employee_repository.find_by_username(username)
    if current_user && current_user.password == password
      @session_view.signed_in_successfully(current_user)
      current_user
    else
      @session_view.wrong_credentials
      sign_in # => Recursive call
    end
  end
end
