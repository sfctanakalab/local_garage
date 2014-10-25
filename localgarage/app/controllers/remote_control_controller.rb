class RemoteControlController < WebsocketRails::BaseController
  # before_action :authenticate_user!

  def status_recieve
    recieve_status = message()
    WebsocketRails[:printer_status].trigger(:printer_stat, recieve_status)
    response = recieve_status + " => OK"
    send_message(:user_command, response)
  end

  # def send_stl
  # sending binary
  # need to implement a code to send stl and create checksums

end
