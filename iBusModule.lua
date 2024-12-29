local iBusModule = {}

encryptionKey = script:GetAttribute("encryptionKey")
iBusExtraInfo = script:GetAttribute("iBusExtraInfo")
diversionRadius = 200

function iBusModule.ButtonVariation(scriptRef, encryptionKey, routes, garage, manualAnnouncements)
	scriptRef.Parent.Buttons.SurfaceGui.SideOne.MouseButton1Click:Connect(function()
		iBusModule.ButtonPressed("SideOne", scriptRef, encryptionKey, routes, garage, manualAnnouncements)
	end)

	scriptRef.Parent.Buttons.SurfaceGui.SideTwo.MouseButton1Click:Connect(function()
		iBusModule.ButtonPressed("SideTwo", scriptRef, encryptionKey, routes, garage, manualAnnouncements)
	end)

	scriptRef.Parent.Buttons.SurfaceGui.SideThree.MouseButton1Click:Connect(function()
		iBusModule.ButtonPressed("SideThree", scriptRef, encryptionKey, routes, garage, manualAnnouncements)
	end)

	scriptRef.Parent.Buttons.SurfaceGui.SideFour.MouseButton1Click:Connect(function()
		iBusModule.ButtonPressed("SideFour", scriptRef, encryptionKey, routes, garage, manualAnnouncements)
	end)


	scriptRef.Parent.Buttons.SurfaceGui.BottomOne.MouseButton1Click:Connect(function()
		iBusModule.ButtonPressed("BottomOne", scriptRef, encryptionKey, routes, garage, manualAnnouncements)
	end)

	scriptRef.Parent.Buttons.SurfaceGui.BottomTwo.MouseButton1Click:Connect(function()
		iBusModule.ButtonPressed("BottomTwo", scriptRef, encryptionKey, routes, garage, manualAnnouncements)
	end)

	scriptRef.Parent.Buttons.SurfaceGui.BottomThree.MouseButton1Click:Connect(function()
		iBusModule.ButtonPressed("BottomThree", scriptRef, encryptionKey, routes, garage, manualAnnouncements)
	end)

	scriptRef.Parent.Buttons.SurfaceGui.BottomFour.MouseButton1Click:Connect(function()
		iBusModule.ButtonPressed("BottomFour", scriptRef, encryptionKey, routes, garage, manualAnnouncements)
	end)

	scriptRef.Parent.Buttons.SurfaceGui.BottomFive.MouseButton1Click:Connect(function()
		iBusModule.ButtonPressed("BottomFive", scriptRef, encryptionKey, routes, garage, manualAnnouncements)
	end)


	scriptRef.Parent.Buttons.SurfaceGui.Call.MouseButton1Click:Connect(function()
		iBusModule.ButtonPressed("Call", scriptRef, encryptionKey, routes, garage, manualAnnouncements)
	end)


	scriptRef.Parent.Buttons.SurfaceGui.Speaker.MouseButton1Click:Connect(function()
		iBusModule.ButtonPressed("Speaker", scriptRef, encryptionKey, routes, garage, manualAnnouncements)
	end)


	scriptRef.Parent.Buttons.SurfaceGui.SMS.MouseButton1Click:Connect(function()
		iBusModule.ButtonPressed("SMS", scriptRef, encryptionKey, routes, garage, manualAnnouncements)
	end)


	scriptRef.Parent.Buttons.SurfaceGui.CodeBlue.MouseButton1Click:Connect(function()
		iBusModule.ButtonPressed("CodeBlue", scriptRef, encryptionKey, routes, garage, manualAnnouncements)
	end)

	scriptRef.Parent.Buttons.SurfaceGui.CodeRed.MouseButton1Click:Connect(function()
		iBusModule.ButtonPressed("CodeRed", scriptRef, encryptionKey, routes, garage, manualAnnouncements)
	end)



	scriptRef.Parent.Buttons.SurfaceGui["1"].MouseButton1Click:Connect(function()
		iBusModule.Login("1", scriptRef, encryptionKey)
	end)

	scriptRef.Parent.Buttons.SurfaceGui["2"].MouseButton1Click:Connect(function()
		iBusModule.Login("2", scriptRef, encryptionKey)
	end)

	scriptRef.Parent.Buttons.SurfaceGui["3"].MouseButton1Click:Connect(function()
		iBusModule.Login("3", scriptRef, encryptionKey)
	end)

	scriptRef.Parent.Buttons.SurfaceGui["4"].MouseButton1Click:Connect(function()
		iBusModule.Login("4", scriptRef, encryptionKey)
	end)

	scriptRef.Parent.Buttons.SurfaceGui["5"].MouseButton1Click:Connect(function()
		iBusModule.Login("5", scriptRef, encryptionKey)
	end)

	scriptRef.Parent.Buttons.SurfaceGui["6"].MouseButton1Click:Connect(function()
		iBusModule.Login("6", scriptRef, encryptionKey)
	end)

	scriptRef.Parent.Buttons.SurfaceGui["7"].MouseButton1Click:Connect(function()
		iBusModule.Login("7", scriptRef, encryptionKey)
	end)

	scriptRef.Parent.Buttons.SurfaceGui["8"].MouseButton1Click:Connect(function()
		iBusModule.Login("8", scriptRef, encryptionKey)
	end)

	scriptRef.Parent.Buttons.SurfaceGui["9"].MouseButton1Click:Connect(function()
		iBusModule.Login("9", scriptRef, encryptionKey)
	end)

	scriptRef.Parent.Buttons.SurfaceGui["0"].MouseButton1Click:Connect(function()
		iBusModule.Login("0", scriptRef, encryptionKey)
	end)

	scriptRef.Parent.Buttons.SurfaceGui.Esc.MouseButton1Click:Connect(function()
		iBusModule.Login("Esc", scriptRef, encryptionKey)
	end)

	scriptRef.Parent.Buttons.SurfaceGui.Enter.MouseButton1Click:Connect(function()
		iBusModule.Login("Enter", scriptRef, encryptionKey, routes, garage)
	end)

	scriptRef.Parent.Buttons.SurfaceGui.Inc.MouseButton1Click:Connect(function()
		iBusModule.Login("Inc", scriptRef, encryptionKey, routes, garage)
	end)

	scriptRef.Parent.Buttons.SurfaceGui.Dec.MouseButton1Click:Connect(function()
		iBusModule.Login("Dec", scriptRef, encryptionKey, routes, garage)
	end)

	scriptRef.Parent.Buttons.SurfaceGui.Screensaver.MouseButton1Click:Connect(function()
		iBusModule.ButtonPressed("Screensaver", scriptRef, encryptionKey)
	end)
end

function iBusModule.ButtonPressed(button, scriptRef, eK, routes, garage, manualAnnouncements)
	if eK == encryptionKey then
		if button == "Screensaver" then
			iBusModule.ToggleScreensaver("Opposite", scriptRef, eK)
		
		elseif scriptRef:GetAttribute("currentPage") == "LoginDisplay" and scriptRef.Parent.Screen.SurfaceGui.Screensaver.Visible == false then
			if button == "SideOne" then
				iBusModule.Login("Garage", scriptRef, eK)
			elseif button == "SideTwo" then
				iBusModule.Login("Route", scriptRef, eK)
			elseif button == "SideThree" then
				iBusModule.Login("OperNo", scriptRef, eK)
			elseif button == "SideFour" then
				iBusModule.Login("TripNo", scriptRef, eK)
			elseif button == "BottomFive" then
				iBusModule.ContrastControl("Up", scriptRef, eK)
			elseif button == "BottomFour" then
				iBusModule.ContrastControl("Down", scriptRef, eK)
			elseif button == "BottomTwo" then
				iBusModule.Login("LogOff", scriptRef, eK, routes, garage)
			end
		elseif scriptRef:GetAttribute("currentPage") == "RouteVariant" and scriptRef.Parent.Screen.SurfaceGui.Screensaver.Visible == false then
			if button == "SideOne" then
				iBusModule.RouteVariant("With Timetable", scriptRef, eK)
			elseif button == "SideTwo" then
				iBusModule.RouteVariant("Route Variant", scriptRef, eK)
			elseif button == "BottomOne" then
				iBusModule.ChangePage("LoginDisplay", scriptRef, eK, routes, garage)
			elseif button == "BottomFive" then
				iBusModule.ContrastControl("Up", scriptRef, eK)
			elseif button == "BottomFour" then
				iBusModule.ContrastControl("Down", scriptRef, eK)
			end
		elseif scriptRef:GetAttribute("currentPage") == "ChooseDirection" and scriptRef.Parent.Screen.SurfaceGui.Screensaver.Visible == false then
			if button == "SideOne" then
				iBusModule.ChooseDirection("inbound", scriptRef, eK, routes, garage)
			elseif button == "SideTwo" then
				iBusModule.ChooseDirection("outbound", scriptRef, eK, routes, garage)
			elseif button == "BottomTwo" then
				iBusModule.ChangePage("RouteVariant", scriptRef, eK, routes, garage)
			elseif button == "BottomOne" then
				iBusModule.ChangePage("LoginDisplay", scriptRef, eK, routes, garage)
			end
		elseif scriptRef:GetAttribute("currentPage") == "Home" and scriptRef.Parent.Screen.SurfaceGui.Screensaver.Visible == false then
			if button == "BottomFour" then
				iBusModule.ChangePage("Announcements", scriptRef, eK, routes, garage)
			elseif button == "BottomThree" then
				iBusModule.ChangePage("ChooseDirection", scriptRef, eK, routes, garage)
			elseif button == "BottomTwo" then
				iBusModule.ChangePage("Curtailments", scriptRef, eK, routes, garage)
			elseif button == "BottomOne" then
				iBusModule.ChangePage("LoginDisplay", scriptRef, eK, routes, garage)
			elseif button == "SideOne" then
				iBusModule.Home("SideOne", scriptRef, eK)
			elseif button == "SideTwo" then
				iBusModule.Home("SideTwo", scriptRef, eK)
			elseif button == "SideThree" then
				iBusModule.Home("SideThree", scriptRef, eK)
			elseif button == "SideFour" then
				iBusModule.Home("SideFour", scriptRef, eK)
			end
		elseif scriptRef:GetAttribute("currentPage") == "Curtailments" and scriptRef.Parent.Screen.SurfaceGui.Screensaver.Visible == false then
			if button == "SideThree" then
				iBusModule.ChangePage("CurtailmentsList", scriptRef, eK, routes, garage)
				iBusModule.CurtailmentsList("Initialise", scriptRef, encryptionKey, routes, garage)
			elseif button == "BottomOne" then
				iBusModule.ChangePage("Home", scriptRef, eK, routes, garage)
			elseif button == "BottomFive" then
				iBusModule.ContrastControl("Up", scriptRef, eK)
			elseif button == "BottomFour" then
				iBusModule.ContrastControl("Down", scriptRef, eK)
			end
		elseif scriptRef:GetAttribute("currentPage") == "Announcements" and scriptRef.Parent.Screen.SurfaceGui.Screensaver.Visible == false then
			if button == "BottomFour" then
				iBusModule.ManualAnnouncements("Up", scriptRef, eK, manualAnnouncements, routes, garage)
			elseif button == "BottomFive" then
				iBusModule.ManualAnnouncements("Down", scriptRef, eK, manualAnnouncements, routes, garage)
			elseif button == "BottomOne" then
				iBusModule.ChangePage("Home", scriptRef, eK, routes, garage)
			elseif button == "SideOne" then
				iBusModule.ManualAnnouncements("SideOne", scriptRef, eK, manualAnnouncements, routes, garage)
			elseif button == "SideTwo" then
				iBusModule.ManualAnnouncements("SideTwo", scriptRef, eK, manualAnnouncements, routes, garage)
			elseif button == "SideThree" then
				iBusModule.ManualAnnouncements("SideThree", scriptRef, eK, manualAnnouncements, routes, garage)
			elseif button == "SideFour" then
				iBusModule.ManualAnnouncements("SideFour", scriptRef, eK, manualAnnouncements, routes, garage)
			end
		elseif scriptRef:GetAttribute("currentPage") == "CurtailmentsList" and scriptRef.Parent.Screen.SurfaceGui.Screensaver.Visible == false then
			if button == "BottomFour" then
					iBusModule.CurtailmentsList("Up", scriptRef, eK, routes, garage)
			elseif button == "BottomFive" then
					iBusModule.CurtailmentsList("Down", scriptRef, eK, routes, garage)
			elseif button == "BottomOne" then
				iBusModule.ChangePage("Home", scriptRef, eK, routes, garage)
			elseif button == "SideOne" then
					iBusModule.CurtailmentsList("SideOne", scriptRef, eK, routes, garage)
			elseif button == "SideTwo" then
					iBusModule.CurtailmentsList("SideTwo", scriptRef, eK, routes, garage)
			elseif button == "SideThree" then
					iBusModule.CurtailmentsList("SideThree", scriptRef, eK, routes, garage)
			elseif button == "SideFour" then
					iBusModule.CurtailmentsList("SideFour", scriptRef, eK, routes, garage)
			end
		end
	end	
