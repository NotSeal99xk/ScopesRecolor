-- NOTSEAL SCOPE MENU
-- Local only | MM2 | Compatible with Delta

local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

local player = Players.LocalPlayer

local WHITE = Color3.fromRGB(255, 255, 255)
local CYAN = Color3.fromRGB(135, 206, 250)

-- DESIGNS

local DESIGNS = {
    ["RoseScope"] = {
        Texture = "rbxassetid://114489773991214",
        Color = Color3.fromRGB(255, 182, 193)
    },
    ["Cyanscope"] = {
        Texture = "rbxassetid://112780634494625",
        Color = CYAN
    },
    ["CHIIKAWA SCOPE"] = {
        Texture = "rbxassetid://133755750227495",
        Color = Color3.fromRGB(255, 250, 180)
    },
    ["SEALSCOPE"] = {
        Texture = "rbxassetid://77310924197874",
        Color = WHITE
    },
    ["CINNAMOROL SCOPE"] = {
        Texture = "rbxassetid://126368120695023",
        Color = Color3.fromRGB(173, 216, 255)
    },
    ["KITTYSCOPE"] = {
        Texture = "rbxassetid://79617542261475",
        Color = Color3.fromRGB(255, 190, 210)
    },
    ["YUMEKOSCOPE"] = {
        Texture = "rbxassetid://115478117723404",
        Color = Color3.fromRGB(255, 0, 0)
    },
    ["GINGERBREAD SCOPE"] = {
        Texture = "rbxassetid://131697622267133",
        Color = Color3.fromRGB(255, 145, 40)
    },
    ["KUROMISCOPE"] = {
        Texture = "rbxassetid://75047836866332",
        Color = Color3.fromRGB(200, 170, 235)
    },
    ["PUSHEENSCOPE"] = {
        Texture = "rbxassetid://87998483455762",
        Color = WHITE
    },
    ["POMPOMPURIN SCOPE"] = {
        Texture = "rbxassetid://70911625583625",
        Color = Color3.fromRGB(255, 230, 140)
    },
    ["KANISCOPE"] = {
        Texture = "rbxassetid://109889365749570",
        Color = Color3.fromRGB(255, 190, 205)
    },
    ["ICESCOPE"] = {
        Texture = "rbxassetid://125150030587610",
        Color = WHITE
    },
    ["Mikuscope"] = {
        Texture = "rbxassetid://92361791735369",
        Color = CYAN
    },
    ["ConstellationScope"] = {
        Texture = "rbxassetid://138564944089568",
        Color = Color3.fromRGB(255, 220, 60)
    },
    ["RainbowDashScope"] = {
        Texture = "rbxassetid://90408441458661",
        Color = Color3.fromRGB(173, 216, 255)
    },
    ["StrawberryScope"] = {
        Texture = "rbxassetid://72282201239392",
        Color = Color3.fromRGB(255, 150, 160)
    },
    ["BlueberryScope"] = {
        Texture = "rbxassetid://115220307848048",
        Color = Color3.fromRGB(0, 65, 255)
    },
    ["FluttershyScope"] = {
        Texture = "rbxassetid://131101447632353",
        Color = Color3.fromRGB(255, 245, 170)
    },
    ["Kuromi Piercer"] = {
        Texture = "rbxassetid://81216803639681",
        Color = WHITE
    },
    ["MarioScope"] = {
        Texture = "rbxassetid://106455013397504",
        Color = Color3.fromRGB(255, 0, 0)
    },
    ["ApplejackScope"] = {
        Texture = "rbxassetid://107554180274132",
        Color = Color3.fromRGB(255, 140, 0)
    },
    ["SanrioScope"] = {
        Texture = "rbxassetid://72543850323436",
        Color = WHITE
    },
    ["LuigiScope"] = {
        Texture = "rbxassetid://127308055809819",
        Color = Color3.fromRGB(0, 200, 70)
    },
    ["SpinelSunScope"] = {
        Texture = "rbxassetid://91973709701167",
        Color = Color3.fromRGB(255, 200, 140)
    },
    ["SailorMoonScope"] = {
        Texture = "rbxassetid://112757389455557",
        Color = Color3.fromRGB(255, 180, 210)
    },
    ["NezukoScope"] = {
        Texture = "rbxassetid://126989603344868",
        Color = Color3.fromRGB(255, 150, 150)
    },
    ["MadokaScope"] = {
        Texture = "rbxassetid://111533762524671",
        Color = Color3.fromRGB(255, 120, 120)
    },
    ["SakuraScope"] = {
        Texture = "rbxassetid://81379207099950",
        Color = Color3.fromRGB(255, 180, 210)
    },
    ["CherryScope"] = {
        Texture = "rbxassetid://140467273635354",
        Color = Color3.fromRGB(255, 130, 145)
    },
    ["GudetamaScope"] = {
        Texture = "rbxassetid://125687245329694",
        Color = Color3.fromRGB(255, 235, 130)
    },
    ["MikuGun"] = {
        Texture = "rbxassetid://139867877476530",
        Color = Color3.fromRGB(0, 255, 255)
    },
    ["Bluescope"] = {
        Texture = "rbxassetid://103575609972261",
        Color = Color3.fromRGB(0, 100, 255)
    },
    ["BareBearScope"] = {
        Texture = "rbxassetid://134580116410449",
        Color = Color3.fromRGB(210, 180, 140)
    },
    ["SnowScope"] = {
        Texture = "rbxassetid://133377575133441",
        Color = WHITE
    },
    ["SailorSaturnScope"] = {
        Texture = "rbxassetid://116716876517495",
        Color = Color3.fromRGB(140, 0, 200)
    },
    ["RedScope"] = {
        Texture = "rbxassetid://128831626686846",
        Color = Color3.fromRGB(255, 30, 30)
    },
    ["grayxenoshot"] = {
        Texture = "rbxassetid://118895889222979",
        Color = Color3.fromRGB(160, 160, 160)
    },
    ["Marioshot"] = {
        Texture = "rbxassetid://103870801631713",
        Color = Color3.fromRGB(255, 220, 0)
    },
    ["Luigishot"] = {
        Texture = "rbxassetid://111158520548463",
        Color = Color3.fromRGB(0, 200, 70)
    },
    ["Pusheenshot"] = {
        Texture = "rbxassetid://98643609273111",
        Color = WHITE
    },
    ["Luigicannon"] = {
        Texture = "rbxassetid://76949928131898",
        Color = Color3.fromRGB(0, 200, 70)
    },
    ["Mariocannon"] = {
        Texture = "rbxassetid://100593359953145",
        Color = Color3.fromRGB(255, 30, 30)
    },
    ["KuromiScope"] = {
        Texture = "rbxassetid://74148666483222",
        Color = Color3.fromRGB(180, 100, 220)
    },
    ["Fluxscope"] = {
        Texture = "rbxassetid://105719213215482",
        Color = Color3.fromRGB(140, 0, 200)
    },
    ["Lightscope"] = {
        Texture = "rbxassetid://88319582817423",
        Color = WHITE
    },
    ["RedGingerscope"] = {
        Texture = "rbxassetid://72229078254227",
        Color = Color3.fromRGB(255, 30, 30)
    },
    ["KuromiGingerscope"] = {
        Texture = "rbxassetid://112778177242268",
        Color = Color3.fromRGB(180, 100, 220)
    },
    ["TetoScope"] = {
        Texture = "rbxassetid://117313883122112",
        Color = Color3.fromRGB(255, 30, 30)
    },
    ["hellokittyGGscope"] = {
        Texture = "rbxassetid://125662633441993",
        Color = Color3.fromRGB(255, 180, 200)
    },
    ["CinnamorolGGscope"] = {
        Texture = "rbxassetid://116823326396284",
        Color = Color3.fromRGB(173, 216, 255)
    },
    ["HachiwareGGscope"] = {
        Texture = "rbxassetid://115601381387005",
        Color = Color3.fromRGB(173, 216, 255)
    },
    ["RainbowScope"] = {
        Texture = "rbxassetid://85706913634784",
        Color = Color3.fromRGB(255, 150, 200)
    },
    ["NyanCatHarvester"] = {
        Texture = "rbxassetid://76145870887761",
        Color = Color3.fromRGB(255, 150, 200)
    },
    ["IceHarvester"] = {
        Texture = "rbxassetid://71947170433499",
        Color = Color3.fromRGB(135, 206, 250)
    },
    ["LadybugScope"] = {
        Texture = "rbxassetid://134005201318521",
        Color = Color3.fromRGB(255, 30, 30)
    },
    ["CatnoirScope"] = {
        Texture = "rbxassetid://124193021975736",
        Color = Color3.fromRGB(0, 180, 50)
    },
    ["BugnoirScope"] = {
        Texture = "rbxassetid://104127496131284",
        Color = Color3.fromRGB(200, 50, 50)
    },
    ["KFCscope"] = {
        Texture = "rbxassetid://107093355859216",
        Color = Color3.fromRGB(255, 40, 40)
    },
    ["MintyScope"] = {
        Texture = "rbxassetid://128142064627897",
        Color = Color3.fromRGB(120, 255, 200)
    },
    ["BananaScope"] = {
        Texture = "rbxassetid://88403477894854",
        Color = Color3.fromRGB(255, 240, 150)
    },
    ["MatchaBobbaTeaScope"] = {
        Texture = "rbxassetid://73768636693617",
        Color = Color3.fromRGB(140, 220, 160)
    },
    ["SolarScope"] = {
        Texture = "rbxassetid://106720064913493",
        Color = Color3.fromRGB(255, 200, 40)
    },
    ["AuroraBorealisPiercer"] = {
        Texture = "rbxassetid://119882406927733",
        Color = Color3.fromRGB(80, 255, 180)
    }
}

