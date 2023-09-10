# Femboy.lua v3

# Required Trusted Modes
- Natives
    - A lot of features use natives
- HTTP
    - Country Tracker and IP Lookup require http
    - Auto Updater
- Stats 
    - SP Recovery Options

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
