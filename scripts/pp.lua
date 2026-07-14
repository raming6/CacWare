local Shaft = Instance.new("Model")
local Middle = Instance.new("Part")
local Mesh = Instance.new("SpecialMesh")
local Weld = Instance.new("Weld")
local Weld_1 = Instance.new("Weld")
local Weld_2 = Instance.new("Weld")
local Weld_3 = Instance.new("Weld")
local Weld_4 = Instance.new("Weld")
local Weld_5 = Instance.new("Weld")
local Weld_6 = Instance.new("Weld")
local Weld_7 = Instance.new("Weld")
local Weld_8 = Instance.new("Weld")
local Weld_9 = Instance.new("Weld")
local Weld_10 = Instance.new("Weld")
local Weld_11 = Instance.new("Weld")
local Smooth_Block_Model = Instance.new("Part")
local Mesh_1 = Instance.new("SpecialMesh")
local P1 = Instance.new("Part")
local P2 = Instance.new("Part")
local P3 = Instance.new("Part")
local P4 = Instance.new("Part")
local P5 = Instance.new("Part")
local P7 = Instance.new("Part")
local Mesh_2 = Instance.new("SpecialMesh")
local P8 = Instance.new("Part")
local Part = Instance.new("Part")
local Mesh_3 = Instance.new("SpecialMesh")
local Part_1 = Instance.new("Part")
local Mesh_4 = Instance.new("SpecialMesh")
local P6 = Instance.new("Part")
local Mesh_5 = Instance.new("SpecialMesh")

Shaft.PrimaryPart = Smooth_Block_Model
Shaft.WorldPivot = CFrame.new(-72.497, -86.509, 501.853, -0.023, -0.011, 1, -0.018, 1, 0.01, -1, -0.018, -0.023)
Shaft.Name = "Main"
Shaft.Parent = workspace

Middle.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
Middle.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
Middle.BottomSurface = Enum.SurfaceType.Smooth
Middle.BrickColor = BrickColor.new("Pastel brown")
Middle.CFrame = CFrame.new(-0.878, 2.27, 0.263, 1, 0, 0, 0, 1, 0, 0, 0, 1)
Middle.CanCollide = false
Middle.CollisionGroup = "Players"
Middle.Color = Color3.new(1, 0.8, 0.6)
Middle.Material = Enum.Material.SmoothPlastic
Middle.Size = Vector3.new(2, 2, 1)
Middle.TopSurface = Enum.SurfaceType.Smooth
Middle.Transparency = 1
Middle.Name = "Middle"
Middle.Parent = Shaft

Mesh.MeshType = Enum.MeshType.FileMesh
Mesh.MeshId = "http://www.roblox.com/asset/?id=27111894"
Mesh.Parent = Middle

Weld.C0 = CFrame.new(0, 0, 0, -0.023, -0.018, -1, 0.077, 0.997, -0.02, 0.997, -0.077, -0.021)
Weld.C1 = CFrame.new(0, 0, 0, -0.023, -0.018, -1, 0.077, 0.997, -0.02, 0.997, -0.077, -0.021)
Weld.Part0 = Middle
Weld.Part1 = Middle
Weld.Parent = Middle

Weld_1.C0 = CFrame.new(0, 0, 0, -0.023, -0.018, -1, 0.077, 0.997, -0.02, 0.997, -0.077, -0.021)
Weld_1.C1 = CFrame.new(0.011, -1.497, -0.006, -0.023, -0.018, -1, -0.011, 1, -0.018, 1, 0.01, -0.023)
Weld_1.Part0 = Middle
Weld_1.Part1 = Smooth_Block_Model
Weld_1.Parent = Middle

Weld_2.C0 = CFrame.new(0, 0, 0, -0.023, -0.018, -1, 0.077, 0.997, -0.02, 0.997, -0.077, -0.021)
Weld_2.C1 = CFrame.new(-0.564, 0.957, 0.028, -0.932, 0.362, 0, 0.362, 0.932, 0, 0, 0, -1)
Weld_2.Part0 = Middle
Weld_2.Part1 = P1
Weld_2.Parent = Middle