local selectedDesign = "Cyanscope"

-- CATEGORIES

local CATEGORIES = {
    {
        Name = "SCOPE DESIGNS",
        Designs = {
            "RoseScope",
            "Cyanscope",
            "CHIIKAWA SCOPE",
            "SEALSCOPE",
            "CINNAMOROL SCOPE",
            "KITTYSCOPE",
            "YUMEKOSCOPE",
            "GINGERBREAD SCOPE",
            "KUROMISCOPE",
            "PUSHEENSCOPE",
            "POMPOMPURIN SCOPE",
            "KANISCOPE",
            "ICESCOPE",
            "Mikuscope",
            "ConstellationScope",
            "RainbowDashScope",
            "StrawberryScope",
            "BlueberryScope",
            "FluttershyScope",
            "MarioScope",
            "ApplejackScope",
            "SanrioScope",
            "LuigiScope",
            "SpinelSunScope",
            "SailorMoonScope",
            "NezukoScope",
            "MadokaScope",
            "SakuraScope",
            "CherryScope",
            "GudetamaScope",
            "Bluescope",
            "BareBearScope",
            "SnowScope",
            "SailorSaturnScope",
            "RedScope",
            "KuromiScope",
            "Fluxscope",
            "Lightscope",
            "TetoScope",
            "RainbowScope",
            "LadybugScope",
            "CatnoirScope",
            "BugnoirScope",
            "KFCscope",
            "MintyScope",
            "BananaScope",
            "MatchaBobbaTeaScope",
            "SolarScope"
        }
    },
    {
        Name = "Icepiercer",
        Designs = {
            "Kuromi Piercer",
            "AuroraBorealisPiercer"
        }
    },
    {
        Name = "Raygun designs",
        Designs = {
            "MikuGun"
        }
    },
    {
        Name = "Xenoshot Designs",
        Designs = {
            "grayxenoshot",
            "Marioshot",
            "Luigishot",
            "Pusheenshot"
        }
    },
    {
        Name = "Snowcannon Designs",
        Designs = {
            "Luigicannon",
            "Mariocannon"
        }
    },
    {
        Name = "Gingerscope Designs",
        Designs = {
            "RedGingerscope",
            "KuromiGingerscope",
            "hellokittyGGscope",
            "CinnamorolGGscope",
            "HachiwareGGscope"
        }
    },
    {
        Name = "Harvester designs",
        Designs = {
            "NyanCatHarvester",
            "IceHarvester"
        }
    }
}

