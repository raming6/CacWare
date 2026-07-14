local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local HttpService = game:GetService("HttpService")
local player = Players.LocalPlayer

local SAVE_FILE = "CacWare/CacWare_ExecutorSaves.json"

local defaultData = {
	keybind = "Insert",
	script = "",
	theme = "Dark",
	saving = true
}

local function loadData()
	if isfile(SAVE_FILE) then
		local ok, decoded = pcall(function()
			return HttpService:JSONDecode(readfile(SAVE_FILE))
		end)
		if ok and type(decoded) == "table" then
			return decoded
		end
	end
	return table.clone(defaultData)
end

local function saveData()
	writefile(SAVE_FILE, HttpService:JSONEncode(data))
end

local data = loadData()

local TOGGLE_KEY = Enum.KeyCode[data.keybind] or Enum.KeyCode.Insert

local themes = {
	Dark = Color3.fromRGB(30,30,35),
	Red = Color3.fromRGB(50,20,20),
	Blue = Color3.fromRGB(20,25,50),
	Green = Color3.fromRGB(20,45,30)
}

local gui = Instance.new("ScreenGui")
gui.ResetOnSpawn = false
gui.Parent = player.PlayerGui

local main = Instance.new("Frame")
main.Size = UDim2.fromOffset(560,380)
main.Position = UDim2.fromScale(0.5,0.5) - UDim2.fromOffset(280,190)
main.BackgroundColor3 = themes[data.theme]
main.BorderSizePixel = 0
main.Parent = gui
Instance.new("UICorner",main).CornerRadius = UDim.new(0,12)

local top = Instance.new("Frame",main)
top.Size = UDim2.new(1,0,0,36)
top.BackgroundColor3 = Color3.fromRGB(18,18,22)
top.BorderSizePixel = 0

local title = Instance.new("TextLabel",top)
title.Size = UDim2.new(1,-120,1,0)
title.Position = UDim2.fromOffset(10,0)
title.Text = "CacWare Lua Executor"
title.Font = Enum.Font.GothamBold
title.TextSize = 14
title.TextColor3 = Color3.new(1,1,1)
title.BackgroundTransparency = 1
title.TextXAlignment = Enum.TextXAlignment.Left

local function topBtn(t,x)
	local b = Instance.new("TextButton",top)
	b.Size = UDim2.fromOffset(32,28)
	b.Position = UDim2.fromOffset(x,4)
	b.Text = t
	b.Font = Enum.Font.GothamBold
	b.TextSize = 14
	b.TextColor3 = Color3.new(1,1,1)
	b.BackgroundColor3 = Color3.fromRGB(45,45,55)
	b.BorderSizePixel = 0
	Instance.new("UICorner",b).CornerRadius = UDim.new(0,6)
	return b
end

local btnMin = topBtn("-",488)
local btnClose = topBtn("X",524)

local box = Instance.new("TextBox",main)
box.Size = UDim2.new(1,-20,1,-160)
box.Position = UDim2.fromOffset(10,46)
box.Font = Enum.Font.Code
box.TextSize = 14
box.MultiLine = true
box.ClearTextOnFocus = false
box.TextWrapped = false
box.TextXAlignment = Enum.TextXAlignment.Left
box.TextYAlignment = Enum.TextYAlignment.Top
box.TextColor3 = Color3.new(1,1,1)
box.BackgroundColor3 = Color3.fromRGB(18,18,22)
box.BorderSizePixel = 0
box.Text = data.script or ""
Instance.new("UICorner",box).CornerRadius = UDim.new(0,8)

local function button(t,x)
	local b = Instance.new("TextButton",main)
	b.Size = UDim2.fromOffset(130,32)
	b.Position = UDim2.fromOffset(x,main.Size.Y.Offset-40)
	b.Text = t
	b.Font = Enum.Font.GothamBold
	b.TextSize = 14
	b.TextColor3 = Color3.new(1,1,1)
	b.BackgroundColor3 = Color3.fromRGB(50,50,65)
	b.BorderSizePixel = 0
	Instance.new("UICorner",b).CornerRadius = UDim.new(0,8)
	return b
end

local execBtn = button("Execute",10)
local clearBtn = button("Clear",150)
local settingsBtn = button("Settings",290)

local panel = Instance.new("Frame",main)
panel.Size = UDim2.new(1,-20,0,150)
panel.Position = UDim2.fromOffset(10,main.Size.Y.Offset-160)
panel.BackgroundColor3 = Color3.fromRGB(22,22,28)
panel.BorderSizePixel = 0
panel.Visible = false
Instance.new("UICorner",panel).CornerRadius = UDim.new(0,8)