Weld_3.C0 = CFrame.new(0, 0, 0, -0.023, -0.018, -1, 0.077, 0.997, -0.02, 0.997, -0.077, -0.021)
Weld_3.C1 = CFrame.new(-1.008, 1.023, 0.028, -0.903, 0.43, 0, 0.43, 0.903, 0, 0, 0, -1)
Weld_3.Part0 = Middle
Weld_3.Part1 = P2
Weld_3.Parent = Middle

Weld_4.C0 = CFrame.new(0, 0, 0, -0.023, -0.018, -1, 0.077, 0.997, -0.02, 0.997, -0.077, -0.021)
Weld_4.C1 = CFrame.new(-1.009, 1.073, 0.028, -0.903, 0.43, 0, 0.43, 0.903, 0, 0, 0, -1)
Weld_4.Part0 = Middle
Weld_4.Part1 = P3
Weld_4.Parent = Middle

Weld_5.C0 = CFrame.new(0, 0, 0, -0.023, -0.018, -1, 0.077, 0.997, -0.02, 0.997, -0.077, -0.021)
Weld_5.C1 = CFrame.new(-1.257, 1.129, 0.028, -0.881, 0.474, 0, 0.474, 0.881, 0, 0, 0, -1)
Weld_5.Part0 = Middle
Weld_5.Part1 = P4
Weld_5.Parent = Middle

Weld_6.C0 = CFrame.new(0, 0, 0, -0.023, -0.018, -1, 0.077, 0.997, -0.02, 0.997, -0.077, -0.021)
Weld_6.C1 = CFrame.new(-0.683, 1.007, 0.028, -0.932, 0.362, 0, 0.362, 0.932, 0, 0, 0, -1)
Weld_6.Part0 = Middle
Weld_6.Part1 = P5
Weld_6.Parent = Middle

Weld_7.C0 = CFrame.new(0, 0, 0, -0.023, -0.018, -1, 0.077, 0.997, -0.02, 0.997, -0.077, -0.021)
Weld_7.C1 = CFrame.new(-0.476, 1.048, 0.188, -0.979, 0.202, 0, 0.202, 0.979, 0, 0, 0, -1)
Weld_7.Part0 = Middle
Weld_7.Part1 = P7
Weld_7.Parent = Middle

Weld_8.C0 = CFrame.new(0, 0, 0, -0.023, -0.018, -1, 0.077, 0.997, -0.02, 0.997, -0.077, -0.021)
Weld_8.C1 = CFrame.new(-1.257, 1.079, 0.028, -0.881, 0.474, 0, 0.474, 0.881, 0, 0, 0, -1)
Weld_8.Part0 = Middle
Weld_8.Part1 = P8
Weld_8.Parent = Middle

Weld_9.C0 = CFrame.new(0, 0, 0, -0.023, -0.018, -1, 0.077, 0.997, -0.02, 0.997, -0.077, -0.021)
Weld_9.C1 = CFrame.new(-1.465, 0.899, 0.028, -0.932, 0.362, 0, 0.362, 0.932, 0, 0, 0, -1)
Weld_9.Part0 = Middle
Weld_9.Part1 = Part
Weld_9.Parent = Middle

Weld_10.C0 = CFrame.new(0, 0, 0, -0.023, -0.018, -1, 0.077, 0.997, -0.02, 0.997, -0.077, -0.021)
Weld_10.C1 = CFrame.new(-1.549, 0.904, 0.028, -0.932, 0.362, 0, 0.362, 0.932, 0, 0, 0, -1)
Weld_10.Part0 = Middle
Weld_10.Part1 = Part_1
Weld_10.Parent = Middle

