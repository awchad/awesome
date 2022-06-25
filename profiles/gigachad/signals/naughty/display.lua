local naughty = require('naughty')

naughty.connect_signal('request::display', function(notification)
  naughty.layout.box {
    notification = notification
  }
end)
