--[[

leBus System - Licensed by LegitimatelyEris Studios to clients who have made purchases for this product directly
Any unauthorised persons using this product are liable to DMCA action.

Version: [PRERELEASE]

]]--

-- User Configuration

local garage = "Lea Interchange"

local routes = {
	{
		route = "",
		destinationIn = "",
		destinationInSoundId = 0,
		destinationOut = "",
		destinationOutSoundId = 0,
		stopsIn = {
			{
				"",  -- Station Name
				0, -- Sound Id
				Vector3.new(0,0,0), -- Place co-ordinates within brackets
				0, -- Sound delay (after text updates)
				0, -- Radius of co-ordinates (decides how far out you want ibus to detect the 'hit' part, but realistically you're just placing coords)
			},
		},
		stopsOut = {
			{
				"",  -- Station Name
				0, -- Sound Id
				Vector3.new(0,0,0), -- Place co-ordinates within brackets
				0, -- Sound delay (after text updates)
				0, -- Radius of co-ordinates (decides how far out you want ibus to detect the 'hit' part, but realistically you're just placing coords)
			},
		},
		curtailments = {
			inbound = {
				{
					curtailmentName = "", -- Curtailment Name, don't include the route number or anything, just the destination
					soundId = 0,
					numberOfStopsServing = 0, -- Count how many stops the curtailment serves, the last stop included
				},
			},

			outbound = {
				{
					curtailmentName = "",
					soundId = 0,
					numberOfStopsServing = 0,
				},
			},
		},
	},
}

local manualAnnouncements = {
	{"Bus terminates here", 0, "This bus terminates here. Please take all your belongings with you."},
	{"Bus on Diversion", 0, "Bus on Diversion"},
	{"Destination changed", 0, "The destination of this bus has changed, please listen for more information."},
	{"The next bus stop is closed", 0, "The next bus stop is closed."},
	{"Wheelchair Space Required", 0, "Wheelchair Space Required"},
	{"Please move down inside bus", 0, "Please move down inside bus"},
	{"Seats Available Upstairs", 0, "Seats Available Upstairs"},
	{"No standing upstairs", 0, "No standing upstairs"},
	{"CCTV in Operation", 0, "CCTV in Operation"},
	{"Driver will open doors when safe", 0, "The driver will open the doors when it is safe to do so"},
	{"Stay with your buggy", 0, "Please stay with your buggy for your child's safety"},
	{"Bus will wait for driver changeover", 0, "This bus will wait at this bus stop for a driver changeover"},	
	{"Wheelchair Space Required", 0, "Wheelchair Space Required"},
	{"Driver instructed to regulate service", 0, "This bus will wait here for a short time to help regulate the service"},
	{"This bus is ready to depart", 0, "This bus is ready to depart"},
	{"Please Hold On", 0, "Please hold on, the bus is about to move"},

}


-- Do not modify anything below this point unless you know what you're doing

iBusModule = require(game.ServerScriptService.iBusModule)
iBusModule.ButtonPressed("SideOne", script, routes, garage, manualAnnouncements)

iBusModule.ButtonVariation(script, routes, garage, manualAnnouncements)

if script.Parent.Parent.FrontDoors.Value == nil then
	print("You need to set a valid location for the Front Doors trigger; refer to the guide for more info")
else
	script.Parent.Parent.FrontDoors.Value.Changed:Connect(function()
		if script.Parent.Parent.FrontDoors.Value.Value == true then
			iBusModule.FrontDoorTrigger(script)
		end
	end)
end

if script.Parent.Parent.RearDoors.Value == nil then
	print("You need to set a valid location for the Rear Doors trigger; refer to the guide for more info")
else
	script.Parent.Parent.RearDoors.Value.Changed:Connect(function()
		if script.Parent.Parent.RearDoors.Value.Value == true then
			iBusModule.RearDoorTrigger(script)
		end
	end)
end

script.Parent.Screen.SurfaceGui.Screensaver.Time.Text = game.Lighting.TimeOfDay
script.Parent.Screen.SurfaceGui.Home.Home.Time.Text = game.Lighting.TimeOfDay

game.Lighting.Changed:Connect(function()
	script.Parent.Screen.SurfaceGui.Screensaver.Time.Text = game.Lighting.TimeOfDay
	script.Parent.Screen.SurfaceGui.Home.Home.Time.Text = game.Lighting.TimeOfDay
end)

iBusModule.ManualAnnouncements("Initialise", script, manualAnnouncements, routes, garage)
iBusModule.NextStopAnnouncements(script, routes, garage)
iBusModule.UpdatePAXMain(garage, script)
iBusModule.DotMatrix(script)
iBusModule.iBusDisplayV4(script)
iBusModule.iBusDisplayV3(script)
iBusModule.iBusDisplay_New(script)