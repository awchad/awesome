-- !!! rc.lua - AwesomeWM Startup Definition ............... -*- Lua -*- !!!
--
-- Part of AwChad project, under the GNU General Public License v3.
-- See https://www.gnu.org/licenses/gpl-3.0.en.html for license information.
-- SPDX-License-Identifier: GPL-3.0-only
--
-- !!! ................................................................. !!!
---
--- The code responsible for starting AwesomeWM. Contains global variables
--- useful for developing this configuration.
---
-- !!! ................................................................. !!!

--- The modified key used in keyboard and mouse mapping.
---
--- It can be set by setting the environment variable `AWESOME_MODIFIER` or
--- using `Mod4` as the default key (popularly known as the Super key).
AWESOME_MODIFIER = os.getenv('AWESOME_MODIFIER') or 'Mod4'
