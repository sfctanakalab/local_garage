class RemoteControlController < WebsocketRails::BaseController
  # before_action :authenticate_user!

  # status_to_user => status_update
  def recieve_status
    res = message()

    # send_message(:command_to_printer, response)
    WebsocketRails[:printer_status].trigger(:update, res)
  end

  # user_command => command_to_printer
  def send_command
    res = message()
    # broadcast_message(:status_update, res, :namespace => "printer_to_user")
    # send_message(:status_update, res, :namespace => "printer_to_user")
    WebsocketRails[:printer_status].trigger(:update, res)

    Rails.logger.debug "reached message: #{res}"
  end

  # def send_stl
  # sending binary
  # need to implement a code to send stl and create checksums

end