-- ORIGINAL PROPERTY CACHE

local originalScopeProperties = setmetatable({}, {__mode = "k"})
local originalEffectProperties = setmetatable({}, {__mode = "k"})

local function cacheScopeProperty(object, property)
    if not originalScopeProperties[object] then
        originalScopeProperties[object] = {}
    end

    if originalScopeProperties[object][property] == nil then
        originalScopeProperties[object][property] = object[property]
    end
end

local function cacheEffectProperties(object)
    if originalEffectProperties[object] then return end

    originalEffectProperties[object] = {
        Texture = object.Texture,
        Color = object.Color
    }
end

-- TEXTURE SYSTEM

local function updateTextures(root)
    local design = selectedDesign and DESIGNS[selectedDesign]
    if not design or not root then return end

    local function update(object)
        if object:IsA("MeshPart") then
            cacheScopeProperty(object, "TextureID")
            object.TextureID = design.Texture
        elseif object:IsA("SpecialMesh") then
            cacheScopeProperty(object, "TextureId")
            object.TextureId = design.Texture
        elseif object:IsA("Decal") or object:IsA("Texture") then
            cacheScopeProperty(object, "Texture")
            object.Texture = design.Texture
        end
    end

    update(root)

    for _, object in ipairs(root:GetDescendants()) do
        update(object)
    end
end

-- BEAM AND TRAIL SYSTEM

local function applyBeamAndTrailToObject(object, design)
    if not object then return end
    if not object:IsA("Beam") and not object:IsA("Trail") then return end

    cacheEffectProperties(object)

    local original = originalEffectProperties[object]

    if not design then
        object.Texture = original.Texture
        object.Color = original.Color
        return
    end

    if design.Color then
        object.Color = ColorSequence.new(design.Color)
    else
        object.Color = original.Color
    end

    local texture
    if object:IsA("Beam") then
        texture = design.BeamTexture
    else
        texture = design.TrailTexture
    end

    if type(texture) == "string" and texture ~= "" then
        object.Texture = texture
    else
        object.Texture = original.Texture
    end
end

local function applyBeamColor(root)
    local design = selectedDesign and DESIGNS[selectedDesign]
    if not root then return end

    applyBeamAndTrailToObject(root, design)

    for _, object in ipairs(root:GetDescendants()) do
        applyBeamAndTrailToObject(object, design)
    end
end

-- GUN DISPLAY