Weld_11.C0 = CFrame.new(0, 0, 0, -0.023, -0.018, -1, 0.077, 0.997, -0.02, 0.997, -0.077, -0.021)
Weld_11.C1 = CFrame.new(-0.476, 1.048, -0.133, -0.979, 0.202, 0, 0.202, 0.979, 0, 0, 0, -1)
Weld_11.Part0 = Middle
Weld_11.Part1 = P6
Weld_11.Parent = Middle

Smooth_Block_Model.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
Smooth_Block_Model.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
Smooth_Block_Model.BottomSurface = Enum.SurfaceType.Smooth
Smooth_Block_Model.BrickColor = BrickColor.new("Nougat")
Smooth_Block_Model.CFrame = CFrame.new(-0.89, 3.762, 0.139, 1, 0, 0, 0, 0.996, 0.087, 0, -0.087, 0.996)
Smooth_Block_Model.CanCollide = false
Smooth_Block_Model.CollisionGroup = "Players"
Smooth_Block_Model.Color = Color3.new(0.8, 0.557, 0.412)
Smooth_Block_Model.Material = Enum.Material.SmoothPlastic
Smooth_Block_Model.Rotation = Vector3.new(-4.999, 0.003, 0.003)
Smooth_Block_Model.Size = Vector3.new(2, 1, 1)
Smooth_Block_Model.TopSurface = Enum.SurfaceType.Smooth
Smooth_Block_Model.Transparency = 1
Smooth_Block_Model.Name = "Smooth Block Model"
Smooth_Block_Model.Parent = Shaft

Mesh_1.Scale = Vector3.new(1.24, 1.24, 1.24)
Mesh_1.Parent = Smooth_Block_Model

P1.Shape = Enum.PartType.Cylinder
P1.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
P1.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
P1.BottomSurface = Enum.SurfaceType.Smooth
P1.BrickColor = BrickColor.new("Medium brown")
P1.CFrame = CFrame.new(-0.873, 1.516, -0.554, 0.015, -0.025, 1, 0.289, 0.957, 0.02, -0.957, 0.289, 0.022)
P1.CanCollide = false
P1.CollisionGroup = "Players"
P1.Color = Color3.new(0.337, 0.259, 0.212)
P1.Material = Enum.Material.SmoothPlastic
P1.Rotation = Vector3.new(-42.652, 88.316, 59.462)
P1.Size = Vector3.new(0.747, 0.321, 0.385)
P1.TopSurface = Enum.SurfaceType.Smooth
P1.Name = "P1"
P1.Parent = Shaft

P2.Shape = Enum.PartType.Cylinder
P2.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
P2.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
P2.BottomSurface = Enum.SurfaceType.Smooth
P2.BrickColor = BrickColor.new("Medium brown")
P2.CFrame = CFrame.new(-0.866, 1.677, -1.045, 0.013, -0.026, 1, 0.359, 0.933, 0.02, -0.933, 0.359, 0.022)
P2.CanCollide = false
P2.CollisionGroup = "Players"
P2.Color = Color3.new(0.337, 0.259, 0.212)
P2.Material = Enum.Material.SmoothPlastic
P2.Rotation = Vector3.new(-42.629, 88.316, 63.666)
P2.Size = Vector3.new(0.308, 0.321, 0.385)
P2.TopSurface = Enum.SurfaceType.Smooth
P2.Name = "P2"
P2.Parent = Shaft

P3.Shape = Enum.PartType.Cylinder
P3.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
P3.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
P3.BottomSurface = Enum.SurfaceType.Smooth
P3.BrickColor = BrickColor.new("Medium brown")
P3.CFrame = CFrame.new(-0.864, 1.63, -1.064, 0.013, -0.026, 1, 0.359, 0.933, 0.02, -0.933, 0.359, 0.022)
P3.CanCollide = false
P3.CollisionGroup = "Players"
P3.Color = Color3.new(0.337, 0.259, 0.212)
P3.Material = Enum.Material.SmoothPlastic
P3.Rotation = Vector3.new(-42.629, 88.316, 63.666)
P3.Size = Vector3.new(0.308, 0.256, 0.385)
P3.TopSurface = Enum.SurfaceType.Smooth
P3.Name = "P3"
P3.Parent = Shaft

