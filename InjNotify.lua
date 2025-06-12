local function createNotification(title, text)
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "SyrixNotification"
    screenGui.ResetOnSpawn = false
    screenGui.Parent = game.CoreGui

    -- Blur effect
    local blur = Instance.new("BlurEffect")
    blur.Size = 24
    blur.Parent = game.Lighting

    -- Title
    local titleLabel = Instance.new("TextLabel")
    titleLabel.Size = UDim2.new(0, 600, 0, 80)
    titleLabel.Position = UDim2.new(0.5, -300, 0.5, -80)
    titleLabel.BackgroundTransparency = 1
    titleLabel.Text = title
    titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    titleLabel.TextSize = 48
    titleLabel.Font = Enum.Font.GothamBold
    titleLabel.Parent = screenGui

    -- Description
    local descLabel = Instance.new("TextLabel")
    descLabel.Size = UDim2.new(0, 500, 0, 40)
    descLabel.Position = UDim2.new(0.5, -250, 0.5, -20)
    descLabel.BackgroundTransparency = 1
    descLabel.Text = text
    descLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
    descLabel.TextSize = 24
    descLabel.Font = Enum.Font.Gotham
    descLabel.Parent = screenGui

    -- Discord logo container
    local discordContainer = Instance.new("Frame")
    discordContainer.Size = UDim2.new(0, 24, 0, 24)
    discordContainer.Position = UDim2.new(0.5, -85, 0.5, 40)
    discordContainer.BackgroundTransparency = 1
    discordContainer.Parent = screenGui

    -- Discord logo main body
    local discordBody = Instance.new("Frame")
    discordBody.Size = UDim2.new(0, 20, 0, 16)
    discordBody.Position = UDim2.new(0, 2, 0, 2)
    discordBody.BackgroundColor3 = Color3.fromRGB(114, 137, 218)
    discordBody.BorderSizePixel = 0
    discordBody.Parent = discordContainer

    local bodyCorner = Instance.new("UICorner")
    bodyCorner.CornerRadius = UDim.new(0, 8)
    bodyCorner.Parent = discordBody

    -- Discord logo left eye
    local leftEye = Instance.new("Frame")
    leftEye.Size = UDim2.new(0, 3, 0, 3)
    leftEye.Position = UDim2.new(0, 5, 0, 5)
    leftEye.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    leftEye.BorderSizePixel = 0
    leftEye.Parent = discordBody

    local leftEyeCorner = Instance.new("UICorner")
    leftEyeCorner.CornerRadius = UDim.new(1, 0)
    leftEyeCorner.Parent = leftEye

    -- Discord logo right eye
    local rightEye = Instance.new("Frame")
    rightEye.Size = UDim2.new(0, 3, 0, 3)
    rightEye.Position = UDim2.new(0, 12, 0, 5)
    rightEye.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    rightEye.BorderSizePixel = 0
    rightEye.Parent = discordBody

    local rightEyeCorner = Instance.new("UICorner")
    rightEyeCorner.CornerRadius = UDim.new(1, 0)
    rightEyeCorner.Parent = rightEye

    -- Discord logo bottom curve
    local bottomCurve = Instance.new("Frame")
    bottomCurve.Size = UDim2.new(0, 12, 0, 6)
    bottomCurve.Position = UDim2.new(0, 6, 0, 12)
    bottomCurve.BackgroundColor3 = Color3.fromRGB(114, 137, 218)
    bottomCurve.BorderSizePixel = 0
    bottomCurve.Parent = discordBody

    local curveCorner = Instance.new("UICorner")
    curveCorner.CornerRadius = UDim.new(0, 6)
    curveCorner.Parent = bottomCurve

    -- Discord link
    local discordLink = Instance.new("TextLabel")
    discordLink.Size = UDim2.new(0, 140, 0, 24)
    discordLink.Position = UDim2.new(0.5, -55, 0.5, 40)
    discordLink.BackgroundTransparency = 1
    discordLink.Text = "discord.gg/getsyrix"
    discordLink.TextColor3 = Color3.fromRGB(114, 137, 218)
    discordLink.TextSize = 16
    discordLink.Font = Enum.Font.Gotham
    discordLink.Parent = screenGui

    -- Animation setup
    titleLabel.TextTransparency = 1
    descLabel.TextTransparency = 1
    discordContainer.BackgroundTransparency = 1
    discordBody.BackgroundTransparency = 1
    leftEye.BackgroundTransparency = 1
    rightEye.BackgroundTransparency = 1
    bottomCurve.BackgroundTransparency = 1
    discordLink.TextTransparency = 1
    
    titleLabel.Size = UDim2.new(0, 100, 0, 80)
    descLabel.Size = UDim2.new(0, 100, 0, 40)
    discordContainer.Size = UDim2.new(0, 0, 0, 24)
    discordLink.Size = UDim2.new(0, 100, 0, 24)

    -- Smooth animations
    local tweenService = game:GetService("TweenService")
    local fadeInfo = TweenInfo.new(0.6, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)

    titleLabel:TweenSizeAndPosition(UDim2.new(0, 600, 0, 80), UDim2.new(0.5, -300, 0.5, -80), "Out", "Back", 0.6)
    descLabel:TweenSizeAndPosition(UDim2.new(0, 500, 0, 40), UDim2.new(0.5, -250, 0.5, -20), "Out", "Back", 0.6)
    discordContainer:TweenSizeAndPosition(UDim2.new(0, 24, 0, 24), UDim2.new(0.5, -85, 0.5, 40), "Out", "Back", 0.6)
    discordLink:TweenSizeAndPosition(UDim2.new(0, 140, 0, 24), UDim2.new(0.5, -55, 0.5, 40), "Out", "Back", 0.6)
    
    tweenService:Create(titleLabel, fadeInfo, {TextTransparency = 0}):Play()
    tweenService:Create(descLabel, fadeInfo, {TextTransparency = 0}):Play()
    tweenService:Create(discordBody, fadeInfo, {BackgroundTransparency = 0}):Play()
    tweenService:Create(leftEye, fadeInfo, {BackgroundTransparency = 0}):Play()
    tweenService:Create(rightEye, fadeInfo, {BackgroundTransparency = 0}):Play()
    tweenService:Create(bottomCurve, fadeInfo, {BackgroundTransparency = 0}):Play()
    tweenService:Create(discordLink, fadeInfo, {TextTransparency = 0}):Play()

    -- Auto close
    wait(3)
    local fadeOut = TweenInfo.new(0.4, Enum.EasingStyle.Quart, Enum.EasingDirection.In)
    tweenService:Create(titleLabel, fadeOut, {TextTransparency = 1}):Play()
    tweenService:Create(descLabel, fadeOut, {TextTransparency = 1}):Play()
    tweenService:Create(discordBody, fadeOut, {BackgroundTransparency = 1}):Play()
    tweenService:Create(leftEye, fadeOut, {BackgroundTransparency = 1}):Play()
    tweenService:Create(rightEye, fadeOut, {BackgroundTransparency = 1}):Play()
    tweenService:Create(bottomCurve, fadeOut, {BackgroundTransparency = 1}):Play()
    tweenService:Create(discordLink, fadeOut, {TextTransparency = 1}):Play()
    wait(0.4)
    blur:Destroy()
    screenGui:Destroy()
end

createNotification("Syrix", "Successfully Injected!")