local function getObjectPosition(object)
    if object:IsA("BasePart") then
        return object.Position
    elseif object:IsA("Model") then
        return object:GetPivot().Position
    end

    local part = object:FindFirstChildWhichIsA("BasePart", true)
    return part and part.Position
end

local function findNearestGunDisplay()
    local character = player.Character
    local root = character and character:FindFirstChild("HumanoidRootPart")
    if not root then return nil end

    local nearest
    local nearestDistance = math.huge

    for _, object in ipairs(workspace:GetDescendants()) do
        if object.Name == "GunDisplay" then
            local position = getObjectPosition(object)
            if position then
                local distance = (position - root.Position).Magnitude
                if distance < nearestDistance then
                    nearest = object
                    nearestDistance = distance
                end
            end
        end
    end

    return nearest
end

local function applyScope()
    local display = findNearestGunDisplay()
    if display then
        updateTextures(display)
        applyBeamColor(display)
    end
end

-- GUN TOOL & CHARACTER

local function applyGunEffects()
    local character = player.Character
    local backpack = player:FindFirstChildOfClass("Backpack")

    if character then
        applyBeamColor(character)
    end

    for _, container in ipairs({character, backpack}) do
        if container then
            for _, tool in ipairs(container:GetChildren()) do
                if tool:IsA("Tool") and tool.Name == "Gun" then
                    updateTextures(tool)
                    applyBeamColor(tool)
                end
            end
        end
    end
end

local function applyAll()
    if not selectedDesign then return end
    applyScope()
    applyGunEffects()
end

-- RESET SYSTEM

local function restoreOriginalTextures()
    for object, properties in pairs(originalScopeProperties) do
        if object and object.Parent then
            for property, value in pairs(properties) do
                object[property] = value
            end
        end
    end

    for object, properties in pairs(originalEffectProperties) do
        if object and object.Parent then
            object.Texture = properties.Texture
            object.Color = properties.Color
        end
    end
end


-- GUI SETUP

local oldGui = player.PlayerGui:FindFirstChild("NotSealScopeMenu")
if oldGui then
    oldGui:Destroy()
end

local gui = Instance.new("ScreenGui")
gui.Name = "NotSealScopeMenu"
gui.ResetOnSpawn = false
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
gui.Parent = player:WaitForChild("PlayerGui")

-- COLORS (Dark seal theme)
local BG = Color3.fromRGB(18, 20, 28)
local HEADER_BG = Color3.fromRGB(28, 32, 44)
local CARD_BG = Color3.fromRGB(28, 32, 44)
local ACCENT = Color3.fromRGB(100, 180, 220)
local ACCENT_DARK = Color3.fromRGB(70, 150, 200)
local TEXT_DARK = Color3.fromRGB(230, 240, 255)
local TEXT_SOFT = Color3.fromRGB(140, 160, 190)
local BTN_BG = Color3.fromRGB(36, 42, 58)
local BTN_SELECTED = Color3.fromRGB(55, 90, 130)
local GREEN = Color3.fromRGB(80, 200, 140)

-- MAIN FRAME
local main = Instance.new("Frame")
main.Name = "Main"
main.Size = UDim2.fromOffset(520, 340)
main.Position = UDim2.new(0.5, -260, 0.5, -170)
main.BackgroundColor3 = BG
main.BorderSizePixel = 0
main.ClipsDescendants = true
main.Parent = gui

local mainCorner = Instance.new("UICorner")
mainCorner.CornerRadius = UDim.new(0, 16)
mainCorner.Parent = main

local mainStroke = Instance.new("UIStroke")
mainStroke.Color = Color3.fromRGB(60, 90, 120)
mainStroke.Thickness = 1.5
mainStroke.Parent = main

-- Panel background (seal theme texture)
local mainBg = Instance.new("ImageLabel")
mainBg.Name = "Background"
mainBg.Size = UDim2.new(1, 0, 1, 0)
mainBg.BackgroundTransparency = 1
mainBg.Image = "rbxthumb://type=Asset&id=88737031492003&w=420&h=420"
mainBg.ImageTransparency = 0.45
mainBg.ScaleType = Enum.ScaleType.Crop
mainBg.ZIndex = 0
mainBg.Parent = main

local mainBgCorner = Instance.new("UICorner")
mainBgCorner.CornerRadius = UDim.new(0, 16)
mainBgCorner.Parent = mainBg

-- HEADER
local header = Instance.new("Frame")
header.Size = UDim2.new(1, 0, 0, 52)
header.BackgroundColor3 = HEADER_BG
header.BorderSizePixel = 0
header.ZIndex = 2
header.Parent = main

local headerCorner = Instance.new("UICorner")
headerCorner.CornerRadius = UDim.new(0, 16)
headerCorner.Parent = header

-- Fix bottom corners of header
local headerFix = Instance.new("Frame")
headerFix.Size = UDim2.new(1, 0, 0, 16)
headerFix.Position = UDim2.new(0, 0, 1, -16)
headerFix.BackgroundColor3 = HEADER_BG
headerFix.BorderSizePixel = 0
headerFix.Parent = header