end

function iBusModule.Login(signal, scriptRef, eK, routes, garage)
	if eK == encryptionKey then
		local function SelectLine()
			scriptRef.Parent.Screen.SurfaceGui.LoginDisplay:SetAttribute("selectedLine", signal)
			local selectedLine = scriptRef.Parent.Screen.SurfaceGui.LoginDisplay:GetAttribute("selectedLine")
			local LoginDisplay = scriptRef.Parent.Screen.SurfaceGui.LoginDisplay.Login[selectedLine]

			for _, child in ipairs(scriptRef.Parent.Screen.SurfaceGui.LoginDisplay.Login:GetChildren()) do
				if child:IsA("TextLabel") then
					if child.Name ~= "Label" then
						child.BorderSizePixel = 2
						child.BorderColor3 = Color3.fromRGB(95, 95, 95)
						child.Text = ""
					end
				end
			end

			LoginDisplay.BorderSizePixel = 3
			LoginDisplay.BorderColor3 = Color3.fromRGB(0, 0, 0)
			LoginDisplay.Text = "<"
			scriptRef.Parent.Screen.SurfaceGui.LoginDisplay.Login:SetAttribute("selectedLine", signal)

		end

		local function numberEntry(signal)
			local targetEntry = scriptRef.Parent.Screen.SurfaceGui.LoginDisplay:GetAttribute("selectedLine")
			local targetText = scriptRef.Parent.Screen.SurfaceGui.LoginDisplay.Login[targetEntry].Inputt

			if signal == "Esc" then
				if string.len(targetText.Text) ~= 0 then
					targetText.Text = string.sub(targetText.Text, 1, -2)
				end

			elseif signal == "Enter" then
				if scriptRef.Parent.Screen.SurfaceGui.LoginDisplay.Login.Garage.Inputt.Text ~= "" then
					if scriptRef.Parent.Screen.SurfaceGui.LoginDisplay.Login.OperNo.Inputt.Text ~= "" then
						if scriptRef.Parent.Screen.SurfaceGui.LoginDisplay.Login.Route.Inputt.Text ~= "" then
							if scriptRef.Parent.Screen.SurfaceGui.LoginDisplay.Login.TripNo.Inputt.Text ~= "" then
								local garagetext = scriptRef.Parent.Screen.SurfaceGui.LoginDisplay.Login.Garage.Inputt
								local opernotext = scriptRef.Parent.Screen.SurfaceGui.LoginDisplay.Login.OperNo.Inputt
								local routetext = scriptRef.Parent.Screen.SurfaceGui.LoginDisplay.Login.Route.Inputt
								local tripnotext = scriptRef.Parent.Screen.SurfaceGui.LoginDisplay.Login.TripNo.Inputt

								for _, route in pairs(routes) do
									if routetext.Text == route.route and garagetext.Text ~= "" and opernotext.Text ~= "" and tripnotext ~= "" then

										iBusModule.ChangePage("RouteVariant", scriptRef, eK, routes, garage)
										scriptRef.Parent.Screen.SurfaceGui.TrackingData:SetAttribute("route", scriptRef.Parent.Screen.SurfaceGui.LoginDisplay.Login.Route.Inputt.Text)
										scriptRef.Parent.Screen.SurfaceGui.ChooseDirection.Route.Text = route.route
										scriptRef.Parent.Screen.SurfaceGui.ChooseDirection.ChooseDirection.Direction.Text = string.upper(route.destinationIn)
										scriptRef.Parent.Screen.SurfaceGui.ChooseDirection.ChooseDirection.DirectionOpp.Text = string.upper(route.destinationOut)
										scriptRef.Parent.Screen.SurfaceGui.Home.Home.RouteOp.Text = routetext.Text.."/"..opernotext.Text
									end
								end
							end
						end
					end
				end				
			elseif signal == "Inc" then
				local alphabet = {
					"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", 
					"N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"
				}
				local lastLetter = string.sub(targetText.Text, -1)
				local everythingButLast = string.sub(targetText.Text, 1, -2)

				for i, value in ipairs(alphabet) do
					if value == lastLetter then
						local nextIndex = i + 1
						if nextIndex <= #alphabet then
							targetText.Text = everythingButLast .. alphabet[nextIndex]
						else
							-- Handle case where the last letter is Z and needs to wrap around or stay as Z
							targetText.Text = everythingButLast .. "Z" -- Example behavior, adjust as needed
						end
						break
					else
						targetText.Text = everythingButLast .. "A"
					end
					
				end
			elseif signal == "Dec" then
				local alphabet = {
					"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", 
					"N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"
				}
				local lastLetter = string.sub(targetText.Text, -1)
				local everythingButLast = string.sub(targetText.Text, 1, -2)

				for i, value in ipairs(alphabet) do
					if value == lastLetter then
						local nextIndex = i - 1
						if nextIndex <= #alphabet then
							targetText.Text = everythingButLast .. alphabet[nextIndex]
						else
							-- Handle case where the last letter is Z and needs to wrap around or stay as Z
							targetText.Text = everythingButLast .. "A" -- Example behavior, adjust as needed
						end
						break
					else
						targetText.Text = everythingButLast .. "Z"
					end

				end
			else
				targetText.Text = targetText.Text .. signal
			end
		end

		if signal == "LogOff" then
			wait(6)
			iBusModule.UpdatePAXMain(garage, eK, scriptRef)
			scriptRef.Parent.Screen.SurfaceGui.TrackingData:SetAttribute("loggedIn", false)
			scriptRef.Parent.Screen.SurfaceGui.TrackingData.DriverData:SetAttribute("CurrentDestinationId", 0)
			scriptRef.Parent.Screen.SurfaceGui.TrackingData:SetAttribute("deadrunning", true)
			return
		end

		local inputsSelect = {"Garage", "Route", "OperNo", "TripNo"}
		local inputsNumpad = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "Enter", "Esc", "Inc", "Dec"}

		for _, value in pairs(inputsSelect) do
			if value == signal then
				SelectLine(signal)
			end

		end

		for _, value in pairs(inputsNumpad) do
			if value == signal then
				numberEntry(signal)
			end

		end
	end	
end

function iBusModule.RouteVariant(signal, scriptRef, eK, routes, garage)
	if eK == encryptionKey then
		if signal == "With Timetable" then
			return "Feature not available"
		elseif signal == "Route Variant" then
			iBusModule.ChangePage("ChooseDirection", scriptRef, eK, routes, garage)
		end
	end
end

function iBusModule.ChooseDirection(chosen, scriptRef, eK, routes, garage)


	for _, route in pairs(routes) do
		if scriptRef.Parent.Screen.SurfaceGui.ChooseDirection.Route.Text == route.route then
			iBusModule.ChangePage("Home", scriptRef, eK, routes, garage)
			scriptRef.Parent.Screen.SurfaceGui.TrackingData:SetAttribute("loggedIn", true)
			scriptRef.Parent.Screen.SurfaceGui.TrackingData:SetAttribute("deadrunning", false)
			scriptRef:SetAttribute("curtailment", false)
			
			scriptRef.Parent.Screen.SurfaceGui.TrackingData:SetAttribute("nextStop", "")
			scriptRef.Parent.Screen.SurfaceGui.Home.Home.SOne.Text = ""
			scriptRef.Parent.Screen.SurfaceGui.Home.Home.STwo.Text = ""
			scriptRef.Parent.Screen.SurfaceGui.Home.Home.SThree.Text = ""
			scriptRef.Parent.Screen.SurfaceGui.Home.Home.SFour.Text = ""
			
			scriptRef.Parent.Screen.SurfaceGui.Home.Home.SOne:SetAttribute("soundId", 0)
			scriptRef.Parent.Screen.SurfaceGui.Home.Home.STwo:SetAttribute("soundId", 0)
			scriptRef.Parent.Screen.SurfaceGui.Home.Home.SThree:SetAttribute("soundId", 0)
			scriptRef.Parent.Screen.SurfaceGui.Home.Home.SFour:SetAttribute("soundId", 0)
			
			if chosen == "inbound" then
				scriptRef.Parent.Screen.SurfaceGui.TrackingData:SetAttribute("mainPAXAnnouncement", route.route.." to "..route.destinationIn)
				scriptRef.Parent.Screen.SurfaceGui.TrackingData:SetAttribute("inbound", true)
				iBusModule.UpdatePAXMain(scriptRef.Parent.Screen.SurfaceGui.TrackingData:GetAttribute("mainPAXAnnouncement"), encryptionKey, scriptRef)
				scriptRef.Parent.Screen.SurfaceGui.TrackingData.DriverData:SetAttribute("CurrentDestinationId", route.destinationInSoundId)
				scriptRef:SetAttribute("playingManualAnnouncement", false)

				scriptRef.Parent.Parent.AnnouncementBlock.AnnouncementHolder.SoundId = "rbxassetid://"..route.destinationInSoundId
				wait(0.5)
				scriptRef.Parent.Parent.AnnouncementBlock.AnnouncementHolder:Play()

				if route.stopsIn then
					scriptRef.Parent.Screen.SurfaceGui.TrackingData:SetAttribute("nextStop", route.stopsIn[1][1])
					scriptRef.Parent.Screen.SurfaceGui.Home.Home.SOne.Text = route.stopsIn[1][1]
					scriptRef.Parent.Screen.SurfaceGui.Home.Home.SOne:SetAttribute("soundId", route.stopsIn[1][2])
					scriptRef.Parent.Screen.SurfaceGui.Home.Home.STwo.Text = route.stopsIn[2][1]
					scriptRef.Parent.Screen.SurfaceGui.Home.Home.STwo:SetAttribute("soundId", route.stopsIn[2][2])
					scriptRef.Parent.Screen.SurfaceGui.Home.Home.SThree.Text = route.stopsIn[3][1]
					scriptRef.Parent.Screen.SurfaceGui.Home.Home.SThree:SetAttribute("soundId", route.stopsIn[3][2])
					scriptRef.Parent.Screen.SurfaceGui.Home.Home.SFour.Text = route.stopsIn[4][1]
					scriptRef.Parent.Screen.SurfaceGui.Home.Home.SFour:SetAttribute("soundId", route.stopsIn[4][2])
				end
			elseif chosen == "outbound" then
				scriptRef.Parent.Screen.SurfaceGui.TrackingData:SetAttribute("inbound", false)
				scriptRef.Parent.Screen.SurfaceGui.TrackingData:SetAttribute("mainPAXAnnouncement", route.route.." to "..route.destinationOut)
				iBusModule.UpdatePAXMain(scriptRef.Parent.Screen.SurfaceGui.TrackingData:GetAttribute("mainPAXAnnouncement"), encryptionKey, scriptRef)
				scriptRef.Parent.Screen.SurfaceGui.TrackingData.DriverData:SetAttribute("CurrentDestinationId", route.destinationOutSoundId)

				scriptRef.Parent.Parent.AnnouncementBlock.AnnouncementHolder.SoundId = "rbxassetid://"..route.destinationOutSoundId
				wait(1)
				scriptRef.Parent.Parent.AnnouncementBlock.AnnouncementHolder:Play()

				if route.stopsOut then
					scriptRef.Parent.Screen.SurfaceGui.TrackingData:SetAttribute("nextStop", route.stopsOut[1][1])
					scriptRef.Parent.Screen.SurfaceGui.Home.Home.SOne.Text = route.stopsOut[1][1]
					scriptRef.Parent.Screen.SurfaceGui.Home.Home.SOne:SetAttribute("soundId", route.stopsOut[1][2])
					scriptRef.Parent.Screen.SurfaceGui.Home.Home.STwo.Text = route.stopsOut[2][1]
					scriptRef.Parent.Screen.SurfaceGui.Home.Home.STwo:SetAttribute("soundId", route.stopsOut[2][2])
					scriptRef.Parent.Screen.SurfaceGui.Home.Home.SThree.Text = route.stopsOut[3][1]
					scriptRef.Parent.Screen.SurfaceGui.Home.Home.SThree:SetAttribute("soundId", route.stopsOut[3][2])
					scriptRef.Parent.Screen.SurfaceGui.Home.Home.SFour.Text = route.stopsOut[4][1]
					scriptRef.Parent.Screen.SurfaceGui.Home.Home.SFour:SetAttribute("soundId", route.stopsOut[4][2])
				end
			end
		end
	end
