---@diagnostic disable: undefined-global, lowercase-global, undefined-field

local https_trusted          <const> = menu.is_trusted_mode_enabled(eTrustedFlags.LUA_TRUST_HTTP)
local appdata                <const> = utils.get_appdata_path("PopstarDevs", "2Take1menu")

local femboy_files_luac      <const> = {
    "functions/global_functions",
    "functions/notify_functions",
    "functions/save_functions",
    "functions/tools",
    "parent_features/misc_options",
    "parent_features/online_drop_options",
    "parent_features/online_griefing_options",
    "parent_features/online_ip_lookup_options",
    "parent_features/online_options",
    "parent_features/online_player_info_options",
    "parent_features/online_player_teleport_options",
    "parent_features/online_weapon_options",
    "parent_features/player_options",
    "parent_features/vehicle_options",
    "parent_features/weapon_options",
    "parent_features/world_options",
}

local femboy_files_lua       <const> = {
    {download = "FemboyFiles/tables/admins",    install = "tables/admins"},
    {download = "OtherStuff/achievements",      install = "tables/achievements"}
}

local function downloadLuacFiles(filename)
    local response, body = web.get("https://raw.githubusercontent.com/Decuwu/FemboyV3/main/FemboyFiles/" .. filename .. ".luac")
    if response == 200 then
        local file = io.open(appdata .. "\\scripts\\FemboyFiles\\" .. filename .. ".luac", "w+b")
        if file == nil then return menu.notify("There was an error opening " .. filename, "Femboy Downloader", 5, 0xFF0000FF) end
        file:write(body)
        file:close()
        print("Updated #FFFFFF00" .. filename .. "#DEFAULT# for Femboy Lua")
    else
        menu.notify("Failed to download luac files with error code [" .. response .. "]", "Femboy Downloader", 5, 0xFF0000FF)
        return
    end
end

local function downloadLua()
    menu.notify("Attempting to download Femboy3...", "Femboy Downloader", 4, 0xFF00FFFF)

    for i, v in ipairs(femboy_files_luac) do
        menu.create_thread(function()
            downloadLuacFiles(v)
        end)
    end

    for i, v in ipairs(femboy_files_lua) do
        menu.create_thread(function()
            local response, body = web.get("https://raw.githubusercontent.com/Decuwu/FemboyV3/main/" .. v.download .. ".lua")
            if response == 200 then
                local file = io.open(appdata .. "\\scripts\\FemboyFiles\\" .. v.install .. ".lua", "w+b")
                if file == nil then return menu.notify("There was an error opening " .. v.download, "Femboy Downloader", 5, 0xFF0000FF) end
                file:write(body)
                file:close()
                print("Updated #FFFFFF00#"..v.install.. "#DEFAULT# for Femboy Lua")
            else
                menu.notify("Failed to download lua files with error code [" .. response .. "]", "Femboy Downloader", 5, 0xFF0000FF)
                return
            end
        end)
    end

    local main_file_response, main_file_body = web.get("https://raw.githubusercontent.com/Decuwu/FemboyV3/main/FemboyV3.luac")
    if main_file_response == 200 then
        local file = io.open(appdata.."\\scripts\\FemboyV3.luac", "w+b")
        if file == nil then menu.notify("There was an error opening main file", "Femboy Downloader", 5, 0xFF0000FF) end
        file:write(main_file_body)
        file:close()
        print("Updated #FFFFFF00#FemboyV3#DEFAULT# for Femboy Lua")
    else
        menu.notify("Failed to download main file with error code [" .. main_file_response .. "]", "Femboy Downloader", 5, 0xFF0000FF)
    end

    menu.notify("FemboyV3 Has been downloaded. Head to `local > scripts > FemboyV3 to run it.", "Femboy Downloader", 5, 0xFFFFFF00)
    system.wait(500)
    menu.exit()
end

menu.create_thread(function()
    if https_trusted then
        downloadLua()
    else
        menu.notify("HTTPS Trusted must be enabled to access web functions and download the script", "Femboy Downloader", 5, 0xFF0000FF)
        return menu.exit()
    end
end)