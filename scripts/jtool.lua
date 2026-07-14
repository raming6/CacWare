local Players = game:GetService("Players")
local player = Players.LocalPlayer

local function r15()
	local character = player.Character
	if not character then
		return false
	end

	local humanoid = character:FindFirstChildWhichIsA("Humanoid")
	return humanoid and humanoid.RigType == Enum.HumanoidRigType.R15
end

local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:FindFirstChildWhichIsA("Humanoid")
local backpack = player:WaitForChild("Backpack")

if not humanoid or not backpack then
	return
end

local tool = Instance.new("Tool")
tool.Name = "Jerk Off"
tool.ToolTip = "Credits to Infinite Yield"
tool.RequiresHandle = false
tool.CanBeDropped = false
tool.Parent = backpack

local jorkin = false
local track = nil

local function stopTomfoolery()
	jorkin = false

	if track then
		pcall(function()
			track:Stop()
		end)

		track = nil
	end
end

tool.Equipped:Connect(function()
	jorkin = true
end)

tool.Unequipped:Connect(stopTomfoolery)
humanoid.Died:Connect(stopTomfoolery)

task.spawn(function()
	while task.wait() do
		if not jorkin then
			continue
		end

		local character = player.Character
		if not character then
			continue
		end

		local humanoid = character:FindFirstChildWhichIsA("Humanoid")
		if not humanoid then
			continue
		end

		local isR15 = r15()

		if not track then
			local anim = Instance.new("Animation")
			anim.AnimationId = isR15
				and "rbxassetid://698251653"
				or "rbxassetid://72042024"

			track = humanoid:LoadAnimation(anim)
		end

		track:Play()
		track:AdjustSpeed(isR15 and 0.7 or 0.65)
		track.TimePosition = 0.6

		task.wait(0.1)

		while track and track.TimePosition < (isR15 and 0.7 or 0.65) do
			task.wait(0.1)
		end

		if track then
			track:Stop()
			track = nil
		end
	end
end)
