-- Add this to the bottom of the previous script

-- Create the Activate Button
local ActivateBtn = Instance.new("TextButton")
ActivateBtn.Name = "ActivateBtn"
ActivateBtn.Size = UDim2.new(0.9, 0, 0, 45)
ActivateBtn.Position = UDim2.new(0.05, 0, 0.82, 0)
ActivateBtn.BackgroundColor3 = Color3.fromRGB(200, 50, 50) -- Start Red (Off)
ActivateBtn.Text = "ACTIVATE"
ActivateBtn.TextColor3 = Color3.new(1, 1, 1)
ActivateBtn.Font = Enum.Font.SourceSansBold
ActivateBtn.TextSize = 20
ActivateBtn.Parent = MainFrame

-- Add Rounded Corners to Button
local btnCorner = Instance.new("UICorner")
btnCorner.CornerRadius = UDim.new(0, 8)
btnCorner.Parent = ActivateBtn

-- Logic Variables
local isActive = false

-- Click Function
ActivateBtn.MouseButton1Click:Connect(function()
	isActive = not isActive -- Flip the setting (True/False)
	
	if isActive then
		-- Turn