P4.Shape = Enum.PartType.Cylinder
P4.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
P4.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
P4.BottomSurface = Enum.SurfaceType.Smooth
P4.BrickColor = BrickColor.new("Medium brown")
P4.CFrame = CFrame.new(-0.861, 1.746, -1.343, 0.012, -0.027, 1, 0.405, 0.914, 0.02, -0.914, 0.404, 0.022)
P4.CanCollide = false
P4.CollisionGroup = "Players"
P4.Color = Color3.new(0.337, 0.259, 0.212)
P4.Material = Enum.Material.SmoothPlastic
P4.Rotation = Vector3.new(-42.613, 88.315, 66.483)
P4.Size = Vector3.new(0.308, 0.256, 0.385)
P4.TopSurface = Enum.SurfaceType.Smooth
P4.Name = "P4"
P4.Parent = Shaft

P5.Shape = Enum.PartType.Cylinder
P5.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
P5.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
P5.BottomSurface = Enum.SurfaceType.Smooth
P5.BrickColor = BrickColor.new("Medium brown")
P5.CFrame = CFrame.new(-0.87, 1.503, -0.682, 0.015, -0.025, 1, 0.289, 0.957, 0.02, -0.957, 0.289, 0.022)
P5.CanCollide = false
P5.CollisionGroup = "Players"
P5.Color = Color3.new(0.337, 0.259, 0.212)
P5.Material = Enum.Material.SmoothPlastic
P5.Rotation = Vector3.new(-42.652, 88.316, 59.462)
P5.Size = Vector3.new(0.513, 0.256, 0.385)
P5.TopSurface = Enum.SurfaceType.Smooth
P5.Name = "P5"
P5.Parent = Shaft

P7.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
P7.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
P7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
P7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
P7.BrickColor = BrickColor.new("Medium brown")
P7.CFrame = CFrame.new(-1.034, 1.287, -0.345, 0.019, -0.022, 1, 0.127, 0.992, 0.02, -0.992, 0.126, 0.022)
P7.CanCollide = false
P7.CollisionGroup = "Players"
P7.Color = Color3.new(0.337, 0.259, 0.212)
P7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
P7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
P7.Material = Enum.Material.SmoothPlastic
P7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
P7.Rotation = Vector3.new(-42.702, 88.317, 49.98)
P7.Size = Vector3.new(0.449, 0.513, 0.449)
P7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
P7.Name = "P7"
P7.Parent = Shaft

Mesh_2.MeshType = Enum.MeshType.Sphere
Mesh_2.Parent = P7

P8.Shape = Enum.PartType.Cylinder
P8.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
P8.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
P8.BottomSurface = Enum.SurfaceType.Smooth
P8.BrickColor = BrickColor.new("Medium brown")
P8.CFrame = CFrame.new(-0.862, 1.792, -1.323, 0.012, -0.027, 1, 0.405, 0.914, 0.02, -0.914, 0.404, 0.022)
P8.CanCollide = false
P8.CollisionGroup = "Players"
P8.Color = Color3.new(0.337, 0.259, 0.212)
P8.Material = Enum.Material.SmoothPlastic
P8.Rotation = Vector3.new(-42.613, 88.315, 66.483)
P8.Size = Vector3.new(0.308, 0.321, 0.385)
P8.TopSurface = Enum.SurfaceType.Smooth
P8.Name = "P8"
P8.Parent = Shaft

