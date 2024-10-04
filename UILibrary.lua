-- LeonizzzDev's UI Animations Library:

local UILibrary = {}

local TweenService = game:GetService("TweenService")

-- Функция для плавного появления элемента
function UILibrary.fadeIn(guiElement, duration)
    guiElement.BackgroundTransparency = 1
    local tweenInfo = TweenInfo.new(duration)
    local tween = TweenService:Create(guiElement, tweenInfo, {BackgroundTransparency = 0})
    tween:Play()
end

-- Функция для плавного исчезновения элемента
function UILibrary.fadeOut(guiElement, duration)
    guiElement.BackgroundTransparency = 0
    local tweenInfo = TweenInfo.new(duration)
    local tween = TweenService:Create(guiElement, tweenInfo, {BackgroundTransparency = 1})
    tween:Play()
end

return UILibrary