AWESOME_MODIFIER = os.getenv('AWCHAD__AWESOME_MODIFIER') or 'Mod4'
AWESOME_PROFILE = os.getenv('AWCHAD__AWESOME_PROFILE') or 'gigachad'

local gears = require('gears')

-- GLOBAL FUNCTIONS

FORMAT = string.format

LOG = print
DUMP = gears.debug.dump
WARN = gears.debug.print_warning
ERR = gears.debug.print_error

local awesome_config_dir = gears.filesystem.get_configuration_dir()
local profile_exists = gears.filesystem.file_readable(string.format('%s/profiles/%s/init.lua', awesome_config_dir, AWESOME_PROFILE))

if not profile_exists then
  ERR(FORMAT('could not read profile init file (profile "%s")', AWESOME_PROFILE))

  os.exit(-1)
end

-- NOTE! You must include the profiles folder in the awesomewm parameters, otherwise this code will fail
local ok, result = pcall(require, AWESOME_PROFILE)

if not ok then
  ERR(FORMAT('an error happened when starting the profile (profile "%s")\n%s', AWESOME_PROFILE, result))

  os.exit(-1)
else
  LOG(FORMAT('loaded profile "%s"', AWESOME_PROFILE))
end
