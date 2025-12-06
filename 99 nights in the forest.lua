if _G.PASSWORD == "xephexbyzero" then
    local vu1 = game:GetService("Players").LocalPlayer
    local vu2 = game:GetService("MarketplaceService")
    local v3, v4 = pcall(function()
        return vu2:GetProductInfo(game.PlaceId)
    end)
    local v5 = v3 and (v4 and v4.Name) or "Unknown Game"
    local vu6 = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()
    local v7 = vu6
    local v8 = vu6.CreateWindow(v7, {
        Title = "XEPHEX HUB  | " .. v5,
        Author = ".gg/rNKGmeyAHf",
        Folder = "XEPHEX HUB",
        Theme = "Dark",
        Size = UDim2.fromOffset(600, 300),
        Icon = "rbxassetid://80283328189076",
        User = {
            Enabled = true,
            Anonymous = false,
            Callback = function()
                vu6:Notify({
                    Title = "XEPHEX HUB",
                    Content = "\239\191\189\239\191\189\224\184\167\224\184\177\224\184\170\224\184\148\224\184\181 " .. vu1.Name,
                    Duration = 3
                })
            end
        }
    })
    v8:EditOpenButton({
        Title = "XEPHEX HUB",
        Icon = "rbxassetid://80283328189076",
        CornerRadius = UDim.new(0, 16),
        StrokeThickness = 2,
        Color = ColorSequence.new(Color3.fromHex("00FFC8"), Color3.fromHex("6FFFE9")),
        OnlyMobile = false,
        Enabled = true,
        Draggable = true
    })
    local vu9 = v8.ConfigManager:CreateConfig("99 \224\184\132\224\184\183\224\184\153\224\185\131\224\184\153\224\184\155\224\185\136\224\184\178")
    local v10 = v8:Tab({
        Title = "Credit",
        Icon = "crown"
    })
    local v11 = v8:Tab({
        Title = "Main",
        Icon = "menu"
    })
    local v12 = v8:Tab({
        Title = "Misc",
        Icon = "sparkles"
    })
    local v13 = v8:Tab({
        Title = "Event",
        Icon = "ticket-percent"
    })
    local vu14 = v8:Tab({
        Title = "Bring",
        Icon = "crosshair"
    })
    local v15 = v8:Tab({
        Title = "Teleport",
        Icon = "compass"
    })
    local v16 = v8:Tab({
        Title = "Settings",
        Icon = "settings"
    })
    v10:Section({
        Title = "Credit"
    })
    v10:Button({
        Title = "Discord",
        Desc = "\239\191\189\239\191\189\224\184\180\224\184\170\224\184\132\224\184\173\224\184\170",
        Callback = function()
            setclipboard("https://discord.gg/rNKGmeyAHf")
            vu6:Notify({
                Title = "XEPHEX HUB",
                Content = "\239\191\189\239\191\189\224\184\177\224\184\148\224\184\165\224\184\173\224\184\129 Discord Link \224\185\129\224\184\165\224\185\137\224\184\167",
                Duration = 5
            })
        end
    })
    v10:Button({
        Title = "YouTube",
        Desc = "\239\191\189\239\191\189\224\184\185\224\184\151\224\184\185\224\184\155",
        Callback = function()
            setclipboard("https://www.youtube.com/@x2Zeroo")
            vu6:Notify({
                Title = "XEPHEX HUB",
                Content = "\239\191\189\239\191\189\224\184\177\224\184\148\224\184\165\224\184\173\224\184\129 YouTube Link \224\185\129\224\184\165\224\185\137\224\184\167",
                Duration = 5
            })
        end
    })
    OpenChestSec = v12:Section({
        Title = "Chest",
        Icon = "boxes",
        Box = true,
        TextSize = 18,
        Opened = false
    })
    local vu17 = workspace:WaitForChild("Items")
    local v18 = game:GetService("Players")
    local v19 = game:GetService("ReplicatedStorage")
    game:GetService("Workspace")
    local v20 = v18.LocalPlayer
    local vu21 = (v20.Character or v20.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart")
    local v22 = v19:WaitForChild("RemoteEvents")
    local vu23 = v22:FindFirstChild("RequestStartDraggingItem")
    local vu24 = v22:FindFirstChild("StopDraggingItem")
    local function vu26(pu25)
        if pu25 and pu25.PrimaryPart then
            task.spawn(function()
                pcall(function()
                    pu25.PrimaryPart.CFrame = vu21.CFrame * CFrame.new(0, 7, 0)
                    task.wait(0.15)
                    vu23:FireServer(pu25)
                    task.wait(0.15)
                    vu24:FireServer(pu25)
                end)
            end)
        end
    end
    local vu27 = {
        ["Item Chest"] = true,
        ["Item Chest1"] = true,
        ["Item Chest2"] = true,
        ["Item Chest3"] = true,
        ["Item Chest4"] = true,
        ["Item Chest5"] = true,
        ["Item Chest6"] = true
    }
    local function vu44()
        local v28 = workspace:FindFirstChild("Items")
        if not v28 then
            return
        end
        local v29, v30, v31 = ipairs(v28:GetChildren())
        local v32 = {}
        while true do
            local v33
            v31, v33 = v29(v30, v31)
            if v31 == nil then
                break
            end
            if vu27[v33.Name] then
                local v34 = v33:FindFirstChild("ItemDrop", true)
                if v34 and v34:IsA("BasePart") then
                    table.insert(v32, v34.Position)
                end
            end
        end
        if # v32 == 0 then
            return
        end
        local v35, v36, v37 = ipairs(v28:GetChildren())
        while true do
            local v38
            v37, v38 = v35(v36, v37)
            if v37 == nil then
                return
            end
            if not vu27[v38.Name] and (v38:IsA("Model") and v38.PrimaryPart) then
                local v39 = v38.PrimaryPart.Position
                local v40, v41, v42 = ipairs(v32)
                while true do
                    local v43
                    v42, v43 = v40(v41, v42)
                    if v42 == nil then
                        break
                    end
                    if (v39 - v43).Magnitude <= 5 then
                        vu26(v38)
                        break
                    end
                end
            end
        end
    end
    OpenChestSec:Button({
        Title = "Open Chest All",
        Desc = "\239\191\189\239\191\189\224\184\155\224\184\180\224\184\148\224\184\129\224\184\165\224\185\136\224\184\173\224\184\135\224\184\151\224\184\177\224\185\137\224\184\135\224\184\171\224\184\161\224\184\148",
        Callback = function()
            pcall(function()
                local v45 = vu17
                local v46, v47, v48 = ipairs(v45:GetChildren())
                while true do
                    local v49
                    v48, v49 = v46(v47, v48)
                    if v48 == nil then
                        break
                    end
                    local v50 = v49:FindFirstChild("Main")
                    if v50 then
                        local v51, v52, v53 = ipairs(v50:GetDescendants())
                        while true do
                            local v54
                            v53, v54 = v51(v52, v53)
                            if v53 == nil then
                                break
                            end
                            if v54:IsA("ProximityPrompt") then
                                pcall(fireproximityprompt, v54)
                            end
                        end
                    end
                end
            end)
        end
    })
    OpenChestSec:Button({
        Title = "Bring Items Chests",
        Desc = "\239\191\189\239\191\189\224\184\182\224\184\135\224\185\132\224\184\173\224\185\128\224\184\151\224\185\135\224\184\161\224\184\151\224\184\181\224\185\136\224\185\132\224\184\148\224\185\137\224\184\136\224\184\178\224\184\129\224\184\129\224\184\165\224\185\136\224\184\173\224\184\135\224\184\151\224\184\177\224\185\137\224\184\135\224\184\171\224\184\161\224\184\148",
        Callback = function()
            pcall(vu44)
        end
    })
    local v55 = v12:Section({
        Title = "Crystal",
        Icon = "sparkles",
        Box = true,
        Opened = false
    })
    local v56 = game:GetService("ReplicatedStorage")
    local vu57 = game:GetService("RunService")
    local vu58 = v56:WaitForChild("RemoteEvents"):WaitForChild("CrystalTorchHit")
    local v59, v60, v61 = ipairs(workspace:GetDescendants())
    local vu62 = vu6
    local vu63 = {}
    while true do
        local v64, v65 = v59(v60, v61)
        if v64 == nil then
            break
        end
        v61 = v64
        if v65.Name == "Light Crystal" then
            table.insert(vu63, v65)
        end
    end
    local vu66 = false
    local vu67 = 0
    local vu68 = 0.3
    v55:Toggle({
        Title = "Auto Crystal",
        Desc = "\239\191\189\239\191\189\224\184\149\224\184\180\224\184\161\224\185\129\224\184\170\224\184\135\224\185\131\224\184\171\224\185\137\224\184\132\224\184\163\224\184\180\224\184\170\224\184\149\224\184\177\224\184\165\224\184\151\224\184\177\224\185\137\224\184\135\224\184\171\224\184\161\224\184\148",
        Default = false,
        Callback = function(p69)
            vu66 = p69
            if vu66 then
                local vu70 = nil
                vu70 = vu57.Heartbeat:Connect(function(_)
                    if vu66 and vu68 <= tick() - vu67 then
                        local v71, v72, v73 = ipairs(vu63)
                        while true do
                            local v74
                            v73, v74 = v71(v72, v73)
                            if v73 == nil then
                                break
                            end
                            if v74.Parent then
                                vu58:FireServer(v74)
                            end
                        end
                        vu67 = tick()
                    elseif not vu66 then
                        vu70:Disconnect()
                    end
                end)
            end
        end
    })
    local v75 = v12:Section({
        Title = "Chat Command",
        Icon = "message-square-code",
        Box = true,
        Opened = false
    })
    v75:Button({
        Title = "Enable Chat Command",
        Desc = "\239\191\189\239\191\189\224\184\155\224\184\180\224\184\148\224\185\131\224\184\138\224\185\136\224\184\135\224\184\178\224\184\153\224\184\132\224\184\179\224\184\170\224\184\177\224\185\136\224\184\135\224\185\129\224\184\138\224\184\149",
        Callback = function()
            task.spawn(function()
                local v76 = game:GetService("Players")
                local v77 = game:GetService("ReplicatedStorage")
                local vu78 = game:GetService("Lighting")
                local v79 = v76.LocalPlayer
                local vu80 = (v79.Character or v79.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart")
                local v81 = v77:WaitForChild("RemoteEvents")
                local vu82 = v81:FindFirstChild("RequestStartDraggingItem")
                local vu83 = v81:FindFirstChild("StopDraggingItem")
                local vu84 = false
                local function vu87(pu85, pu86)
                    task.spawn(function()
                        pcall(function()
                            pu85.PrimaryPart.CFrame = pu86
                            task.wait(0.3)
                            vu82:FireServer(pu85)
                            task.wait(0.3)
                            vu83:FireServer(pu85)
                        end)
                    end)
                end
                local function vu96(p88, p89)
                    local v90 = workspace:WaitForChild("Items")
                    local v91, v92, v93 = ipairs(v90:GetChildren())
                    local v94 = 0
                    while true do
                        local v95
                        v93, v95 = v91(v92, v93)
                        if v93 == nil then
                            break
                        end
                        if string.lower(v95.Name) == string.lower(p88) and v95.PrimaryPart then
                            vu87(v95, vu80.CFrame * CFrame.new(0, 7, 0))
                            task.wait(0.05)
                            v94 = v94 + 1
                            if p89 and p89 <= v94 then
                                break
                            end
                        end
                    end
                end
                local function vu102()
                    local v97 = workspace:WaitForChild("Items")
                    local v98, v99, v100 = ipairs(v97:GetChildren())
                    while true do
                        local v101
                        v100, v101 = v98(v99, v100)
                        if v100 == nil then
                            break
                        end
                        if v101:IsA("Model") and v101.PrimaryPart then
                            vu87(v101, vu80.CFrame * CFrame.new(0, 7, 0))
                            task.wait(0.05)
                        end
                    end
                end
                local function vu109(p103)
                    if p103 then
                        task.spawn(function()
                            while vu84 do
                                pcall(function()
                                    vu78.ClockTime = 12
                                    vu78.Brightness = 3
                                    vu78.Ambient = Color3.new(1, 1, 1)
                                    vu78.OutdoorAmbient = Color3.new(1, 1, 1)
                                    vu78.FogEnd = 999999
                                    vu78.GlobalShadows = false
                                    vu78.EnvironmentDiffuseScale = 1
                                    vu78.EnvironmentSpecularScale = 1
                                    local v104 = vu78
                                    local v105, v106, v107 = pairs(v104:GetChildren())
                                    while true do
                                        local v108
                                        v107, v108 = v105(v106, v107)
                                        if v107 == nil then
                                            break
                                        end
                                        if v108:IsA("BloomEffect") or (v108:IsA("ColorCorrectionEffect") or (v108:IsA("BlurEffect") or v108:IsA("SunRaysEffect"))) then
                                            v108.Enabled = false
                                        end
                                    end
                                end)
                                task.wait(1)
                            end
                        end)
                    else
                        pcall(function()
                            vu78.ClockTime = 0
                            vu78.Brightness = 1
                            vu78.Ambient = Color3.new(0, 0, 0)
                            vu78.OutdoorAmbient = Color3.new(0, 0, 0)
                            vu78.GlobalShadows = true
                            vu78.FogEnd = 1000
                        end)
                    end
                end
                v79.Chatted:Connect(function(p110)
                    local v111 = string.split(p110, " ")
                    local v112 = string.lower(v111[1])
                    if v112 == "/bring" and v111[2] then
                        local v113 = string.lower(v111[2])
                        local v114
                        if v111[3] and string.sub(v111[3], 1, 1) == "x" then
                            v114 = tonumber(string.sub(v111[3], 2))
                        else
                            v114 = nil
                        end
                        if v113 == "all" then
                            vu102()
                        else
                            vu96(v113, v114)
                        end
                    end
                    if string.sub(v112, 1, 1) == "/" then
                        local v115 = string.sub(v112, 2)
                        if v115 ~= "bring" and (v115 ~= "god" and (v115 ~= "day" and v115 ~= "all")) then
                            local v116
                            if v111[2] and string.sub(v111[2], 1, 1) == "x" then
                                v116 = tonumber(string.sub(v111[2], 2))
                            else
                                v116 = nil
                            end
                            vu96(v115, v116)
                        end
                    end
                    if v112 == "/all" then
                        vu102()
                    end
                    if v112 == "/god" and string.lower(v111[2] or "") == "me" then
                        _G.GodRunning = not _G.GodRunning
                        if _G.GodRunning then
                            task.spawn(function()
                                while _G.GodRunning do
                                    pcall(function()
                                        local v117 = {
                                            - 1 / 0,
                                            60,
                                            49
                                        }
                                        game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("DamagePlayer"):FireServer(unpack(v117))
                                    end)
                                    task.wait(30)
                                end
                            end)
                        end
                    end
                    if v112 == "/day" then
                        vu84 = not vu84
                        vu109(vu84)
                    end
                end)
            end)
        end
    })
    v75:Code({
        Title = "How to use Chat Command",
        Code = "\n/bring <item> xAmount\n  Bring item, e.g. /bring log x3\n\n/<item> xAmount\n  Quick bring, e.g. /log x5\n\n/all or /bring all\n  Bring all items\n\n/day\n  day mode\n\n/god me\n  God mode\n    "
    })
    v75:Code({
        Title = "\239\191\189\239\191\189\224\184\180\224\184\152\224\184\181\224\185\131\224\184\138\224\185\137\224\184\135\224\184\178\224\184\153\224\184\132\224\184\179\224\184\170\224\184\177\224\185\136\224\184\135\224\185\129\224\184\138\224\184\149",
        Code = "\n/bring <\224\185\132\224\184\173\224\185\128\224\184\151\224\184\161> x\224\184\136\224\184\179\224\184\153\224\184\167\224\184\153\n  \224\184\148\224\184\182\224\184\135\224\185\132\224\184\173\224\185\128\224\184\151\224\184\161 \224\185\128\224\184\138\224\185\136\224\184\153 /bring log x3\n\n/<\224\185\132\224\184\173\224\185\128\224\184\151\224\184\161> x\224\184\136\224\184\179\224\184\153\224\184\167\224\184\153\n  \224\184\148\224\184\182\224\184\135\224\185\129\224\184\154\224\184\154\224\184\162\224\185\136\224\184\173 \224\185\128\224\184\138\224\185\136\224\184\153 /log x5\n\n/all \224\184\171\224\184\163\224\184\183\224\184\173 /bring all\n  \224\184\148\224\184\182\224\184\135\224\185\132\224\184\173\224\185\128\224\184\151\224\184\161\224\184\151\224\184\177\224\185\137\224\184\135\224\184\171\224\184\161\224\184\148\n\n/day\n  \224\185\130\224\184\171\224\184\161\224\184\148\224\184\129\224\184\165\224\184\178\224\184\135\224\184\167\224\184\177\224\184\153\n\n/god me\n  \224\185\130\224\184\171\224\184\161\224\184\148\224\184\173\224\184\161\224\184\149\224\184\176\n    "
    })
    local v118 = game:GetService("Players")
    local vu119 = game:GetService("RunService")
    local v120 = v118.LocalPlayer.PlayerGui:WaitForChild("Interface")
    local vu121 = UDim2.new(1, 0, 1, 0)
    local vu122 = UDim2.new(0, 0, 0, 0)
    local function v126(pu123, pu124)
        local vu125 = nil
        return function()
            pu123.Size = vu121
            pu123.Position = vu122
            vu125 = vu119.RenderStepped:Connect(function()
                if pu124() then
                    if pu123.Size ~= vu121 then
                        pu123.Size = vu121
                    end
                    if pu123.Position ~= vu122 then
                        pu123.Position = vu122
                    end
                end
            end)
        end, function()
            if vu125 then
                vu125:Disconnect()
                vu125 = nil
            end
        end
    end
    local v127 = v120:WaitForChild("TamingFluteFrame"):WaitForChild("TimingBar"):WaitForChild("SuccessArea")
    local vu128 = false
    local vu129, vu130 = v126(v127, function()
        return vu128
    end)
    vu9:Register("LockTamingBar", (v12:Section({
        Title = "Taming Pet",
        Icon = "paw-print",
        Box = true,
        Opened = false
    }):Toggle({
        Title = "Auto Taming Pet",
        Desc = "\239\191\189\239\191\189\224\184\173\224\185\130\224\184\149\224\185\137\224\185\128\224\184\151\224\184\161\224\184\170\224\184\177\224\184\149\224\184\167\224\185\140",
        Default = false,
        Callback = function(p131)
            vu128 = p131
            if p131 then
                vu129()
            else
                vu130()
            end
        end
    })))
    local v132 = v120:WaitForChild("FishingCatchFrame"):WaitForChild("TimingBar"):WaitForChild("SuccessArea")
    local vu133 = false
    local vu134, vu135 = v126(v132, function()
        return vu133
    end)
    vu9:Register("LockFishingBar", (v12:Section({
        Title = "Fishing",
        Icon = "fish",
        Box = true,
        Opened = false
    }):Toggle({
        Title = "Auto Fishing",
        Desc = "\239\191\189\239\191\189\224\184\173\224\185\130\224\184\149\224\185\137\224\184\149\224\184\129\224\184\155\224\184\165\224\184\178",
        Default = false,
        Callback = function(p136)
            vu133 = p136
            if p136 then
                vu134()
            else
                vu135()
            end
        end
    })))
    local vu137 = nil
    vu9:Register("AntiAFK", (v12:Section({
        Title = "Anti AFK",
        Icon = "shield",
        Box = true,
        Opened = false
    }):Toggle({
        Title = "Anti AFK",
        Icon = "shield",
        Desc = "\239\191\189\239\191\189\224\184\177\224\184\153\224\185\128\224\184\173\224\185\128\224\184\173\224\184\159\224\185\128\224\184\132",
        Default = false,
        Callback = function(p138)
            if p138 then
                if vu137 then
                    vu137:Disconnect()
                end
                local vu139 = game:GetService("VirtualUser")
                vu137 = vu1.Idled:Connect(function()
                    vu139:CaptureController()
                    vu139:ClickButton2(Vector2.new())
                end)
            elseif vu137 then
                vu137:Disconnect()
                vu137 = nil
            end
        end
    })))
    local vu140 = game:GetService("Lighting")
    local vu141 = {
        ClockTime = vu140.ClockTime,
        Brightness = vu140.Brightness,
        Ambient = vu140.Ambient,
        OutdoorAmbient = vu140.OutdoorAmbient,
        GlobalShadows = vu140.GlobalShadows,
        FogEnd = vu140.FogEnd,
        EnvironmentDiffuseScale = vu140.EnvironmentDiffuseScale,
        EnvironmentSpecularScale = vu140.EnvironmentSpecularScale
    }
    local vu142 = false
    vu9:Register("Bright", (v12:Section({
        Title = "Bright",
        Icon = "sun",
        Box = true,
        Opened = false
    }):Toggle({
        Title = "Bright",
        Icon = "sun",
        Desc = "\239\191\189\239\191\189\224\184\161\224\184\158\224\184\170\224\184\167\224\185\136\224\184\178\224\184\135",
        Default = false,
        Callback = function(p143)
            vu142 = p143
            if p143 then
                task.spawn(function()
                    while vu142 do
                        pcall(function()
                            vu140.ClockTime = 12
                            vu140.Brightness = 4
                            vu140.Ambient = Color3.new(1, 1, 1)
                            vu140.OutdoorAmbient = Color3.new(1, 1, 1)
                            vu140.FogEnd = 1000000
                            vu140.GlobalShadows = false
                            vu140.EnvironmentDiffuseScale = 1
                            vu140.EnvironmentSpecularScale = 1
                            local v144 = vu140
                            local v145, v146, v147 = pairs(v144:GetChildren())
                            while true do
                                local v148
                                v147, v148 = v145(v146, v147)
                                if v147 == nil then
                                    break
                                end
                                if v148:IsA("BloomEffect") or (v148:IsA("ColorCorrectionEffect") or (v148:IsA("BlurEffect") or (v148:IsA("SunRaysEffect") or v148:IsA("DepthOfFieldEffect")))) then
                                    v148.Enabled = false
                                end
                            end
                            local v149 = vu140:FindFirstChildOfClass("Atmosphere")
                            if v149 then
                                v149.Density = 0
                                v149.Offset = 0
                                v149.Glare = 0
                                v149.Haze = 0
                            end
                        end)
                        task.wait(1)
                    end
                end)
            else
                pcall(function()
                    local v150, v151, v152 = pairs(vu141)
                    while true do
                        local v153
                        v152, v153 = v150(v151, v152)
                        if v152 == nil then
                            break
                        end
                        vu140[v152] = v153
                    end
                    local v154 = vu140
                    local v155, v156, v157 = pairs(v154:GetChildren())
                    while true do
                        local v158
                        v157, v158 = v155(v156, v157)
                        if v157 == nil then
                            break
                        end
                        if v158:IsA("BloomEffect") or (v158:IsA("ColorCorrectionEffect") or (v158:IsA("BlurEffect") or (v158:IsA("SunRaysEffect") or v158:IsA("DepthOfFieldEffect")))) then
                            v158.Enabled = true
                        end
                    end
                end)
            end
        end
    })))
    local vu159 = {
        FogStart = vu140.FogStart,
        FogEnd = vu140.FogEnd
    }
    vu9:Register("NoFog", (v12:Section({
        Title = "No Fog",
        Icon = "cloud-off",
        Box = true,
        Opened = false
    }):Toggle({
        Title = "No Fog",
        Icon = "cloud-off",
        Desc = "\239\191\189\239\191\189\224\184\154\224\184\171\224\184\161\224\184\173\224\184\129",
        Default = false,
        Callback = function(p160)
            if p160 then
                vu140.FogStart = 0
                vu140.FogEnd = 999999
            else
                vu140.FogStart = vu159.FogStart
                vu140.FogEnd = vu159.FogEnd
            end
        end
    })))
    local vu161 = game:GetService("RunService")
    local vu162 = nil
    vu9:Register("Noclip", (v12:Section({
        Title = "Noclip",
        Icon = "ghost",
        Box = true,
        Opened = false
    }):Toggle({
        Title = "Noclip",
        Icon = "ghost",
        Desc = "\239\191\189\239\191\189\224\184\176\224\184\165\224\184\184",
        Default = false,
        Callback = function(p163)
            local vu164 = vu1.Character or vu1.CharacterAdded:Wait()
            if p163 then
                vu162 = vu161.Stepped:Connect(function()
                    local v165 = vu164
                    local v166, v167, v168 = pairs(v165:GetDescendants())
                    while true do
                        local v169
                        v168, v169 = v166(v167, v168)
                        if v168 == nil then
                            break
                        end
                        if v169:IsA("BasePart") then
                            v169.CanCollide = false
                        end
                    end
                end)
            else
                if vu162 then
                    vu162:Disconnect()
                    vu162 = nil
                end
                local v170, v171, v172 = pairs(vu164:GetDescendants())
                while true do
                    local v173
                    v172, v173 = v170(v171, v172)
                    if v172 == nil then
                        break
                    end
                    if v173:IsA("BasePart") then
                        v173.CanCollide = true
                    end
                end
            end
        end
    })))
    local vu174 = game:GetService("UserInputService")
    local vu175 = nil
    vu9:Register("InfiniteJump", (v12:Section({
        Title = "Infinite Jump",
        Icon = "arrow-up",
        Box = true,
        Opened = false
    }):Toggle({
        Title = "Infinite Jump",
        Icon = "arrow-up",
        Desc = "\239\191\189\239\191\189\224\184\163\224\184\176\224\185\130\224\184\148\224\184\148\224\185\132\224\184\161\224\185\136\224\184\136\224\184\179\224\184\129\224\184\177\224\184\148",
        Default = false,
        Callback = function(p176)
            local vu177 = (vu1.Character or vu1.CharacterAdded:Wait()):WaitForChild("Humanoid")
            if p176 then
                vu175 = vu174.JumpRequest:Connect(function()
                    if vu177 and vu177.Health > 0 then
                        vu177:ChangeState(Enum.HumanoidStateType.Jumping)
                    end
                end)
            elseif vu175 then
                vu175:Disconnect()
                vu175 = nil
            end
        end
    })))
    local vu178 = 30
    local vu179 = false
    local function vu180()
        return (vu1.Character or vu1.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart")
    end
    local function vu182(p181)
        if p181 then
            p181 = p181:FindFirstChild("FloatForce")
        end
        return p181
    end
    local function vu185(p183)
        local v184 = vu182(p183)
        if not v184 then
            v184 = Instance.new("BodyPosition")
            v184.Name = "FloatForce"
            v184.MaxForce = Vector3.new(0, 1000000, 0)
            v184.P = 10000
            v184.D = 1000
            v184.Parent = p183
        end
        v184.Position = p183.Position + Vector3.new(0, vu178, 0)
        return v184
    end
    local function vu188(p186)
        local v187 = vu182(p186)
        if v187 then
            v187:Destroy()
        end
    end
    local v189 = v12:Section({
        Title = "Float",
        Icon = "cloud",
        Box = true,
        Opened = false
    })
    v189:Input({
        Title = "Float Height",
        Icon = "sliders",
        Desc = "\239\191\189\239\191\189\224\184\167\224\184\178\224\184\161\224\184\170\224\184\185\224\184\135",
        Default = tostring(vu178),
        Callback = function(p190)
            local v191 = tonumber(p190)
            if v191 then
                vu178 = v191
                local v192 = vu180()
                local v193 = vu182(v192)
                if v193 then
                    v193.Position = v192.Position + Vector3.new(0, vu178, 0)
                end
            end
        end
    })
    vu9:Register("Float", (v189:Toggle({
        Title = "Float",
        Icon = "cloud",
        Desc = "\239\191\189\239\191\189\224\184\173\224\184\162",
        Default = false,
        Callback = function(p194)
            vu179 = p194
            local v195 = vu180()
            if p194 then
                vu185(v195)
            else
                vu188(v195)
            end
        end
    })))
    local vu196 = game:GetService("TextChatService"):WaitForChild("ChatWindowConfiguration")
    local vu197 = nil
    v12:Section({
        Title = "Chat Visibility",
        Icon = "message-circle",
        Box = true,
        Opened = false
    }):Toggle({
        Title = "Chat Visibility",
        Icon = "message-circle",
        Desc = "\239\191\189\239\191\189\224\184\170\224\184\148\224\184\135\224\185\129\224\184\138\224\184\151",
        Default = false,
        Callback = function(p198)
            if p198 then
                vu197 = vu161.RenderStepped:Connect(function()
                    vu196.Enabled = true
                end)
            else
                if vu197 then
                    vu197:Disconnect()
                    vu197 = nil
                end
                vu196.Enabled = false
            end
        end
    })
    local v199 = v11:Section({
        Title = "God Mode",
        Icon = "shield",
        Box = true,
        Opened = false
    })
    _G.GodMode = false
    local vu200 = nil
    vu9:Register("GodModeToggle", (v199:Toggle({
        Title = "God Mode",
        Desc = "\239\191\189\239\191\189\224\184\161\224\184\149\224\184\176",
        Default = false,
        Callback = function(p201)
            _G.GodMode = p201
            if p201 then
                vu200 = task.spawn(function()
                    while true do
                        if not _G.GodMode then
                            return
                        end
                        task.spawn(function()
                            local vu202 = {
                                - 1 / 0,
                                60,
                                49
                            }
                            pcall(function()
                                game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("DamagePlayer"):FireServer(unpack(vu202))
                            end)
                        end)
                        for _ = 1, 30 do
                            if not _G.GodMode then
                                break
                            end
                            task.wait(1)
                        end
                    end
                end)
            else
                _G.GodMode = false
            end
        end
    })))
    local v203 = game:GetService("Players")
    local v204 = game:GetService("ReplicatedStorage")
    LocalPlayer = v203.LocalPlayer
    Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    vu21 = Character:WaitForChild("HumanoidRootPart")
    local v205 = v204:WaitForChild("RemoteEvents")
    ToolDamageObject = v205:WaitForChild("ToolDamageObject")
    EquipItemHandle = v205:WaitForChild("EquipItemHandle")
    AutoAttack = false
    AttackRadius = 300
    AttackInterval = 1
    AxeNames = {
        "Old Axe",
        "Good Axe",
        "Ice Axe",
        "Strong Axe",
        "Chainsaw",
        "Admin Axe"
    }
    EnemyCache = {}
    function AddEnemy(p206)
        if p206:IsA("Model") and (p206:FindFirstChild("HumanoidRootPart") and p206 ~= Character) then
            EnemyCache[p206] = true
        end
    end
    function RemoveEnemy(p207)
        if EnemyCache[p207] then
            EnemyCache[p207] = nil
        end
    end
    local v208, v209, v210 = ipairs(workspace:GetDescendants())
    local vu211 = vu21
    while true do
        local v212
        v210, v212 = v208(v209, v210)
        if v210 == nil then
            break
        end
        AddEnemy(v212)
    end
    workspace.DescendantAdded:Connect(AddEnemy)
    workspace.DescendantRemoving:Connect(RemoveEnemy)
    function GetAxe()
        inv = LocalPlayer:FindFirstChild("Inventory")
        if not inv then
            return nil
        end
        local v213, v214, v215 = ipairs(inv:GetChildren())
        while true do
            local v216
            v215, v216 = v213(v214, v215)
            if v215 == nil then
                break
            end
            if table.find(AxeNames, v216.Name) then
                return v216
            end
        end
        return nil
    end
    function AttackTarget(p217, p218)
        if p217 and p217:FindFirstChild("HumanoidRootPart") then
            args = {
                p217,
                p218,
                string.format("%d_%d", math.random(10, 99), math.random(1000000000, 9999999999)),
                CFrame.new(p217.HumanoidRootPart.Position)
            }
            pcall(function()
                ToolDamageObject:InvokeServer(unpack(args))
            end)
        end
    end
    function AttackLoop()
        axe = GetAxe()
        if axe then
            pcall(function()
                EquipItemHandle:FireServer("FireAllClients", axe)
            end)
            while AutoAttack do
                local v219, v220, v221 = pairs(EnemyCache)
                while true do
                    v221 = v219(v220, v221)
                    if v221 == nil then
                        break
                    end
                    if v221 and v221.Parent then
                        hrp = v221:FindFirstChild("HumanoidRootPart")
                        if hrp then
                            dist = (hrp.Position - vu211.Position).Magnitude
                            if dist <= AttackRadius then
                                AttackTarget(v221, axe)
                            end
                        end
                    else
                        EnemyCache[v221] = nil
                    end
                end
                task.wait(AttackInterval)
            end
        end
    end
    AttackSec = v11:Section({
        Title = "Auto Attack",
        Icon = "sword",
        Box = true,
        Opened = false
    })
    AttackSec:Slider({
        Title = "Attack Radius",
        Desc = "\239\191\189\239\191\189\224\184\176\224\184\162\224\184\176\224\185\130\224\184\136\224\184\161\224\184\149\224\184\181",
        Step = 10,
        Value = {
            Min = 100,
            Max = 1000,
            Default = AttackRadius
        },
        Callback = function(p222)
            AttackRadius = math.floor(p222)
        end
    })
    vu9:Register("AttackRadius", AttackSec)
    AttackSec:Slider({
        Title = "Attack Speed",
        Desc = "\239\191\189\239\191\189\224\184\167\224\184\178\224\184\161\224\185\128\224\184\163\224\185\135\224\184\167\224\185\131\224\184\153\224\185\130\224\184\136\224\184\161\224\184\149\224\184\181",
        Step = 0.1,
        Value = {
            Min = 0.2,
            Max = 5,
            Default = AttackInterval
        },
        Callback = function(p223)
            AttackInterval = tonumber(string.format("%.1f", p223))
        end
    })
    vu9:Register("AttackSpeed", AttackSec)
    AttackSec:Toggle({
        Title = "Auto Attack",
        Desc = "\239\191\189\239\191\189\224\184\173\224\185\130\224\184\149\224\185\137\224\185\130\224\184\136\224\184\161\224\184\149\224\184\181",
        Default = false,
        Callback = function(p224)
            AutoAttack = p224
            if p224 then
                task.spawn(AttackLoop)
            end
        end
    })
    vu9:Register("AutoAttack", AttackSec)
    local v225 = game:GetService("Players")
    local v226 = game:GetService("ReplicatedStorage")
    game:GetService("RunService")
    local vu227 = v225.LocalPlayer
    local vu228 = (vu227.Character or vu227.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart")
    local vu229 = v226.RemoteEvents.ToolDamageObject
    local vu230 = v226.RemoteEvents.EquipItemHandle
    local vu231 = {
        "Old Axe",
        "Good Axe",
        "Ice Axe",
        "Strong Axe",
        "Chainsaw",
        "Admin Axe"
    }
    local vu232 = false
    local vu233 = 100
    local vu234 = 1.2
    local vu235 = {}
    local vu236 = {}
    local vu237 = {}
    local vu238 = {}
    local function v240(p239)
        if p239:IsA("Model") and p239.Name == "Small Tree" then
            vu235[p239] = true
        end
    end
    local function v242(p241)
        if vu235[p241] then
            vu235[p241] = nil
            if vu236[p241] then
                vu236[p241]:Destroy()
            end
            vu236[p241] = nil
            vu237[p241] = nil
            vu238[p241] = nil
        end
    end
    local v243, v244, v245 = ipairs(workspace:GetDescendants())
    local vu246 = vu238
    local vu247 = vu237
    local vu248 = vu236
    local vu249 = vu235
    while true do
        local v250
        v245, v250 = v243(v244, v245)
        if v245 == nil then
            break
        end
        v240(v250)
    end
    workspace.DescendantAdded:Connect(v240)
    workspace.DescendantRemoving:Connect(v242)
    local function vu256()
        local v251 = vu227:FindFirstChild("Inventory")
        if v251 then
            local v252, v253, v254 = ipairs(v251:GetChildren())
            while true do
                local v255
                v254, v255 = v252(v253, v254)
                if v254 == nil then
                    break
                end
                if table.find(vu231, v255.Name) then
                    return v255
                end
            end
        end
    end
    local function vu263(p257)
        if vu248[p257] and vu248[p257].Parent then
            return vu248[p257]
        end
        local v258 = p257:FindFirstChildWhichIsA("BasePart")
        if v258 then
            local v259 = Instance.new("BillboardGui")
            v259.Size = UDim2.new(0, 100, 0, 12)
            v259.StudsOffset = Vector3.new(0, 6, 0)
            v259.AlwaysOnTop = true
            v259.Parent = v258
            local v260 = Instance.new("Frame", v259)
            v260.Size = UDim2.new(1, 0, 1, 0)
            v260.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
            v260.BorderSizePixel = 0
            local v261 = Instance.new("Frame", v260)
            v261.Name = "HPBar"
            v261.Size = UDim2.new(1, 0, 1, 0)
            v261.BackgroundColor3 = Color3.fromRGB(0, 255, 200)
            local v262 = Instance.new("TextLabel", v259)
            v262.Size = UDim2.new(1, 0, 1, 0)
            v262.BackgroundTransparency = 1
            v262.TextScaled = true
            v262.Font = Enum.Font.GothamSemibold
            v262.TextColor3 = Color3.new(1, 1, 1)
            v262.Text = "HP 100%"
            vu248[p257] = v259
            return v259
        end
    end
    local function vu268(p264, p265)
        if p264 then
            local v266 = p264:FindFirstChild("HPBar", true)
            local v267 = p264:FindFirstChildOfClass("TextLabel")
            if v266 then
                v266.Size = UDim2.new(p265, 0, 1, 0)
                if p265 > 0.6 then
                    v266.BackgroundColor3 = Color3.fromRGB(0, 255, 200)
                elseif p265 > 0.3 then
                    v266.BackgroundColor3 = Color3.fromRGB(255, 200, 0)
                else
                    v266.BackgroundColor3 = Color3.fromRGB(255, 60, 60)
                end
            end
            if v267 then
                v267.Text = ("HP %d%%"):format(p265 * 100)
            end
        end
    end
    local function vu272(p269)
        local v270 = not (p269:FindFirstChild("Health") or p269:FindFirstChild("health") or p269:FindFirstChild("Stats") and p269.Stats:FindFirstChild("Health")) and p269:FindFirstChild("Values")
        if v270 then
            v270 = p269.Values:FindFirstChild("Health")
        end
        local v271
        if v270 and v270:IsA("NumberValue") then
            v271 = v270.Value
            vu246[p269] = vu246[p269] or v271
        elseif p269:GetAttribute("Health") then
            v271 = p269:GetAttribute("Health")
            vu246[p269] = vu246[p269] or v271
        else
            vu247[p269] = vu247[p269] or 100
            v271 = vu247[p269]
            vu246[p269] = vu246[p269] or 100
        end
        return v271, vu246[p269], v270
    end
    local function vu292()
        local v273 = vu256()
        if v273 then
            while vu232 do
                vu230:FireServer("FireAllClients", v273)
                local v274, v275, v276 = pairs(vu249)
                while true do
                    local vu277 = v274(v275, v276)
                    if vu277 == nil then
                        break
                    end
                    v276 = vu277
                    local vu278 = false
                    local function v279()
                        vu278 = true
                    end
                    if not vu232 then
                        v279()
                    end
                    local v280, v281 = pcall(vu277.GetPivot, vu277)
                    if v280 and (v281 and (v281.Position - vu228.Position).Magnitude <= vu233) then
                        local v282, v283, v284 = vu272(vu277)
                        local v285 = vu263(vu277)
                        vu268(v285, v282 / v283)
                        if v282 > 0 then
                            vu229:InvokeServer(vu277, v273, "999_98989899", CFrame.new(vu228.Position))
                            local v286
                            if v284 then
                                v286 = v284.Value
                            elseif vu277:GetAttribute("Health") then
                                v286 = vu277:GetAttribute("Health")
                            else
                                vu247[vu277] = math.max(0, vu247[vu277] - 10)
                                v286 = vu247[vu277]
                            end
                            vu268(v285, v286 / v283)
                            if v286 <= 0 then
                                task.delay(0.5, function()
                                    if vu248[vu277] then
                                        vu248[vu277]:Destroy()
                                    end
                                    vu248[vu277] = nil
                                end)
                            end
                        end
                    end
                    if vu278 then
                        break
                    end
                end
                task.wait(vu234)
            end
            local v287, v288, v289 = pairs(vu248)
            while true do
                local v290, v291 = v287(v288, v289)
                if v290 == nil then
                    break
                end
                v289 = v290
                if v291 then
                    v291:Destroy()
                end
            end
            vu248 = {}
        end
    end
    local v293 = v11:Section({
        Title = "Auto Cut Tree",
        Icon = "axe",
        Box = true,
        Opened = false
    })
    v293:Slider({
        Title = "Cut Radius",
        Desc = "\239\191\189\239\191\189\224\184\176\224\184\162\224\184\176\224\184\149\224\184\177\224\184\148\224\184\149\224\185\137\224\184\153\224\185\132\224\184\161\224\185\137",
        Step = 10,
        Value = {
            Min = 10,
            Max = 200,
            Default = vu233
        },
        Callback = function(p294)
            vu233 = tonumber(p294) or 100
        end
    })
    vu9:Register("CutRadius", v293)
    v293:Slider({
        Title = "Cut Speed",
        Desc = "\239\191\189\239\191\189\224\184\167\224\184\178\224\184\161\224\185\128\224\184\163\224\185\135\224\184\167\224\185\131\224\184\153\224\184\129\224\184\178\224\184\163\224\184\149\224\184\177\224\184\148",
        Step = 0.1,
        Value = {
            Min = 0.2,
            Max = 5,
            Default = vu234
        },
        Callback = function(p295)
            vu234 = tonumber(p295) or 1.2
        end
    })
    vu9:Register("CutSpeed", v293)
    v293:Toggle({
        Title = "Auto Cut Tree",
        Desc = "\239\191\189\239\191\189\224\184\173\224\185\130\224\184\149\224\185\137\224\184\149\224\184\177\224\184\148\224\184\149\224\185\137\224\184\153\224\185\132\224\184\161\224\185\137",
        Icon = "axe",
        Default = false,
        Callback = function(p296)
            vu232 = p296
            if p296 then
                task.spawn(vu292)
            end
        end
    })
    vu9:Register("AutoCutSmallTree", v293)
    local v297 = game:GetService("Players")
    local v298 = game:GetService("ReplicatedStorage")
    local vu299 = game:GetService("Workspace")
    local vu300 = v297.LocalPlayer
    Remote = v298:WaitForChild("RemoteEvents"):WaitForChild("RequestPlantItem")
    LoopPlant = false
    PlantShapeMode = "Circle"
    PlantCenterMode = "Me"
    Radius = 20
    TreeCount = 12
    WaitTime = 0.15
    TowerLayers = 6
    TowerStepY = 2
    BaseHeight = 0
    ShowPreview = false
    PreviewParts = {}
    LastArgs = nil
    char = vu300.Character or vu300.CharacterAdded:Wait()
    local vu301 = char:WaitForChild("HumanoidRootPart")
    Map = vu299:FindFirstChild("Map")
    local v302 = Map
    if v302 then
        v302 = Map:FindFirstChild("Campground")
    end
    Camp = v302
    local v303 = Camp
    if v303 then
        v303 = Camp:FindFirstChild("MainFire")
    end
    MainFire = v303
    mt = getrawmetatable(game)
    setreadonly(mt, false)
    oldNamecall = mt.__namecall
    function mt.__namecall(p304, ...)
        method = getnamecallmethod()
        if p304 == Remote and method == "InvokeServer" then
            LastArgs = {
                ...
            }
        end
        return oldNamecall(p304, ...)
    end
    function GetPlantCenterCFrame()
        char = vu300.Character or vu300.CharacterAdded:Wait()
        vu301 = char:WaitForChild("HumanoidRootPart")
        if PlantCenterMode == "Fire" and MainFire then
            zone = MainFire:FindFirstChild("InnerTouchZone", true)
            if zone and zone:IsA("BasePart") then
                return zone.CFrame * CFrame.new(0, 10, 0)
            end
            part = MainFire:FindFirstChildWhichIsA("BasePart", true)
            if part then
                return part.CFrame * CFrame.new(0, 10, 0)
            end
            if MainFire:IsA("Model") then
                return MainFire:GetPivot() * CFrame.new(0, 10, 0)
            end
            if MainFire:IsA("BasePart") then
                return MainFire.CFrame * CFrame.new(0, 10, 0)
            end
        end
        return vu301.CFrame
    end
    function ClearPreview()
        for v305 = 1, # PreviewParts do
            if PreviewParts[v305] then
                PreviewParts[v305]:Destroy()
            end
        end
        table.clear(PreviewParts)
    end
    function FastBall(p306)
        p = Instance.new("Part")
        p.Shape = Enum.PartType.Ball
        p.Color = Color3.fromRGB(0, 255, 200)
        p.Material = Enum.Material.Neon
        p.Anchored = true
        p.CanCollide = false
        p.Size = Vector3.new(0.7, 0.7, 0.7)
        p.CFrame = CFrame.new(p306)
        p.Parent = vu299
        PreviewParts[# PreviewParts + 1] = p
    end
    function ShowPlantPreview()
        ClearPreview()
        if ShowPreview then
            cf = GetPlantCenterCFrame()
            center = cf.Position
            if PlantShapeMode ~= "Circle" then
                if PlantShapeMode ~= "Square" then
                    if PlantShapeMode == "Tower" then
                        rad = Radius / 2
                        step = 2 * math.pi / TreeCount
                        for v307 = 1, TowerLayers do
                            h = TowerStepY * v307 + BaseHeight
                            for v308 = 1, TreeCount do
                                ang = step * v308
                                FastBall(center + Vector3.new(math.cos(ang) * rad, h, math.sin(ang) * rad))
                            end
                        end
                    end
                else
                    step = math.max(2, math.floor(Radius / 4))
                    for v309 = - Radius, Radius, step do
                        local v310 = v309
                        for v311 = - Radius, Radius, step do
                            if math.abs(v310) >= Radius - step or math.abs(v311) >= Radius - step then
                                FastBall(center + Vector3.new(v310, BaseHeight, v311))
                            end
                        end
                    end
                end
            else
                step = 2 * math.pi / TreeCount
                for v312 = 1, TreeCount do
                    ang = step * v312
                    FastBall(center + Vector3.new(math.cos(ang) * Radius, BaseHeight, math.sin(ang) * Radius))
                end
            end
        end
    end
    function FastInvoke(p313)
        if LastArgs then
            pcall(Remote.InvokeServer, Remote, LastArgs[1], p313)
        end
    end
    function StartPlanting()
        if not LastArgs then
            return
        end
        cf = GetPlantCenterCFrame()
        center = cf.Position
        if PlantShapeMode ~= "Circle" then
            if PlantShapeMode ~= "Square" then
                if PlantShapeMode == "Tower" then
                    rad = Radius / 2
                    step = 2 * math.pi / TreeCount
                    for v314 = 1, TowerLayers do
                        if not LoopPlant then
                            break
                        end
                        h = TowerStepY * v314 + BaseHeight
                        for v315 = 1, TreeCount do
                            if not LoopPlant then
                                break
                            end
                            ang = step * v315
                            FastInvoke(center + Vector3.new(math.cos(ang) * rad, h, math.sin(ang) * rad))
                            task.wait(WaitTime)
                        end
                    end
                end
            else
                step = math.max(2, math.floor(Radius / 4))
                for v316 = - Radius, Radius, step do
                    if not LoopPlant then
                        break
                    end
                    local _ = v316
                    for v317 = - Radius, Radius, step do
                        if not LoopPlant then
                            break
                        end
                        if math.abs(v316) >= Radius - step or math.abs(v317) >= Radius - step then
                            FastInvoke(center + Vector3.new(v316, BaseHeight, v317))
                            task.wait(WaitTime)
                        end
                    end
                end
            end
        else
            step = 2 * math.pi / TreeCount
            for v318 = 1, TreeCount do
                if not LoopPlant then
                    break
                end
                ang = step * v318
                FastInvoke(center + Vector3.new(math.cos(ang) * Radius, BaseHeight, math.sin(ang) * Radius))
                task.wait(WaitTime)
            end
        end
    end
    PlantSec = v11:Section({
        Title = "Sapling infinite",
        Icon = "leaf",
        Box = true,
        Opened = false
    })
    PlantSec:Dropdown({
        Title = "Pattern Shape",
        Desc = "\239\191\189\239\191\189\224\184\165\224\184\183\224\184\173\224\184\129\224\184\163\224\184\185\224\184\155\224\185\129\224\184\154\224\184\154",
        Values = {
            "Circle",
            "Square",
            "Tower"
        },
        Default = "Circle",
        Callback = function(p319)
            PlantShapeMode = p319
        end
    })
    PlantSec:Dropdown({
        Title = "Center Point",
        Desc = "\239\191\189\239\191\189\224\184\165\224\184\183\224\184\173\224\184\129\224\184\136\224\184\184\224\184\148",
        Values = {
            "Me",
            "Fire"
        },
        Default = "Me",
        Callback = function(p320)
            PlantCenterMode = p320
        end
    })
    PlantSec:Slider({
        Title = "Plant Radius",
        Desc = "\239\191\189\239\191\189\224\184\167\224\184\178\224\184\161\224\184\129\224\184\167\224\185\137\224\184\178\224\184\135",
        Value = {
            Min = 10,
            Max = 100,
            Default = 20
        },
        Step = 1,
        Callback = function(p321)
            Radius = p321
        end
    })
    PlantSec:Slider({
        Title = "Density",
        Desc = "\239\191\189\239\191\189\224\184\179\224\184\153\224\184\167\224\184\153\224\184\149\224\185\137\224\184\153",
        Value = {
            Min = 6,
            Max = 500,
            Default = 12
        },
        Step = 1,
        Callback = function(p322)
            TreeCount = p322
        end
    })
    PlantSec:Slider({
        Title = "Tower Layers",
        Desc = "\239\191\189\239\191\189\224\184\179\224\184\153\224\184\167\224\184\153\224\184\138\224\184\177\224\185\137\224\184\153",
        Value = {
            Min = 2,
            Max = 20,
            Default = 6
        },
        Step = 1,
        Callback = function(p323)
            TowerLayers = p323
        end
    })
    PlantSec:Slider({
        Title = "Base Height",
        Desc = "\239\191\189\239\191\189\224\184\167\224\184\178\224\184\161\224\184\170\224\184\185\224\184\135",
        Value = {
            Min = - 20,
            Max = 20,
            Default = 0
        },
        Step = 0.5,
        Callback = function(p324)
            BaseHeight = p324
        end
    })
    PlantSec:Toggle({
        Title = "Show The Ball",
        Desc = "\239\191\189\239\191\189\224\184\170\224\184\148\224\184\135 Preview",
        Default = false,
        Callback = function(p325)
            ShowPreview = p325
            if p325 then
                task.spawn(function()
                    while ShowPreview do
                        ShowPlantPreview()
                        task.wait(0.5)
                    end
                    ClearPreview()
                end)
            else
                ClearPreview()
            end
        end
    })
    PlantSec:Toggle({
        Title = "Auto Plant",
        Desc = "\239\191\189\239\191\189\224\184\165\224\184\185\224\184\129\224\184\173\224\184\177\224\184\149\224\185\130\224\184\153\224\184\161\224\184\177\224\184\149\224\184\180",
        Default = false,
        Callback = function(p326)
            LoopPlant = p326
            if p326 then
                task.spawn(function()
                    while LoopPlant do
                        if LastArgs then
                            StartPlanting()
                        end
                        task.wait(1)
                    end
                end)
            end
        end
    })
    local vu327 = game:GetService("TweenService")
    local vu328 = game:GetService("Players").LocalPlayer
    local vu329 = 50
    local vu330 = 100
    local vu331 = false
    local vu332 = nil
    local vu333 = nil
    local vu334 = 20
    local vu335 = 0
    local function vu339()
        local v336 = workspace:FindFirstChild("Map") and workspace.Map:FindFirstChild("Campground")
        if v336 then
            v336 = workspace.Map.Campground:FindFirstChild("MainFire")
        end
        if v336 then
            local v337 = v336:FindFirstChild("InnerTouchZone", true)
            if v337 and v337:IsA("BasePart") then
                return v337.Position
            else
                local v338 = v336:FindFirstChildWhichIsA("BasePart", true)
                if v338 then
                    return v338.Position
                else
                    return v336:IsA("Model") and v336:GetPivot().Position or v336.Position
                end
            end
        else
            return nil
        end
    end
    local function vu351()
        if not vu331 then
            vu331 = true
            local vu340 = (vu328.Character or vu328.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart")
            if vu333 then
                vu340.CFrame = vu333
                task.wait(0.05)
            end
            vu332 = task.spawn(function()
                local v341 = vu334
                local v342 = vu335
                while true do
                    local v343 = vu331 and vu339()
                    if not v343 then
                        break
                    end
                    local v344 = v343.X
                    local v345 = v343.Y
                    local v346 = v343.Z
                    for v347 = v342, 360, 15 do
                        if not vu331 then
                            return
                        end
                        vu335 = v347
                        vu334 = v341
                        local v348 = math.rad(v347)
                        local v349 = Vector3.new(v344 + math.cos(v348) * v341, v345 + vu329, v346 + math.sin(v348) * v341)
                        local v350 = (vu340.Position - v349).Magnitude / vu330
                        vu327:Create(vu340, TweenInfo.new(v350, Enum.EasingStyle.Linear), {
                            CFrame = CFrame.new(v349)
                        }):Play()
                        task.wait(v350)
                    end
                    v342 = 0
                    v341 = v341 + 100
                    vu334 = v341
                end
            end)
        end
    end
    local function vu354()
        vu331 = false
        local v352 = (vu328.Character or vu328.CharacterAdded:Wait()):FindFirstChild("HumanoidRootPart")
        if v352 then
            vu333 = v352.CFrame
        end
        if vu332 then
            task.cancel(vu332)
            vu332 = nil
        end
        task.wait(0.03)
        local v353 = vu339()
        if v353 and v352 then
            v352.CFrame = CFrame.new(v353.X, v353.Y + 5, v353.Z)
        end
    end
    local v355 = v11:Section({
        Title = "Load Map",
        Icon = "loader",
        Box = true,
        Opened = false
    })
    vu9:Register("TweenHeight", (v355:Slider({
        Title = "Tween Height",
        Desc = "\239\191\189\239\191\189\224\184\167\224\184\178\224\184\161\224\184\170\224\184\185\224\184\135",
        Step = 1,
        Value = {
            Min = 10,
            Max = 200,
            Default = vu329
        },
        Callback = function(p356)
            vu329 = tonumber(p356)
        end
    })))
    vu9:Register("MoveSpeed", (v355:Slider({
        Title = "Tween Speed",
        Desc = "\239\191\189\239\191\189\224\184\167\224\184\178\224\184\161\224\185\128\224\184\163\224\185\135\224\184\167",
        Step = 5,
        Value = {
            Min = 1,
            Max = 300,
            Default = vu330
        },
        Callback = function(p357)
            vu330 = tonumber(p357)
        end
    })))
    vu9:Register("FireTweenToggle", (v355:Toggle({
        Title = "Auto Load Map",
        Desc = "\239\191\189\239\191\189\224\184\173\224\185\130\224\184\149\224\185\137\224\185\128\224\184\155\224\184\180\224\184\148\224\185\129\224\184\161\224\184\158",
        Default = false,
        Callback = function(p358)
            if p358 then
                vu351()
            else
                vu354()
            end
        end
    })))
    local vu359 = game:GetService("Players")
    local v360 = game:GetService("ReplicatedStorage")
    local vu361 = game:GetService("Workspace")
    local vu362 = vu359.LocalPlayer
    local vu363 = (vu362.Character or vu362.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart")
    local v364 = v360:WaitForChild("RemoteEvents")
    local vu365 = v364:FindFirstChild("RequestStartDraggingItem")
    local vu366 = v364:FindFirstChild("StopDraggingItem")
    local vu367 = v364:FindFirstChild("ToolDamageObject")
    local vu368 = v364:FindFirstChild("EquipItemHandle")
    local vu369 = vu361:WaitForChild("Items")
    local function vu373(pu370, pu371)
        if pu370 and pu371 then
            pcall(function()
                local v372 = pu370.PrimaryPart or pu370:FindFirstChildWhichIsA("BasePart")
                if v372 then
                    if v372.CFrame ~= pu371 then
                        v372.CFrame = pu371
                    end
                    vu365:FireServer(pu370)
                    task.wait(0.15)
                    vu366:FireServer(pu370)
                end
            end)
        end
    end
    local function vu375()
        local v374 = vu361:FindFirstChild("Structures")
        if v374 then
            v374 = vu361.Structures:FindFirstChild("Crock Pot")
        end
        if v374 then
            v374 = v374:FindFirstChild("Base")
        end
        if v374 then
            v374 = v374:FindFirstChildWhichIsA("BasePart", true)
        end
        return v374
    end
    local vu376 = {
        "Old Axe",
        "Good Axe",
        "Ice Axe",
        "Strong Axe",
        "Chainsaw",
        "Admin Axe"
    }
    local function vu382()
        local v377 = vu362:FindFirstChild("Inventory")
        local v378, v379, v380 = ipairs(v377 and v377:GetChildren() or {})
        while true do
            local v381
            v380, v381 = v378(v379, v380)
            if v380 == nil then
                break
            end
            if table.find(vu376, v381.Name) then
                return v381
            end
        end
    end
    local function vu386(pu383, pu384)
        local vu385 = pu383:FindFirstChild("HumanoidRootPart")
        if vu385 then
            pcall(function()
                vu367:InvokeServer(pu383, pu384, tostring(math.random(10, 99)) .. "_" .. tostring(math.random(1000000000, 10000000000)), CFrame.new(vu385.Position))
            end)
        end
    end
    local function vu389(p387)
        local v388 = vu369:FindFirstChild("Turkey Leg")
        if v388 then
            vu373(v388, p387.CFrame * CFrame.new(0, 10, 0))
        end
    end
    local function vu398(p390, p391)
        local v392 = vu369
        local v393, v394, v395 = ipairs(v392:GetChildren())
        local v396 = 0
        while true do
            local v397
            v395, v397 = v393(v394, v395)
            if v395 == nil then
                break
            end
            if v397.Name == "Berry" then
                vu373(v397, p390.CFrame * CFrame.new(0, 10, 0))
                v396 = v396 + 1
                if (p391 or 2) <= v396 then
                    break
                end
            end
        end
    end
    local v399 = v13:Section({
        Title = "Auto Cook",
        Icon = "utensils",
        Box = true,
        Opened = false
    })
    local v439 = {
        {
            Name = "Cook Turkey Legs",
            Desc = "\239\191\189\239\191\189\224\184\179\224\184\130\224\184\178\224\185\132\224\184\129\224\185\136\224\184\135\224\184\167\224\184\135",
            Action = function()
                if not vu375() then
                    return
                end
                local v400 = vu361
                local v401, v402, v403 = ipairs(v400:GetDescendants())
                local v404 = nil
                while true do
                    local v405
                    v403, v405 = v401(v402, v403)
                    if v403 == nil then
                        v405 = v404
                        break
                    end
                    if v405.Name == "Turkey" and v405:FindFirstChild("HumanoidRootPart") then
                        break
                    end
                end
                if v405 then
                    local vu406 = vu382()
                    if vu406 then
                        pcall(function()
                            vu368:FireServer("FireAllClients", vu406)
                        end)
                        local v407 = v405:FindFirstChild("HumanoidRootPart")
                        while v405 and v405.Parent do
                            if v407 and vu363.CFrame ~= v407.CFrame * CFrame.new(0, 0, 3) then
                                vu363.CFrame = v407.CFrame * CFrame.new(0, 0, 3)
                            end
                            vu386(v405, vu406)
                            task.wait(0)
                        end
                        local v408 = vu375()
                        if v408 then
                            vu363.CFrame = v408.CFrame + Vector3.new(0, 0, 5)
                            task.wait(0.2)
                            vu389(v408)
                            task.wait(0.2)
                            vu398(v408)
                        end
                    end
                else
                    return
                end
            end
        },
        {
            Name = "Cook Berry Juice",
            Desc = "\239\191\189\239\191\189\224\184\179\224\184\153\224\185\137\224\184\179\224\185\128\224\184\154\224\184\173\224\184\163\224\185\140\224\184\163\224\184\181\224\185\136",
            Action = function()
                local v409 = vu375()
                if not v409 then
                    return
                end
                local v410 = vu369
                local v411, v412, v413 = ipairs(v410:GetChildren())
                local v414 = 0
                while true do
                    local v415
                    v413, v415 = v411(v412, v413)
                    if v413 == nil then
                        break
                    end
                    if v415.Name == "Berry" then
                        vu373(v415, v409.CFrame * CFrame.new(0, 10, 0))
                        v414 = v414 + 1
                        if v414 >= 2 then
                            break
                        end
                    end
                end
                local v416 = vu369
                local v417, v418, v419 = ipairs(v416:GetChildren())
                while true do
                    local v420
                    v419, v420 = v417(v418, v419)
                    if v419 == nil then
                        break
                    end
                    if v420.Name == "Sweet Potato" then
                        vu373(v420, v409.CFrame * CFrame.new(0, 10, 0))
                        break
                    end
                end
            end
        },
        {
            Name = "Cook Casserole",
            Desc = "\239\191\189\239\191\189\224\184\179\224\185\129\224\184\132\224\184\170\224\185\128\224\184\139\224\184\173\224\185\130\224\184\163\224\184\165",
            Action = function()
                local v421 = vu382()
                if not v421 then
                    return
                end
                local v422, v423, v424 = ipairs({
                    "Wolf",
                    "Bunny"
                })
                while true do
                    local v425
                    v424, v425 = v422(v423, v424)
                    if v424 == nil then
                        local v426 = vu375()
                        if v426 then
                            vu363.CFrame = v426.CFrame + Vector3.new(0, 0, 5)
                            local v427, v428, v429 = ipairs({
                                "Steak",
                                "Morsel",
                                "Carrot"
                            })
                            while true do
                                local v430
                                v429, v430 = v427(v428, v429)
                                if v429 == nil then
                                    break
                                end
                                local v431 = vu369:FindFirstChild(v430)
                                if v431 then
                                    vu373(v431, v426.CFrame * CFrame.new(0, 10, 0))
                                end
                                task.wait(0.15)
                            end
                        end
                        return
                    end
                    local v432 = vu361
                    local v433, v434, v435 = ipairs(v432:GetDescendants())
                    local v436 = nil
                    while true do
                        local v437
                        v435, v437 = v433(v434, v435)
                        if v435 == nil then
                            v437 = v436
                        end
                        if v437.Name == v425 and v437:FindFirstChild("HumanoidRootPart") then
                            break
                        end
                    end
                    if v437 then
                        local v438 = v437:FindFirstChild("HumanoidRootPart")
                        while v437 and v437.Parent do
                            if v438 and vu363.CFrame ~= v438.CFrame * CFrame.new(0, 0, 4) then
                                vu363.CFrame = v438.CFrame * CFrame.new(0, 0, 4)
                            end
                            vu386(v437, v421)
                            task.wait(0)
                        end
                    end
                end
            end
        }
    }
    local v440, v441, v442 = ipairs(v439)
    local vu443 = vu328
    local vu444 = vu339
    local vu445 = vu369
    local vu446 = vu366
    local vu447 = vu365
    local vu448 = vu363
    while true do
        local vu449
        v442, vu449 = v440(v441, v442)
        if v442 == nil then
            break
        end
        local v450 = v399:Button({
            Title = vu449.Name,
            Desc = vu449.Desc,
            Callback = function()
                task.spawn(vu449.Action)
            end
        })
        vu9:Register(vu449.Name:gsub("%s", "") .. "Button", v450)
    end
    local vu451 = v13:Section({
        Title = "Teleport Pet Event",
        Icon = "paw-print",
        Box = true,
        Opened = false
    })
    local function v462(pu452, p453)
        local v461 = vu451:Button({
            Title = "Tp To " .. pu452,
            Desc = p453,
            Callback = function()
                local v454, v455, v456 = ipairs(workspace:GetDescendants())
                local v457 = nil
                while true do
                    local v458
                    v456, v458 = v454(v455, v456)
                    local v459
                    if v456 == nil then
                        v459 = v457
                        break
                    end
                    if v458.Name == pu452 then
                        v459 = v458:FindFirstChild("HumanoidRootPart")
                        if v459 then
                            break
                        end
                    end
                end
                if v459 then
                    local v460 = v459.CFrame + Vector3.new(0, 3, 0)
                    if vu448.CFrame ~= v460 then
                        vu448.CFrame = v460
                    end
                end
            end
        })
        vu9:Register("Warp" .. pu452 .. "Button", v461)
    end
    local v463, v464, v465 = ipairs({
        {
            "Turkey",
            "\239\191\189\239\191\189\224\184\178\224\184\155\224\185\132\224\184\155\224\184\171\224\184\178\224\185\132\224\184\129\224\185\136\224\184\135\224\184\167\224\184\135"
        },
        {
            "Wolf",
            "\239\191\189\239\191\189\224\184\178\224\184\155\224\185\132\224\184\155\224\184\171\224\184\178\224\184\171\224\184\161\224\184\178\224\184\155\224\185\136\224\184\178"
        },
        {
            "Bunny",
            "\239\191\189\239\191\189\224\184\178\224\184\155\224\185\132\224\184\155\224\184\171\224\184\178\224\184\129\224\184\163\224\184\176\224\184\149\224\185\136\224\184\178\224\184\162"
        },
        {
            "Mammoth",
            "\239\191\189\239\191\189\224\184\178\224\184\155\224\185\132\224\184\155\224\184\171\224\184\178\224\185\129\224\184\161\224\184\161\224\184\161\224\184\173\224\184\152"
        }
    })
    while true do
        local v466
        v465, v466 = v463(v464, v465)
        if v465 == nil then
            break
        end
        v462(v466[1], v466[2])
    end
    local vu467 = v13:Section({
        Title = "Bring",
        Icon = "cooking-pot",
        Box = true,
        Opened = false
    })
    local function v474(pu468, p469)
        local v473 = vu467:Button({
            Title = "Bring " .. pu468,
            Desc = p469,
            Callback = function()
                local v470 = vu448.CFrame * CFrame.new(0, 0, - 5)
                local v471 = workspace.Items:FindFirstChild(pu468)
                local v472 = v471 and (v471.PrimaryPart or v471:FindFirstChildWhichIsA("BasePart"))
                if v472 then
                    if v472.CFrame ~= v470 then
                        v472.CFrame = v470
                    end
                    vu447:FireServer(v471)
                    task.wait(0.15)
                    vu446:FireServer(v471)
                end
            end
        })
        vu9:Register("Bring" .. pu468 .. "Button", v473)
    end
    local v475, v476, v477 = ipairs({
        {
            "Carrot",
            "\239\191\189\239\191\189\224\184\182\224\184\135\224\185\129\224\184\132\224\184\163\224\184\173\224\184\151"
        },
        {
            "Berry",
            "\239\191\189\239\191\189\224\184\182\224\184\135\224\185\128\224\184\154\224\184\173\224\184\163\224\185\140\224\184\163\224\184\181\224\185\136"
        },
        {
            "Turkey Leg",
            "\239\191\189\239\191\189\224\184\182\224\184\135\224\184\130\224\184\178\224\185\132\224\184\129\224\185\136\224\184\135\224\184\167\224\184\135"
        },
        {
            "Sweet Potato",
            "\239\191\189\239\191\189\224\184\182\224\184\135\224\184\161\224\184\177\224\184\153\224\185\128\224\184\151\224\184\168"
        },
        {
            "Steak",
            "\239\191\189\239\191\189\224\184\182\224\184\135\224\184\170\224\185\128\224\184\149\224\185\135\224\184\129"
        },
        {
            "Morsel",
            "\239\191\189\239\191\189\224\184\182\224\184\135\224\185\128\224\184\153\224\184\183\224\185\137\224\184\173\224\184\173\224\184\176\224\185\132\224\184\163\224\185\132\224\184\161\224\185\136\224\184\163\224\184\185\224\185\137"
        },
        {
            "Corn",
            "\239\191\189\239\191\189\224\184\182\224\184\135\224\184\130\224\185\137\224\184\178\224\184\167\224\185\130\224\184\158\224\184\148"
        },
        {
            "Turkey Leg",
            "\239\191\189\239\191\189\224\184\182\224\184\135\224\184\130\224\184\178\224\185\132\224\184\129\224\185\136\224\184\135\224\184\167\224\184\135\224\184\151\224\184\181\224\185\136\224\184\155\224\184\163\224\184\184\224\184\135\224\185\129\224\184\165\224\185\137\224\184\167"
        },
        {
            "Stuffings",
            "\239\191\189\239\191\189\224\184\182\224\184\135\224\185\132\224\184\170\224\185\137\224\185\132\224\184\129\224\185\136\224\184\135\224\184\167\224\184\135"
        },
        {
            "Cake",
            "\239\191\189\239\191\189\224\184\182\224\184\135\224\185\128\224\184\132\224\185\137\224\184\129"
        },
        {
            "Pumpkin",
            "\239\191\189\239\191\189\224\184\182\224\184\135\224\184\159\224\184\177\224\184\129\224\184\151\224\184\173\224\184\135"
        },
        {
            "Chillies",
            "\239\191\189\239\191\189\224\184\182\224\184\135\224\184\158\224\184\163\224\184\180\224\184\129"
        },
        {
            "Ribs",
            "\239\191\189\239\191\189\224\184\182\224\184\135\224\184\139\224\184\181\224\185\136\224\185\130\224\184\132\224\184\163\224\184\135\224\185\129\224\184\161\224\184\161\224\184\161\224\184\173\224\184\152"
        },
        {
            "Swordfish",
            "\239\191\189\239\191\189\224\184\182\224\184\135\224\184\155\224\184\165\224\184\178\224\184\148\224\184\178\224\184\154"
        }
    })
    while true do
        local v478
        v477, v478 = v475(v476, v477)
        if v477 == nil then
            break
        end
        v474(v478[1], v478[2])
    end
    local vu479 = {
        "Me",
        "Machine",
        "Fire"
    }
    _G.SelectedTarget = _G.SelectedTarget or "Fire"
    local vu480 = table.clone(vu479)
    local function vu486()
        vu480 = table.clone(vu479)
        local v481 = vu359
        local v482, v483, v484 = ipairs(v481:GetPlayers())
        while true do
            local v485
            v484, v485 = v482(v483, v484)
            if v484 == nil then
                break
            end
            if v485 ~= vu443 then
                table.insert(vu480, v485.Name)
            end
        end
    end
    vu486()
    local vu488 = vu14:Dropdown({
        Title = "Select Bring Target",
        Icon = "map-pin",
        Values = vu480,
        Default = _G.SelectedTarget,
        Desc = "\239\191\189\239\191\189\224\184\165\224\184\183\224\184\173\224\184\129\224\184\155\224\184\165\224\184\178\224\184\162\224\184\151\224\184\178\224\184\135\224\184\129\224\184\178\224\184\163\224\184\148\224\184\182\224\184\135",
        Callback = function(p487)
            _G.SelectedTarget = p487
        end
    })
    vu9:Register("BringTargetDropdown", vu488)
    task.spawn(function()
        while task.wait(20000) do
            local v489 = table.concat(vu480, ",")
            vu486()
            if v489 ~= table.concat(vu480, ",") then
                vu488:Refresh(vu480, true)
            end
        end
    end)
    function _G.GetTargetCFrame()
        local v490 = (vu443.Character or vu443.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart")
        if _G.SelectedTarget ~= "Me" then
            if _G.SelectedTarget ~= "Machine" then
                if _G.SelectedTarget ~= "Fire" then
                    local v491 = vu359:FindFirstChild(_G.SelectedTarget)
                    if v491 and v491.Character and v491.Character:FindFirstChild("HumanoidRootPart") then
                        return v491.Character.HumanoidRootPart.CFrame * CFrame.new(0, 10, 0)
                    else
                        return v490.CFrame * CFrame.new(0, 10, 0)
                    end
                else
                    local v492 = workspace:FindFirstChild("Map")
                    if v492 then
                        v492 = v492:FindFirstChild("Campground")
                    end
                    if v492 then
                        v492 = v492:FindFirstChild("MainFire")
                    end
                    if v492 then
                        local v493 = v492:FindFirstChild("InnerTouchZone", true)
                        if v493 and v493:IsA("BasePart") then
                            return v493.CFrame * CFrame.new(0, 10, 0)
                        end
                        local v494 = v492:FindFirstChildWhichIsA("BasePart", true)
                        if v494 then
                            return v494.CFrame * CFrame.new(0, 10, 0)
                        end
                        if v492:IsA("Model") then
                            return v492:GetPivot() * CFrame.new(0, 10, 0)
                        end
                        if v492:IsA("BasePart") then
                            return v492.CFrame * CFrame.new(0, 10, 0)
                        end
                    end
                    return v490.CFrame * CFrame.new(0, 10, 0)
                end
            else
                local v495 = workspace:FindFirstChild("Map")
                if v495 then
                    v495 = v495:FindFirstChild("Campground")
                end
                if v495 then
                    v495 = v495:FindFirstChild("Scrapper")
                end
                if v495 then
                    v495 = v495:FindFirstChild("Movers")
                end
                local v496 = v495 and v495:FindFirstChild("Left") and v495.Left:FindFirstChild("GrindersLeft")
                if v496 then
                    if v496:IsA("BasePart") then
                        return v496.CFrame * CFrame.new(0, 10, 0)
                    end
                    if v496:IsA("Model") then
                        return v496:GetPivot() * CFrame.new(0, 10, 0)
                    end
                end
                return v490.CFrame * CFrame.new(0, 10, 0)
            end
        else
            return v490.CFrame * CFrame.new(0, 10, 0)
        end
    end
    local function vu499(pu497)
        task.spawn(function()
            pcall(function()
                if _G.GetTargetCFrame then
                    local v498 = _G.GetTargetCFrame()
                    if v498 then
                        pu497.PrimaryPart.CFrame = v498
                        task.wait(0.3)
                        vu447:FireServer(pu497)
                        task.wait(0.3)
                        vu446:FireServer(pu497)
                    end
                else
                    return
                end
            end)
        end)
    end
    local vu500 = {}
    function RegisterSmartCounter(p501, p502)
        vu500[p501] = p502
    end
    task.spawn(function()
        while task.wait(3) do
            local v503, v504, v505 = pairs(vu500)
            while true do
                local v506
                v505, v506 = v503(v504, v505)
                if v505 == nil then
                    break
                end
                pcall(v506)
            end
        end
    end)
    local function v538(pu507)
        local v508 = vu14:Section({
            Title = pu507.Title,
            Icon = pu507.Icon,
            Box = true,
            TextSize = 18,
            Opened = false
        })
        local vu509 = {}
        local v511 = v508:Dropdown({
            Title = "Select " .. pu507.Name,
            Icon = pu507.DropIcon,
            Values = pu507.ItemList,
            Multi = true,
            Default = {},
            Desc = "\239\191\189\239\191\189\224\184\165\224\184\183\224\184\173\224\184\129 " .. pu507.Name,
            Callback = function(p510)
                vu509 = p510
            end
        })
        vu9:Register(pu507.ID .. "_Dropdown", v511)
        local v522 = v508:Toggle({
            Title = "Bring " .. pu507.Name,
            Icon = "magnet",
            Desc = "\239\191\189\239\191\189\224\184\182\224\184\135 " .. pu507.Name,
            Default = false,
            Callback = function(p512)
                _G[pu507.ID .. "_Active"] = p512
                if p512 then
                    task.spawn(function()
                        while _G[pu507.ID .. "_Active"] do
                            pcall(function()
                                local v513 = vu445
                                local v514, v515, v516 = ipairs(v513:GetChildren())
                                while true do
                                    local v517
                                    v516, v517 = v514(v515, v516)
                                    if v516 == nil then
                                        break
                                    end
                                    if v517.PrimaryPart then
                                        local v518, v519, v520 = ipairs(vu509)
                                        while true do
                                            local v521
                                            v520, v521 = v518(v519, v520)
                                            if v520 == nil then
                                                break
                                            end
                                            if v517.Name == v521 then
                                                vu499(v517)
                                                task.wait(0.1)
                                            end
                                        end
                                    end
                                end
                            end)
                            task.wait(1)
                        end
                    end)
                end
            end
        })
        vu9:Register(pu507.ID .. "_Toggle", v522)
        local vu523 = v508:Code({
            Title = "Item Count",
            Code = "Loading..."
        })
        local function vu535()
            local v524, v525, v526 = ipairs(pu507.ItemList)
            local v527 = {}
            while true do
                local v528
                v526, v528 = v524(v525, v526)
                if v526 == nil then
                    break
                end
                local v529 = vu445
                local v530, v531, v532 = ipairs(v529:GetChildren())
                local v533 = 0
                while true do
                    local v534
                    v532, v534 = v530(v531, v532)
                    if v532 == nil then
                        break
                    end
                    if v534.Name == v528 and v534.PrimaryPart then
                        v533 = v533 + 1
                    end
                end
                table.insert(v527, string.format("%s [%d]", v528, v533))
            end
            return v527
        end
        local vu536 = ""
        RegisterSmartCounter(pu507.ID, function()
            local v537 = table.concat(vu535(), "\n")
            if v537 ~= vu536 then
                vu536 = v537
                vu523:SetCode(v537)
            end
        end)
    end
    v538({
        ID = "Fuel",
        Name = "Fuel",
        Title = "Fuel Items",
        Icon = "flame",
        DropIcon = "fire-extinguisher",
        ItemList = {
            "Log",
            "Chair",
            "Biofuel",
            "Coal",
            "Fuel Canister",
            "Oil Barrel"
        }
    })
    v538({
        ID = "Scrap",
        Name = "Scrap",
        Title = "Scrap Items",
        Icon = "settings",
        DropIcon = "wrench",
        ItemList = {
            "Bolt",
            "Sheet Metal",
            "UFO Junk",
            "UFO Component",
            "Broken Fan",
            "Old Radio",
            "Broken Microwave",
            "Tyre",
            "Metal Chair",
            "Old Car Engine",
            "Washing Machine",
            "Cultist Experiment",
            "Cultist Prototype",
            "UFO Scrap"
        }
    })
    v538({
        ID = "Heal",
        Name = "Healing Item",
        Title = "Healing Items",
        Icon = "heart-pulse",
        DropIcon = "first-aid-kit",
        ItemList = {
            "Bandage",
            "Medkit",
            "Cake",
            "Hearty Stew",
            "BBQ Ribs",
            "Carrot Cake",
            "Jar o\' Jelly"
        }
    })
    v538({
        ID = "Material",
        Name = "Material",
        Title = "Materials",
        Icon = "box",
        DropIcon = "boxes",
        ItemList = {
            "Wood",
            "Scrap",
            "Cultist Gem",
            "Forest Gem",
            "Forest Gem Fragment",
            "Mossy Coin",
            "Flower",
            "Sapling",
            "Sacrifice Totem",
            "Meteor Shard",
            "Gold Shard",
            "Raw Obsidiron Ore",
            "Raw Obsidiron Ore (Shard)",
            "Scalding Obsidiron Ingot",
            "Obsidiron Ingot"
        }
    })
    v538({
        ID = "Food",
        Name = "Food",
        Title = "Food Items",
        Icon = "utensils",
        DropIcon = "shopping-basket",
        ItemList = {
            "Carrot",
            "Corn",
            "Pumpkin",
            "Berry",
            "Apple",
            "Morsel",
            "Cooked Morsel",
            "Steak",
            "Cooked Steak",
            "Ribs",
            "Cooked Ribs",
            "Cake",
            "Chili",
            "Stew",
            "Hearty Stew",
            "Meat Sandwich",
            "Seafood Chowder",
            "Steak Dinner",
            "Pumpkin Soup",
            "BBQ Ribs",
            "Carrot Cake",
            "Jar o\' Jelly",
            "Candy Apple",
            "Candy Corn",
            "Pumpkin Pie",
            "Cotton Candy"
        }
    })
    v538({
        ID = "Fish",
        Name = "Fish",
        Title = "Fish Items",
        Icon = "fish",
        DropIcon = "anchor",
        ItemList = {
            "Mackerel",
            "Cooked Mackerel",
            "Salmon",
            "Cooked Salmon",
            "Clownfish",
            "Cooked Clownfish",
            "Jellyfish",
            "Char",
            "Cooked Char",
            "Eel",
            "Cooked Eel",
            "Swordfish",
            "Cooked Swordfish",
            "Shark",
            "Cooked Shark",
            "Lava Eel",
            "Cooked Lava Eel",
            "Lionfish",
            "Cooked Lionfish"
        }
    })
    v538({
        ID = "Seed",
        Name = "Seed",
        Title = "Seed Packs",
        Icon = "leaf",
        DropIcon = "sprout",
        ItemList = {
            "Chili Seeds",
            "Flower Seeds",
            "Berry Seeds",
            "Firefly Seeds",
            "Dripleaf Seeds",
            "Moonflower Seeds",
            "Stareweed Seeds",
            "Cavevine Seeds",
            "Mandrake Seeds"
        }
    })
    v538({
        ID = "Weapon",
        Name = "Weapon",
        Title = "Melee Weapons",
        Icon = "sword",
        DropIcon = "swords",
        ItemList = {
            "Spear",
            "Morningstar",
            "Katana",
            "Laser Sword",
            "Ice Sword",
            "Trident",
            "Poison Spear",
            "Infernal Sword",
            "Cultist King Mace",
            "Obsidiron Hammer",
            "Scythe",
            "Vampire Scythe"
        }
    })
    v538({
        ID = "Ranged",
        Name = "Ranged Weapon",
        Title = "Ranged Weapons",
        Icon = "crosshair",
        DropIcon = "target",
        ItemList = {
            "Revolver",
            "Rifle",
            "Tactical Shotgun",
            "Snowball",
            "Frozen Shuriken",
            "Kunai",
            "Ray Gun",
            "Laser Cannon",
            "Flamethrower",
            "Crossbow",
            "Infernal Crossbow",
            "Witch Potion",
            "Bouncing Blade",
            "Wildfire",
            "Air Rifle"
        }
    })
    v538({
        ID = "Ammo",
        Name = "Ammo",
        Title = "Ammunition",
        Icon = "box",
        DropIcon = "zap",
        ItemList = {
            "Revolver Ammo",
            "Rifle Ammo",
            "Shotgun Ammo",
            "Fuel Canister",
            "Oil Barrel"
        }
    })
    v538({
        ID = "Armor",
        Name = "Armor",
        Title = "Armor Items",
        Icon = "shield",
        DropIcon = "shield-half",
        ItemList = {
            "Leather Body",
            "Poison Armor",
            "Iron Body",
            "Thorn Body",
            "Alien Armor",
            "Vampire Cloak"
        }
    })
    v538({
        ID = "Stack",
        Name = "Sack",
        Title = "Stack",
        Icon = "archive",
        DropIcon = "package",
        ItemList = {
            "Old Sack",
            "Good Sack",
            "Infernal Sack",
            "Giant Sack",
            "Admin Sack"
        }
    })
    v538({
        ID = "Axe",
        Name = "Axe",
        Title = "Axes Tools",
        Icon = "axe",
        DropIcon = "hammer",
        ItemList = {
            "Old Axe",
            "Good Axe",
            "Ice Axe",
            "Strong Axe",
            "Chainsaw",
            "Admin Axe"
        }
    })
    v538({
        ID = "Rod",
        Name = "Rod",
        Title = "Rods Tools",
        Icon = "fish",
        DropIcon = "anchor",
        ItemList = {
            "Old Rod",
            "Good Rod",
            "Strong Rod"
        }
    })
    v538({
        ID = "Flute",
        Name = "Flute",
        Title = "Flutes",
        Icon = "music",
        DropIcon = "volume-2",
        ItemList = {
            "Old Taming Flute",
            "Good Taming Flute",
            "Strong Taming Flute"
        }
    })
    v538({
        ID = "Corpse",
        Name = "Corpse",
        Title = "Fuel Corpses",
        Icon = "skull",
        DropIcon = "skull",
        ItemList = {
            "Cultist Corpse",
            "Crossbow Cultist Corpse",
            "Juggernaut Cultist Corpse",
            "Cultist King Corpse",
            "Alien Corpse",
            "Elite Alien Corpse",
            "Wolf Corpse",
            "Alpha Wolf Corpse",
            "Bear Corpse"
        }
    })
    v538({
        ID = "Pelts",
        Name = "Pelts",
        Title = "Pelts Items",
        Icon = "feather",
        DropIcon = "paw-print",
        ItemList = {
            "Bunny Foot",
            "Wolf Pelt",
            "Alpha Wolf Pelt",
            "Bear Pelt",
            "Arctic Fox Pelt",
            "Polar Bear Pelt",
            "Mammoth Tusk",
            "Scorpion Shell",
            "Cultist King Antler"
        }
    })
    v538({
        ID = "Blueprint",
        Name = "Blueprint",
        Title = "Blueprints",
        Icon = "book-open",
        DropIcon = "clipboard-list",
        ItemList = {
            "Crafting Blueprint",
            "Defense Blueprint",
            "Furniture Blueprint",
            "Obsidiron Chest Blueprint",
            "Halloween Blueprint"
        }
    })
    v538({
        ID = "Key",
        Name = "Key",
        Title = "Keys",
        Icon = "key-round",
        DropIcon = "key",
        ItemList = {
            "Red Key",
            "Blue Key",
            "Yellow Key",
            "Grey Key",
            "Frog Key"
        }
    })
    v538({
        ID = "Anvil",
        Name = "Anvil Part",
        Title = "Anvil Parts",
        Icon = "hammer",
        DropIcon = "wrench",
        ItemList = {
            "Anvil Front",
            "Anvil Back",
            "Anvil Base",
            "Meteor Anvil Front",
            "Meteor Anvil Back",
            "Meteor Anvil Base"
        }
    })
    v538({
        ID = "Potion",
        Name = "Potion Ingredient",
        Title = "Potion Ingredients",
        Icon = "flask-round",
        DropIcon = "flask-conical",
        ItemList = {
            "Dripleaf",
            "Moonflower Bulb",
            "Stareweed Petal",
            "Cave Vine Flower",
            "Mandrake"
        }
    })
    v538({
        ID = "Junk",
        Name = "Junk",
        Title = "Junk Items",
        Icon = "trash-2",
        DropIcon = "trash",
        ItemList = {
            "Old Boot",
            "Feather",
            "Carnival Ticket",
            "Balloon",
            "Party Hat"
        }
    })
    v538({
        ID = "Other",
        Name = "Other",
        Title = "Other Items",
        Icon = "puzzle",
        DropIcon = "puzzle-piece",
        ItemList = {
            "Seasoning",
            "Carnival Basketball",
            "Carnival Ring"
        }
    })
    v538({
        ID = "Flashlight",
        Name = "Flashlight",
        Title = "Flashlights",
        Icon = "flashlight",
        DropIcon = "lightbulb",
        ItemList = {
            "Old Flashlight",
            "Strong Flashlight"
        }
    })
    v538({
        ID = "Trim",
        Name = "Trim Kit",
        Title = "Trim Kits",
        Icon = "swords",
        DropIcon = "wrench",
        ItemList = {
            "Axe Trim Kit",
            "Armor Trim Kit"
        }
    })
    v538({
        ID = "Warm",
        Name = "Warm Clothing",
        Title = "Warm Clothing",
        Icon = "thermometer-snowflake",
        DropIcon = "cloud-snow",
        ItemList = {
            "Earmuffs",
            "Beanie",
            "Arctic Fox Hat",
            "Polar Bear Hat",
            "Mammoth Helmet"
        }
    })
    v538({
        ID = "Boots",
        Name = "Boots",
        Title = "Boots Items",
        Icon = "footprints",
        DropIcon = "footprints",
        ItemList = {
            "Frog Boots",
            "Obsidiron Boots"
        }
    })
    v538({
        ID = "MiscWear",
        Name = "Wearable",
        Title = "Miscellaneous Wearables",
        Icon = "user",
        DropIcon = "hard-hat",
        ItemList = {
            "Infernal Helmet"
        }
    })
    v538({
        ID = "ClassItems",
        Name = "Class",
        Title = "Class exclusive",
        Icon = "award",
        DropIcon = "briefcase",
        ItemList = {
            "Flamethrower",
            "Watering Can",
            "Chef\'s Station",
            "Recipe Book",
            "Katana",
            "Front of Support Notes",
            "Back of Support Notes",
            "Cultist Staff",
            "Witch Potion"
        }
    })
    v538({
        ID = "ChestItems",
        Name = "Chest Item",
        Title = "Chest Item",
        Icon = "box",
        DropIcon = "briefcase",
        ItemList = {
            "Item Chest",
            "Item Chest1",
            "Item Chest2",
            "Item Chest3",
            "Item Chest4",
            "Item Chest5",
            "Item Chest6"
        }
    })
    local vu539 = v15:Section({
        Title = "Teleport Pet",
        Icon = "paw-print",
        Box = true,
        Opened = false
    })
    local function v550(pu540, p541)
        local v549 = vu539:Button({
            Title = "Tp To " .. pu540,
            Desc = p541,
            Callback = function()
                local v542, v543, v544 = ipairs(workspace:GetDescendants())
                local v545 = nil
                while true do
                    local v546
                    v544, v546 = v542(v543, v544)
                    local v547
                    if v544 == nil then
                        v547 = v545
                        break
                    end
                    if v546.Name == pu540 then
                        v547 = v546:FindFirstChild("HumanoidRootPart")
                        if v547 then
                            break
                        end
                    end
                end
                if v547 then
                    local v548 = v547.CFrame + Vector3.new(0, 3, 0)
                    if vu448.CFrame ~= v548 then
                        vu448.CFrame = v548
                    end
                end
            end
        })
        vu9:Register("Warp" .. pu540 .. "Button", v549)
    end
    local v551, v552, v553 = ipairs({
        {
            "Bunny",
            "\239\191\189\239\191\189\224\184\178\224\184\155\224\185\132\224\184\155\224\184\171\224\184\178\224\184\129\224\184\163\224\184\176\224\184\149\224\185\136\224\184\178\224\184\162"
        },
        {
            "Bear",
            "\239\191\189\239\191\189\224\184\178\224\184\155\224\185\132\224\184\155\224\184\171\224\184\178\224\184\171\224\184\161\224\184\181"
        },
        {
            "Alpha Wolf",
            "\239\191\189\239\191\189\224\184\178\224\184\155\224\185\132\224\184\155\224\184\171\224\184\178\224\184\171\224\184\161\224\184\178\224\184\155\224\185\136\224\184\178\224\184\173\224\184\177\224\184\165\224\184\159\224\185\136\224\184\178"
        },
        {
            "Wolf",
            "\239\191\189\239\191\189\224\184\178\224\184\155\224\185\132\224\184\155\224\184\171\224\184\178\224\184\171\224\184\161\224\184\178\224\184\155\224\185\139\224\184\178"
        },
        {
            "Mammoth",
            "\239\191\189\239\191\189\224\184\178\224\184\155\224\185\132\224\184\155\224\184\171\224\184\178\224\185\129\224\184\161\224\184\161\224\184\161\224\184\173\224\184\152"
        },
        {
            "Scorpion",
            "\239\191\189\239\191\189\224\184\178\224\184\155\224\185\132\224\184\155\224\184\171\224\184\178\224\185\129\224\184\161\224\184\135\224\184\155\224\185\136\224\184\173\224\184\135"
        },
        {
            "Arctic Fox",
            "\239\191\189\239\191\189\224\184\178\224\184\155\224\185\132\224\184\155\224\184\171\224\184\178\224\184\170\224\184\184\224\184\153\224\184\177\224\184\130\224\184\136\224\184\180\224\185\137\224\184\135\224\184\136\224\184\173\224\184\129\224\184\173\224\184\178\224\184\163\224\185\140\224\184\129\224\184\149\224\184\180\224\184\129"
        },
        {
            "Polar Bear",
            "\239\191\189\239\191\189\224\184\178\224\184\155\224\185\132\224\184\155\224\184\171\224\184\178\224\184\171\224\184\161\224\184\181\224\184\171\224\184\180\224\184\161\224\184\176"
        },
        {
            "Hellephant",
            "\239\191\189\239\191\189\224\184\178\224\184\155\224\185\132\224\184\155\224\184\171\224\184\178\224\185\128\224\184\174\224\184\165\224\185\128\224\184\165\224\185\129\224\184\159\224\184\153\224\184\151\224\185\140"
        },
        {
            "Green Frog",
            "\239\191\189\239\191\189\224\184\178\224\184\155\224\185\132\224\184\155\224\184\171\224\184\178\224\184\129\224\184\154\224\185\128\224\184\130\224\184\181\224\184\162\224\184\167"
        },
        {
            "Kiwi",
            "\239\191\189\239\191\189\224\184\178\224\184\155\224\185\132\224\184\155\224\184\171\224\184\178\224\184\129\224\184\181\224\184\167\224\184\181"
        }
    })
    while true do
        local v554
        v553, v554 = v551(v552, v553)
        if v553 == nil then
            break
        end
        v550(v554[1], v554[2])
    end
    local v555 = v15:Section({
        Title = "Lost Child",
        Icon = "baby",
        Box = true,
        Opened = false
    })
    v555:Button({
        Title = "Lost Child 1",
        Desc = "\239\191\189\239\191\189\224\184\178\224\184\155\224\185\132\224\184\155\224\185\128\224\184\148\224\185\135\224\184\129\224\184\132\224\184\153\224\184\151\224\184\181\224\185\136 1",
        Callback = function()
            task.spawn(function()
                local v556 = workspace:FindFirstChild("Characters")
                if v556 then
                    v556 = v556:FindFirstChild("Lost Child")
                end
                if v556 then
                    local v557 = v556:FindFirstChild("HumanoidRootPart")
                    if v557 then
                        (vu443.Character or vu443.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart").CFrame = CFrame.new(v557.Position)
                    end
                else
                    return
                end
            end)
        end
    })
    v555:Button({
        Title = "Lost Child 2",
        Desc = "\239\191\189\239\191\189\224\184\178\224\184\155\224\185\132\224\184\155\224\185\128\224\184\148\224\185\135\224\184\129\224\184\132\224\184\153\224\184\151\224\184\181\224\185\136 2",
        Callback = function()
            task.spawn(function()
                local v558 = workspace:FindFirstChild("Characters")
                if v558 then
                    v558 = v558:FindFirstChild("Lost Child2")
                end
                if v558 then
                    local v559 = v558:FindFirstChild("HumanoidRootPart")
                    if v559 then
                        (vu443.Character or vu443.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart").CFrame = CFrame.new(v559.Position)
                    end
                else
                    return
                end
            end)
        end
    })
    v555:Button({
        Title = "Lost Child 3",
        Desc = "\239\191\189\239\191\189\224\184\178\224\184\155\224\185\132\224\184\155\224\185\128\224\184\148\224\185\135\224\184\129\224\184\132\224\184\153\224\184\151\224\184\181\224\185\136 3",
        Callback = function()
            task.spawn(function()
                local v560 = workspace:FindFirstChild("Characters")
                if v560 then
                    v560 = v560:FindFirstChild("Lost Child3")
                end
                if v560 then
                    local v561 = v560:FindFirstChild("HumanoidRootPart")
                    if v561 then
                        (vu443.Character or vu443.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart").CFrame = CFrame.new(v561.Position)
                    end
                else
                    return
                end
            end)
        end
    })
    v555:Button({
        Title = "Lost Child 4",
        Desc = "\239\191\189\239\191\189\224\184\178\224\184\155\224\185\132\224\184\155\224\185\128\224\184\148\224\185\135\224\184\129\224\184\132\224\184\153\224\184\151\224\184\181\224\185\136 4",
        Callback = function()
            task.spawn(function()
                local v562 = workspace:FindFirstChild("Characters")
                if v562 then
                    v562 = v562:FindFirstChild("Lost Child4")
                end
                if v562 then
                    local v563 = v562:FindFirstChild("HumanoidRootPart")
                    if v563 then
                        (vu443.Character or vu443.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart").CFrame = CFrame.new(v563.Position)
                    end
                else
                    return
                end
            end)
        end
    })
    local v564 = v15:Section({
        Title = "Cave Entrance",
        Icon = "door-open",
        Box = true,
        TextSize = 18,
        Opened = false
    })
    local function vu572(pu565)
        task.spawn(function()
            local v566 = game:GetService("Players").LocalPlayer
            local v567 = (v566.Character or v566.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart")
            local v568 = workspace:FindFirstChild("Map")
            if v568 then
                local v569 = v568:FindFirstChild("Landmarks")
                if v569 then
                    local v570 = v569:FindFirstChild(pu565)
                    if v570 then
                        local v571 = v570:IsA("BasePart") and v570 and v570 or v570:FindFirstChildWhichIsA("BasePart")
                        if v571 then
                            v567.CFrame = v571.CFrame + Vector3.new(0, 50, 0)
                        end
                    else
                        return
                    end
                else
                    return
                end
            else
                return
            end
        end)
    end
    v564:Button({
        Title = "Cave Entrance 1",
        Desc = "\239\191\189\239\191\189\224\184\178\224\184\155\224\185\132\224\184\155\224\184\151\224\184\178\224\184\135\224\185\128\224\184\130\224\185\137\224\184\178\224\184\150\224\185\141\224\185\137\224\184\178 1",
        Callback = function()
            vu572("Cave Entrance1")
        end
    })
    v564:Button({
        Title = "Cave Entrance 2",
        Desc = "\239\191\189\239\191\189\224\184\178\224\184\155\224\185\132\224\184\155\224\184\151\224\184\178\224\184\135\224\185\128\224\184\130\224\185\137\224\184\178\224\184\150\224\185\137\224\184\179 2",
        Callback = function()
            vu572("Cave Entrance2")
        end
    })
    v564:Button({
        Title = "Cave Entrance 3",
        Desc = "\239\191\189\239\191\189\224\184\178\224\184\155\224\185\132\224\184\155\224\184\151\224\184\178\224\184\135\224\185\128\224\184\130\224\185\137\224\184\178\224\184\150\224\185\137\224\184\179 3",
        Callback = function()
            vu572("Cave Entrance3")
        end
    })
    v564:Button({
        Title = "Cave Entrance 4",
        Desc = "\239\191\189\239\191\189\224\184\178\224\184\155\224\185\132\224\184\155\224\184\151\224\184\178\224\184\135\224\185\128\224\184\130\224\185\137\224\184\178\224\184\150\224\185\137\224\184\179 4",
        Callback = function()
            vu572("Cave Entrance4")
        end
    })
    v564:Button({
        Title = "Cave Entrance 5",
        Desc = "\239\191\189\239\191\189\224\184\178\224\184\155\224\185\132\224\184\155\224\184\151\224\184\178\224\184\135\224\185\128\224\184\130\224\185\137\224\184\178\224\184\150\224\185\137\224\184\179 5",
        Callback = function()
            vu572("Cave Entrance5")
        end
    })
    local v573 = v15:Section({
        Title = "Teleport",
        Icon = "map-pin",
        Box = true,
        Opened = false
    })
    v573:Button({
        Title = "Camp Fire",
        Desc = "\239\191\189\239\191\189\224\184\178\224\184\155\224\185\132\224\184\155\224\184\129\224\184\173\224\184\135\224\185\132\224\184\159",
        Callback = function()
            task.spawn(function()
                local v574 = vu444()
                if v574 then
                    (vu443.Character or vu443.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart").CFrame = CFrame.new(v574 + Vector3.new(0, 60, 0))
                end
            end)
        end
    })
    v573:Button({
        Title = "Stronghold",
        Desc = "\239\191\189\239\191\189\224\184\178\224\184\155\224\185\132\224\184\155\224\184\170\224\184\149\224\184\163\224\184\173\224\184\135\224\185\130\224\184\174\224\184\165",
        Callback = function()
            task.spawn(function()
                local v575 = game:GetService("Players").LocalPlayer
                local v576 = (v575.Character or v575.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart")
                local v577 = workspace:FindFirstChild("Map")
                if v577 then
                    local v578 = v577:FindFirstChild("Landmarks")
                    if v578 then
                        local v579 = v578:FindFirstChild("Stronghold")
                        if v579 then
                            local v580 = v579:FindFirstChild("Building")
                            if v580 then
                                local v581 = v580:FindFirstChild("Sign")
                                if v581 then
                                    local v582 = v581:FindFirstChild("ScaledModel")
                                    if v582 then
                                        local v583 = v582:FindFirstChildWhichIsA("BasePart", true)
                                        if v583 then
                                            v576.CFrame = CFrame.new(v583.Position + Vector3.new(0, 5, 0))
                                        end
                                    else
                                        return
                                    end
                                else
                                    return
                                end
                            else
                                return
                            end
                        else
                            return
                        end
                    else
                        return
                    end
                else
                    return
                end
            end)
        end
    })
    v573:Button({
        Title = "Volcano",
        Desc = "\239\191\189\239\191\189\224\184\178\224\184\155\224\185\132\224\184\155\224\184\160\224\184\185\224\185\128\224\184\130\224\184\178\224\185\132\224\184\159",
        Callback = function()
            task.spawn(function()
                local v584 = game:GetService("Players").LocalPlayer
                local v585 = (v584.Character or v584.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart")
                local v586 = workspace:FindFirstChild("Map")
                if v586 then
                    local v587 = v586:FindFirstChild("Landmarks")
                    if v587 then
                        local v588 = v587:FindFirstChild("Volcano")
                        if v588 then
                            local v589 = v588:FindFirstChild("Functional")
                            if v589 then
                                local v590 = v589:FindFirstChild("Sacrifice")
                                if v590 then
                                    local v591 = v590:FindFirstChild("Altar")
                                    if v591 then
                                        local v592 = v591:FindFirstChild("Platform")
                                        if v592 then
                                            local v593 = v592.Position
                                            v585.CFrame = CFrame.new(v593 + Vector3.new(0, 5, 0))
                                        end
                                    else
                                        return
                                    end
                                else
                                    return
                                end
                            else
                                return
                            end
                        else
                            return
                        end
                    else
                        return
                    end
                else
                    return
                end
            end)
        end
    })
    v573:Button({
        Title = "Ice Castle",
        Desc = "\239\191\189\239\191\189\224\184\178\224\184\155\224\185\132\224\184\155\224\184\155\224\184\163\224\184\178\224\184\170\224\184\178\224\184\151\224\184\153\224\185\141\224\185\137\224\184\178\224\185\129\224\184\130\224\185\135\224\184\135",
        Callback = function()
            task.spawn(function()
                local v594 = game:GetService("Players").LocalPlayer
                local v595 = (v594.Character or v594.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart")
                local v596 = workspace:FindFirstChild("Map")
                if v596 then
                    local v597 = v596:FindFirstChild("Landmarks")
                    if v597 then
                        local v598 = v597:FindFirstChild("Ice Temple")
                        if v598 then
                            local v599 = v598:FindFirstChild("MidSection")
                            if v599 then
                                local v600 = v599:GetChildren()[4]
                                if v600 then
                                    local v601 = v600:GetChildren()[27]
                                    if v601 then
                                        local v602 = v601:IsA("BasePart") or v601:FindFirstChildWhichIsA("BasePart", true)
                                        if v602 then
                                            v595.CFrame = CFrame.new(v602.Position + Vector3.new(0, 5, 0))
                                        end
                                    else
                                        return
                                    end
                                else
                                    return
                                end
                            else
                                return
                            end
                        else
                            return
                        end
                    else
                        return
                    end
                else
                    return
                end
            end)
        end
    })
    v16:Section({
        Title = "JobId Tools"
    })
    v16:Button({
        Title = "Join Link",
        Desc = "\239\191\189\239\191\189\224\184\177\224\184\148\224\184\165\224\184\173\224\184\129\224\184\165\224\184\180\224\185\137\224\184\135\224\184\136\224\184\173\224\184\162",
        Callback = function()
            local v603 = game.PlaceId
            local v604 = game.JobId
            if v604 and v604 ~= "" then
                local v605 = string.format("https://www.roblox.com/games/start?placeId=%s&launchData=%s/%s", v603, v603, v604)
                setclipboard(v605)
                vu62:Notify({
                    Title = "XEPHEX HUB",
                    Content = "\239\191\189\239\191\189\224\184\177\224\184\148\224\184\165\224\184\173\224\184\129\224\184\165\224\184\180\224\184\135\224\185\129\224\184\165\224\185\137\224\184\167!",
                    Duration = 5,
                    Icon = "rbxassetid://80283328189076"
                })
            else
                vu62:Notify({
                    Title = "XEPHEX HUB",
                    Content = "\239\191\189\239\191\189\224\184\161\224\185\136\224\185\128\224\184\136\224\184\173 JobId \224\184\130\224\184\173\224\184\135\224\185\128\224\184\139\224\184\180\224\184\163\224\185\140\224\184\159\224\185\128\224\184\167\224\184\173\224\184\163\224\185\140\224\184\153\224\184\181\224\185\137",
                    Duration = 5,
                    Icon = "rbxassetid://80283328189076"
                })
            end
        end
    })
    local vu606 = ""
    v16:Button({
        Title = "Copy JobId",
        Desc = "\239\191\189\239\191\189\224\184\177\224\184\148\224\184\165\224\184\173\224\184\129\224\185\132\224\184\173\224\184\148\224\184\181\224\185\128\224\184\139\224\184\180\224\184\163\224\185\140\224\184\159\224\185\128\224\184\167\224\184\173\224\184\163\224\185\140",
        Callback = function()
            setclipboard(tostring(game.JobId))
            vu62:Notify({
                Title = "XEPHEX HUB",
                Content = "\239\191\189\239\191\189\224\184\177\224\184\148\224\184\165\224\184\173\224\184\129 JobId \224\185\129\224\184\165\224\185\137\224\184\167",
                Duration = 5,
                Icon = "rbxassetid://80283328189076"
            })
        end
    })
    v16:Input({
        Title = "JobId",
        Placeholder = "\239\191\189\239\191\189\224\184\170\224\185\136 JobId",
        Default = "",
        Callback = function(p607)
            vu606 = p607 or ""
        end
    })
    v16:Button({
        Title = "Teleport To JobId",
        Desc = "\239\191\189\239\191\189\224\184\173\224\184\162\224\185\128\224\184\139\224\184\180\224\184\163\224\185\140\224\184\159\224\185\128\224\184\167\224\184\173\224\184\163\224\185\140\224\184\148\224\185\137\224\184\167\224\184\162 JobId",
        Callback = function()
            if vu606 == "" then
                vu62:Notify({
                    Title = "XEPHEX HUB",
                    Content = "\239\191\189\239\191\189\224\184\163\224\184\184\224\184\147\224\184\178\224\185\131\224\184\170\224\185\136 JobId \224\184\129\224\185\136\224\184\173\224\184\153",
                    Duration = 5,
                    Icon = "rbxassetid://80283328189076"
                })
            else
                game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, vu606)
            end
        end
    })
    task.defer(function()
        pcall(function()
            vu9:Load()
            vu62:Notify({
                Title = "XEPHEX  HUB",
                Content = "Load",
                Duration = 1
            })
        end)
    end)
    task.spawn(function()
        while task.wait(1) do
            pcall(function()
                vu9:Save()
            end)
        end
    end)
    v8:OnClose(function()
        pcall(function()
            vu9:Save()
        end)
    end)
    vu443.OnTeleport:Connect(function()
        pcall(function()
            vu9:Save()
        end)
    end)
else
    game.Players.LocalPlayer:Kick("Please Execute in Loader")
end