end

function iBusModule.ChangePage(desiredPage, scriptRef, eK, routes, garage)
	if eK == encryptionKey then
		for _, child in ipairs(scriptRef.Parent.Screen.SurfaceGui:GetChildren()) do
			if child:IsA("CanvasGroup") then
				if child.Name ~= "Background" and child.Visible == true then
					game:GetService("TweenService"):Create(child, TweenInfo.new(0.1, Enum.EasingStyle.Quad), {GroupTransparency = 1}):Play()
				end
			end
		end
		game:GetService("TweenService"):Create(scriptRef.Parent.Screen.SurfaceGui[desiredPage], TweenInfo.new(0.2, Enum.EasingStyle.Quad), {GroupTransparency = 0}):Play()
		scriptRef:SetAttribute("currentPage", desiredPage)
	end
end

function iBusModule.ToggleScreensaver(signal, scriptRef, eK)
	if eK == encryptionKey then
		if signal == "Opposite" then
			if scriptRef.Parent.Screen.SurfaceGui.Screensaver.GroupTransparency == 1 then
				scriptRef.Parent.Screen.SurfaceGui.Screensaver.Visible = true
				game:GetService("TweenService"):Create(scriptRef.Parent.Screen.SurfaceGui.Screensaver, TweenInfo.new(0.1, Enum.EasingStyle.Quad), {GroupTransparency = 0}):Play()
			elseif scriptRef.Parent.Screen.SurfaceGui.Screensaver.GroupTransparency == 0 then
				game:GetService("TweenService"):Create(scriptRef.Parent.Screen.SurfaceGui.Screensaver, TweenInfo.new(0.1, Enum.EasingStyle.Quad), {GroupTransparency = 1}):Play()
				wait(0.1)
				scriptRef.Parent.Screen.SurfaceGui.Screensaver.Visible = false
			end
		elseif signal == true then
			scriptRef.Parent.Screen.SurfaceGui.Screensaver.Visible = true
			game:GetService("TweenService"):Create(scriptRef.Parent.Screen.SurfaceGui.Screensaver, TweenInfo.new(0.1, Enum.EasingStyle.Quad), {GroupTransparency = 0}):Play()
		elseif signal == false then
			game:GetService("TweenService"):Create(scriptRef.Parent.Screen.SurfaceGui.Screensaver, TweenInfo.new(0.1, Enum.EasingStyle.Quad), {GroupTransparency = 1}):Play()
			wait(0.1)
			scriptRef.Parent.Screen.SurfaceGui.Screensaver.Visible = false
		end
	end
end

function iBusModule.Lighting(signal, scriptRef, eK)
	if eK == encryptionKey then
		local location = scriptRef.Parent.ButtonsMesh
		if signal == true then
			if not location:FindFirstChild("SurfaceAppearance") and location:FindFirstChild("Texture").Transparency ~= 0.9 then
				location:FindFirstChild("Texture").Transparency = 0.9
				local SurfApp = Instance.new("SurfaceAppearance")
				SurfApp.Parent = location
				SurfApp.AlphaMode = Enum.AlphaMode.Transparency
				SurfApp.ColorMap = "rbxassetid://17682326080"
				SurfApp.NormalMap = "rbxassetid://17668018079"
			end
		else
			location:FindFirstChild("SurfaceAppearance"):Destroy()
			location:FindFirstChild("Texture").Transparency = 1
		end
	end
end

function iBusModule.UpdatePAXMain(msg, eK, scriptRef)
	if eK == encryptionKey then
		for _, descendant in pairs(scriptRef.Parent.Parent:GetDescendants()) do
			if descendant.Name == "iBusPAX" then
				descendant.iBusUp.SGUI:SetAttribute("input", msg)
			end
			if descendant.Name == "iBusPAX_V4" then
				descendant.Display.SurfaceGui.Announcement:SetAttribute("input", msg)
			end
			if descendant.Name == "iBusPAX_New" then
				descendant.Display.SurfaceGui.Announcement.ManualAnnouncement:SetAttribute("input", msg)
			end
		end
	end
end

function iBusModule.UpdatePAXLower(msg, eK, scriptRef)
	if eK == encryptionKey then

		for _, descendant in pairs(scriptRef.Parent.Parent:GetDescendants()) do
			if descendant.Name == "iBusPAX" then
				descendant.iBusLow.SGUI:SetAttribute("input", msg)
			end
			if descendant.Name == "iBusPAX_V4" then
				descendant.Display.SurfaceGui.Feeder:SetAttribute("input", msg)
			end
		end
	end
end

function iBusModule.iBusExtraInfo()
	if iBusExtraInfo == "" then
		return nil
	else
		return iBusExtraInfo
	end
end

function iBusModule.ManualAnnouncements(signal, scriptRef, eK, manualAnnouncements, routes, garage)
	-- Sample manualAnnouncements table

	local manualAnnouncements = manualAnnouncements

	local totalPages = #manualAnnouncements

	local function updateGUI(pageNumber)
		local pageAnnouncements = manualAnnouncements[pageNumber]
		local announcementElements = {
			scriptRef.Parent.Screen.SurfaceGui.Announcements.Announcements.SOne,
			scriptRef.Parent.Screen.SurfaceGui.Announcements.Announcements.STwo,
			scriptRef.Parent.Screen.SurfaceGui.Announcements.Announcements.SThree,
			scriptRef.Parent.Screen.SurfaceGui.Announcements.Announcements.SFour
		}

		for i = 1, #announcementElements do
			if pageAnnouncements[i] then
				announcementElements[i].Text = pageAnnouncements[i][1]
				announcementElements[i]:SetAttribute("soundId", pageAnnouncements[i][2])
				announcementElements[i]:SetAttribute("driverDisplay", pageAnnouncements[i][1])
				announcementElements[i]:SetAttribute("passengerDisplay", pageAnnouncements[i][3])
			else
				announcementElements[i].Text = ""
				announcementElements[i]:SetAttribute("soundId", 0)
				announcementElements[i]:SetAttribute("driverDisplay", "")
				announcementElements[i]:SetAttribute("passengerDisplay", "")
			end
		end
		scriptRef.Parent.Screen.SurfaceGui.Announcements.BottomBar.Page.Text = scriptRef.Parent.Screen.SurfaceGui.Announcements.ScrollValue.Value .. "/" .. totalPages
	end

	if signal == "Initialise" then
		updateGUI(scriptRef.Parent.Screen.SurfaceGui.Announcements.ScrollValue.Value)
	elseif signal == "Up" then
		if scriptRef.Parent.Screen.SurfaceGui.Announcements.ScrollValue.Value > 1 then
			scriptRef.Parent.Screen.SurfaceGui.Announcements.ScrollValue.Value = scriptRef.Parent.Screen.SurfaceGui.Announcements.ScrollValue.Value - 1
			updateGUI(scriptRef.Parent.Screen.SurfaceGui.Announcements.ScrollValue.Value)
		end
	elseif signal == "Down" then
		if scriptRef.Parent.Screen.SurfaceGui.Announcements.ScrollValue.Value < totalPages then
			scriptRef.Parent.Screen.SurfaceGui.Announcements.ScrollValue.Value = scriptRef.Parent.Screen.SurfaceGui.Announcements.ScrollValue.Value + 1
			updateGUI(scriptRef.Parent.Screen.SurfaceGui.Announcements.ScrollValue.Value)
		end
	elseif signal == "SideOne" then
		iBusModule.UpdatePAXMain(scriptRef.Parent.Screen.SurfaceGui.Announcements.Announcements.SOne:GetAttribute("passengerDisplay"), eK, scriptRef)
		iBusModule.ChangePage("Home", scriptRef, eK, routes, garage)
		scriptRef.Parent.Parent.AnnouncementBlock.AnnouncementHolder.SoundId = "rbxassetid://"..scriptRef.Parent.Screen.SurfaceGui.Announcements.Announcements.SOne:GetAttribute("soundId")
		scriptRef.Parent.Parent.AnnouncementBlock.AnnouncementHolder:Stop()
		wait(0.5)
		scriptRef:SetAttribute("playingManualAnnouncement", true)
		scriptRef.Parent.Parent.AnnouncementBlock.AnnouncementHolder:Play()
	elseif signal == "SideTwo" then
		iBusModule.UpdatePAXMain(scriptRef.Parent.Screen.SurfaceGui.Announcements.Announcements.STwo:GetAttribute("passengerDisplay"), eK, scriptRef)
		iBusModule.ChangePage("Home", scriptRef, eK, routes, garage)
		scriptRef.Parent.Parent.AnnouncementBlock.AnnouncementHolder.SoundId = "rbxassetid://"..scriptRef.Parent.Screen.SurfaceGui.Announcements.Announcements.STwo:GetAttribute("soundId")
		scriptRef.Parent.Parent.AnnouncementBlock.AnnouncementHolder:Stop()
		wait(0.5)
		scriptRef:SetAttribute("playingManualAnnouncement", true)
		scriptRef.Parent.Parent.AnnouncementBlock.AnnouncementHolder:Play()
	elseif signal == "SideThree" then
		iBusModule.UpdatePAXMain(scriptRef.Parent.Screen.SurfaceGui.Announcements.Announcements.SThree:GetAttribute("passengerDisplay"), eK, scriptRef)
		iBusModule.ChangePage("Home", scriptRef, eK, routes, garage)
		scriptRef.Parent.Parent.AnnouncementBlock.AnnouncementHolder.SoundId = "rbxassetid://"..scriptRef.Parent.Screen.SurfaceGui.Announcements.Announcements.SThree:GetAttribute("soundId")
		scriptRef.Parent.Parent.AnnouncementBlock.AnnouncementHolder:Stop()
		wait(0.5)
		scriptRef:SetAttribute("playingManualAnnouncement", true)
		scriptRef.Parent.Parent.AnnouncementBlock.AnnouncementHolder:Play()
	elseif signal == "SideFour" then
		iBusModule.UpdatePAXMain(scriptRef.Parent.Screen.SurfaceGui.Announcements.Announcements.SFour:GetAttribute("passengerDisplay"), eK, scriptRef)
		iBusModule.ChangePage("Home", scriptRef, eK, routes, garage)
		scriptRef.Parent.Parent.AnnouncementBlock.AnnouncementHolder.SoundId = "rbxassetid://"..scriptRef.Parent.Screen.SurfaceGui.Announcements.Announcements.SFour:GetAttribute("soundId")
		scriptRef.Parent.Parent.AnnouncementBlock.AnnouncementHolder:Stop()
		wait(0.5)
		scriptRef:SetAttribute("playingManualAnnouncement", true)
		scriptRef.Parent.Parent.AnnouncementBlock.AnnouncementHolder:Play()
	end
end

