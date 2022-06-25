local wibox = require('wibox')
local awful = require('awful')

screen.connect_signal('request::wallpaper', function(screen)
  awful.wallpaper {
    screen = screen,
    widget = {
      widget = wibox.container.tile,
      halign = 'center',
      valign = 'center',
      tiled = false,
      {
        widget = wibox.container.background,
        bg = '#e02041',
        fg = '#101010',
        {
          widget = wibox.container.margin,
          top = 24,
          bottom = 24,
          right = 24,
          left = 24,
          {
            widget = wibox.widget.textbox,
            text = 'AWCHAD',
            font = 'monospace bold 64'
          }
        }
      }
    }
  }
end)