local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.fromOffset(120, 30)
titleLabel.Position = UDim2.fromOffset(16, 11)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "🦭 NOTSEAL"
titleLabel.TextColor3 = TEXT_DARK
titleLabel.TextSize = 18
titleLabel.Font = Enum.Font.GothamBold
titleLabel.TextXAlignment = Enum.TextXAlignment.Left
titleLabel.Parent = header

local v2Badge = Instance.new("TextLabel")
v2Badge.Size = UDim2.fromOffset(32, 20)
v2Badge.Position = UDim2.fromOffset(140, 16)
v2Badge.BackgroundColor3 = Color3.fromRGB(40, 55, 80)
v2Badge.Text = "V2"
v2Badge.TextColor3 = ACCENT
v2Badge.TextSize = 11
v2Badge.Font = Enum.Font.GothamBold
v2Badge.Parent = header

local v2Corner = Instance.new("UICorner")
v2Corner.CornerRadius = UDim.new(0, 6)
v2Corner.Parent = v2Badge

local subtitle = Instance.new("TextLabel")
subtitle.Size = UDim2.fromOffset(150, 20)
subtitle.Position = UDim2.new(1, -190, 0, 16)
subtitle.BackgroundTransparency = 1
subtitle.Text = "SEAL SCOPE MENU"
subtitle.TextColor3 = TEXT_SOFT
subtitle.TextSize = 11
subtitle.Font = Enum.Font.GothamBold
subtitle.TextXAlignment = Enum.TextXAlignment.Right
subtitle.Parent = header

-- MINIMIZE
local minimize = Instance.new("TextButton")
minimize.Size = UDim2.fromOffset(28, 28)
minimize.Position = UDim2.new(1, -40, 0, 12)
minimize.BackgroundColor3 = Color3.fromRGB(45, 55, 75)
minimize.Text = "−"
minimize.TextColor3 = TEXT_DARK
minimize.TextSize = 18
minimize.Font = Enum.Font.GothamBold
minimize.Parent = header

local minCorner = Instance.new("UICorner")
minCorner.CornerRadius = UDim.new(0, 8)
minCorner.Parent = minimize

-- FLOATING BUTTON (icon)
local floating = Instance.new("ImageButton")
floating.Name = "NotSealFloatingButton"
floating.Size = UDim2.fromOffset(64, 64)
floating.Position = UDim2.new(1, -80, 0.5, -32)
floating.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
floating.BackgroundTransparency = 0
floating.Image = "rbxassetid://125909748733878"
floating.ImageTransparency = 0
floating.ScaleType = Enum.ScaleType.Fit
floating.Visible = false
floating.Parent = gui

local floatingCorner = Instance.new("UICorner")
floatingCorner.CornerRadius = UDim.new(0, 14)
floatingCorner.Parent = floating

local floatingStroke = Instance.new("UIStroke")
floatingStroke.Color = Color3.fromRGB(220, 200, 180)
floatingStroke.Thickness = 2
floatingStroke.Parent = floating

-- LEFT PREVIEW PANEL
local previewPanel = Instance.new("Frame")
previewPanel.Size = UDim2.fromOffset(130, 240)
previewPanel.Position = UDim2.fromOffset(12, 60)
previewPanel.BackgroundColor3 = CARD_BG
previewPanel.BorderSizePixel = 0
previewPanel.ZIndex = 2
previewPanel.Parent = main

local previewPanelCorner = Instance.new("UICorner")
previewPanelCorner.CornerRadius = UDim.new(0, 12)
previewPanelCorner.Parent = previewPanel

local previewTitle = Instance.new("TextLabel")
previewTitle.Size = UDim2.new(1, -12, 0, 18)
previewTitle.Position = UDim2.fromOffset(8, 8)
previewTitle.BackgroundTransparency = 1
previewTitle.Text = "SCOPE PREVIEW"
previewTitle.TextColor3 = TEXT_SOFT
previewTitle.TextSize = 10
previewTitle.Font = Enum.Font.GothamBold
previewTitle.TextXAlignment = Enum.TextXAlignment.Left
previewTitle.Parent = previewPanel

local previewBox = Instance.new("Frame")
previewBox.Size = UDim2.fromOffset(106, 90)
previewBox.Position = UDim2.fromOffset(12, 30)
previewBox.BackgroundColor3 = Color3.fromRGB(22, 28, 40)
previewBox.BorderSizePixel = 0
previewBox.Parent = previewPanel

local previewBoxCorner = Instance.new("UICorner")
previewBoxCorner.CornerRadius = UDim.new(0, 10)
previewBoxCorner.Parent = previewBox

local previewImage = Instance.new("ImageLabel")
previewImage.Size = UDim2.fromOffset(80, 66)
previewImage.Position = UDim2.fromOffset(13, 12)
previewImage.BackgroundTransparency = 1
previewImage.Image = selectedDesign and DESIGNS[selectedDesign] and DESIGNS[selectedDesign].Texture or ""
previewImage.ScaleType = Enum.ScaleType.Fit
previewImage.Parent = previewBox

