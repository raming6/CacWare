local TweenService = game:GetService("TweenService")
local Players = game:GetService("Players")

local g_g = typeof(getgenv) == "function"
local isf = typeof(isfile) == "function"

if g_g then
	getgenv().cacware_finishedloading = false
end

if g_g and isf and isfile("CacWare/skip_cacware_loading") then
	getgenv().cacware_finishedloading = true
	print("[C-W Loader]: Loading without UI..")
	return
end

function parent()
	local p

	if typeof(gethui) == "function" then
		local s, r = pcall(gethui)
		if s and r then
			return r
		end
	end

	local s, cg = pcall(function()
		return game:GetService("CoreGui")
	end)

	if s and cg then
		local ok = pcall(function()
			local test = Instance.new("ScreenGui")
			test.Parent = cg
			test:Destroy()
		end)

		if ok then
			return cg
		end
	end

	return Players.LocalPlayer:WaitForChild("PlayerGui")
end

function asset()
	local id = "rbxassetid://105314181451670"

	if typeof(writefile) ~= "function"
		or typeof(isfile) ~= "function"
		or typeof(getcustomasset) ~= "function" then
		return id
	end

	local path = "CacWare/cac_ware_logo.png"

	if isfile(path) then
		return getcustomasset(path)
	end

	local data = game:HttpGet("https://www.ramingcactus.xyz/cacware/CacWarePNG.png", true)

	if not data or data == "" then
		return id
	end

	writefile(path, data)

	if isfile(path) then
		return getcustomasset(path)
	end

	return id
end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "cw"
ScreenGui.IgnoreGuiInset = true
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = parent()

local Background = Instance.new("Frame")
Background.Size = UDim2.new(1, 0, 1, 0)
Background.BackgroundColor3 = Color3.fromRGB(10, 10, 15)
Background.BorderSizePixel = 0
Background.Parent = ScreenGui

local Gradient = Instance.new("UIGradient")
Gradient.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(15, 15, 25)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(5, 5, 10))
}
Gradient.Rotation = 90
Gradient.Parent = Background

local Container = Instance.new("Frame")
Container.AnchorPoint = Vector2.new(0.5, 0.5)
Container.Position = UDim2.new(0.5, 0, 0.5, 0)
Container.Size = UDim2.new(0, 300, 0, 180)
Container.BackgroundTransparency = 1
Container.Parent = Background

local Logo = Instance.new("ImageLabel")
Logo.Size = UDim2.new(0, 80, 0, 80)
Logo.Position = UDim2.new(0.5, -40, 0, 10)
Logo.BackgroundTransparency = 1
Logo.Image = asset()
Logo.ImageTransparency = 0
Logo.Parent = Container
Logo.ZIndex = 99

local Version = Instance.new("TextLabel")
Version.Size = UDim2.new(1, 0, 0, 20)
Version.Position = UDim2.new(0, 0, 0, 120)
Version.BackgroundTransparency = 1
Version.Text = "v2"
Version.TextColor3 = Color3.fromRGB(150, 150, 150)
Version.TextTransparency = 1
Version.Font = Enum.Font.Gotham
Version.TextScaled = true
Version.Parent = Container

local Credit = Instance.new("TextLabel")
Credit.Size = UDim2.new(1, 0, 0, 20)
Credit.Position = UDim2.new(0, 0, 0, 140)
Credit.BackgroundTransparency = 1
Credit.Text = "by cac"
Credit.TextColor3 = Color3.fromRGB(120, 120, 120)
Credit.TextTransparency = 1
Credit.Font = Enum.Font.Gotham
Credit.TextScaled = true
Credit.Parent = Container

local BarBG = Instance.new("Frame")
BarBG.Size = UDim2.new(0.8, 0, 0, 6)
BarBG.Position = UDim2.new(0.1, 0, 1, -20)
BarBG.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
BarBG.BorderSizePixel = 0
BarBG.ClipsDescendants = true
BarBG.Parent = Container

local BarCorner = Instance.new("UICorner")
BarCorner.CornerRadius = UDim.new(1, 0)
BarCorner.Parent = BarBG

local BarFill = Instance.new("Frame")
BarFill.Size = UDim2.new(0, 0, 1, 0)
BarFill.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
BarFill.BorderSizePixel = 0
BarFill.Parent = BarBG

local FillCorner = Instance.new("UICorner")
FillCorner.CornerRadius = UDim.new(1, 0)
FillCorner.Parent = BarFill

local Glow = Instance.new("UIGradient")
Glow.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 170, 255)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 255, 200))
}
Glow.Parent = BarFill

local function generateRandomString()
	local length = math.random(10, 20)
	local result = ""
	for i = 1, length do
		result ..= string.char(math.random(33, 126))
	end
	return result
end
for _, v in ipairs(ScreenGui:GetDescendants()) do
	v.Name = generateRandomString()
end
ScreenGui.Name = generateRandomString()

local function tween(obj, time, props)
	local t = TweenService:Create(obj, TweenInfo.new(time, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), props)
	t:Play()
	return t
end

tween(Logo, 0.8, {ImageTransparency = 0})
tween(Version, 0.8, {TextTransparency = 0})
tween(Credit, 0.8, {TextTransparency = 0})

task.wait(0.5)

local progress = 0

while progress < 1 do
	progress += math.random(5, 15) / 100

	if progress > 1 then
		progress = 1
	end

	tween(BarFill, 0.4, {
		Size = UDim2.new(progress, 0, 1, 0)
	})

	task.wait(math.random(1, 3) / 10)
end

task.wait(0.5)

tween(Container, 0.6, {
	Position = UDim2.new(0.5, 0, 0.55, 0),
	BackgroundTransparency = 1
})

tween(Logo, 0.6, {ImageTransparency = 1})
tween(Version, 0.6, {TextTransparency = 1})
tween(Credit, 0.6, {TextTransparency = 1})
tween(BarBG, 0.6, {BackgroundTransparency = 1})
tween(BarFill, 0.6, {BackgroundTransparency = 1})

task.wait(0.7)

if g_g then
	getgenv().cacware_finishedloading = true
	print("[C-W loader]: Loaded")
end

ScreenGui:Destroy()
