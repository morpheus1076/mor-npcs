ESX = exports['es_extended']:getSharedObject()
--print(json.encode(input))

CreateThread( function()
	for _, points in pairs(Config.NPCS) do

		RequestModel(GetHashKey(points.ped))
		while not HasModelLoaded(GetHashKey(points.ped)) do
			Wait(1)
		end

		if points.pedenabled then
			local npc = CreatePed(4, points.pedhash, points.pedcoords.x, points.pedcoords.y, points.pedcoords.z-1, points.pedheading, false, true)
			FreezeEntityPosition(npc, true)	
			SetEntityHeading(npc, points.pedheading)
			SetEntityInvincible(npc, true)
			SetBlockingOfNonTemporaryEvents(npc, true)
			TaskStartScenarioInPlace(npc, points.scenario, -1, true)
		end
	end
	SetForcePedFootstepsTracks(false)
end)

CreateThread( function()
		RequestModel(GetHashKey(Config.TwentyPed.ped))
		while not HasModelLoaded(GetHashKey(Config.TwentyPed.ped)) do
			Wait(1)
		end

		if Config.TwentyPed.pedenabled then
			for _, coords in pairs(Config.TwentyCoords) do
				local npc = CreatePed(4, Config.TwentyPed.pedhash, coords.x, coords.y, coords.z-1, coords.aheading, false, true)
				FreezeEntityPosition(npc, true)
				SetEntityHeading(npc, coords.aheading)
				SetEntityInvincible(npc, true)
				SetBlockingOfNonTemporaryEvents(npc, true)
				TaskStartScenarioInPlace(npc, Config.TwentyPed.scenario, -1, true)
			end
		end
end)

CreateThread( function()
	RequestModel(GetHashKey(Config.AmmuPed.ped))
	while not HasModelLoaded(GetHashKey(Config.AmmuPed.ped)) do
		Wait(1)
	end

	if Config.AmmuPed.pedenabled then
		for _, coords in pairs(Config.AmmuCoords) do
			local npc = CreatePed(4, Config.AmmuPed.pedhash, coords.x, coords.y, coords.z-1, coords.bheading, false, true)
			FreezeEntityPosition(npc, true)
			SetEntityHeading(npc, coords.bheading)
			SetEntityInvincible(npc, true)
			SetBlockingOfNonTemporaryEvents(npc, true)
			TaskStartScenarioInPlace(npc, Config.AmmuPed.scenario, -1, true)
		end
	end
end)

-- Barber
CreateThread( function()
	RequestModel(GetHashKey(Config.BarbPed.ped))
	while not HasModelLoaded(GetHashKey(Config.BarbPed.ped)) do
		Wait(1)
	end

	if Config.BarbPed.pedenabled then
		for _, coords in pairs(Config.BarbCoords) do
			local npc = CreatePed(4, Config.BarbPed.pedhash, coords.x, coords.y, coords.z-1, coords.dheading, false, true)
			FreezeEntityPosition(npc, true)
			SetEntityHeading(npc, coords.dheading)
			SetEntityInvincible(npc, true)
			SetBlockingOfNonTemporaryEvents(npc, true)
			TaskStartScenarioInPlace(npc, Config.BarbPed.scenario, -1, true)
		end
	end
end)

-- Tattoo
CreateThread( function()
	RequestModel(GetHashKey(Config.TattPed.ped))
	while not HasModelLoaded(GetHashKey(Config.TattPed.ped)) do
		Wait(1)
	end

	if Config.TattPed.pedenabled then
		for _, coords in pairs(Config.TattCoords) do
			local npc = CreatePed(4, Config.TattPed.pedhash, coords.x, coords.y, coords.z-1, coords.cheading, false, true)
			FreezeEntityPosition(npc, true)
			SetEntityHeading(npc, coords.cheading)
			SetEntityInvincible(npc, true)
			SetBlockingOfNonTemporaryEvents(npc, true)
			TaskStartScenarioInPlace(npc, Config.TattPed.scenario, -1, true)
		end
	end
end)

-- Clothes
CreateThread( function()
	RequestModel(GetHashKey(Config.ClothPed.ped))
	while not HasModelLoaded(GetHashKey(Config.ClothPed.ped)) do
		Wait(1)
	end

	if Config.ClothPed.pedenabled then
		for _, coords in pairs(Config.ClothCoords) do
			local npc = CreatePed(4, Config.ClothPed.pedhash, coords.x, coords.y, coords.z-1, coords.eheading, false, true)
			FreezeEntityPosition(npc, true)
			SetEntityHeading(npc, coords.eheading)
			SetEntityInvincible(npc, true)
			SetBlockingOfNonTemporaryEvents(npc, true)
			TaskStartScenarioInPlace(npc, Config.ClothPed.scenario, -1, true)
		end
	end
end)

-- Liqour
CreateThread( function()
	RequestModel(GetHashKey(Config.LiqPed.ped))
	while not HasModelLoaded(GetHashKey(Config.LiqPed.ped)) do
		Wait(1)
	end

	if Config.LiqPed.pedenabled then
		for _, coords in pairs(Config.LiqCoords) do
			local npc = CreatePed(4, Config.LiqPed.pedhash, coords.x, coords.y, coords.z-1, coords.fheading, false, true)
			FreezeEntityPosition(npc, true)
			SetEntityHeading(npc, coords.fheading)
			SetEntityInvincible(npc, true)
			SetBlockingOfNonTemporaryEvents(npc, true)
			TaskStartScenarioInPlace(npc, Config.LiqPed.scenario, -1, true)
		end
	end
end)

-- YouTool
CreateThread( function()
	RequestModel(GetHashKey(Config.ToolPed.ped))
	while not HasModelLoaded(GetHashKey(Config.ToolPed.ped)) do
		Wait(1)
	end

	if Config.ToolPed.pedenabled then
		for _, coords in pairs(Config.ToolCoords) do
			local npc = CreatePed(4, Config.ToolPed.pedhash, coords.x, coords.y, coords.z-1, coords.gheading, false, true)
			FreezeEntityPosition(npc, true)
			SetEntityHeading(npc, coords.gheading)
			SetEntityInvincible(npc, true)
			SetBlockingOfNonTemporaryEvents(npc, true)
			TaskStartScenarioInPlace(npc, Config.ToolPed.scenario, -1, true)
		end
	end
end)