function iBusModule.CurtailmentsList(signal, scriptRef, eK, routes, garage)
	-- Sample manualAnnouncements table
	local curtailmentsList = {}
	local curtailmentStops = {}
	
	local function splitTable(originalTable, maxValues)
		local result = {}
		local currentSubTable = {}

		for i, value in ipairs(originalTable) do
			table.insert(currentSubTable, value)
			if #currentSubTable == maxValues then
				table.insert(result, currentSubTable)
				currentSubTable = {}
			end
		end

		if #currentSubTable > 0 then
			table.insert(result, currentSubTable)
		end

		return result
	end
	local route = {}
	for _, firstSelection in ipairs(routes) do
		if firstSelection.route.." to "..firstSelection.destinationIn == scriptRef.Parent.Screen.SurfaceGui.TrackingData:GetAttribute("mainPAXAnnouncement") then
			route = firstSelection
			for _, secondSelection in ipairs(firstSelection.curtailments.inbound) do
				table.insert(curtailmentsList, secondSelection)
			end
		elseif firstSelection.route.." to "..firstSelection.destinationOut == scriptRef.Parent.Screen.SurfaceGui.TrackingData:GetAttribute("mainPAXAnnouncement") then
				route = firstSelection
				for _, secondSelection in ipairs(firstSelection.curtailments.outbound) do
					table.insert(curtailmentsList, secondSelection)
				end
			
		end
	end
	local splitCurtailments = splitTable(curtailmentsList, 4)
	local totalPages = #splitCurtailments

	local function updateGUI(pageNumber)
		local pageAnnouncements = splitCurtailments[pageNumber]
		local announcementElements = {
			scriptRef.Parent.Screen.SurfaceGui.CurtailmentsList.CurtailmentsList.SOne,
			scriptRef.Parent.Screen.SurfaceGui.CurtailmentsList.CurtailmentsList.STwo,
			scriptRef.Parent.Screen.SurfaceGui.CurtailmentsList.CurtailmentsList.SThree,
			scriptRef.Parent.Screen.SurfaceGui.CurtailmentsList.CurtailmentsList.SFour
		}

		for i = 1, #announcementElements do
			if pageAnnouncements[i] then
				announcementElements[i].Text = pageAnnouncements[i].curtailmentName
				announcementElements[i]:SetAttribute("destination", pageAnnouncements[i].curtailmentName)
				announcementElements[i]:SetAttribute("soundId", pageAnnouncements[i].soundId)
				announcementElements[i]:SetAttribute("numberOfStops", pageAnnouncements[i].numberOfStopsServing)
			else
				announcementElements[i].Text = ""
				announcementElements[i]:SetAttribute("destination", "")
				announcementElements[i]:SetAttribute("soundId", 0)
				announcementElements[i]:SetAttribute("numberOfStops", 0)
			end
		end
		scriptRef.Parent.Screen.SurfaceGui.CurtailmentsList.BottomBar.Page.Text = scriptRef.Parent.Screen.SurfaceGui.CurtailmentsList.ScrollValue.Value .. "/" .. totalPages
	end
	
	local function submitCurtailment(chosenCurtailment, soundId, numberOfStops)
		iBusModule.ChangePage("Home", scriptRef, eK, routes, garage)
		scriptRef.Parent.Screen.SurfaceGui.TrackingData:SetAttribute("loggedIn", true)
		scriptRef.Parent.Screen.SurfaceGui.TrackingData:SetAttribute("deadrunning", false)
		scriptRef.Parent.Screen.SurfaceGui.TrackingData:SetAttribute("mainPAXAnnouncement", scriptRef.Parent.Screen.SurfaceGui.TrackingData:GetAttribute("route").." to "..chosenCurtailment)
		scriptRef:SetAttribute("currentCurtailment", chosenCurtailment)
		scriptRef:SetAttribute("curtailment", true)
		
		iBusModule.UpdatePAXMain(scriptRef.Parent.Screen.SurfaceGui.TrackingData:GetAttribute("mainPAXAnnouncement"), encryptionKey, scriptRef)
		scriptRef.Parent.Screen.SurfaceGui.TrackingData.DriverData:SetAttribute("CurrentDestinationId", soundId)
		scriptRef:SetAttribute("playingManualAnnouncement", false)

		scriptRef.Parent.Parent.AnnouncementBlock.AnnouncementHolder.SoundId = "rbxassetid://"..soundId
		wait(0.5)
		scriptRef.Parent.Parent.AnnouncementBlock.AnnouncementHolder:Play()
		
		if scriptRef.Parent.Screen.SurfaceGui.TrackingData:GetAttribute("inbound") == true then
			table.clear(curtailmentStops)
			for i = 1, numberOfStops do
				table.insert(curtailmentStops, route.stopsIn[i])
			end
		else
			table.clear(curtailmentStops)
			for i = 1, numberOfStops do
				table.insert(curtailmentStops, route.stopsOut[i])
			end
		end
		
		scriptRef.Parent.Screen.SurfaceGui.TrackingData:SetAttribute("nextStop", "")
		scriptRef.Parent.Screen.SurfaceGui.Home.Home.SOne.Text = ""
		scriptRef.Parent.Screen.SurfaceGui.Home.Home.STwo.Text = ""
		scriptRef.Parent.Screen.SurfaceGui.Home.Home.SThree.Text = ""
		scriptRef.Parent.Screen.SurfaceGui.Home.Home.SFour.Text = ""
		
		scriptRef.Parent.Screen.SurfaceGui.Home.Home.SOne:SetAttribute("soundId", 0)
		scriptRef.Parent.Screen.SurfaceGui.Home.Home.STwo:SetAttribute("soundId", 0)
		scriptRef.Parent.Screen.SurfaceGui.Home.Home.SThree:SetAttribute("soundId", 0)
		scriptRef.Parent.Screen.SurfaceGui.Home.Home.SFour:SetAttribute("soundId", 0)

		if curtailmentStops then
			scriptRef.Parent.Screen.SurfaceGui.TrackingData:SetAttribute("nextStop", curtailmentStops[1][1])
			scriptRef.Parent.Screen.SurfaceGui.Home.Home.SOne.Text = curtailmentStops[1][1]
			scriptRef.Parent.Screen.SurfaceGui.Home.Home.SOne:SetAttribute("soundId", curtailmentStops[1][2])
			scriptRef.Parent.Screen.SurfaceGui.Home.Home.STwo.Text = curtailmentStops[2][1]
			scriptRef.Parent.Screen.SurfaceGui.Home.Home.STwo:SetAttribute("soundId", curtailmentStops[2][2])
			scriptRef.Parent.Screen.SurfaceGui.Home.Home.SThree.Text = curtailmentStops[3][1]
			scriptRef.Parent.Screen.SurfaceGui.Home.Home.SThree:SetAttribute("soundId", curtailmentStops[3][2])
			scriptRef.Parent.Screen.SurfaceGui.Home.Home.SFour.Text = curtailmentStops[4][1]
			scriptRef.Parent.Screen.SurfaceGui.Home.Home.SFour:SetAttribute("soundId", curtailmentStops[4][2])
		end
	end

	if signal == "Initialise" then
		updateGUI(scriptRef.Parent.Screen.SurfaceGui.CurtailmentsList.ScrollValue.Value)
	elseif signal == "Up" then
		if scriptRef.Parent.Screen.SurfaceGui.CurtailmentsList.ScrollValue.Value > 1 then
			scriptRef.Parent.Screen.SurfaceGui.CurtailmentsList.ScrollValue.Value = scriptRef.Parent.Screen.SurfaceGui.CurtailmentsList.ScrollValue.Value - 1
			updateGUI(scriptRef.Parent.Screen.SurfaceGui.CurtailmentsList.ScrollValue.Value)
		end
	elseif signal == "Down" then
		if scriptRef.Parent.Screen.SurfaceGui.CurtailmentsList.ScrollValue.Value < totalPages then
			scriptRef.Parent.Screen.SurfaceGui.CurtailmentsList.ScrollValue.Value = scriptRef.Parent.Screen.SurfaceGui.CurtailmentsList.ScrollValue.Value + 1
			updateGUI(scriptRef.Parent.Screen.SurfaceGui.CurtailmentsList.ScrollValue.Value)
		end
	elseif signal == "SideOne" then
		submitCurtailment(scriptRef.Parent.Screen.SurfaceGui.CurtailmentsList.CurtailmentsList.SOne:GetAttribute("destination"), scriptRef.Parent.Screen.SurfaceGui.CurtailmentsList.CurtailmentsList.SOne:GetAttribute("soundId"), scriptRef.Parent.Screen.SurfaceGui.CurtailmentsList.CurtailmentsList.SOne:GetAttribute("numberOfStops"))
	elseif signal == "SideTwo" then
		submitCurtailment(scriptRef.Parent.Screen.SurfaceGui.CurtailmentsList.CurtailmentsList.STwo:GetAttribute("destination"), scriptRef.Parent.Screen.SurfaceGui.CurtailmentsList.CurtailmentsList.STwo:GetAttribute("soundId"), scriptRef.Parent.Screen.SurfaceGui.CurtailmentsList.CurtailmentsList.SOne:GetAttribute("numberOfStops"))
	elseif signal == "SideThree" then
		submitCurtailment(scriptRef.Parent.Screen.SurfaceGui.CurtailmentsList.CurtailmentsList.SThree:GetAttribute("destination"), scriptRef.Parent.Screen.SurfaceGui.CurtailmentsList.CurtailmentsList.SThree:GetAttribute("soundId"), scriptRef.Parent.Screen.SurfaceGui.CurtailmentsList.CurtailmentsList.SOne:GetAttribute("numberOfStops"))
	elseif signal == "SideFour" then
		submitCurtailment(scriptRef.Parent.Screen.SurfaceGui.CurtailmentsList.CurtailmentsList.SFour:GetAttribute("destination"), scriptRef.Parent.Screen.SurfaceGui.CurtailmentsList.CurtailmentsList.SFour:GetAttribute("soundId"), scriptRef.Parent.Screen.SurfaceGui.CurtailmentsList.CurtailmentsList.SOne:GetAttribute("numberOfStops"))
	end
end

function iBusModule.Home(signal, scriptRef, eK)
	if signal == "SideOne" then
		local soundId = scriptRef.Parent.Screen.SurfaceGui.Home.Home.SOne:GetAttribute("soundId")
		iBusModule.UpdatePAXMain(scriptRef.Parent.Screen.SurfaceGui.Home.Home.SOne.Text, encryptionKey, scriptRef)
		scriptRef.Parent.Screen.SurfaceGui.TrackingData:SetAttribute("nextStop", scriptRef.Parent.Screen.SurfaceGui.Home.Home.SOne.Text)
		wait(0.5)
		scriptRef.Parent.Parent.AnnouncementBlock.AnnouncementHolder.SoundId = "rbxassetid://"..soundId
		scriptRef.Parent.Parent.AnnouncementBlock.AnnouncementHolder:Play()
	elseif signal == "SideTwo" then
		local soundId = scriptRef.Parent.Screen.SurfaceGui.Home.Home.STwo:GetAttribute("soundId")
		iBusModule.UpdatePAXMain(scriptRef.Parent.Screen.SurfaceGui.Home.Home.STwo.Text, encryptionKey, scriptRef)
		scriptRef.Parent.Screen.SurfaceGui.TrackingData:SetAttribute("nextStop", scriptRef.Parent.Screen.SurfaceGui.Home.Home.STwo.Text)
		wait(0.5)
		scriptRef.Parent.Parent.AnnouncementBlock.AnnouncementHolder.SoundId = "rbxassetid://"..soundId
		scriptRef.Parent.Parent.AnnouncementBlock.AnnouncementHolder:Play()
	elseif signal == "SideThree" then
		local soundId = scriptRef.Parent.Screen.SurfaceGui.Home.Home.SThree:GetAttribute("soundId")
		iBusModule.UpdatePAXMain(scriptRef.Parent.Screen.SurfaceGui.Home.Home.SThree.Text, encryptionKey, scriptRef)
		scriptRef.Parent.Screen.SurfaceGui.TrackingData:SetAttribute("nextStop", scriptRef.Parent.Screen.SurfaceGui.Home.Home.SThree.Text)
		wait(0.5)
		scriptRef.Parent.Parent.AnnouncementBlock.AnnouncementHolder.SoundId = "rbxassetid://"..soundId
		scriptRef.Parent.Parent.AnnouncementBlock.AnnouncementHolder:Play()
	elseif signal == "SideFour" then
		local soundId = scriptRef.Parent.Screen.SurfaceGui.Home.Home.SFour:GetAttribute("soundId")
		iBusModule.UpdatePAXMain(scriptRef.Parent.Screen.SurfaceGui.Home.Home.SFour.Text, encryptionKey, scriptRef)
		scriptRef.Parent.Screen.SurfaceGui.TrackingData:SetAttribute("nextStop", scriptRef.Parent.Screen.SurfaceGui.Home.Home.SFour.Text)
		wait(0.5)
		scriptRef.Parent.Parent.AnnouncementBlock.AnnouncementHolder.SoundId = "rbxassetid://"..soundId
		scriptRef.Parent.Parent.AnnouncementBlock.AnnouncementHolder:Play()
	end
end

function iBusModule.ContrastControl(signal, scriptRef, eK)
	if eK == encryptionKey then
		if signal == "Up" then
			scriptRef.Parent.Screen.SurfaceGui.Configuration.ContrastAdjustment.Value += 0.2
			scriptRef.Parent.Screen.SurfaceGui.Brightness = scriptRef.Parent.Screen.SurfaceGui.Configuration.ContrastAdjustment.Value
		end
		if signal == "Down" then
			scriptRef.Parent.Screen.SurfaceGui.Configuration.ContrastAdjustment.Value -= 0.2
			scriptRef.Parent.Screen.SurfaceGui.Brightness = scriptRef.Parent.Screen.SurfaceGui.Configuration.ContrastAdjustment.Value
		end
	end
end