local previewName = Instance.new("TextLabel")
previewName.Size = UDim2.new(1, -8, 0, 18)
previewName.Position = UDim2.fromOffset(4, 128)
previewName.BackgroundTransparency = 1
previewName.Text = selectedDesign or "None"
previewName.TextColor3 = TEXT_DARK
previewName.TextSize = 12
previewName.Font = Enum.Font.GothamBold
previewName.Parent = previewPanel

local selectedBadge = Instance.new("TextLabel")
selectedBadge.Size = UDim2.fromOffset(70, 20)
selectedBadge.Position = UDim2.fromOffset(30, 152)
selectedBadge.BackgroundColor3 = GREEN
selectedBadge.Text = "Selected"
selectedBadge.TextColor3 = WHITE
selectedBadge.TextSize = 11
selectedBadge.Font = Enum.Font.GothamBold
selectedBadge.Visible = selectedDesign ~= nil
selectedBadge.Parent = previewPanel

local selectedBadgeCorner = Instance.new("UICorner")
selectedBadgeCorner.CornerRadius = UDim.new(0, 10)
selectedBadgeCorner.Parent = selectedBadge

local applyBtn = Instance.new("TextButton")
applyBtn.Size = UDim2.fromOffset(106, 30)
applyBtn.Position = UDim2.fromOffset(12, 180)
applyBtn.BackgroundColor3 = ACCENT
applyBtn.Text = "APPLY"
applyBtn.TextColor3 = WHITE
applyBtn.TextSize = 12
applyBtn.Font = Enum.Font.GothamBold
applyBtn.Parent = previewPanel

local applyCorner = Instance.new("UICorner")
applyCorner.CornerRadius = UDim.new(0, 8)
applyCorner.Parent = applyBtn

applyBtn.MouseButton1Click:Connect(function()
    if selectedDesign then
        applyAll()
    end
end)

-- RIGHT SIDE: Categories + Designs
local rightPanel = Instance.new("Frame")
rightPanel.Size = UDim2.fromOffset(360, 250)
rightPanel.Position = UDim2.fromOffset(150, 60)
rightPanel.BackgroundTransparency = 1
rightPanel.ZIndex = 2
rightPanel.Parent = main

local chooseLabel = Instance.new("TextLabel")
chooseLabel.Size = UDim2.new(1, 0, 0, 22)
chooseLabel.BackgroundTransparency = 1
chooseLabel.Text = "CHOOSE YOUR SCOPE"
chooseLabel.TextColor3 = TEXT_DARK
chooseLabel.TextSize = 13
chooseLabel.Font = Enum.Font.GothamBold
chooseLabel.TextXAlignment = Enum.TextXAlignment.Left
chooseLabel.Parent = rightPanel

local designCount = Instance.new("TextLabel")
designCount.Size = UDim2.fromOffset(60, 18)
designCount.Position = UDim2.new(1, -60, 0, 2)
designCount.BackgroundTransparency = 1
designCount.Text = "0 DESIGNS"
designCount.TextColor3 = TEXT_SOFT
designCount.TextSize = 10
designCount.Font = Enum.Font.GothamBold
designCount.TextXAlignment = Enum.TextXAlignment.Right
designCount.Parent = rightPanel

-- Categories label
local catLabel = Instance.new("TextLabel")
catLabel.Size = UDim2.new(1, 0, 0, 16)
catLabel.Position = UDim2.fromOffset(0, 26)
catLabel.BackgroundTransparency = 1
catLabel.Text = "Categories"
catLabel.TextColor3 = TEXT_SOFT
catLabel.TextSize = 10
catLabel.Font = Enum.Font.GothamBold
catLabel.TextXAlignment = Enum.TextXAlignment.Left
catLabel.Parent = rightPanel

local categoryScroll = Instance.new("ScrollingFrame")
categoryScroll.Name = "CategoryList"
categoryScroll.Size = UDim2.new(1, 0, 0, 48)
categoryScroll.Position = UDim2.fromOffset(0, 42)
categoryScroll.BackgroundTransparency = 1
categoryScroll.BorderSizePixel = 0
categoryScroll.ScrollBarThickness = 2
categoryScroll.ScrollBarImageColor3 = ACCENT
categoryScroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
categoryScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
categoryScroll.Parent = rightPanel

local categoryLayout = Instance.new("UIListLayout")
categoryLayout.Padding = UDim.new(0, 4)
categoryLayout.SortOrder = Enum.SortOrder.LayoutOrder
categoryLayout.Parent = categoryScroll

