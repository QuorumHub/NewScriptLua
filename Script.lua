-- Получаем игрока и его GUI
local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Создаём экранный GUI
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "JumpscareGui"
screenGui.ResetOnSpawn = false  -- Сохраняет GUI при респауне
screenGui.Parent = playerGui

-- Создаём Frame для изображения
local frame = Instance.new("Frame")
frame.Size = UDim2.new(1, 0, 1, 0) -- На весь экран
frame.BackgroundTransparency = 1
frame.Parent = screenGui

-- Создаём ImageLabel для декали
local imageLabel = Instance.new("ImageLabel")
imageLabel.Size = UDim2.new(1, 0, 1, 0) -- На весь экран
imageLabel.Position = UDim2.new(0, 0, 0, 0) -- В левом верхнем углу
imageLabel.Image = "rbxassetid://16225926075"  -- ID вашей декали
imageLabel.BackgroundTransparency = 1
imageLabel.Parent = frame

-- Проверяем, загрузилось ли изображение
if not imageLabel.Image or imageLabel.Image == "" then
    warn("Изображение не найдено или неверный id")
else
    print("Изображение успешно загружено")
end

-- Получаем звук из Workspace и воспроизводим его с установленной громкостью
local jumpscareSound = game.Workspace:FindFirstChild("Jumpscare sound effect")
if jumpscareSound then
    jumpscareSound.Volume = 10
    jumpscareSound:Play()
else
    warn("Звук 'Jumpscare sound effect' не найден в Workspace")
end