function iBusModule.NextStopAnnouncements(scriptRef, eK, routes, garage)
	if eK == encryptionKey then
		local curtailmentStops = {}
		local diversionTests = {}
		
		local function isOnDiversion(part, route)
			local partPosition = part.Position
			table.clear(diversionTests)
			if scriptRef:GetAttribute("curtailment") == true then
				
				if scriptRef.Parent.Screen.SurfaceGui.TrackingData:GetAttribute("inbound") == true then
					for _, stop in ipairs(route.curtailments.inbound) do
						if stop.curtailmentName == scriptRef:GetAttribute("currentCurtailment") then
							table.clear(curtailmentStops)
							table.clear(diversionTests)
							for i = 1, stop.numberOfStopsServing do
								table.insert(curtailmentStops, route.stopsIn[i])
							end
							
							local location = curtailmentStops[3]
							local stopRadius = curtailmentStops[5]
							local dist = (partPosition - location).magnitude
							if dist > (stopRadius + diversionRadius) then
								table.insert(diversionTests, true)
							else
								table.insert(diversionTests, false)
							end

							for _, trueResult in ipairs(diversionTests) do
								if trueResult == false then
									return false
								end
							end
							return true
						end
					end
				else
					for _, stop in ipairs(route.curtailments.outbound) do
						if stop.curtailmentName == scriptRef:GetAttribute("currentCurtailment") then
							table.clear(curtailmentStops)
							for i = 1, stop.numberOfStopsServing do
								table.insert(curtailmentStops, route.stopsOut[i])
							end
							local location = curtailmentStops[3]
							local stopRadius = curtailmentStops[5]
							local dist = (partPosition - location).magnitude
							if dist > (stopRadius + diversionRadius) then
								table.insert(diversionTests, true)
							else
								table.insert(diversionTests, false)
							end

							for _, trueResult in ipairs(diversionTests) do
								if trueResult == false then
									return false
								end
							end
							return true
						end
					end
				end
			elseif scriptRef.Parent.Screen.SurfaceGui.TrackingData:GetAttribute("route") == route.route then
				if scriptRef.Parent.Screen.SurfaceGui.TrackingData:GetAttribute("inbound") == true then
					for _, stop in ipairs(route.stopsIn) do
						local location = stop[3]
						local stopRadius = stop[5]
						local dist = (partPosition - location).magnitude
						if dist > (stopRadius + diversionRadius) then
							table.insert(diversionTests, true)
						else
							table.insert(diversionTests, false)
						end
						
						for _, trueResult in ipairs(diversionTests) do
							if trueResult == false then
								return false
							end
						end
						return true
					end
				else
					for _, stop in ipairs(route.stopsOut) do
						local location = stop[3]
						local stopRadius = stop[5]
						local dist = (partPosition - location).magnitude
						if dist > (stopRadius + diversionRadius) then
							table.insert(diversionTests, true)
						else
							table.insert(diversionTests, false)
						end

						for _, trueResult in ipairs(diversionTests) do
							if trueResult == false then
								return false
							end
						end
						return true
					end
				end
			end
		end

		local function isWithinRadius(part, route)
			local partPosition = part.Position
			if scriptRef:GetAttribute("curtailment") == true then
				if scriptRef.Parent.Screen.SurfaceGui.TrackingData:GetAttribute("inbound") == true then
					for _, stop in ipairs(route.curtailments.inbound) do
						if stop.curtailmentName == scriptRef:GetAttribute("currentCurtailment") then
							table.clear(curtailmentStops)
							for i = 1, stop.numberOfStopsServing do
								table.insert(curtailmentStops, route.stopsIn[i])
							end
							local location = curtailmentStops[3]
							local stopRadius = curtailmentStops[5]
							local stopName = curtailmentStops[1]
							local soundId = curtailmentStops[2]
							local soundDelay = curtailmentStops[4]
							local dist = (partPosition - location).magnitude
							if dist <= stopRadius then
								return location, stopRadius, stopName, soundId, soundDelay, curtailmentStops
							end
						end
					end
				else
					for _, stop in ipairs(route.curtailments.outbound) do
						if stop.curtailmentName == scriptRef:GetAttribute("currentCurtailment") then
							table.clear(curtailmentStops)
							for i = 1, stop.numberOfStopsServing do
								table.insert(curtailmentStops, route.stopsOut[i])
							end
							local location = curtailmentStops[3]
							local stopRadius = curtailmentStops[5]
							local stopName = curtailmentStops[1]
							local soundId = curtailmentStops[2]
							local soundDelay = curtailmentStops[4]
							local dist = (partPosition - location).magnitude
							if dist <= stopRadius then
								return location, stopRadius, stopName, soundId, soundDelay, curtailmentStops
							end
						end
					end
				end
			elseif scriptRef.Parent.Screen.SurfaceGui.TrackingData:GetAttribute("route") == route.route then
				if scriptRef.Parent.Screen.SurfaceGui.TrackingData:GetAttribute("inbound") == true then
					for _, stop in ipairs(route.stopsIn) do
						local location = stop[3]
						local stopRadius = stop[5]
						local stopName = stop[1]
						local soundId = stop[2]
						local soundDelay = stop[4]
						local dist = (partPosition - location).magnitude
						if dist <= stopRadius then
							return location, stopRadius, stopName, soundId, soundDelay, stop
						end
					end
				else
					for _, stop in ipairs(route.stopsOut) do
						local location = stop[3]
						local stopRadius = stop[5]
						local stopName = stop[1]
						local soundId = stop[2]
						local soundDelay = stop[4]
						local dist = (partPosition - location).magnitude
						if dist <= stopRadius then
							return location, stopRadius, stopName, soundId, soundDelay, stop
						
						end
					end
				end
			end
			return nil, nil, nil, nil, nil, nil
		end


		local part = scriptRef.Parent.MainBody
		local db = false

		game:GetService("RunService").Stepped:Connect(function()
			scriptRef.Parent.Screen.SurfaceGui.TrackingData:SetAttribute("locationData", scriptRef.Parent.MainBody.Position)
			if scriptRef.Parent.Screen.SurfaceGui.TrackingData:GetAttribute("loggedIn") == true then
				for _, route in ipairs(routes) do
					local location, stopRadius, stopName, soundId, soundDelay, stop = isWithinRadius(part, route)
					
					--if isOnDiversion(part, route) == true then
					--	db = true
					--	wait(10)
					--	if isOnDiversion(part, route) == true then
					--		iBusModule.UpdatePAXMain("*", encryptionKey, scriptRef)
					--		scriptRef.Parent.Screen.SurfaceGui.TrackingData:SetAttribute("nextStop", "*")
					--		scriptRef:SetAttribute("playingManualAnnouncement", false)
					--		db = false
					--	else
					--		db = false
					--	end
					if location then
						if not db then
							local inOut = ""
							if scriptRef:GetAttribute("curtailment") == true then
								inOut = curtailmentStops
							elseif scriptRef.Parent.Screen.SurfaceGui.TrackingData:GetAttribute("inbound") == true then
								inOut = route.stopsIn
							else
								inOut = route.stopsOut
							end
							print(inOut)
							db = true

							iBusModule.UpdatePAXMain(stopName, encryptionKey, scriptRef)

							local startIndex = nil
							for i, value in ipairs(inOut) do
								if value == stop then
									startIndex = i
									break
								end
							end
							if startIndex then
								local nextThreeStops = {
									inOut[startIndex + 1],
									inOut[startIndex + 2],
									inOut[startIndex + 3]
								}
								-- Update text fields with conditional checks
								scriptRef.Parent.Screen.SurfaceGui.Home.Home.SOne.Text = stopName
								scriptRef.Parent.Screen.SurfaceGui.Home.Home.SOne:SetAttribute("soundId", soundId)
								scriptRef.Parent.Screen.SurfaceGui.TrackingData:SetAttribute("nextStop", stopName)
								scriptRef:SetAttribute("playingManualAnnouncement", false)

								-- Check and set STwo.Text
								if nextThreeStops[1] then
									scriptRef.Parent.Screen.SurfaceGui.Home.Home.STwo.Text = nextThreeStops[1][1]
									scriptRef.Parent.Screen.SurfaceGui.Home.Home.STwo:SetAttribute("soundId", nextThreeStops[1][2])
								else
									scriptRef.Parent.Screen.SurfaceGui.Home.Home.STwo.Text = ""
									scriptRef.Parent.Screen.SurfaceGui.Home.Home.STwo:SetAttribute("soundId", 0)
								end

								-- Check and set SThree.Text
								if nextThreeStops[2] then
									scriptRef.Parent.Screen.SurfaceGui.Home.Home.SThree.Text = nextThreeStops[2][1]
									scriptRef.Parent.Screen.SurfaceGui.Home.Home.SThree:SetAttribute("soundId", nextThreeStops[2][2])
								else
									scriptRef.Parent.Screen.SurfaceGui.Home.Home.SThree.Text = ""
									scriptRef.Parent.Screen.SurfaceGui.Home.Home.SThree:SetAttribute("soundId", 0)
								end

								-- Check and set SFour.Text
								if nextThreeStops[3] then
									scriptRef.Parent.Screen.SurfaceGui.Home.Home.SFour.Text = nextThreeStops[3][1]
									scriptRef.Parent.Screen.SurfaceGui.Home.Home.SFour:SetAttribute("soundId", nextThreeStops[3][2])
								else
									scriptRef.Parent.Screen.SurfaceGui.Home.Home.SFour.Text = ""
									scriptRef.Parent.Screen.SurfaceGui.Home.Home.SFour:SetAttribute("soundId", 0)
								end
							end

							wait(soundDelay)
							scriptRef.Parent.Parent.AnnouncementBlock.AnnouncementHolder.SoundId = "rbxassetid://"..soundId
							scriptRef.Parent.Parent.AnnouncementBlock.AnnouncementHolder:Play()
							wait(scriptRef.Parent.Parent.AnnouncementBlock.AnnouncementHolder.TimeLength)
							local lastStop = #inOut
							if (lastStop) and stopName == inOut[lastStop][1] then
								scriptRef.Parent.Screen.SurfaceGui.TrackingData:SetAttribute("loggedIn", false)
							end
						end
						return
					end
			end
			db = false
			end
		end)

	end
end

function iBusModule.FrontDoorTrigger(scriptRef, eK)
	if eK == encryptionKey and scriptRef.Parent.Screen.SurfaceGui.TrackingData.DriverData:GetAttribute("CurrentDestinationId") ~= 0 then
		wait(6)
		if scriptRef:GetAttribute("Playing") == false then
			iBusModule.UpdatePAXMain(scriptRef.Parent.Screen.SurfaceGui.TrackingData:GetAttribute("mainPAXAnnouncement"), encryptionKey, scriptRef)
			wait(4)
			scriptRef.Parent.Parent.AnnouncementBlock.AnnouncementHolder.SoundId = "rbxassetid://"..scriptRef.Parent.Screen.SurfaceGui.TrackingData.DriverData:GetAttribute("CurrentDestinationId")
			scriptRef.Parent.Parent.AnnouncementBlock.AnnouncementHolder:Play()
		end
	end
end

function iBusModule.RearDoorTrigger(scriptRef, eK)
	if eK == encryptionKey and scriptRef.Parent.Screen.SurfaceGui.TrackingData.DriverData:GetAttribute("CurrentDestinationId") ~= 0 then
		wait(4)
		if scriptRef:GetAttribute("Playing") == false then
			if scriptRef.Parent.Screen.SurfaceGui.TrackingData:GetAttribute("loggedIn") == false then
				iBusModule.UpdatePAXMain("Bus terminates here", encryptionKey, scriptRef)
			else
				iBusModule.UpdatePAXMain(scriptRef.Parent.Screen.SurfaceGui.TrackingData:GetAttribute("mainPAXAnnouncement"), encryptionKey, scriptRef)
				wait(5)
				scriptRef.Parent.Parent.AnnouncementBlock.AnnouncementHolder.SoundId = "rbxassetid://"..scriptRef.Parent.Screen.SurfaceGui.TrackingData.DriverData:GetAttribute("CurrentDestinationId")
				scriptRef.Parent.Parent.AnnouncementBlock.AnnouncementHolder:Play()
			end
		end
	end
end

