# Femboy.lua v3

# Required Trusted Modes
- Natives
    - A lot of features use natives
- HTTP
    - Country Tracker and IP Lookup require http
    - Auto Updater
- Stats 
    - SP Recovery Options
- Globals
    - Player Info Options

# Local 
- Save settings
    - Press f11 to set this to a keybind

## Player 
- Self $2k oney drop
- SP Recovery
    - sp = singleplayer
    - Set SP Cash
    - Set SP Cash To Max
    - Max Special Ability Stat
    - Complete Prologue
- Mobile radio
- Femboy watch
- Phone animation
- Crouch animation
- Ragdoll
- Clumsy player

### Walkstyles 
- Reset
- List of walking animations
    - you can add to this list in the directory `FemboyFiles\tables\walkstyles.lua`

### Player Proofs
- Bullet
- Fire
- Explosion
- Collision
- Melee
- Steam
- Water

### RGB Hair
- Loop all hair colours
- Rainbow Hair (no blonde, black, brown hair)

## Weapon
- Give all weapons
- Remove all weapons

### Object Guns
- Wall
- Wellie
- Dildo
- you can add to this list in the directory `FemboyFiles\tables\objects.lua`

### Ability Guns
- TP
- Revive
- Delete
- RP
- Card
- Rapid Fire
- Orbital 
- Atomizer

## Vehicle
- Homing lockon to players
- Auto repair
- Max upgrade vehicle
- Max downgrade vehicle
- Reduced collisions
- Gravity
- Engine rattle
- Dirt level
- Stay clean
- Air suspension
- Drift tyres
- Exhaust backfire
- Nitrous backfire
- Power increasinator
- Speed limiter
- Speedometer
    - Mph
    - Kph
    - Knots
    - Mach
    - Metres per second
- Launch forward

## Online
- Bail from session
- Blame protection

### Lobby
- Give rp gun to all players
- Give card gun to all players
- Orbital Lobby
- Give all weapons to all players
- Remove all weapons from all players

### Aim Karma
- Enable
- Atomize
- Crush
- Explode
- Firework
- Kill
- Notify
- Orbital Cannon
- Remove all weapons
- Remove held weapon
- Taze player

### Lobby Chat
- Chat Spam
- Custom chat spam
- Send R* icon in chat
- Send Lock icon in chat
- Send R* verified icon in chat
- clear chat

### IP Lookup
- input an IP to get the geo information on it

### Country Tracker
- Get notified when someone from a specific country joins the lobby

## World
- Distance scale
- Set time scale
- Load map
    - SP
    - Online
- Make nearby NPC's riot
- Crazy vehicle
- Blackout
- Magic puddles
- Wind speed
- Wave intensity

## Misc
- Alert screens
- Auto skip cutscene
- Auto tp to waypoint
- Get all achievements
- Set special edition version
- Set radar angle


# Online
- Track player (waypoint)

## Griefing
- Crush player
- Cargoplane spam
- Taze player
- Kill player
- Firework  player
- Atomizer player
- RPG player
- Orbital Player
- Kick all but this player
- Next Gen Car Crash

## Drops
- Card drop
- RP Drops

## Weapons
- RP gun
- Card gun
- Kick gun

## IP Lookup
- Check the players geoip 

## Player Info
- Copy info from the options
- name
- scid
- ip 
- host token
- all

## Teleport Player To Player
- Teleport the selected online player to one within the list

# Tables

blacklisted_repair_vehicles.lua - this table is the vehicles that don't get auto repaired, this is due to a vtol bug

bullet_table.lua - this table is for the options found in the griefing sub menu, you can add other bullets to this with their hash

countries.lua - this table is a list of all the countries for the country tracker

homing_missiles_vehicles.lua - this table is a list of all the vehicles that have homing missiles to lock on to players on foot

objects.lua - this table is for the object gun, add new objects to be spawned via a hash

rp_drops.lua - this table is for all the rp drop models

walkstyles.lua - this table is for walkstyles within the script, feel free to add more

# Changelog v3.0.1
- Fixed SP Money Drop error

# Changelog v3.1.0
- Added more kicks to "kick all but this player"
- Added next gen car crash
- Fixed Copy IP To Clipboard error
- Fixed Femboy Watch error

