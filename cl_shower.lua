
local QBCore = exports['qb-core']:GetCoreObject()


douche = {
	{271.85, -633.25, 13.17},		-- High End Apartment vector3(271.85, -633.25, 13.17)s
	{293.78, -1071.08, -119.45}, 	-- Low End Apartment vector3(293.78, -1071.08, -119.45)
	{-618.79, 54.1, 14.74}, 	-- Medium End Apartment vector3(-618.79, 54.1, 14.74)
	{-1286.26, -423.04, 6.3},  		-- 4 Integrity Way, Apt 28 vector3(-1286.26, -423.04, 6.3)
	{-664.77, -1097.66, -14.22}, 		-- 4 Integrity Way, Apt 30 vector3(-664.77, -1097.66, -14.22)	
	{293.84, -1071.11, 0.55},		-- Dell Perro Heights, Apt 4vector3(293.84, -1071.11, 0.55)
	{272.02, -633.38, -16.83},	    -- Dell Perro Heights, Apt 7 -- 272.02, -633.38, -16.83
	{-898.05, -368.57, 112.11},		-- Richard Majestic, Apt 2
	{-591.71, 49.14, 96.04},		-- Tinsel Towers, Apt 42
	{-796.38, 333.36, 209.93},		-- Eclipse Towers, Apt 3
	{-168.89, 489.73, 132.87},		-- 3655 Wild Oats Drive
	{335.91, 430.56, 145.6},		-- 2044 North Conker Avenue
	{373.9, 413.97, 141.13},		-- 2045 North Conker Avenue
	{-673.75, 588.4, 140.6},		-- 2862 Hillcrest Avenue
	{-765.49, 612.72, 139.36},		-- 2868 Hillcrest Avenue
	{-856.46, 682.36, 148.08},		-- 2874 Hillcrest Avenue
	{120.83, 551.01, 179.53},		-- 2677 Whispymound Drive	
	{-1287.27, 440.41, 93.12}		-- 2133 Mad Wayne Thunder
}

local sortir = false
local clothes = false
local encour = false