function iBusModule.DotMatrix(scriptRef)

	
	
	local s = [[info face="LondoniBusScreenFont" size=72 bold=0 italic=0 charset="" unicode=1 stretchH=100 smooth=1 aa=1 padding=1,1,1,1 spacing=1,1
common lineHeight=72 base=72 scaleW=432 scaleH=431 pages=1 packed=0
page id=0 file="LondoniBusScreenFont.png"
chars count=91
char id=32 x=0 y=0 width=0 height=0 xoffset=0 yoffset=0 xadvance=16 page=0 chnl=15
char id=33 x=418 y=75 width=10 height=58 xoffset=-1 yoffset=15 xadvance=16 page=0 chnl=15
char id=34 x=0 y=413 width=34 height=18 xoffset=-9 yoffset=23 xadvance=32 page=0 chnl=15
char id=35 x=140 y=311 width=50 height=50 xoffset=-1 yoffset=23 xadvance=56 page=0 chnl=15
char id=36 x=0 y=0 width=42 height=74 xoffset=-1 yoffset=-1 xadvance=48 page=0 chnl=15
char id=37 x=113 y=0 width=66 height=66 xoffset=-1 yoffset=7 xadvance=72 page=0 chnl=15
char id=38 x=382 y=134 width=50 height=58 xoffset=-1 yoffset=15 xadvance=56 page=0 chnl=15
char id=39 x=35 y=413 width=18 height=18 xoffset=-1 yoffset=15 xadvance=24 page=0 chnl=15
char id=40 x=301 y=252 width=18 height=58 xoffset=-1 yoffset=15 xadvance=24 page=0 chnl=15
char id=41 x=320 y=252 width=18 height=58 xoffset=-1 yoffset=15 xadvance=24 page=0 chnl=15
char id=42 x=269 y=370 width=26 height=34 xoffset=-1 yoffset=23 xadvance=32 page=0 chnl=15
char id=43 x=307 y=370 width=26 height=26 xoffset=-1 yoffset=31 xadvance=32 page=0 chnl=15
char id=44 x=361 y=370 width=18 height=26 xoffset=-9 yoffset=63 xadvance=16 page=0 chnl=15
char id=45 x=97 y=413 width=26 height=10 xoffset=-1 yoffset=39 xadvance=32 page=0 chnl=15
char id=46 x=124 y=413 width=10 height=10 xoffset=-1 yoffset=63 xadvance=16 page=0 chnl=15
char id=47 x=180 y=0 width=34 height=66 xoffset=-1 yoffset=15 xadvance=40 page=0 chnl=15
char id=48 x=215 y=0 width=34 height=58 xoffset=-1 yoffset=15 xadvance=40 page=0 chnl=15
char id=49 x=250 y=0 width=26 height=58 xoffset=-1 yoffset=15 xadvance=32 page=0 chnl=15
char id=50 x=277 y=0 width=34 height=58 xoffset=-1 yoffset=15 xadvance=40 page=0 chnl=15
char id=51 x=312 y=0 width=34 height=58 xoffset=-1 yoffset=15 xadvance=40 page=0 chnl=15
char id=52 x=347 y=0 width=42 height=58 xoffset=-1 yoffset=15 xadvance=48 page=0 chnl=15
char id=53 x=0 y=75 width=34 height=58 xoffset=-1 yoffset=15 xadvance=40 page=0 chnl=15
char id=54 x=35 y=75 width=34 height=58 xoffset=-1 yoffset=15 xadvance=40 page=0 chnl=15
char id=55 x=70 y=75 width=34 height=58 xoffset=-1 yoffset=15 xadvance=40 page=0 chnl=15
char id=56 x=105 y=75 width=34 height=58 xoffset=-1 yoffset=15 xadvance=40 page=0 chnl=15
char id=57 x=140 y=75 width=34 height=58 xoffset=-1 yoffset=15 xadvance=40 page=0 chnl=15
char id=58 x=296 y=370 width=10 height=26 xoffset=-1 yoffset=39 xadvance=16 page=0 chnl=15
char id=59 x=409 y=311 width=18 height=42 xoffset=-1 yoffset=39 xadvance=24 page=0 chnl=15
char id=61 x=334 y=370 width=26 height=26 xoffset=-1 yoffset=31 xadvance=32 page=0 chnl=15
char id=63 x=398 y=193 width=34 height=58 xoffset=-1 yoffset=15 xadvance=40 page=0 chnl=15
char id=64 x=89 y=311 width=50 height=50 xoffset=-1 yoffset=23 xadvance=56 page=0 chnl=15
char id=65 x=390 y=0 width=42 height=58 xoffset=-1 yoffset=15 xadvance=48 page=0 chnl=15
char id=66 x=132 y=134 width=42 height=58 xoffset=-1 yoffset=15 xadvance=48 page=0 chnl=15
char id=67 x=175 y=134 width=42 height=58 xoffset=-1 yoffset=15 xadvance=48 page=0 chnl=15
char id=68 x=218 y=134 width=42 height=58 xoffset=-1 yoffset=15 xadvance=48 page=0 chnl=15
char id=69 x=261 y=134 width=34 height=58 xoffset=-1 yoffset=15 xadvance=40 page=0 chnl=15
char id=70 x=296 y=134 width=42 height=58 xoffset=-1 yoffset=15 xadvance=48 page=0 chnl=15
char id=71 x=339 y=134 width=42 height=58 xoffset=-1 yoffset=15 xadvance=48 page=0 chnl=15
char id=72 x=0 y=193 width=42 height=58 xoffset=-1 yoffset=15 xadvance=48 page=0 chnl=15
char id=73 x=407 y=75 width=10 height=58 xoffset=-1 yoffset=15 xadvance=16 page=0 chnl=15
char id=74 x=43 y=193 width=26 height=58 xoffset=-1 yoffset=15 xadvance=32 page=0 chnl=15
char id=75 x=70 y=193 width=42 height=58 xoffset=-1 yoffset=15 xadvance=48 page=0 chnl=15
char id=76 x=113 y=193 width=34 height=58 xoffset=-1 yoffset=15 xadvance=40 page=0 chnl=15
char id=77 x=148 y=193 width=42 height=58 xoffset=-1 yoffset=15 xadvance=48 page=0 chnl=15
char id=78 x=191 y=193 width=42 height=58 xoffset=-1 yoffset=15 xadvance=48 page=0 chnl=15
char id=79 x=234 y=193 width=42 height=58 xoffset=-1 yoffset=15 xadvance=48 page=0 chnl=15
char id=80 x=277 y=193 width=42 height=58 xoffset=-1 yoffset=15 xadvance=48 page=0 chnl=15
char id=81 x=62 y=0 width=50 height=66 xoffset=-1 yoffset=15 xadvance=56 page=0 chnl=15
char id=82 x=320 y=193 width=42 height=58 xoffset=-1 yoffset=15 xadvance=48 page=0 chnl=15
char id=83 x=363 y=193 width=34 height=58 xoffset=-1 yoffset=15 xadvance=40 page=0 chnl=15
char id=84 x=0 y=252 width=42 height=58 xoffset=-1 yoffset=15 xadvance=48 page=0 chnl=15
char id=85 x=43 y=252 width=42 height=58 xoffset=-1 yoffset=15 xadvance=48 page=0 chnl=15
char id=86 x=86 y=252 width=42 height=58 xoffset=-1 yoffset=15 xadvance=48 page=0 chnl=15
char id=87 x=129 y=252 width=42 height=58 xoffset=-1 yoffset=15 xadvance=48 page=0 chnl=15
char id=88 x=172 y=252 width=42 height=58 xoffset=-1 yoffset=15 xadvance=48 page=0 chnl=15
char id=89 x=215 y=252 width=42 height=58 xoffset=-1 yoffset=15 xadvance=48 page=0 chnl=15
char id=90 x=258 y=252 width=42 height=58 xoffset=-1 yoffset=15 xadvance=48 page=0 chnl=15
char id=91 x=404 y=252 width=18 height=58 xoffset=-1 yoffset=15 xadvance=24 page=0 chnl=15
char id=93 x=0 y=311 width=18 height=58 xoffset=-1 yoffset=15 xadvance=24 page=0 chnl=15
char id=94 x=380 y=370 width=42 height=26 xoffset=-1 yoffset=15 xadvance=48 page=0 chnl=15
char id=95 x=54 y=413 width=42 height=10 xoffset=-1 yoffset=63 xadvance=48 page=0 chnl=15
char id=97 x=191 y=311 width=34 height=42 xoffset=-1 yoffset=31 xadvance=40 page=0 chnl=15
char id=98 x=175 y=75 width=34 height=58 xoffset=-1 yoffset=15 xadvance=40 page=0 chnl=15
char id=99 x=226 y=311 width=34 height=42 xoffset=-1 yoffset=31 xadvance=40 page=0 chnl=15
char id=100 x=210 y=75 width=34 height=58 xoffset=-1 yoffset=15 xadvance=40 page=0 chnl=15
char id=101 x=261 y=311 width=34 height=42 xoffset=-1 yoffset=31 xadvance=40 page=0 chnl=15
char id=102 x=245 y=75 width=26 height=58 xoffset=-1 yoffset=15 xadvance=32 page=0 chnl=15
char id=103 x=272 y=75 width=34 height=58 xoffset=-1 yoffset=31 xadvance=40 page=0 chnl=15
char id=104 x=307 y=75 width=34 height=58 xoffset=-1 yoffset=15 xadvance=40 page=0 chnl=15
char id=105 x=342 y=75 width=10 height=58 xoffset=-1 yoffset=15 xadvance=16 page=0 chnl=15
char id=106 x=43 y=0 width=18 height=66 xoffset=-9 yoffset=15 xadvance=16 page=0 chnl=15
char id=107 x=353 y=75 width=34 height=58 xoffset=-1 yoffset=15 xadvance=40 page=0 chnl=15
char id=108 x=388 y=75 width=18 height=58 xoffset=-1 yoffset=15 xadvance=24 page=0 chnl=15
char id=109 x=296 y=311 width=42 height=42 xoffset=-1 yoffset=31 xadvance=48 page=0 chnl=15
char id=110 x=339 y=311 width=34 height=42 xoffset=-1 yoffset=31 xadvance=40 page=0 chnl=15
char id=111 x=374 y=311 width=34 height=42 xoffset=-1 yoffset=31 xadvance=40 page=0 chnl=15
char id=112 x=0 y=134 width=34 height=58 xoffset=-1 yoffset=31 xadvance=40 page=0 chnl=15
char id=113 x=35 y=134 width=34 height=58 xoffset=-1 yoffset=31 xadvance=40 page=0 chnl=15
char id=114 x=0 y=370 width=26 height=42 xoffset=-1 yoffset=31 xadvance=32 page=0 chnl=15
char id=115 x=27 y=370 width=34 height=42 xoffset=-1 yoffset=31 xadvance=40 page=0 chnl=15
char id=116 x=70 y=134 width=26 height=58 xoffset=-1 yoffset=15 xadvance=32 page=0 chnl=15
char id=117 x=62 y=370 width=34 height=42 xoffset=-1 yoffset=31 xadvance=40 page=0 chnl=15
char id=118 x=97 y=370 width=42 height=42 xoffset=-1 yoffset=31 xadvance=48 page=0 chnl=15
char id=119 x=140 y=370 width=42 height=42 xoffset=-1 yoffset=31 xadvance=48 page=0 chnl=15
char id=120 x=183 y=370 width=42 height=42 xoffset=-1 yoffset=31 xadvance=48 page=0 chnl=15
char id=121 x=97 y=134 width=34 height=58 xoffset=-1 yoffset=31 xadvance=40 page=0 chnl=15
char id=122 x=226 y=370 width=42 height=42 xoffset=-1 yoffset=31 xadvance=48 page=0 chnl=15
char id=123 x=350 y=252 width=26 height=58 xoffset=-1 yoffset=15 xadvance=32 page=0 chnl=15
char id=124 x=339 y=252 width=10 height=58 xoffset=-1 yoffset=15 xadvance=16 page=0 chnl=15
char id=125 x=377 y=252 width=26 height=58 xoffset=-1 yoffset=15 xadvance=32 page=0 chnl=15
char id=8470 x=19 y=311 width=69 height=52 xoffset=-1 yoffset=6 xadvance=69 page=0 chnl=15
]]

	local fontMap = 'rbxassetid://17897493768'

	-----

	local info = {}

	info.fontInfo = {}
	info.characterTable = {}
	info.kernings = {}

	local init, _ = s:find('kernings')
	if init then
		local kernings = s:sub(init, s:len()):split('\n')

		local kerningsTable = info.kernings

		for i,v in ipairs(kernings) do
			local first, second, amount = v:match('kerning first=([%-?%.?%d?]+) second=([%-?%.?%d?]+) amount=([%-?%.?%d?]+)')
			if first then
				kerningsTable[utf8.char(first)] = kerningsTable[utf8.char(first)] or {}
				kerningsTable[utf8.char(first)][utf8.char(second)] = amount
			end
		end
		s = s:sub(1, init - 1)
	end
	local split = s:split('\n')

	local characterTable = info.characterTable

	for i = 3, 1, -1 do
		local infoThisIteration = split[i]:split(' ')
		for i,v in ipairs(infoThisIteration) do
			local field, value = unpack(v:split('='))
			if field and value then
				field, value = field:gsub('"', ''), value:gsub('"', '')
				info.fontInfo[field] = tonumber(value) or value
			end
		end
		table.remove(split, i)
	end
	table.remove(split, 1)

	for i = #split, 1, -1 do
		local v = split[i]
		local charId, x, y, width, height, xOffset, yOffset, xAdvance, page, chnl = v:match('char id=([%-?%.?%d?]+) x=([%-?%.?%d?]+) y=([%-?%.?%d?]+) width=([%-?%.?%d?]+) height=([%-?%.?%d?]+) xoffset=([%-?%.?%d?]+) yoffset=([%-?%.?%d?]+) xadvance=([%-?%.?%d?]+) page=([%-?%.?%d?]+) chnl=([%-?%.?%d?]+)')
		if charId then
			table.remove(split,i)
			table.insert(characterTable, {
				charId = charId;
				x = x;
				y = y;
				width = width;
				height = height;
				xOffset = xOffset;
				yOffset = yOffset;
				xAdvance = xAdvance;
				page = page;
				chnl = chnl
			})
		end
	end

	local size = 20

	local stringFolder = Instance.new('Folder')
	stringFolder.Name = info.fontInfo.face
	stringFolder.Parent = scriptRef

	for i,v in ipairs(characterTable) do
		local mainFrame = Instance.new('Frame')
		mainFrame.Size = UDim2.fromOffset(v.xAdvance or v.width, size)
		mainFrame.BackgroundTransparency = 1
		mainFrame.Name = utf8.char(v.charId)
		mainFrame.BackgroundTransparency = 1
		local newLabel = Instance.new('ImageLabel')
		newLabel.ImageColor3 = Color3.new(1, 0.639216, 0.129412)
		newLabel.Image = fontMap
		newLabel.Size = UDim2.fromOffset(v.width, v.height)
		newLabel.Parent = mainFrame
		newLabel.Name = utf8.char(v.charId)
		newLabel.Position = UDim2.fromOffset(v.xOffset, v.yOffset)
		newLabel.ImageRectSize = Vector2.new(v.width, v.height)
		newLabel.ImageRectOffset = Vector2.new(v.x, v.y)
		newLabel.Parent = mainFrame
		newLabel.BackgroundTransparency = 1
		newLabel.ScaleType = Enum.ScaleType.Fit
		newLabel.BackgroundTransparency = 1
		mainFrame.Parent = stringFolder
	end

	-----

	local function feed(str: string, child)
		-- example feed function:

		-- first off, we have a function that will return a table of graphemes
		local splitString = (function()
			local graphemes = {}
			for i,v in utf8.graphemes(str) do -- for each of the graphemes,
				table.insert(graphemes, str:sub(i,v)) -- we have to use string.sub because utf8 returns a pair where i is the beginning of the grapheme and v is the end of the grapheme. We must use this because we're working with a non-ASCII character (№).
			end
			return graphemes -- returns the table of graphemes
		end)() -- ensure you call this function so it actually assigns the graphemes table to the splitString variable
		local newFrame = Instance.new('Frame') -- create a new frame that will store the glyphs
		newFrame.Parent = child
		newFrame.Position = UDim2.new(0.5, 0, 0, 0)
		local newUIScale = Instance.new("UIScale")
		newUIScale.Parent = newFrame
		newUIScale.Scale = 0.6

		local newUIListLayout = Instance.new('UIListLayout')
		newUIListLayout.Parent = newFrame
		newUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder -- we don't want them to be aligned vertically
		newUIListLayout.FillDirection = Enum.FillDirection.Horizontal -- align them horizontally from left to right
		newUIListLayout.Padding = UDim.new(0,0) -- we don't want any padding
		newUIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center

		for i,v in ipairs(splitString) do -- where i is the index and v is the glyph
			local thisLetter = stringFolder:FindFirstChild(v) -- look inside the folder for a frame with the glyph's name
			if thisLetter then -- if it found a frame with this name,
				local newLetter = thisLetter:Clone() -- clone it and parent it to the frame
				newLetter.LayoutOrder = i
				newLetter.Parent = newFrame

				local next = splitString[i + 1] -- look for the next character to handle kernings
				if next then
					local kerningThisLetter = info.kernings[v] -- inside the kernings table, look for the kerning for this letter and the next letter
					if kerningThisLetter then -- if there is a kerning table for this letter then
						local kerningNextLetter = kerningThisLetter[next] -- if inside that kerning table there is a kerning for the next letter
						if kerningNextLetter then -- if there's a kerning then
							newFrame.Size -= UDim2.fromOffset(0,kerningNextLetter) -- subtract it from the frame's size, not the actual letter label's size because we don't want to clip the letter
						end
					end
				end
			end
		end
		local totalLength = 0
		for _, child in ipairs(newFrame:GetChildren()) do
			if child:IsA("Frame") then
				totalLength = totalLength + child.AbsoluteSize.X
			end
		end
		if totalLength > child.AbsoluteSize.X then

			local screenWidth = workspace.CurrentCamera.ViewportSize.X
			local startPosition = UDim2.new(1, 0, 0, 0)
			local endPosition = UDim2.new(0, -totalLength, 0, 0)
			local speed = 300 -- Adjust the speed as needed

			local totalDistance = screenWidth + totalLength
			local duration = totalDistance / speed

			newUIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Left
			newFrame.Position = startPosition

			-- Function to animate the announcement
			local function animateAnnouncement()
				while newFrame do
					newFrame:TweenPosition(endPosition, "Out", "Linear", duration) -- Consistent duration
					wait(duration + 0.1) -- Wait for animation to complete plus delay
					newFrame.Position = startPosition
				end
			end

			-- Start animation in a coroutine to avoid blocking
			coroutine.wrap(animateAnnouncement)()
		end

		return newFrame
	end
	

	for _, descendant in ipairs(scriptRef.Parent.Parent:GetChildren()) do
		if descendant.Name == "iBusPAX" then
			feed(descendant.iBusUp.SGUI:GetAttribute("input"), descendant.iBusUp.SGUI).Parent = descendant.iBusUp.SGUI
			feed(descendant.iBusLow.SGUI:GetAttribute("input"), descendant.iBusLow.SGUI).Parent = descendant.iBusLow.SGUI
			
			
			descendant.iBusUp.SGUI:GetAttributeChangedSignal("input"):Connect(function()
				if descendant.iBusUp.SGUI:FindFirstChild("Frame") then
					descendant.iBusUp.SGUI:FindFirstChild("Frame"):Destroy()
				end
				feed(descendant.iBusUp.SGUI:GetAttribute("input"), descendant.iBusUp.SGUI).Parent = descendant.iBusUp.SGUI
			end)
			descendant.iBusLow.SGUI:GetAttributeChangedSignal("input"):Connect(function()
				if descendant.iBusLow.SGUI:FindFirstChild("Frame") then
					descendant.iBusLow.SGUI:FindFirstChild("Frame"):Destroy()
				end
				feed(descendant.iBusLow.SGUI:GetAttribute("input"), descendant.iBusLow.SGUI).Parent = descendant.iBusLow.SGUI
			end)
			
			
			local iBusExtraInfo = iBusModule.iBusExtraInfo()
			local timeofday = iBusModule.TimeChanged(scriptRef)

			if not descendant.iBusLow.SGUI:GetAttribute("disturbed") then
				descendant.iBusLow.SGUI:SetAttribute("time", timeofday)
				descendant.iBusLow.SGUI:SetAttribute("input", timeofday)
			else
				descendant.iBusLow.SGUI:SetAttribute("time", timeofday)
			end

			game.Lighting.Changed:Connect(function()
				timeofday = iBusModule.TimeChanged(scriptRef)
				if not descendant.iBusLow.SGUI:GetAttribute("disturbed") then
					descendant.iBusLow.SGUI:SetAttribute("time", timeofday)
					descendant.iBusLow.SGUI:SetAttribute("input", timeofday)
				else
					descendant.iBusLow.SGUI:SetAttribute("time", timeofday)
				end
			end)
			
			if scriptRef.Parent.Parent.BusStopping.Value == nil then
				print("You need to set a valid location for the Bus Stopping trigger; refer to the guide for more info")
			else
				scriptRef.Parent.Parent.BusStopping.Value.Changed:Connect(function()
					if scriptRef.Parent.Parent.BusStopping.Value.Value == true then
						descendant.iBusLow.SGUI:SetAttribute("disturbed", true)
						descendant.iBusLow.SGUI:SetAttribute("input", "Bus Stopping")
					elseif scriptRef.Parent.Parent.BusStopping.Value.Value == false and iBusExtraInfo ~= nil then
						wait(3)
						descendant.iBusLow.SGUI:SetAttribute("disturbed", true)
						descendant.iBusLow.SGUI:SetAttribute("input", iBusExtraInfo)
					elseif scriptRef.Parent.Parent.BusStopping.Value.Value == false and iBusExtraInfo == nil then
						wait(3)
						descendant.iBusLow.SGUI:SetAttribute("disturbed", false)
						descendant.iBusLow.SGUI:SetAttribute("input", descendant.iBusLow.SGUI:GetAttribute("time"))
					end
				end)
			end
			
			
		end
	end
