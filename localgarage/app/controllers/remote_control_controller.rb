class RemoteControlController < WebsocketRails::BaseController
  # before_action :authenticate_user!

  # status_to_user => status_update
  def load_status
    res = message()
    WebsocketRails[:printer_status].trigger(:status_update, res)
  end

  # user_command => command_to_printer
  def load_command
    res = message()
    # Rails.logger.debug "reached message: #{res}"

    send_message(:status_update, res, :namespace => "lg_to_user")
    WebsocketRails[:printer_status].trigger(:command_sent, res)
  end

  # def send_stl
  # sending binary
  # need to implement a code to send stl and create checksums

end