-- Search
local searchBox = Instance.new("TextBox")
searchBox.Size = UDim2.new(1, 0, 0, 28)
searchBox.Position = UDim2.fromOffset(0, 94)
searchBox.BackgroundColor3 = CARD_BG
searchBox.PlaceholderText = "🔍  Search designs..."
searchBox.PlaceholderColor3 = TEXT_SOFT
searchBox.Text = ""
searchBox.TextColor3 = TEXT_DARK
searchBox.TextSize = 12
searchBox.Font = Enum.Font.Gotham
searchBox.ClearTextOnFocus = false
searchBox.Parent = rightPanel

local searchCorner = Instance.new("UICorner")
searchCorner.CornerRadius = UDim.new(0, 8)
searchCorner.Parent = searchBox

local searchPad = Instance.new("UIPadding")
searchPad.PaddingLeft = UDim.new(0, 10)
searchPad.Parent = searchBox

-- Designs grid
local designScroll = Instance.new("ScrollingFrame")
designScroll.Name = "DesignList"
designScroll.Size = UDim2.new(1, 0, 0, 145)
designScroll.Position = UDim2.fromOffset(0, 128)
designScroll.BackgroundTransparency = 1
designScroll.BorderSizePixel = 0
designScroll.ScrollBarThickness = 3
designScroll.ScrollBarImageColor3 = ACCENT
designScroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
designScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
designScroll.Parent = rightPanel

local gridLayout = Instance.new("UIGridLayout")
gridLayout.CellSize = UDim2.fromOffset(64, 42)
gridLayout.CellPadding = UDim2.fromOffset(6, 6)
gridLayout.SortOrder = Enum.SortOrder.LayoutOrder
gridLayout.Parent = designScroll

-- FOOTER
local footer = Instance.new("Frame")
footer.Size = UDim2.new(1, 0, 0, 36)
footer.Position = UDim2.new(0, 0, 1, -36)
footer.BackgroundColor3 = Color3.fromRGB(22, 26, 36)
footer.BorderSizePixel = 0
footer.ZIndex = 2
footer.Parent = main

local footerFix = Instance.new("Frame")
footerFix.Size = UDim2.new(1, 0, 0, 16)
footerFix.BackgroundColor3 = Color3.fromRGB(22, 26, 36)
footerFix.BorderSizePixel = 0
footerFix.Parent = footer

local footerLeft = Instance.new("TextLabel")
footerLeft.Size = UDim2.fromOffset(100, 20)
footerLeft.Position = UDim2.fromOffset(14, 10)
footerLeft.BackgroundTransparency = 1
footerLeft.Text = "🦭 SEAL HUB"
footerLeft.TextColor3 = TEXT_SOFT
footerLeft.TextSize = 10
footerLeft.Font = Enum.Font.GothamBold
footerLeft.TextXAlignment = Enum.TextXAlignment.Left
footerLeft.Parent = footer

local footerRight = Instance.new("TextLabel")
footerRight.Size = UDim2.fromOffset(120, 20)
footerRight.Position = UDim2.new(1, -130, 0, 10)
footerRight.BackgroundTransparency = 1
footerRight.Text = "NOTSEAL V2.0"
footerRight.TextColor3 = TEXT_SOFT
footerRight.TextSize = 10
footerRight.Font = Enum.Font.GothamBold
footerRight.TextXAlignment = Enum.TextXAlignment.Right
footerRight.Parent = footer

-- STATE
local selectedCategory = CATEGORIES[1] and CATEGORIES[1].Name or nil
local designButtons = {}
local categoryButtons = {}
local currentFilter = ""

local function updatePreview()
    if selectedDesign and DESIGNS[selectedDesign] then
        previewImage.Image = DESIGNS[selectedDesign].Texture
        previewName.Text = selectedDesign
        selectedBadge.Visible = true
    else
        previewImage.Image = ""
        previewName.Text = "None"
        selectedBadge.Visible = false
    end
end

local function clearDesigns()
    for _, child in ipairs(designScroll:GetChildren()) do
        if child:IsA("TextButton") then
            child:Destroy()
        end
    end
    designButtons = {}
end

local function createDesignButton(name, design, order)
    local btn = Instance.new("TextButton")
    btn.Name = name
    btn.BackgroundColor3 = (name == selectedDesign) and BTN_SELECTED or BTN_BG
    btn.Text = ""
    btn.AutoButtonColor = true
    btn.LayoutOrder = order
    btn.Parent = designScroll

    local btnCorner = Instance.new("UICorner")
    btnCorner.CornerRadius = UDim.new(0, 10)
    btnCorner.Parent = btn

    local nameLbl = Instance.new("TextLabel")
    nameLbl.Size = UDim2.new(1, -4, 1, -4)
    nameLbl.Position = UDim2.fromOffset(2, 2)
    nameLbl.BackgroundTransparency = 1
    nameLbl.Text = name
    nameLbl.TextColor3 = TEXT_DARK
    nameLbl.TextSize = 9
    nameLbl.Font = Enum.Font.GothamBold
    nameLbl.TextWrapped = true
    nameLbl.Parent = btn

    designButtons[name] = btn

    btn.MouseButton1Click:Connect(function()
        selectedDesign = name
        updatePreview()
        for dName, dBtn in pairs(designButtons) do
            dBtn.BackgroundColor3 = (dName == selectedDesign) and BTN_SELECTED or BTN_BG
        end
    end)