end

function iBusModule.iBusDisplayV4(scriptRef)
	
	local iBusExtraInfo = iBusModule.iBusExtraInfo()
	
	for _, descendant in pairs(scriptRef.Parent.Parent:GetDescendants()) do
		if descendant.Name == "iBusPAX_V4" then
			local timeofday = iBusModule.TimeChanged(scriptRef)
			if not descendant.Display.SurfaceGui.Feeder:GetAttribute("disturbed") then
				descendant.Display.SurfaceGui.Feeder:SetAttribute("time", timeofday)
				descendant.Display.SurfaceGui.Feeder:SetAttribute("input", timeofday)
			else
				descendant.Display.SurfaceGui.Feeder:SetAttribute("time", timeofday)
			end
			
			game.Lighting.Changed:Connect(function()
				timeofday = iBusModule.TimeChanged(scriptRef)
				if not descendant.Display.SurfaceGui.Feeder:GetAttribute("disturbed") then
					descendant.Display.SurfaceGui.Feeder:SetAttribute("time", timeofday)
					descendant.Display.SurfaceGui.Feeder:SetAttribute("input", timeofday)
				else
					descendant.Display.SurfaceGui.Feeder:SetAttribute("time", timeofday)
				end
			end)
			if scriptRef.Parent.Parent.BusStopping.Value == nil then
				print("You need to set a valid location for the Bus Stopping trigger; refer to the guide for more info")
			else
				scriptRef.Parent.Parent.BusStopping.Value.Changed:Connect(function()
					if scriptRef.Parent.Parent.BusStopping.Value.Value == true then
						descendant.Display.SurfaceGui.Feeder:SetAttribute("disturbed", true)
						descendant.Display.SurfaceGui.Feeder:SetAttribute("input", "Bus Stopping")
					elseif scriptRef.Parent.Parent.BusStopping.Value.Value == false and iBusExtraInfo ~= nil then
						wait(3)
						descendant.Display.SurfaceGui.Feeder:SetAttribute("disturbed", true)
						descendant.Display.SurfaceGui.Feeder:SetAttribute("input", iBusExtraInfo)
					elseif scriptRef.Parent.Parent.BusStopping.Value.Value == false and iBusExtraInfo == nil then
						wait(3)
						descendant.Display.SurfaceGui.Feeder:SetAttribute("disturbed", false)
						descendant.Display.SurfaceGui.Feeder:SetAttribute("input", descendant.Display.SurfaceGui.Feeder:GetAttribute("time"))
					end
				end)
			end
			descendant.Display.SurfaceGui.Announcement.Text = string.gsub(descendant.Display.SurfaceGui.Announcement:GetAttribute("input"), " / ", "\n")
			descendant.Display.SurfaceGui.Feeder.Text = descendant.Display.SurfaceGui.Feeder:GetAttribute("input")

			descendant.Display.SurfaceGui.Announcement:GetAttributeChangedSignal("input"):Connect(function()
				descendant.Display.SurfaceGui.Announcement.Text = string.gsub(descendant.Display.SurfaceGui.Announcement:GetAttribute("input"), " / ", "\n")
			end)
			descendant.Display.SurfaceGui.Feeder:GetAttributeChangedSignal("input"):Connect(function()
				descendant.Display.SurfaceGui.Feeder.Text = descendant.Display.SurfaceGui.Feeder:GetAttribute("input")
			end)
			
		end
	end