local function label(t,y)
	local l = Instance.new("TextLabel",panel)
	l.Size = UDim2.fromOffset(200,24)
	l.Position = UDim2.fromOffset(10,y)
	l.Text = t
	l.Font = Enum.Font.Gotham
	l.TextSize = 13
	l.TextColor3 = Color3.new(1,1,1)
	l.BackgroundTransparency = 1
	l.TextXAlignment = Enum.TextXAlignment.Left
	return l
end

local function sbtn(t,x,y)
	local b = Instance.new("TextButton",panel)
	b.Size = UDim2.fromOffset(140,26)
	b.Position = UDim2.fromOffset(x,y)
	b.Text = t
	b.Font = Enum.Font.GothamBold
	b.TextSize = 13
	b.TextColor3 = Color3.new(1,1,1)
	b.BackgroundColor3 = Color3.fromRGB(45,45,60)
	b.BorderSizePixel = 0
	Instance.new("UICorner",b).CornerRadius = UDim.new(0,6)
	return b
end

label("Toggle Keybind",10)
local keyBtn = sbtn(TOGGLE_KEY.Name,220,8)

label("Theme",40)
local themeBtn = sbtn(data.theme,220,38)

label("Saving",70)
local saveToggle = sbtn(data.saving and "ON" or "OFF",220,68)

local deleteBtn = sbtn("Delete Saved Data",10,105)
local closeSettingsBtn = sbtn("Close Settings",160,105)

closeSettingsBtn.MouseButton1Click:Connect(function()
	panel.Visible = false
end)

local waiting = false

keyBtn.MouseButton1Click:Connect(function()
	waiting = true
	keyBtn.Text = "Press Key"
end)

UIS.InputBegan:Connect(function(i,g)
	if g then return end
	if waiting and i.KeyCode ~= Enum.KeyCode.Unknown then
		TOGGLE_KEY = i.KeyCode
		data.keybind = i.KeyCode.Name
		keyBtn.Text = i.KeyCode.Name
		saveData()
		waiting = false
		return
	end
	if i.KeyCode == TOGGLE_KEY then
		main.Visible = not main.Visible
	end
end)

themeBtn.MouseButton1Click:Connect(function()
	local order = {"Dark","Red","Blue","Green"}
	for i,v in ipairs(order) do
		if v == data.theme then
			data.theme = order[i % #order + 1]
			break
		end
	end
	main.BackgroundColor3 = themes[data.theme]
	themeBtn.Text = data.theme
	saveData()
end)

saveToggle.MouseButton1Click:Connect(function()
	data.saving = not data.saving
	saveToggle.Text = data.saving and "ON" or "OFF"
	saveData()
end)

deleteBtn.MouseButton1Click:Connect(function()
	if isfile(SAVE_FILE) then delfile(SAVE_FILE) end
	data = table.clone(defaultData)
	box.Text = ""
	main.BackgroundColor3 = themes[data.theme]
	keyBtn.Text = data.keybind
	themeBtn.Text = data.theme
	saveToggle.Text = "ON"
	TOGGLE_KEY = Enum.KeyCode.Insert
	saveData()
end)

box:GetPropertyChangedSignal("Text"):Connect(function()
	if data.saving then
		data.script = box.Text
		saveData()
	end
end)

execBtn.MouseButton1Click:Connect(function()
	if box.Text ~= "" then
		local f = loadstring(box.Text)
		if f then task.spawn(f) end
	end
end)

clearBtn.MouseButton1Click:Connect(function()
	box.Text = ""
end)

settingsBtn.MouseButton1Click:Connect(function()
	panel.Visible = not panel.Visible
end)

btnClose.MouseButton1Click:Connect(function()
	gui:Destroy()
end)

local mini = Instance.new("TextButton",gui)
mini.Size = UDim2.fromOffset(110,32)
mini.Position = UDim2.fromScale(0.5,0.82)
mini.Text = "LuaExecutor"
mini.Font = Enum.Font.GothamBold
mini.TextSize = 13
mini.TextColor3 = Color3.new(1,1,1)
mini.BackgroundColor3 = Color3.fromRGB(35,35,45)
mini.BorderSizePixel = 0
mini.Visible = false
Instance.new("UICorner",mini).CornerRadius = UDim.new(0,10)

btnMin.MouseButton1Click:Connect(function()
	main.Visible = false
	mini.Visible = true
end)

mini.MouseButton1Click:Connect(function()
	main.Visible = true
	mini.Visible = false
end)

local function enableDrag(frame, handle)
	local dragging = false
	local dragStart
	local startPos

	handle.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = true
			dragStart = input.Position
			startPos = frame.Position
		end
	end)

	handle.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = false
		end
	end)

	UIS.InputChanged:Connect(function(input)
		if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
			local delta = input.Position - dragStart
			frame.Position = startPos + UDim2.fromOffset(delta.X, delta.Y)
		end
	end)
end

enableDrag(main, top)
enableDrag(main, main)
enableDrag(mini, mini)