end

local function refreshDesigns()
    clearDesigns()
    local order = 0
    local count = 0
    local filter = string.lower(currentFilter)

    for _, category in ipairs(CATEGORIES) do
        if category.Name == selectedCategory then
            for _, designName in ipairs(category.Designs) do
                if DESIGNS[designName] then
                    local match = filter == "" or string.find(string.lower(designName), filter, 1, true)
                    if match then
                        order += 1
                        count += 1
                        createDesignButton(designName, DESIGNS[designName], order)
                    end
                end
            end
            break
        end
    end

    designCount.Text = count .. " DESIGNS"
end

local function updateCategoryColors()
    for catName, catBtn in pairs(categoryButtons) do
        if catName == selectedCategory then
            catBtn.BackgroundColor3 = ACCENT
            catBtn.TextColor3 = WHITE
        else
            catBtn.BackgroundColor3 = BTN_BG
            catBtn.TextColor3 = TEXT_DARK
        end
    end
end

-- Create category buttons
for i, category in ipairs(CATEGORIES) do
    local catBtn = Instance.new("TextButton")
    catBtn.Name = category.Name
    catBtn.Size = UDim2.new(1, -4, 0, 22)
    catBtn.BackgroundColor3 = BTN_BG
    catBtn.Text = "  " .. category.Name
    catBtn.TextColor3 = TEXT_DARK
    catBtn.TextSize = 10
    catBtn.Font = Enum.Font.GothamBold
    catBtn.TextXAlignment = Enum.TextXAlignment.Left
    catBtn.LayoutOrder = i
    catBtn.AutoButtonColor = true
    catBtn.Parent = categoryScroll

    local catCorner = Instance.new("UICorner")
    catCorner.CornerRadius = UDim.new(0, 6)
    catCorner.Parent = catBtn

    categoryButtons[category.Name] = catBtn

    catBtn.MouseButton1Click:Connect(function()
        selectedCategory = category.Name
        updateCategoryColors()
        refreshDesigns()
    end)
end

-- Search
searchBox:GetPropertyChangedSignal("Text"):Connect(function()
    currentFilter = searchBox.Text
    refreshDesigns()
end)

-- Init
if CATEGORIES[1] then
    selectedCategory = CATEGORIES[1].Name
    updateCategoryColors()
    refreshDesigns()
end
updatePreview()

-- MINIMIZE / RESTORE
local function setMinimized(value)
    main.Visible = not value
    floating.Visible = value
end

minimize.MouseButton1Click:Connect(function()
    setMinimized(true)
end)

floating.MouseButton1Click:Connect(function()
    setMinimized(false)
end)

-- DRAG
local function makeDraggable(handle, target)
    local dragging = false
    local dragStart
    local startPosition
    local dragInput

    handle.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1
            or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPosition = target.Position

            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    handle.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement
            or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            local delta = input.Position - dragStart
            target.Position = UDim2.new(
                startPosition.X.Scale,
                startPosition.X.Offset + delta.X,
                startPosition.Y.Scale,
                startPosition.Y.Offset + delta.Y
            )
        end
    end)
end

makeDraggable(header, main)
makeDraggable(floating, floating)

-- WATCH TOOLS & EFFECTS

local function watchContainer(container)
    container.ChildAdded:Connect(function(object)
        if object:IsA("Tool") and object.Name == "Gun" then
            task.wait(0.2)
            if selectedDesign then
                updateTextures(object)
                applyBeamColor(object)
            end
        elseif object:IsA("Beam") or object:IsA("Trail") then
            applyBeamAndTrailToObject(
                object,
                selectedDesign and DESIGNS[selectedDesign]
            )
        end
    end)

    container.DescendantAdded:Connect(function(object)
        if object:IsA("Beam") or object:IsA("Trail") then
            applyBeamAndTrailToObject(
                object,
                selectedDesign and DESIGNS[selectedDesign]
            )
        end
    end)
end

local backpack = player:WaitForChild("Backpack")
watchContainer(backpack)

player.CharacterAdded:Connect(function(character)
    watchContainer(character)
    task.wait(0.5)
    applyAll()
end)

if player.Character then
    watchContainer(player.Character)
end

-- WATCH WORKSPACE

workspace.DescendantAdded:Connect(function(object)
    if object.Name == "GunDisplay" then
        task.wait(0.2)
        applyScope()
    elseif object:IsA("Beam") or object:IsA("Trail") then
        local character = player.Character
        if character and object:IsDescendantOf(character) then
            applyBeamAndTrailToObject(
                object,
                selectedDesign and DESIGNS[selectedDesign]
            )
        end
    end
end)

-- LOAD
applyAll()
print("[NotSeal] Scope Menu V2 Loaded.")