# Changelog v3.2.0
- Added set singleplayer character cash 
- Added set singleplayer character cash to max
- Added max special stat (sp)
- Added complete prologue
- Added Notification on speed limiter to notify of both mph and kph values
- Stats are now required for trusted mode due to the two cash options
- Fixed version in notify
- Fixed drift tyres
- Fixed drift suspension
- Fixed Air Suspension
- Fixed Stay clean

- thank you toph for originally finding the prologue native
- thank you bigsmoke for the idea and stat name for sp cash
- thank you shadowcat for the extra help with cash stat

# Changelog v3.3.0
- Added Auto Updater
- Fixed Launch Vehicle
- Fixed Nitrous Backfire
- Fixed Exhaust Backfire
- Fixed Ai Driving
- Fixed Player Proofs
- Increased Character Limit On Chat Spam
- "Bug" Fixes :) 

# Changelog v3.3.1 
- Fixing brokey shit

# Changelog v3.3.2
- Fixing brokey that i broke fixing brokey shit

# Changelog v3.3.3
- Added backup server (Thanks for testing @joel_a21)

- update should be released on auto updater shortly

# Changelog v3.3.4 
- i did a fucky

# Changelog v3.3.5
-

# Changelog v3.4
- Added tp player to player

# Changelog v3.5
- Added Redirect SCID Joins To Admins
    - activate this feature to set your join redirect as an admin that is currently online
- Fixed error

# Changelog v3.5.2
- Now includes admins.lua table

# Changelog v3.6
- Added Country Tracker Options
    - Crash Toggled Country
    - Kick Toggled Country
    - Notify Toggled Country
- Improved country tracker
- Fixed feature saving
- Fixed issue with script load
- Other improvements and fixes

# Changelog v3.6.2
- Improved auto updater
- Added admins.lua check to prevent breakage

# Changelog v3.7
- Added list of achievements to choose manually
    - https://femboys-dm.me/nudes/ps779fyn.png
- Moved Get all achievements and set special edition to sp recovery

# Changelog 3.7.1
- Auto repair now works on vtols - thank you moist
    - blacklisted_repair_vehicles.lua is now useless. feel free to delete
- Achievement table will now be downloaded on auto update
- Stats and HTTP are no longer required but features using them will be hidden if not enabled

# Changelog 3.8.0
- Added Disable Radio On Enter
    - turns the radio off when you enter the car, doesn't block the radio
- Added Match License To Frames -- thankies for idea ripperowo
- Added Copypasta Spam
    - Add copypasta manually in the copypasta.lua table
- Added WIP splash screen
    - can disable in settings
- Improved Redirect To Admin -- thanks to Toph and prodder
- Fixed Atomizer Gun -- thanks kitto
- Fixed some hints -- thanks kitto

# Changelog 3.9.0
- Added Randomise Outfit
- Added Lazer Sight
- Added "protection" for Tazer Crash
    - will break missions that require a ped to be in your car
    - will delete hookers :3
- Added Demi-God for other players
    - for both all and selected players, will heal players when they have taken damage. DOES NOT MAKE THEM INVULNVERABLE
    - does not work if they are in a car
- Added Car Follows You
    - Last used car will constantly follow/try to get to you
- Added ladder to heaven
    - was bored, enjoy ig 
- Fixed bail from session
- Added check for missing loading sprite -- thanks for reporting Mia

# Changelog 3.9.1
- Added Whitelist Friends [Country Tracker]
- Added Ability to Add New Languages
    - Add new languages to the FemboyFiles\Translations folder
    - Enable them in the settings/languages within the script
- Improved Aim Karma
    - Added Whitelist Options
- Improved Code + Optimisations
- Removed Defunct Crashes

# Changelog 3.9.2
- Fixed missing files error

# Changelog 3.9.3
- Added player info
    - see a players stats such as: kills, deaths, prostitutes, lapdances, races etc
    - This uses globals which are prone to changing when gta updates. The script will still work if these break but the feature itself will not
- Fixed missing file error again

# Changelog 3.9.4
- Added paste to chat
- Added further checks for missing files
- Fixed missing globals error
    - may require a manual installation
- Fixed native error upon loading without natives trusted
