class RemoteControlController < WebsocketRails::BaseController
  # before_action :authenticate_user!

  # status_to_user => status_update
  def recieve_status
    res = message()

    WebsocketRails[:ps].trigger(:status_update, res)
  end

  # user_command => command_to_printer
  def send_command
    res = message()
    send_message(:command_to_printer, response)
  end

  # def send_stl
  # sending binary
  # need to implement a code to send stl and create checksums

end