Citizen.CreateThread(function ()
	while true do
		local ped = PlayerPedId()
		Citizen.Wait(0)
			for i = 1, #douche do
				coorddouche = douche[i]
				if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), coorddouche[1], coorddouche[2], coorddouche[3], true ) < 2 then
					if encour == false then
					if IsControlJustPressed(1, 51) then
						local PlayerData = QBCore.Functions.GetPlayerData()
						if PlayerData.charinfo.gender == 0 then 
							SetPedComponentVariation(ped, 3, Config.Clothes.male['arms'], 0, 0) --arms
							SetPedComponentVariation(ped, 8, Config.Clothes.male['tshirt_1'], Config.Clothes.male['tshirt_2'], 0) --t-shirt
							SetPedComponentVariation(ped, 11, Config.Clothes.male['torso_1'], Config.Clothes.male['torso_2'], 0) --torso2
							SetPedComponentVariation(ped, 9, Config.Clothes.male['bproof_1'], Config.Clothes.male['bproof_2'], 0) --vest
							SetPedComponentVariation(ped, 10, Config.Clothes.male['decals_1'], Config.Clothes.male['decals_2'], 0) --decals
							SetPedComponentVariation(ped, 7, Config.Clothes.male['chain_1'], Config.Clothes.male['chain_2'], 0) --accessory
							SetPedComponentVariation(ped, 4, Config.Clothes.male['pants_1'], Config.Clothes.male['pants_2'], 0) -- pants
							SetPedComponentVariation(ped, 6, Config.Clothes.male['shoes_1'], Config.Clothes.male['shoes_2'], 0) --shoes
							SetPedPropIndex(ped, 0, Config.Clothes.male['helmet_1'], Config.Clothes.male['helmet_2'], true) --hat
							SetPedPropIndex(ped, 2, Config.Clothes.male['ears_1'], Config.Clothes.male['ears_2'], true) --ear
						else
							SetPedComponentVariation(ped, 3, Config.Clothes.female['arms'], 0, 0) --arms
							SetPedComponentVariation(ped, 8, Config.Clothes.female['tshirt_1'], Config.Clothes.female['tshirt_2'], 0) --t-shirt
							SetPedComponentVariation(ped, 11, Config.Clothes.female['torso_1'], Config.Clothes.female['torso_2'], 0) --torso2
							SetPedComponentVariation(ped, 9, Config.Clothes.female['bproof_1'], Config.Clothes.female['bproof_2'], 0) --vest
							SetPedComponentVariation(ped, 10, Config.Clothes.female['decals_1'], Config.Clothes.female['decals_2'], 0) --decals
							SetPedComponentVariation(ped, 7, Config.Clothes.female['chain_1'], Config.Clothes.female['chain_2'], 0) --accessory
							SetPedComponentVariation(ped, 4, Config.Clothes.female['pants_1'], Config.Clothes.female['pants_2'], 0) -- pants
							SetPedComponentVariation(ped, 6, Config.Clothes.female['shoes_1'], Config.Clothes.female['shoes_2'], 0) --shoes
							SetPedPropIndex(ped, 0, Config.Clothes.female['helmet_1'], Config.Clothes.female['helmet_2'], true) --hat
							SetPedPropIndex(ped, 2, Config.Clothes.female['ears_1'], Config.Clothes.female['ears_2'], true) --ear
						end
						local coords = GetEntityCoords(PlayerPedId())
						encour = true
						FreezeEntityPosition((PlayerPedId()), true)
						if not HasNamedPtfxAssetLoaded("core") then
							RequestNamedPtfxAsset("core")
							while not HasNamedPtfxAssetLoaded("core") do
								Wait(1)
							end
						end
						TaskStartScenarioInPlace((PlayerPedId()), "PROP_HUMAN_STAND_IMPATIENT", 0, true)
						UseParticleFxAssetNextCall("core") particles  = StartParticleFxLoopedAtCoord("ent_sht_water", coords.x, coords.y, coords.z +1.2, 0.0, 0.0, 0.0, 1.0, false, false, false, false) UseParticleFxAssetNextCall("core") Citizen.Wait(3000) particles2  = StartParticleFxLoopedAtCoord("ent_sht_water", coords.x, coords.y, coords.z +1.2, 0.0, 0.0, 0.0, 1.0, false, false, false, false) UseParticleFxAssetNextCall("core") Citizen.Wait(3000) particles3  = StartParticleFxLoopedAtCoord("ent_sht_water", coords.x, coords.y, coords.z +1.2, 0.0, 0.0, 0.0, 1.0, false, false, false, false) UseParticleFxAssetNextCall("core") Citizen.Wait(3000) particles4  = StartParticleFxLoopedAtCoord("ent_sht_water", coords.x, coords.y, coords.z +1.2, 0.0, 0.0, 0.0, 1.0, false, false, false, false) UseParticleFxAssetNextCall("core") Citizen.Wait(3000) particles5  = StartParticleFxLoopedAtCoord("ent_sht_water", coords.x, coords.y, coords.z +1.2, 0.0, 0.0, 0.0, 1.0, false, false, false, false)
						timer = 8
						sortir = true
						Citizen.CreateThread(function()
							while sortir do
								Citizen.Wait(0)
								Citizen.Wait(1000)
								if(timer > 0)then
									timer = timer - 1
								elseif (timer == 0) then
									encour = false
									FreezeEntityPosition((PlayerPedId()), false)
									TriggerServerEvent('hud:server:RelieveStress', math.random(8, 9))
									TriggerServerEvent("qb-clothes:loadPlayerSkin")
									QBCore.Functions.Notify('You are clean Now.', 'success')
									-- ENGLISH : ESX.ShowNotification("~b~You are all clean !")
									ClearPedTasksImmediately(PlayerPedId()) 

									StopParticleFxLooped(particles, 0) StopParticleFxLooped(particles2, 0) StopParticleFxLooped(particles3, 0) StopParticleFxLooped(particles4, 0) StopParticleFxLooped(particles5, 0)
									sortir = false
								end
							end
						end)
					end
				end
				end
			end
	end
end)

