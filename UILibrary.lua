-- LeonizzzDev's UI Animations Library:

local UILibrary = {}

local TweenService = game:GetService("TweenService")

-- fadeIn anim:
function UILibrary.fadeIn(guiElement, duration)
    guiElement.BackgroundTransparency = 1
    local tweenInfo = TweenInfo.new(duration)
    local tween = TweenService:Create(guiElement, tweenInfo, {BackgroundTransparency = 0})
    tween:Play()
end

-- fadeOut anim:
function UILibrary.fadeOut(guiElement, duration)
    guiElement.BackgroundTransparency = 0
    local tweenInfo = TweenInfo.new(duration)
    local tween = TweenService:Create(guiElement, tweenInfo, {BackgroundTransparency = 1})
    tween:Play()
end

-- gradient color slide animation:
function UILibrary.slideGradient(gradient, time, color1, color2, color3) -- 1st param - "UIGradient"
    -- create gradient from the colors:
    gradient.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, color1),
        ColorSequenceKeypoint.new(0.5, color2),
        ColorSequenceKeypoint.new(1, color3)
    }
    -- get gradient position to the start:
    gradient.Offset = Vector2.new(-1, 0)
    
    local gradientAnim = TweenService:Create(gradient, TweenInfo.new(time, Enum.EasingStyle.Quad, Enum.EasingDirection.In, 0),
        -- move gradient forward
        {Offset = Vector2.new(1,0)}
    )
    gradientAnim:Play()
end

return UILibrary