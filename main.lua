--CaptainReturns
--CoolLoadersInc

mods["RoRRModdingToolkit-RoRR_Modding_Toolkit"].auto(true)

PATH = _ENV["!plugins_mod_folder_path"]
NAMESPACE = "CaptainReturns"

--Autofire config setup
mods.on_all_mods_loaded(function()
    for k, v in pairs(mods) do
        if type(v) == "table" and v.tomlfuncs then
            Toml = v
        end
    end
    params = {
        vulcanAutoFire = false;
    }
    params = Toml.config_update(_ENV["!guid"], params) -- Load Save
end)



local init = function()
	local folders = {
		"Lua",
		"Sprites",
		"Language",
	}

	for _, folder in ipairs(folders) do
		local filepaths = path.get_files(path.combine(PATH, folder))
		for _, filepath in ipairs(filepaths) do
			if string.sub(filepath, -4, -1) == ".lua" then
				require(filepath)
			end
		end
	end
	
	--autofire config and networking
	local packetConfig = Packet.new()
    local PlayerPacket = Packet.new()
  Callback.add(Callback.TYPE.onGameStart, "CaptainReturns-onGameStart", function()
        local function GameStart()
            if not gm._mod_game_ingame() then
                return
            end
            local playerdata = Player.get_client():get_data()
            playerdata.vulcanAutoFire = params.vulcanAutoFire
            if gm._mod_net_isOnline() then
                local msg = packetConfig:message_begin()
                msg:write_instance(Player.get_client())
                msg:write_byte(params.vulcanAutoFire)

                if gm._mod_net_isClient() then
                    msg:send_to_host()
                end
                if gm._mod_net_isHost() then
                    msg:send_to_all()
                end
            end
        end
        Alarm.create(GameStart, 2)
    end)

    packetConfig:onReceived(function(msg)
        local msgplayer = msg:read_instance()
        local playerdata = msgplayer:get_data()
        playerdata.vulcanAutoFire = msg:read_byte()

        if gm._mod_net_isHost() then
            local msg = packetConfig:message_begin()
            msg:write_instance(Player.get_client())
            msg:write_byte(playerdata.vulcanAutoFire)
            msg:send_to_all()
        end
    end)
	
	HOTLOADING = true
end
Initialize(init)

if HOTLOADING then
	init()
end

-- Add ImGui window
gui.add_imgui(function()
    if ImGui.Begin("CaptainReturns") then
        params.vulcanAutoFire = ImGui.Checkbox("Vulcan Shotgun Rapid Fire", params.vulcanAutoFire)
        Toml.save_cfg(_ENV["!guid"], params)
    end
    ImGui.End()
end)