Part.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
Part.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
Part.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part.BrickColor = BrickColor.new("Salmon")
Part.CFrame = CFrame.new(-0.861, 1.833, -1.399, 0.015, -0.025, 1, 0.289, 0.957, 0.02, -0.957, 0.289, 0.022)
Part.CanCollide = false
Part.CollisionGroup = "Players"
Part.Color = Color3.new(1, 0.58, 0.58)
Part.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part.Material = Enum.Material.SmoothPlastic
Part.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part.Rotation = Vector3.new(-42.652, 88.316, 59.462)
Part.Size = Vector3.new(0.385, 0.385, 0.385)
Part.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part.Parent = Shaft

Mesh_3.MeshType = Enum.MeshType.Sphere
Mesh_3.Parent = Part

Part_1.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
Part_1.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
Part_1.BackSurface = Enum.SurfaceType.SmoothNoOutlines
Part_1.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Part_1.BrickColor = BrickColor.new("Salmon")
Part_1.CFrame = CFrame.new(-0.86, 1.852, -1.482, 0.015, -0.025, 1, 0.289, 0.957, 0.02, -0.957, 0.289, 0.022)
Part_1.CanCollide = false
Part_1.CollisionGroup = "Players"
Part_1.Color = Color3.new(1, 0.58, 0.58)
Part_1.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
Part_1.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
Part_1.Material = Enum.Material.SmoothPlastic
Part_1.RightSurface = Enum.SurfaceType.SmoothNoOutlines
Part_1.Rotation = Vector3.new(-42.652, 88.316, 59.462)
Part_1.Size = Vector3.new(0.641, 0.385, 0.385)
Part_1.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Part_1.Parent = Shaft

Mesh_4.MeshType = Enum.MeshType.Sphere
Mesh_4.Parent = Part_1

P6.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
P6.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
P6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
P6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
P6.BrickColor = BrickColor.new("Medium brown")
P6.CFrame = CFrame.new(-0.713, 1.294, -0.338, 0.019, -0.022, 1, 0.127, 0.992, 0.02, -0.992, 0.126, 0.022)
P6.CanCollide = false
P6.CollisionGroup = "Players"
P6.Color = Color3.new(0.337, 0.259, 0.212)
P6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
P6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
P6.Material = Enum.Material.SmoothPlastic
P6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
P6.Rotation = Vector3.new(-42.702, 88.317, 49.98)
P6.Size = Vector3.new(0.449, 0.513, 0.449)
P6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
P6.Name = "P6"
P6.Parent = Shaft

Mesh_5.MeshType = Enum.MeshType.Sphere
Mesh_5.Parent = P6

local player = game.Players.LocalPlayer
if not player then
    return
end

local character = player.Character
if not character then
    player.CharacterAdded:Wait()
    character = player.Character
end

local root = character:WaitForChild("HumanoidRootPart")
if not root then
    return
else
end

local attachWeld = Instance.new("Weld")
attachWeld.Part0 = root
attachWeld.Part1 = Smooth_Block_Model
attachWeld.C0 = CFrame.new(0, 1.5, 0)
attachWeld.Parent = root

if getgenv then
    local ReplicatedStorage = game:GetService("ReplicatedStorage")

	local storage = ReplicatedStorage:FindFirstChild("CacWare_TrollStorage")
	if not storage then
		storage = Instance.new("Folder")
		storage.Name = "CacWare_TrollStorage"
		storage.Parent = ReplicatedStorage
	end

	getgenv().CacWare_PP = true
	getgenv().CacWare_PP_Initialized = true
else
    warn("[CacWare]: Cannot toggle 🍆 due to shitty exploit!")
end

task.spawn(function()
    local storage = game:GetService("ReplicatedStorage"):WaitForChild("CacWare_TrollStorage")

    while task.wait(0.25) do
        if getgenv().CacWare_PP then
            if Shaft.Parent ~= workspace then
                Shaft.Parent = workspace
            end
        else
            if Shaft.Parent ~= storage then
                Shaft.Parent = storage
            end
        end
    end
end)