end

function iBusModule.iBusDisplayV3(scriptRef)
	local iBusExtraInfo = iBusModule.iBusExtraInfo()
	
	for _, descendant in pairs(scriptRef.Parent.Parent:GetDescendants()) do
		if descendant.Name == "iBusPAX_V3" then
			
			
			if scriptRef.Parent.Parent.BusStopping.Value == nil then
				print("You need to set a valid location for the Bus Stopping trigger; refer to the guide for more info")
			else
				scriptRef.Parent.Parent.BusStopping.Value.Changed:Connect(function()
					if scriptRef.Parent.Parent.BusStopping.Value.Value == true then
						descendant.Display.SurfaceGui.BusStopping.Visible = true
					else
						wait(3)
						descendant.Display.SurfaceGui.BusStopping.Visible = false
					end
				end)
			end
			
			local timeofday = iBusModule.TimeChanged(scriptRef)
			descendant.Display.SurfaceGui.TimeText:SetAttribute("time", timeofday)

			game.Lighting.Changed:Connect(function()
				timeofday = iBusModule.TimeChanged(scriptRef)
				scriptRef.Parent.Screen.SurfaceGui.Screensaver.TimeText.Text = timeofday
				scriptRef.Parent.Screen.SurfaceGui.Home.Home.TimeText.Text = timeofday
				descendant.Display.SurfaceGui.TimeText:SetAttribute("time", timeofday)
			end)
			
			
			descendant.Display.SurfaceGui.NextStop.Text = scriptRef.Parent.Screen.SurfaceGui.TrackingData:GetAttribute("nextStop")
			descendant.Display.SurfaceGui.Feeder.Text = descendant.Display.SurfaceGui.Feeder:GetAttribute("input")
			descendant.Display.SurfaceGui.TimeText.Text = descendant.Display.SurfaceGui.TimeText:GetAttribute("time")

			scriptRef.Parent.Screen.SurfaceGui.TrackingData:GetAttributeChangedSignal("nextStop"):Connect(function()
				descendant.Display.SurfaceGui.NextStop.Text = scriptRef.Parent.Screen.SurfaceGui.TrackingData:GetAttribute("nextStop")
				if scriptRef.Parent.Screen.SurfaceGui.Home.Home.SOne.ContentText == "" then
					descendant.Display.SurfaceGui.NextStopVisualiser.Stop1.Visible = false
				else
					descendant.Display.SurfaceGui.NextStopVisualiser.Stop1.Visible = true
					descendant.Display.SurfaceGui.NextStopVisualiser.Stop1.NextStop.Text = scriptRef.Parent.Screen.SurfaceGui.Home.Home.SOne.ContentText
				end
				
				if scriptRef.Parent.Screen.SurfaceGui.Home.Home.STwo.ContentText == "" then
					descendant.Display.SurfaceGui.NextStopVisualiser.Stop2.Visible = false
				else
					descendant.Display.SurfaceGui.NextStopVisualiser.Stop2.Visible = true
					descendant.Display.SurfaceGui.NextStopVisualiser.Stop2.NextStop.Text = scriptRef.Parent.Screen.SurfaceGui.Home.Home.STwo.ContentText
				end
				
				if scriptRef.Parent.Screen.SurfaceGui.Home.Home.SThree.ContentText == "" then
					descendant.Display.SurfaceGui.NextStopVisualiser.Stop3.Visible = false
				else
					descendant.Display.SurfaceGui.NextStopVisualiser.Stop3.Visible = true
					descendant.Display.SurfaceGui.NextStopVisualiser.Stop3.NextStop.Text = scriptRef.Parent.Screen.SurfaceGui.Home.Home.SThree.ContentText
				end
				
				if scriptRef.Parent.Screen.SurfaceGui.Home.Home.SFour.ContentText == "" then
					descendant.Display.SurfaceGui.NextStopVisualiser.Stop4.Visible = false
				else
					descendant.Display.SurfaceGui.NextStopVisualiser.Stop4.Visible = true
					descendant.Display.SurfaceGui.NextStopVisualiser.Stop4.NextStop.Text = scriptRef.Parent.Screen.SurfaceGui.Home.Home.SFour.ContentText
				end
			end)
			scriptRef.Parent.Screen.SurfaceGui.TrackingData:GetAttributeChangedSignal("mainPAXAnnouncement"):Connect(function()
				descendant.Display.SurfaceGui.Feeder.Text = scriptRef.Parent.Screen.SurfaceGui.TrackingData:GetAttribute("mainPAXAnnouncement")
			end)
			descendant.Display.SurfaceGui.TimeText:GetAttributeChangedSignal("time"):Connect(function()
				descendant.Display.SurfaceGui.TimeText.Text = descendant.Display.SurfaceGui.TimeText:GetAttribute("time")
			end)
		end
	end
end

function iBusModule.iBusDisplay_New(scriptRef)
	local textLabelsNormal = {}
	local textLabelsMA = {}
	local textWidthsNormal = {}
	local textWidthsMA = {}

	for _, descendant in pairs(scriptRef.Parent.Parent:GetDescendants()) do
		if descendant.Name == "iBusPAX_New" then
			table.insert(textLabelsNormal, descendant.Display.SurfaceGui.Announcement.Normal)
			table.insert(textLabelsMA, descendant.Display.SurfaceGui.Announcement.ManualAnnouncement)

			descendant.Display.SurfaceGui.Announcement.Normal.Text = descendant.Display.SurfaceGui.Announcement.Normal:GetAttribute("input")
			descendant.Display.SurfaceGui.Announcement.ManualAnnouncement.Text = descendant.Display.SurfaceGui.Announcement.ManualAnnouncement:GetAttribute("input")
			descendant.Display.SurfaceGui.Destination.TextLabel.Text = scriptRef.Parent.Screen.SurfaceGui.TrackingData:GetAttribute("mainPAXAnnouncement")

			scriptRef.Parent.Screen.SurfaceGui.TrackingData:GetAttributeChangedSignal("mainPAXAnnouncement"):Connect(function()
				descendant.Display.SurfaceGui.Destination.TextLabel.Text = scriptRef.Parent.Screen.SurfaceGui.TrackingData:GetAttribute("mainPAXAnnouncement")
			end)
			scriptRef.Parent.Screen.SurfaceGui.TrackingData:GetAttributeChangedSignal("nextStop"):Connect(function()
				descendant.Display.SurfaceGui.Announcement.Normal.Text = scriptRef.Parent.Screen.SurfaceGui.TrackingData:GetAttribute("nextStop")
			end)

			descendant.Display.SurfaceGui.Announcement.Normal:GetAttributeChangedSignal("input"):Connect(function()
				descendant.Display.SurfaceGui.Announcement.Normal.Text = descendant.Display.SurfaceGui.Announcement.Normal:GetAttribute("input")
			end)

			descendant.Display.SurfaceGui.Announcement.ManualAnnouncement:GetAttributeChangedSignal("input"):Connect(function()
				descendant.Display.SurfaceGui.Announcement.ManualAnnouncement.Text = descendant.Display.SurfaceGui.Announcement.ManualAnnouncement:GetAttribute("input")
			end)

			local timeofday = iBusModule.TimeChanged(scriptRef)
			descendant.Display.SurfaceGui.TimeExtra.Time.Text = timeofday

			game.Lighting.Changed:Connect(function()
				timeofday = iBusModule.TimeChanged(scriptRef)
				descendant.Display.SurfaceGui.TimeExtra.Time.Text = timeofday
			end)

			if scriptRef.Parent.Parent.BusStopping.Value == nil then
				print("You need to set a valid location for the Bus Stopping trigger; refer to the guide for more info")
			else
				scriptRef.Parent.Parent.BusStopping.Value.Changed:Connect(function()
					if scriptRef.Parent.Parent.BusStopping.Value.Value == true then
						descendant.Display.SurfaceGui.TimeExtra.BusStopping.Visible = true
					else
						wait(3)
						descendant.Display.SurfaceGui.TimeExtra.BusStopping.Visible = false
					end
				end)
			end

			descendant.Display.SurfaceGui.Announcement.ManualAnnouncement.Changed:Connect(function()
				if descendant.Display.SurfaceGui.Announcement.ManualAnnouncement.TextBounds.X > descendant.Display.SurfaceGui.Announcement.AbsoluteSize.X then
					local screenWidth = workspace.CurrentCamera.ViewportSize.X
					local startPosition = UDim2.new(1, 0, 0, 0)
					local endPosition = UDim2.new(0, -descendant.Display.SurfaceGui.Announcement.ManualAnnouncement.TextBounds.X, 0, 0)
					local speed = 100 -- Adjust the speed as needed

					local totalDistance = screenWidth + descendant.Display.SurfaceGui.Announcement.ManualAnnouncement.TextBounds.X
					local duration = totalDistance / speed

					descendant.Display.SurfaceGui.Announcement.ManualAnnouncement.Position = startPosition

					spawn(function()
						while true do
							descendant.Display.SurfaceGui.Announcement.ManualAnnouncement:TweenPosition(endPosition, "Out", "Linear", duration) -- Consistent duration
							wait(duration + 0.1) -- Wait for animation to complete plus delay
							descendant.Display.SurfaceGui.Announcement.ManualAnnouncement.Position = startPosition
						end
					end)
				else
					descendant.Display.SurfaceGui.Announcement.ManualAnnouncement.Position = UDim2.new(0, 10, 0, 0)
				end
			end)

			local function displayLoop()
				while true do
					if scriptRef:GetAttribute("playingManualAnnouncement") == true then
						descendant.Display.SurfaceGui.Advertisements.Visible = false
						descendant.Display.SurfaceGui.Announcement.BackgroundColor3 = Color3.new(0.0627451, 0.0627451, 0.0627451)
						descendant.Display.SurfaceGui.Announcement.Normal.Visible = false
						descendant.Display.SurfaceGui.Announcement.ManualAnnouncement.Visible = true
						descendant.Display.SurfaceGui.Announcement.Visible = true
						descendant.Display.SurfaceGui.Destination.Visible = true

						descendant.Display.SurfaceGui.TimeExtra.Visible = false
						descendant.Display.SurfaceGui.ETA.Visible = false
						wait(8)
					else
						descendant.Display.SurfaceGui.Announcement.BackgroundColor3 = Color3.new(0, 0.478431, 0.8)
						for _ = 1, 8 do
							if scriptRef:GetAttribute("playingManualAnnouncement") == true then break end
							wait(1)
						end
						descendant.Display.SurfaceGui.Advertisements.Visible = true
						descendant.Display.SurfaceGui.Announcement.Visible = false
						descendant.Display.SurfaceGui.Destination.Visible = false
						descendant.Display.SurfaceGui.TimeExtra.Visible = true
						descendant.Display.SurfaceGui.ETA.Visible = false
						for _ = 1, 8 do
							if scriptRef:GetAttribute("playingManualAnnouncement") == true then break end
							wait(1)
						end
						descendant.Display.SurfaceGui.Advertisements.Visible = false
						descendant.Display.SurfaceGui.Announcement.Visible = true
						descendant.Display.SurfaceGui.Destination.Visible = false
						descendant.Display.SurfaceGui.TimeExtra.Visible = true
						descendant.Display.SurfaceGui.ETA.Visible = false
						for _ = 1, 8 do
							if scriptRef:GetAttribute("playingManualAnnouncement") == true then break end
							wait(1)
						end
						descendant.Display.SurfaceGui.Advertisements.Visible = false
						descendant.Display.SurfaceGui.Announcement.Visible = true
						descendant.Display.SurfaceGui.Destination.Visible = true
						descendant.Display.SurfaceGui.TimeExtra.Visible = false
						descendant.Display.SurfaceGui.ETA.Visible = false
					end
				end
			end

			local mainCoroutine = coroutine.create(displayLoop)
			coroutine.resume(mainCoroutine)
		end
	end
end

function iBusModule.TimeChanged(scriptRef)
		local timeofday = game.Lighting.TimeOfDay
		local hour = tonumber(string.sub(timeofday, 1, 2))
		local minute = string.sub(timeofday, 4, 5)
		local ampm = " AM"

		if hour >= 12 then
			ampm = " PM"
			if hour > 12 then
				hour = hour - 12
			end
		elseif hour == 0 then
			hour = 12
		end

		local formattedHour = tostring(hour)
		local timeofday_noseconds = formattedHour .. ":" .. minute
		
		return timeofday_noseconds..ampm
end

return iBusModule
