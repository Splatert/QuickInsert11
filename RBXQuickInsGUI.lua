-- gui location
local ui_loc = game.CoreGui


local ui = Instance.new("ScreenGui") -- main gui
ui.Parent = ui_loc



local frm = nil




	local tbtn = Instance.new("ImageButton",ui)
	tbtn.BackgroundTransparency = .5
	tbtn.BackgroundColor3 = Color3.new(1/255,1/255,1/255)
	tbtn.Image = "rbxasset://textures/Ui/InsertButton.png"
	tbtn.Size = UDim2.new(0.019, 0, 0.036, 0)
	tbtn.Position = UDim2.new(0.0769999996, 0, 0.954999983, 0)



	if frm == nil then
		frm = Instance.new("Frame")
		frm.Parent = ui

		frm.BackgroundColor3 = Color3.new(1/255, 0/255, 0/255)
		frm.BackgroundTransparency = .5

		frm.Position = UDim2.new(0.0350000001, 0, 0.899999976, 0)
		frm.Size = UDim2.new(0.200000003, 0, 0.0399999991, 0)

	end


	local offset = 0.005

	function createBtn(nam, tex)
		local btn = Instance.new("TextButton")
		btn.Parent = frm
		
		btn.Style = 2
		btn.TextColor3 = Color3.new(255/255,255/255,255/255)

		btn.Position = UDim2.new(offset, 0, 0, 0)
		btn.Size = UDim2.new(0.2, 0, 1, 0)

		btn.Text = tex
		btn.Name = nam
	end



	local btnP = createBtn("Prt","Prt")
	offset = offset + 0.2
	
	local btnW = createBtn("Wdg","Wdg")
	offset = offset + 0.2
	
	local btnB = createBtn("Ball","Ball")
	offset = offset + 0.2
	
	local btnC = createBtn("Cyl","Cyl")
	offset = offset + 0.2

	local btnT = createBtn("Trs","Trs")
	offset = offset + 0.2


	function insertObject(obj)

		if obj == "p" then
			local part = Instance.new("Part")
			part.Parent = Workspace

			part.CFrame = Workspace.CurrentCamera.CoordinateFrame * CFrame.new(0,0,-10)
			
			part.TopSurface = Enum.SurfaceType.Smooth
			part.BottomSurface = Enum.SurfaceType.Smooth

			part.Anchored = true
		end


		if obj == "w" then
			local part = Instance.new("WedgePart")
			part.Parent = Workspace

			part.CFrame = Workspace.CurrentCamera.CoordinateFrame * CFrame.new(0,0,-10)
			
			part.TopSurface = Enum.SurfaceType.Smooth
			part.BottomSurface = Enum.SurfaceType.Smooth

			part.Anchored = true
		end


		if obj == "b" then
			local part = Instance.new("Part")
			part.Parent = Workspace

			part.Shape = Enum.PartType.Ball

			part.CFrame = Workspace.CurrentCamera.CoordinateFrame * CFrame.new(0,0,-10)
			part.Size = Vector3.new(3,3,3)

			part.TopSurface = Enum.SurfaceType.Smooth
			part.BottomSurface = Enum.SurfaceType.Smooth

			part.Anchored = true
		end


		if obj == "c" then
			local part = Instance.new("Part")
			part.Parent = Workspace

			part.Shape = Enum.PartType.Cylinder

			part.CFrame = Workspace.CurrentCamera.CoordinateFrame * CFrame.new(0,0,-10)
			part.Size = Vector3.new(3,3,3)

			part.TopSurface = Enum.SurfaceType.Smooth
			part.BottomSurface = Enum.SurfaceType.Smooth

			part.Anchored = true
		end



		if obj == "t" then
			local part = Instance.new("TrussPart")
			part.Parent = Workspace

			part.CFrame = Workspace.CurrentCamera.CoordinateFrame * CFrame.new(0,0,-10)
			
			part.TopSurface = Enum.SurfaceType.Smooth
			part.BottomSurface = Enum.SurfaceType.Smooth
			part.LeftSurface = Enum.SurfaceType.Smooth
			part.RightSurface = Enum.SurfaceType.Smooth

			part.Anchored = true
		end



	end


	frm["Prt"].MouseButton1Click:connect(function()
		insertObject("p")
	end)

	frm["Wdg"].MouseButton1Click:connect(function()
		insertObject("w")
	end)

	frm["Ball"].MouseButton1Click:connect(function()
		insertObject("b")
	end)

	frm["Cyl"].MouseButton1Click:connect(function()
		insertObject("c")
	end)

	frm["Trs"].MouseButton1Click:connect(function()
		insertObject("t")
	end)


	tbtn.MouseButton1Click:connect(function()
		if frm then
			if frm.Visible == true then
				frm.Visible = false
			elseif frm.Visible == false then
				frm.Visible = true
			end
		end
	end)


