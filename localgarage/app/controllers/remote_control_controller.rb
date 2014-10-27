class RemoteControlController < WebsocketRails::BaseController
  # before_action :authenticate_user!

  # status_to_user => status_update
  def load_status
    res = message()
<<<<<<< HEAD

    WebsocketRails[:ps].trigger(:status_update, res)
=======
    WebsocketRails[:printer_status].trigger(:status_update, res)
>>>>>>> 60c5f2d469ceae05b9d792606179a5ec96639846
  end

  # user_command => command_to_printer
  def load_command
    res = message()
<<<<<<< HEAD
    send_message(:command_to_printer, response)
=======
    # Rails.logger.debug "reached message: #{res}"

    broadcast_message(:print_command, res, :namespace => "lg_to_user")
    WebsocketRails[:printer_status].trigger(:sent_command, res)
>>>>>>> 60c5f2d469ceae05b9d792606179a5ec96639846
  end

  # def send_stl
  # sending binary
  # need to implement a code to send stl and create checksums

end
