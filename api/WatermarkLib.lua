--[[

 $$$$$$\   $$$$$$\  $$\   $$\ $$$$$$\ $$$$$$$\      $$$$$$\   $$$$$$\  $$\      $$\   $$\ $$$$$$$$\ $$$$$$\  $$$$$$\  $$\   $$\  $$$$$$\  
$$  __$$\ $$  __$$\ $$ |  $$ |\_$$  _|$$  __$$\    $$  __$$\ $$  __$$\ $$ |     $$ |  $$ |\__$$  __|\_$$  _|$$  __$$\ $$$\  $$ |$$  __$$\ 
$$ /  \__|$$ /  $$ |$$ |  $$ |  $$ |  $$ |  $$ |   $$ /  \__|$$ /  $$ |$$ |     $$ |  $$ |   $$ |     $$ |  $$ /  $$ |$$$$\ $$ |$$ /  \__|
\$$$$$$\  $$ |  $$ |$$ |  $$ |  $$ |  $$ |  $$ |   \$$$$$$\  $$ |  $$ |$$ |     $$ |  $$ |   $$ |     $$ |  $$ |  $$ |$$ $$\$$ |\$$$$$$\  
 \____$$\ $$ |  $$ |$$ |  $$ |  $$ |  $$ |  $$ |    \____$$\ $$ |  $$ |$$ |     $$ |  $$ |   $$ |     $$ |  $$ |  $$ |$$ \$$$$ | \____$$\ 
$$\   $$ |$$ $$\$$ |$$ |  $$ |  $$ |  $$ |  $$ |   $$\   $$ |$$ |  $$ |$$ |     $$ |  $$ |   $$ |     $$ |  $$ |  $$ |$$ |\$$$ |$$\   $$ |
\$$$$$$  |\$$$$$$ / \$$$$$$  |$$$$$$\ $$$$$$$  |$$\\$$$$$$  | $$$$$$  |$$$$$$$$\\$$$$$$  |   $$ |   $$$$$$\  $$$$$$  |$$ | \$$ |\$$$$$$  |
 \______/  \___$$$\  \______/ \______|\_______/ \__|\______/  \______/ \________|\______/    \__|   \______| \______/ \__|  \__| \______/ 
               \___|                                                                                                                      
                                                                                                                                                                                                                                                                         
]]--


local Library = {}

function MainFunction(Text)
	local Squiddy = Instance.new("ScreenGui")
	local TextLabel = Instance.new("TextLabel")
	local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
	local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
	Squiddy.Name = "Squid !"
	Squiddy.Parent = game:GetService("CoreGui")
	Squiddy.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	Squiddy.DisplayOrder = 999999999
	TextLabel.Parent = Squiddy
	TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.BorderSizePixel = 0
	TextLabel.Position = UDim2.new(0.914253891, 0, 0.5, 0)
	TextLabel.Size = UDim2.new(0.181684986, 1, 0.0452090763, 1)
	TextLabel.Font = Enum.Font.RobotoMono
	TextLabel.Text = Text
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextScaled = true
	TextLabel.TextSize = 14.000
	TextLabel.TextStrokeTransparency = 0.000
	TextLabel.TextWrapped = true
	UITextSizeConstraint.Parent = TextLabel
	UITextSizeConstraint.MaxTextSize = 14
	UIAspectRatioConstraint.Parent = Squiddy
	UIAspectRatioConstraint.AspectRatio = 1.711
end

function Library:CreateWatermark(Txt)
	if not game:GetService('Players').LocalPlayer.PlayerGui:FindFirstChild("Squid !") then
		MainFunction(Txt)
	else
		game:GetService('Players').LocalPlayer.PlayerGui:FindFirstChild("Squid !"):Destroy()
		MainFunction(Txt)
	end
end

return Library
