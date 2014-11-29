WebsocketRails::EventMap.describe do
  # You can use this file to map incoming events to controller actions.
  # One event can be mapped to any number of controller actions. The
  # actions will be executed in the order they were subscribed.
  #
  # Uncomment and edit the next line to handle the client connected event:
  #   subscribe :client_connected, :to => Controller, :with_method => :method_name
  #
  # Here is an example of mapping namespaced events:
  #   namespace :product do
  #     subscribe :new, :to => ProductController, :with_method => :new_product
  #   end
  # The above will handle an event triggered on the client like `product.new`.

  namespace :lg_to_user do
  # forwarding octo status to user
  # all done inside the server
  end

  namespace :lg_to_octo do
  # forwarding user request to octo
  # all done inside the server
  # 
  end

  namespace :user_to_lg do
      subscribe :user_command, to: RemoteControlController, with_method: :load_command
  end

  namespace :octo_to_lg do
      subscribe :printer_status, to: RemoteControlController, with_method: :load_status
  end
end
