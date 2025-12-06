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
                    Content = "hi " .. vu1.Name,
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
    local vu9 = v8.ConfigManager:CreateConfig("Forsaken")
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
        Title = "Esp",
        Icon = "eye"
    })
    local v14 = v8:Tab({
        Title = "Server",
        Icon = "server"
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
    local vu15 = nil
    local v18 = v12:Section({
        Title = "Anti AFK",
        Icon = "shield",
        Box = true,
        Opened = false
    }):Toggle({
        Title = "Anti AFK",
        Icon = "shield",
        Desc = "\239\191\189\239\191\189\224\184\177\224\184\153\224\185\128\224\184\173\224\185\128\224\184\173\224\184\159\224\185\128\224\184\132",
        Default = false,
        Callback = function(p16)
            if p16 then
                if vu15 then
                    vu15:Disconnect()
                end
                local vu17 = game:GetService("VirtualUser")
                vu15 = vu1.Idled:Connect(function()
                    vu17:CaptureController()
                    vu17:ClickButton2(Vector2.new())
                end)
            elseif vu15 then
                vu15:Disconnect()
                vu15 = nil
            end
        end
    })
    local v19 = vu9
    vu9.Register(v19, "AntiAFK", v18)
    local vu20 = game:GetService("Lighting")
    local vu21 = {
        ClockTime = vu20.ClockTime,
        Brightness = vu20.Brightness,
        Ambient = vu20.Ambient,
        OutdoorAmbient = vu20.OutdoorAmbient,
        GlobalShadows = vu20.GlobalShadows,
        FogEnd = vu20.FogEnd,
        EnvironmentDiffuseScale = vu20.EnvironmentDiffuseScale,
        EnvironmentSpecularScale = vu20.EnvironmentSpecularScale
    }
    local vu22 = false
    local v39 = v12:Section({
        Title = "Bright",
        Icon = "sun",
        Box = true,
        Opened = false
    }):Toggle({
        Title = "Bright",
        Icon = "sun",
        Desc = "\239\191\189\239\191\189\224\184\161\224\184\158\224\184\170\224\184\167\224\185\136\224\184\178\224\184\135",
        Default = false,
        Callback = function(p23)
            vu22 = p23
            if p23 then
                task.spawn(function()
                    while vu22 do
                        pcall(function()
                            vu20.ClockTime = 12
                            vu20.Brightness = 4
                            vu20.Ambient = Color3.new(1, 1, 1)
                            vu20.OutdoorAmbient = Color3.new(1, 1, 1)
                            vu20.FogEnd = 1000000
                            vu20.GlobalShadows = false
                            vu20.EnvironmentDiffuseScale = 1
                            vu20.EnvironmentSpecularScale = 1
                            local v24 = vu20
                            local v25, v26, v27 = pairs(v24:GetChildren())
                            while true do
                                local v28
                                v27, v28 = v25(v26, v27)
                                if v27 == nil then
                                    break
                                end
                                if v28:IsA("BloomEffect") or (v28:IsA("ColorCorrectionEffect") or (v28:IsA("BlurEffect") or (v28:IsA("SunRaysEffect") or v28:IsA("DepthOfFieldEffect")))) then
                                    v28.Enabled = false
                                end
                            end
                            local v29 = vu20:FindFirstChildOfClass("Atmosphere")
                            if v29 then
                                v29.Density = 0
                                v29.Offset = 0
                                v29.Glare = 0
                                v29.Haze = 0
                            end
                        end)
                        task.wait(1)
                    end
                end)
            else
                pcall(function()
                    local v30, v31, v32 = pairs(vu21)
                    while true do
                        local v33
                        v32, v33 = v30(v31, v32)
                        if v32 == nil then
                            break
                        end
                        vu20[v32] = v33
                    end
                    local v34 = vu20
                    local v35, v36, v37 = pairs(v34:GetChildren())
                    while true do
                        local v38
                        v37, v38 = v35(v36, v37)
                        if v37 == nil then
                            break
                        end
                        if v38:IsA("BloomEffect") or (v38:IsA("ColorCorrectionEffect") or (v38:IsA("BlurEffect") or (v38:IsA("SunRaysEffect") or v38:IsA("DepthOfFieldEffect")))) then
                            v38.Enabled = true
                        end
                    end
                end)
            end
        end
    })
    local v40 = vu9
    vu9.Register(v40, "Bright", v39)
    local vu41 = {
        FogStart = vu20.FogStart,
        FogEnd = vu20.FogEnd
    }
    local v43 = v12:Section({
        Title = "No Fog",
        Icon = "cloud-off",
        Box = true,
        Opened = false
    }):Toggle({
        Title = "No Fog",
        Icon = "cloud-off",
        Desc = "\239\191\189\239\191\189\224\184\154\224\184\171\224\184\161\224\184\173\224\184\129",
        Default = false,
        Callback = function(p42)
            if p42 then
                vu20.FogStart = 0
                vu20.FogEnd = 999999
            else
                vu20.FogStart = vu41.FogStart
                vu20.FogEnd = vu41.FogEnd
            end
        end
    })
    local v44 = vu9
    vu9.Register(v44, "NoFog", v43)
    local vu45 = game:GetService("RunService")
    local vu46 = nil
    local v58 = v12:Section({
        Title = "Noclip",
        Icon = "ghost",
        Box = true,
        Opened = false
    }):Toggle({
        Title = "Noclip",
        Icon = "ghost",
        Desc = "\239\191\189\239\191\189\224\184\176\224\184\165\224\184\184",
        Default = false,
        Callback = function(p47)
            local vu48 = vu1.Character or vu1.CharacterAdded:Wait()
            if p47 then
                vu46 = vu45.Stepped:Connect(function()
                    local v49 = vu48
                    local v50, v51, v52 = pairs(v49:GetDescendants())
                    while true do
                        local v53
                        v52, v53 = v50(v51, v52)
                        if v52 == nil then
                            break
                        end
                        if v53:IsA("BasePart") then
                            v53.CanCollide = false
                        end
                    end
                end)
            else
                if vu46 then
                    vu46:Disconnect()
                    vu46 = nil
                end
                local v54, v55, v56 = pairs(vu48:GetDescendants())
                while true do
                    local v57
                    v56, v57 = v54(v55, v56)
                    if v56 == nil then
                        break
                    end
                    if v57:IsA("BasePart") then
                        v57.CanCollide = true
                    end
                end
            end
        end
    })
    local v59 = vu9
    vu9.Register(v59, "Noclip", v58)
    local vu60 = game:GetService("UserInputService")
    local vu61 = nil
    local v64 = v12:Section({
        Title = "Infinite Jump",
        Icon = "arrow-up",
        Box = true,
        Opened = false
    }):Toggle({
        Title = "Infinite Jump",
        Icon = "arrow-up",
        Desc = "\239\191\189\239\191\189\224\184\163\224\184\176\224\185\130\224\184\148\224\184\148\224\185\132\224\184\161\224\185\136\224\184\136\224\184\179\224\184\129\224\184\177\224\184\148",
        Default = false,
        Callback = function(p62)
            local vu63 = (vu1.Character or vu1.CharacterAdded:Wait()):WaitForChild("Humanoid")
            if p62 then
                vu61 = vu60.JumpRequest:Connect(function()
                    if vu63 and vu63.Health > 0 then
                        vu63:ChangeState(Enum.HumanoidStateType.Jumping)
                    end
                end)
            elseif vu61 then
                vu61:Disconnect()
                vu61 = nil
            end
        end
    })
    local v65 = vu9
    vu9.Register(v65, "InfiniteJump", v64)
    local vu66 = 30
    local vu67 = false
    local function vu68()
        return (vu1.Character or vu1.CharacterAdded:Wait()):WaitForChild("HumanoidRootPart")
    end
    local function vu70(p69)
        if p69 then
            p69 = p69:FindFirstChild("FloatForce")
        end
        return p69
    end
    local function vu73(p71)
        local v72 = vu70(p71)
        if not v72 then
            v72 = Instance.new("BodyPosition")
            v72.Name = "FloatForce"
            v72.MaxForce = Vector3.new(0, 1000000, 0)
            v72.P = 10000
            v72.D = 1000
            v72.Parent = p71
        end
        v72.Position = p71.Position + Vector3.new(0, vu66, 0)
        return v72
    end
    local function vu76(p74)
        local v75 = vu70(p74)
        if v75 then
            v75:Destroy()
        end
    end
    local v77 = v12:Section({
        Title = "Float",
        Icon = "cloud",
        Box = true,
        Opened = false
    })
    v77:Input({
        Title = "Float Height",
        Icon = "sliders",
        Desc = "\239\191\189\239\191\189\224\184\167\224\184\178\224\184\161\224\184\170\224\184\185\224\184\135",
        Default = tostring(vu66),
        Callback = function(p78)
            local v79 = tonumber(p78)
            if v79 then
                vu66 = v79
                local v80 = vu68()
                local v81 = vu70(v80)
                if v81 then
                    v81.Position = v80.Position + Vector3.new(0, vu66, 0)
                end
            end
        end
    })
    local v84 = v77:Toggle({
        Title = "Float",
        Icon = "cloud",
        Desc = "\239\191\189\239\191\189\224\184\173\224\184\162",
        Default = false,
        Callback = function(p82)
            vu67 = p82
            local v83 = vu68()
            if p82 then
                vu73(v83)
            else
                vu76(v83)
            end
        end
    })
    local v85 = vu9
    vu9.Register(v85, "Float", v84)
    local vu86 = game:GetService("TextChatService"):WaitForChild("ChatWindowConfiguration")
    local vu87 = nil
    local v89 = v12:Section({
        Title = "Chat Visibility",
        Icon = "message-circle",
        Box = true,
        Opened = false
    }):Toggle({
        Title = "Chat Visibility",
        Icon = "message-circle",
        Desc = "\239\191\189\239\191\189\224\184\170\224\184\148\224\184\135\224\185\129\224\184\138\224\184\151",
        Default = false,
        Callback = function(p88)
            if p88 then
                vu87 = vu45.RenderStepped:Connect(function()
                    vu86.Enabled = true
                end)
            else
                if vu87 then
                    vu87:Disconnect()
                    vu87 = nil
                end
                vu86.Enabled = false
            end
        end
    })
    local v90 = vu9
    vu9.Register(v90, "ChatVisibility", v89)
    local vu91 = game:GetService("Players").LocalPlayer
    local vu92 = false
    local vu93 = nil
    local function vu97(p94, ...)
        local v95, v96 = pcall(p94, ...)
        if v95 then
            return v96
        else
            return nil
        end
    end
    local function vu101(pu98)
        if not (pu98 and pu98.Parent) then
            return nil
        end
        if pu98:IsA("BasePart") then
            return pu98
        end
        if pu98:IsA("Model") then
            local v99 = vu97(function()
                return pu98.PrimaryPart
            end)
            if v99 and v99:IsA("BasePart") then
                return v99
            end
            local v100 = vu97(function()
                return pu98:FindFirstChildWhichIsA("BasePart", true)
            end)
            if v100 then
                return v100
            end
        end
        return nil
    end
    local function vu105(p102)
        if vu92 then
            if p102 and p102.Parent then
                local vu103 = vu101(p102)
                if vu103 then
                    local vu104 = vu91.Character
                    if vu104 then
                        vu104 = vu104:FindFirstChild("HumanoidRootPart")
                    end
                    if vu104 then
                        vu97(function()
                            vu104.CFrame = vu103.CFrame + Vector3.new(0, 3, 0)
                        end)
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
    end
    task.spawn(function()
        while true do
            local v106 = workspace:FindFirstChild("Map")
            if v106 then
                v106 = v106:FindFirstChild("Ingame")
            end
            if v106 then
                v106 = v106:FindFirstChild("CurrencyLocations")
            end
            vu93 = v106
            task.wait(0.5)
        end
    end)
    task.spawn(function()
        while true do
            if vu92 and vu93 then
                local v107 = vu93
                local v108, v109, v110 = ipairs(v107:GetDescendants())
                while true do
                    local v111
                    v110, v111 = v108(v109, v110)
                    if v110 == nil then
                        break
                    end
                    vu105(v111)
                end
            end
            task.wait(0.3)
        end
    end)
    local v113 = v11:Section({
        Title = "Collect Candy",
        Icon = "candy",
        Box = true,
        Opened = false
    }):Toggle({
        Title = "Auto Collect",
        Desc = "\239\191\189\239\191\189\224\184\173\224\185\130\224\184\149\224\185\137\224\185\128\224\184\129\224\185\135\224\184\154\224\185\129\224\184\132\224\184\153\224\184\148\224\184\181\224\185\137",
        Icon = "candy",
        Default = false,
        Callback = function(p112)
            vu92 = p112
        end
    })
    local v114 = vu9
    vu9.Register(v114, "AutoCandy", v113)
    local vu115 = game:GetService("Players").LocalPlayer
    local vu116 = false
    local vu117 = 5
    local function vu123(p118, p119)
        for _ = 1, 15 do
            local v120 = math.rad(math.random(1, 360))
            local v121 = p118 + Vector3.new(math.cos(v120) * p119, 150, math.sin(v120) * p119)
            local v122 = workspace:Raycast(v121, Vector3.new(0, - 300, 0))
            if v122 then
                if v122.Position then
                    if v122.Position.Y > - 10 then
                        return v122.Position + Vector3.new(0, 3, 0)
                    end
                end
            end
        end
        return nil
    end
    local function vu127(p124)
        local v125 = vu115.Character
        if v125 then
            v125 = vu115.Character:FindFirstChild("HumanoidRootPart")
        end
        if v125 then
            local v126 = vu123(p124, 80)
            if v126 then
                v125.CFrame = CFrame.new(v126)
            end
        end
    end
    local function vu136()
        local v128 = {}
        local v129 = workspace:FindFirstChild("Map")
        if not v129 then
            return v128
        end
        local v130 = v129:FindFirstChild("Ingame")
        if not v130 then
            return v128
        end
        local v131 = v130:FindFirstChild("Map")
        if not v131 then
            return v128
        end
        local v132, v133, v134 = ipairs(v131:GetDescendants())
        while true do
            local v135
            v134, v135 = v132(v133, v134)
            if v134 == nil then
                break
            end
            if v135:IsA("Model") and (v135:FindFirstChild("Progress") and v135:FindFirstChild("Remotes")) then
                table.insert(v128, v135)
            end
        end
        return v128
    end
    local function vu144(p137)
        local v138 = vu115.Character
        if v138 then
            v138 = vu115.Character:FindFirstChild("HumanoidRootPart")
        end
        if v138 then
            local v139 = p137.PrimaryPart or p137:FindFirstChildWhichIsA("BasePart")
            if v139 then
                local v140 = v139.CFrame.LookVector
                local v141 = v139.Position + v140 * 4 + Vector3.new(0, 12, 0)
                local v142 = workspace:Raycast(v141, Vector3.new(0, - 60, 0))
                if v142 and v142.Position then
                    local v143 = v142.Position + Vector3.new(0, 2, 0)
                    v138.CFrame = CFrame.new(v143, v139.Position)
                end
            end
        else
            return
        end
    end
    local function vu147(p145)
        local vu146 = p145:FindFirstChild("Remotes")
        if vu146 and vu146:FindFirstChild("RF") then
            pcall(function()
                vu146.RF:InvokeServer("enter")
            end)
        end
    end
    local v160 = v11:Section({
        Title = "Auto Win",
        Icon = "trophy",
        Box = true,
        Opened = false
    }):Toggle({
        Title = "Auto Win",
        Desc = "\239\191\189\239\191\189\224\184\173\224\185\130\224\184\149\224\185\137\224\184\138\224\184\153\224\184\176\224\185\128\224\184\155\224\184\180\224\184\148\224\184\132\224\184\185\224\185\136\224\184\129\224\184\177\224\184\154 Anti Kill",
        Icon = "zap",
        Default = false,
        Callback = function(p148)
            vu116 = p148
            if p148 then
                task.spawn(function()
                    while vu116 do
                        local vu149 = false
                        local function v150()
                            vu149 = true
                        end
                        local v151 = vu136()
                        local v152, v153, v154 = ipairs(v151)
                        local v155 = nil
                        while true do
                            local v156
                            v154, v156 = v152(v153, v154)
                            if v154 == nil then
                                break
                            end
                            local v157 = v156:FindFirstChild("Progress")
                            if v157 and v157.Value < 99 then
                                v150()
                                v155 = v156
                            end
                        end
                        if v155 then
                            vu144(v155)
                            task.wait(0.25)
                            vu147(v155)
                            while vu116 do
                                local v158 = v155:FindFirstChild("Progress")
                                if not v158 or v158.Value >= 99 then
                                    v150()
                                end
                                local vu159 = v155:FindFirstChild("Remotes")
                                if vu159 and vu159:FindFirstChild("RE") then
                                    pcall(function()
                                        vu159.RE:FireServer()
                                    end)
                                end
                                task.wait(vu117)
                            end
                        else
                            vu127(Vector3.new(0, 50, 0))
                            task.wait(1)
                        end
                        if vu149 then
                            break
                        end
                    end
                end)
            end
        end
    })
    local v161 = vu9
    vu9.Register(v161, "AutoWin", v160)
    local vu162 = game:GetService("Players").LocalPlayer
    local v163 = game:GetService("RunService")
    local vu164 = workspace:WaitForChild("Players"):WaitForChild("Killers")
    local vu165 = false
    local vu166 = 50
    local vu167 = 80
    local function vu173(p168, p169)
        for _ = 1, 15 do
            local v170 = math.rad(math.random(1, 360))
            local v171 = p168 + Vector3.new(math.cos(v170) * p169, 150, math.sin(v170) * p169)
            local v172 = workspace:Raycast(v171, Vector3.new(0, - 300, 0))
            if v172 then
                if v172.Position then
                    if v172.Position.Y > - 10 then
                        return Vector3.new(v171.X, v172.Position.Y + 3, v171.Z)
                    end
                end
            end
        end
        return nil
    end
    local function vu177(p174)
        local v175 = vu162.Character
        if v175 then
            v175 = vu162.Character:FindFirstChild("HumanoidRootPart")
        end
        if v175 then
            local v176 = vu173(p174.Position, vu166)
            if v176 then
                v175.CFrame = CFrame.new(v176)
            end
        end
    end
    v163.Heartbeat:Connect(function()
        if vu165 then
            local v178 = vu162.Character
            if v178 then
                local v179 = v178:FindFirstChild("HumanoidRootPart")
                local v180 = v178:FindFirstChildWhichIsA("Humanoid")
                if v179 and v180 then
                    if vu167 >= v180.Health then
                        local v181 = vu164
                        local v182, v183, v184 = ipairs(v181:GetChildren())
                        while true do
                            local v185
                            v184, v185 = v182(v183, v184)
                            if v184 == nil then
                                break
                            end
                            local v186 = v185:FindFirstChild("HumanoidRootPart") or v185:FindFirstChildWhichIsA("BasePart")
                            if v186 and (v179.Position - v186.Position).Magnitude <= vu166 then
                                vu177(v186)
                                task.wait(0.3)
                            end
                        end
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
    local v187 = v11:Section({
        Title = "Anti Kill",
        Icon = "shield-alert",
        Box = true,
        Opened = false
    })
    local v189 = v187:Slider({
        Title = "Health",
        Desc = "\239\191\189\239\191\189\224\184\179\224\184\153\224\184\167\224\184\153\224\185\128\224\184\165\224\184\183\224\184\173\224\184\148",
        Icon = "heart",
        Step = 1,
        Value = {
            Min = 1,
            Max = 100,
            Default = vu167
        },
        Callback = function(p188)
            vu167 = math.floor(p188)
        end
    })
    local v190 = vu9
    vu9.Register(v190, "AntiKill_HP", v189)
    local v192 = v187:Slider({
        Title = "Distance",
        Desc = "\239\191\189\239\191\189\224\184\176\224\184\162\224\184\176",
        Icon = "radar",
        Step = 1,
        Value = {
            Min = 10,
            Max = 500,
            Default = vu166
        },
        Callback = function(p191)
            vu166 = math.floor(p191)
        end
    })
    local v193 = vu9
    vu9.Register(v193, "AntiKill_Distance", v192)
    local v195 = v187:Toggle({
        Title = "Anti Kill",
        Desc = "\239\191\189\239\191\189\224\184\177\224\184\153\224\185\130\224\184\148\224\184\153\224\184\134\224\185\136\224\184\178",
        Icon = "shield-check",
        Default = false,
        Callback = function(p194)
            vu165 = p194
        end
    })
    local v196 = vu9
    vu9.Register(v196, "AntiKill", v195)
    local v197 = game:GetService("Players")
    local v198 = game:GetService("ReplicatedStorage")
    local _ = v197.LocalPlayer
    local _ = workspace.CurrentCamera
    local v199 = v198:WaitForChild("Systems"):WaitForChild("Character"):WaitForChild("Game"):WaitForChild("Sprinting")
    local vu200 = require(v199)
    local vu201 = false
    local vu202 = 100
    local vu203 = 0
    local vu204 = 10
    local vu205 = 5
    local vu206 = 35
    local vu207 = false
    local function vu208()
        if vu200 then
            vu200.MaxStamina = vu202
            vu200.MinStamina = vu203
            vu200.StaminaGain = vu204
            vu200.StaminaLoss = vu205
            vu200.SprintSpeed = vu206
            vu200.StaminaLossDisabled = false
        end
    end
    local function vu209()
        while vu207 do
            pcall(function()
                vu200.StaminaLoss = 0
                vu200.StaminaLossDisabled = true
            end)
            task.wait(0.1)
        end
    end
    local v210 = v12:Section({
        Title = "Stamina",
        Icon = "zap",
        Box = true,
        Opened = false
    })
    local v212 = v210:Slider({
        Title = "Max Stamina",
        Desc = "\239\191\189\239\191\189\224\184\149\224\184\178\224\184\161\224\184\180\224\184\153\224\184\178\224\184\170\224\184\185\224\184\135\224\184\170\224\184\184\224\184\148",
        Icon = "bar-chart",
        Step = 1,
        Value = {
            Min = 50,
            Max = 1000,
            Default = vu202
        },
        Callback = function(p211)
            vu202 = math.floor(p211)
        end
    })
    local v213 = vu9
    vu9.Register(v213, "MaxStamina", v212)
    local v215 = v210:Slider({
        Title = "Stamina Gain",
        Desc = "\239\191\189\239\191\189\224\184\183\224\185\137\224\184\153\224\184\170\224\184\149\224\184\178\224\184\161\224\184\180\224\184\153\224\184\178",
        Icon = "plus-circle",
        Step = 1,
        Value = {
            Min = 1,
            Max = 500,
            Default = vu204
        },
        Callback = function(p214)
            vu204 = math.floor(p214)
        end
    })
    local v216 = vu9
    vu9.Register(v216, "StaminaGain", v215)
    local v218 = v210:Slider({
        Title = "Stamina Loss",
        Desc = "\239\191\189\239\191\189\224\184\148\224\184\170\224\184\149\224\184\178\224\184\161\224\184\180\224\184\153\224\184\178\224\184\149\224\184\173\224\184\153\224\184\167\224\184\180\224\185\136\224\184\135",
        Icon = "minus-circle",
        Step = 1,
        Value = {
            Min = 0,
            Max = 500,
            Default = vu205
        },
        Callback = function(p217)
            vu205 = math.floor(p217)
        end
    })
    local v219 = vu9
    vu9.Register(v219, "StaminaLoss", v218)
    local v221 = v210:Slider({
        Title = "Sprint Speed",
        Desc = "\239\191\189\239\191\189\224\184\167\224\184\178\224\184\161\224\185\128\224\184\163\224\185\135\224\184\167\224\184\149\224\184\173\224\184\153\224\184\167\224\184\180\224\185\136\224\184\135",
        Icon = "run",
        Step = 1,
        Value = {
            Min = 16,
            Max = 100,
            Default = vu206
        },
        Callback = function(p220)
            vu206 = math.floor(p220)
        end
    })
    local v222 = vu9
    vu9.Register(v222, "SprintSpeed", v221)
    local v224 = v210:Toggle({
        Title = "Stamina Hack",
        Desc = "\239\191\189\239\191\189\224\184\163\224\184\177\224\184\154\224\184\132\224\185\136\224\184\178\224\184\170\224\184\149\224\184\178\224\184\161\224\184\180\224\184\153\224\184\178",
        Icon = "zap",
        Default = false,
        Callback = function(p223)
            vu201 = p223
            if p223 then
                task.spawn(function()
                    while vu201 do
                        vu208()
                        task.wait(0.2)
                    end
                end)
            end
        end
    })
    local v225 = vu9
    vu9.Register(v225, "StaminaHack", v224)
    local v227 = v210:Toggle({
        Title = "Infinity Stamina",
        Desc = "\239\191\189\239\191\189\224\184\149\224\184\178\224\184\161\224\184\180\224\184\153\224\184\178\224\185\132\224\184\161\224\185\136\224\184\136\224\184\179\224\184\129\224\184\177\224\184\148",
        Icon = "infinity",
        Default = false,
        Callback = function(p226)
            vu207 = p226
            vu9:Register("NoStaminaLoss", p226)
            if p226 then
                task.spawn(vu209)
            else
                pcall(function()
                    vu200.StaminaLossDisabled = false
                end)
            end
        end
    })
    local v228 = vu9
    vu9.Register(v228, "NoStaminaLoss", v227)
    local vu229 = false
    local vu230 = "75804462760596"
    local vu231 = nil
    local function vu236()
        pcall(function()
            local v232 = vu162.Character
            if v232 then
                local v233 = v232:FindFirstChildWhichIsA("Humanoid")
                if v233 then
                    if vu231 then
                        vu231:Stop()
                        vu231 = nil
                    end
                    local v234 = Instance.new("Animation")
                    v234.AnimationId = "rbxassetid://" .. vu230
                    local v235 = v233:LoadAnimation(v234)
                    v235.Looped = true
                    v235:Play(0.0001)
                    v235:AdjustSpeed(0)
                    vu231 = v235
                end
            else
                return
            end
        end)
    end
    local function vu237()
        while vu229 do
            vu236()
            task.wait(0.05)
        end
    end
    local function vu240()
        pcall(function()
            if vu231 then
                vu231:Stop()
                vu231 = nil
            end
            local v238 = vu162.Character
            if v238 then
                local v239 = v238:FindFirstChildWhichIsA("Humanoid")
                if v239 then
                    v239:ChangeState(Enum.HumanoidStateType.Running)
                    task.wait(0.05)
                    v239:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
                    task.wait(0.05)
                    v239:ChangeState(Enum.HumanoidStateType.None)
                end
            else
                return
            end
        end)
    end
    local v242 = v12:Section({
        Title = "Invisibility",
        Icon = "eye-off",
        Box = true,
        Opened = false
    }):Toggle({
        Title = "Invisibility",
        Desc = "\239\191\189\239\191\189\224\184\178\224\184\162\224\184\149\224\184\177\224\184\167",
        Icon = "eye-off",
        Default = false,
        Callback = function(p241)
            vu229 = p241
            if p241 then
                task.spawn(vu237)
            else
                vu240()
            end
        end
    })
    local v243 = vu9
    vu9.Register(v243, "InvisOriginal", v242)
    local vu244 = false
    local vu245 = 1
    local v246 = v11:Section({
        Title = "Generators",
        Icon = "cpu",
        Box = true,
        Opened = false
    })
    local v248 = v246:Slider({
        Title = "Delay",
        Desc = "\239\191\189\239\191\189\224\184\181\224\185\128\224\184\165\224\184\162\224\185\140",
        Step = 0.1,
        Value = {
            Min = 0.1,
            Max = 5,
            Default = vu245
        },
        Callback = function(p247)
            vu245 = tonumber(string.format("%.1f", p247))
        end
    })
    local v249 = vu9
    vu9.Register(v249, "AutoGenDelay", v248)
    v246:Toggle({
        Title = "Auto Generator",
        Desc = "\239\191\189\239\191\189\224\184\173\224\185\130\224\184\149\224\185\137\224\184\155\224\184\177\224\185\136\224\184\153\224\185\132\224\184\159",
        Icon = "cpu",
        Default = false,
        Callback = function(p250)
            vu244 = p250
            vu9:Register("AutoGenerator", TogAutoGen)
            if p250 then
                task.spawn(function()
                    while vu244 do
                        local vu251 = nil
                        pcall(function()
                            vu251 = workspace:WaitForChild("Map"):WaitForChild("Ingame"):WaitForChild("Map")
                        end)
                        if vu251 then
                            local v252 = vu251
                            local v253, v254, v255 = ipairs(vu251.GetDescendants(v252))
                            while true do
                                local v256
                                v255, v256 = v253(v254, v255)
                                if v255 == nil then
                                    break
                                end
                                if v256.Name == "Generator" then
                                    local vu257 = v256:FindFirstChild("Remotes")
                                    if vu257 and vu257:FindFirstChild("RE") then
                                        pcall(function()
                                            vu257.RE:FireServer()
                                        end)
                                    end
                                end
                            end
                        end
                        task.wait(vu245)
                    end
                end)
            end
        end
    })
    local v258 = game:GetService("RunService")
    local v259 = v13:Section({
        Title = "Generator ESP",
        Icon = "cpu",
        Box = true,
        Opened = false
    })
    local vu260 = false
    local vu261 = {}
    local vu262 = {}
    local vu263 = workspace.CurrentCamera
    local vu264 = Color3.fromRGB(255, 255, 0)
    local vu265 = Color3.fromRGB(0, 255, 0)
    local function vu267(p266)
        return p266 == 0 and "0%" or (p266 == 26 and "25%" or (p266 == 52 and "50%" or (p266 == 78 and "75%" or (p266 == 100 and "100%" or ""))))
    end
    local function vu272(p268)
        local v269 = p268.PrimaryPart or p268:FindFirstChildWhichIsA("BasePart")
        if v269 then
            local v270 = p268:FindFirstChild("GenTagUI")
            if not v270 then
                v270 = Instance.new("BillboardGui")
                v270.Name = "GenTagUI"
                v270.Adornee = v269
                v270.AlwaysOnTop = true
                v270.Size = UDim2.new(0, 80, 0, 18)
                v270.StudsOffset = Vector3.new(0, 3.5, 0)
                v270.Parent = p268
                local v271 = Instance.new("TextLabel")
                v271.Name = "Txt"
                v271.BackgroundTransparency = 1
                v271.Font = Enum.Font.GothamBold
                v271.TextScaled = true
                v271.TextStrokeTransparency = 0
                v271.TextStrokeColor3 = Color3.new(0, 0, 0)
                v271.Parent = v270
            end
            return v270
        end
    end
    local function vu275(p273)
        local v274 = p273:FindFirstChild("GenDraw")
        if not v274 then
            v274 = Instance.new("Highlight")
            v274.Name = "GenDraw"
            v274.FillTransparency = 1
            v274.OutlineTransparency = 0
            v274.Adornee = p273
            v274.Parent = p273
        end
        return v274
    end
    local function vu278(p276)
        local v277 = (vu263.CFrame.Position - p276).Magnitude
        return math.clamp(1 / (v277 / 25), 0.4, 1.5)
    end
    local function vu286(p279, p280)
        local v281 = p279.PrimaryPart or p279:FindFirstChildWhichIsA("BasePart")
        if v281 then
            local v282 = p279:FindFirstChild("Progress_ESP")
            if not v282 then
                v282 = Instance.new("BillboardGui")
                v282.Name = "Progress_ESP"
                v282.Adornee = v281
                v282.AlwaysOnTop = true
                v282.StudsOffset = Vector3.new(0, 3, 0)
                v282.Parent = p279
                local v283 = Instance.new("TextLabel")
                v283.Name = "ProgressLabel"
                v283.BackgroundTransparency = 1
                v283.Size = UDim2.new(1, 0, 1, 0)
                v283.TextScaled = true
                v283.Font = Enum.Font.GothamBold
                v283.TextStrokeTransparency = 0
                v283.TextStrokeColor3 = Color3.new(0, 0, 0)
                v283.Parent = v282
            end
            local v284 = v282.ProgressLabel
            if p279.Name == "FakeGenerator" then
                v284.Text = "100%"
                v284.TextColor3 = vu265
            else
                v284.Text = vu267(p280)
                v284.TextColor3 = 100 <= p280 and vu265 or vu264
            end
            local v285 = vu278(v281.Position)
            v282.Size = UDim2.new(0, v285 * 20, 10, v285 * 6)
        end
    end
    local function vu293(p287, p288)
        local v289 = vu272(p287)
        local v290 = vu275(p287)
        if v289 and v290 then
            local v291 = v289.Txt
            local v292 = p287.Name == "FakeGenerator"
            v291.Text = v292 and "100%" or vu267(p288)
            if (v292 and (100 or p288) or p288) >= 100 then
                v291.TextColor3 = vu265
                v290.OutlineColor = vu265
            else
                v291.TextColor3 = vu264
                v290.OutlineColor = vu264
            end
            vu286(p287, p288)
        end
    end
    local function vu301()
        if vu260 then
            local v294, v295, v296 = pairs(vu261)
            while true do
                local v297
                v296, v297 = v294(v295, v296)
                if v296 == nil then
                    break
                end
                local v298 = 0
                local v299 = ""
                if v296.Name ~= "FakeGenerator" then
                    local v300 = v296:FindFirstChild("Progress")
                    if v300 and v300:IsA("ValueBase") then
                        v298 = v300.Value
                        v299 = vu267(v298)
                    end
                else
                    v299 = "100%"
                    v298 = 100
                end
                vu262[v296] = v299
                vu293(v296, v298)
            end
        end
    end
    local function vu307(p302)
        local v303 = p302.PrimaryPart or p302:FindFirstChildWhichIsA("BasePart")
        if v303 then
            local v304 = vu278(v303.Position)
            local v305 = p302:FindFirstChild("GenTagUI")
            if v305 and v305:FindFirstChild("Txt") then
                v305.Size = UDim2.new(0, 80 * v304, 0, 20 * v304)
                v305.Txt.TextSize = math.clamp(12 * v304, 10, 16)
            end
            local v306 = p302:FindFirstChild("Progress_ESP")
            if v306 then
                v306.Size = UDim2.new(0, v304 * 20, 10, v304 * 6)
            end
        end
    end
    local function vu316()
        local v308 = {}
        local v309 = workspace:FindFirstChild("Map")
        if not v309 then
            return v308
        end
        local v310 = v309:FindFirstChild("Ingame")
        if not v310 then
            return v308
        end
        local v311 = v310:FindFirstChild("Map")
        if not v311 then
            return v308
        end
        local v312, v313, v314 = ipairs(v311:GetDescendants())
        while true do
            local v315
            v314, v315 = v312(v313, v314)
            if v314 == nil then
                break
            end
            if v315:IsA("Model") and (v315.Name == "Generator" or v315.Name == "FakeGenerator") then
                table.insert(v308, v315)
            end
        end
        return v308
    end
    local function vu320(pu317)
        if vu261[pu317] then
            return
        else
            local vu318 = pu317:FindFirstChild("Progress")
            if pu317.Name ~= "FakeGenerator" then
                if vu318 and vu318:IsA("ValueBase") then
                    vu262[pu317] = vu267(vu318.Value)
                    vu293(pu317, vu318.Value)
                    vu261[pu317] = vu318:GetPropertyChangedSignal("Value"):Connect(function()
                        if vu260 then
                            local v319 = vu267(vu318.Value)
                            if vu262[pu317] ~= v319 then
                                vu262[pu317] = v319
                                vu293(pu317, vu318.Value)
                            end
                        else
                            return
                        end
                    end)
                end
            else
                vu262[pu317] = "100%"
                vu293(pu317, 100)
                vu261[pu317] = true
                return
            end
        end
    end
    local function vu325(p321)
        if vu261[p321] and typeof(vu261[p321]) == "RBXScriptConnection" then
            vu261[p321]:Disconnect()
        end
        vu261[p321] = nil
        vu262[p321] = nil
        local v322 = p321:FindFirstChild("GenTagUI")
        if v322 then
            v322:Destroy()
        end
        local v323 = p321:FindFirstChild("GenDraw")
        if v323 then
            v323:Destroy()
        end
        local v324 = p321:FindFirstChild("Progress_ESP")
        if v324 then
            v324:Destroy()
        end
    end
    local function vu330()
        vu260 = true
        local v326, v327, v328 = ipairs(vu316())
        while true do
            local v329
            v328, v329 = v326(v327, v328)
            if v328 == nil then
                break
            end
            vu320(v329)
        end
    end
    local function vu335()
        vu260 = false
        local v331, v332, v333 = pairs(vu261)
        while true do
            local v334
            v333, v334 = v331(v332, v333)
            if v333 == nil then
                break
            end
            vu325(v333)
        end
        vu261 = {}
        vu262 = {}
    end
    task.spawn(function()
        while task.wait(1) do
            if vu260 then
                local v336, v337, v338 = ipairs(vu316())
                while true do
                    local v339
                    v338, v339 = v336(v337, v338)
                    if v338 == nil then
                        break
                    end
                    if not vu261[v339] then
                        vu320(v339)
                    end
                end
            end
        end
    end)
    local v341 = v259:Toggle({
        Title = "Generator ESP",
        Desc = "\239\191\189\239\191\189\224\184\173\224\184\135\224\185\128\224\184\132\224\184\163\224\184\183\224\185\136\224\184\173\224\184\135\224\184\155\224\184\177\224\185\136\224\184\153\224\185\132\224\184\159",
        Icon = "eye",
        Default = false,
        Callback = function(p340)
            if p340 then
                vu330()
            else
                vu335()
            end
        end
    })
    local v342 = vu9
    vu9.Register(v342, "GenESP", v341)
    v259:Colorpicker({
        Title = "Normal 1-75%",
        Desc = "\239\191\189\239\191\189\224\184\181\224\185\128\224\184\132\224\184\163\224\184\183\224\185\136\224\184\173\224\184\135\224\184\151\224\184\181\224\185\136\224\184\162\224\184\177\224\184\135\224\185\132\224\184\161\224\185\136\224\185\128\224\184\149\224\185\135\224\184\161",
        Default = vu264,
        Callback = function(p343)
            vu264 = p343
            vu301()
        end
    })
    v259:Colorpicker({
        Title = "Complete 100%",
        Desc = "\239\191\189\239\191\189\224\184\181\224\185\128\224\184\132\224\184\163\224\184\183\224\185\136\224\184\173\224\184\135\224\184\151\224\184\181\224\185\136\224\185\128\224\184\149\224\185\135\224\184\161\224\185\129\224\184\165\224\185\137\224\184\167",
        Default = vu265,
        Callback = function(p344)
            vu265 = p344
            vu301()
        end
    })
    local vu345 = 0
    local vu346 = 1
    v258.RenderStepped:Connect(function()
        if vu260 then
            local v347 = tick()
            if v347 - vu345 >= vu346 then
                vu345 = v347
                local v348, v349, v350 = pairs(vu261)
                while true do
                    local v351
                    v350, v351 = v348(v349, v350)
                    if v350 == nil then
                        break
                    end
                    vu307(v350)
                end
            end
        else
            return
        end
    end)
    local vu352 = game:GetService("Players").LocalPlayer
    local vu353 = workspace.CurrentCamera
    local v354 = game:GetService("RunService")
    local v355 = workspace:WaitForChild("Players")
    local vu356 = v355:WaitForChild("Killers")
    local vu357 = v355:WaitForChild("Survivors")
    local vu358 = false
    local vu359 = false
    local vu360 = Color3.fromRGB(255, 0, 0)
    local vu361 = Color3.fromRGB(145, 255, 0)
    local vu362 = 500
    local function vu366(p363)
        local v364 = p363:FindFirstChild("ESP_NameUI")
        if v364 then
            v364:Destroy()
        end
        local v365 = p363:FindFirstChild("ESP_Outline")
        if v365 then
            v365:Destroy()
        end
    end
    local function vu372(p367, p368)
        if p367 ~= vu352.Character then
            if p367:FindFirstChild("ESP_NameUI") then
                return
            else
                local v369 = p367:FindFirstChild("Head") or p367:FindFirstChildWhichIsA("BasePart")
                if v369 then
                    local v370 = Instance.new("BillboardGui")
                    v370.Name = "ESP_NameUI"
                    v370.Adornee = v369
                    v370.AlwaysOnTop = true
                    v370.StudsOffset = Vector3.new(0, 3, 0)
                    v370.Size = UDim2.new(0, 200, 0, 28)
                    v370.Parent = p367
                    local v371 = Instance.new("TextLabel")
                    v371.Name = "Main"
                    v371.Size = UDim2.fromScale(1, 1)
                    v371.BackgroundTransparency = 1
                    v371.Font = Enum.Font.GothamBold
                    v371.TextColor3 = p368
                    v371.TextStrokeTransparency = 0
                    v371.TextStrokeColor3 = Color3.new(0, 0, 0)
                    v371.TextScaled = true
                    v371.Text = "..."
                    v371.Parent = v370
                end
            end
        else
            return
        end
    end
    local function vu376(p373, p374)
        if p373 ~= vu352.Character then
            if not p373:FindFirstChild("ESP_Outline") then
                local v375 = Instance.new("Highlight")
                v375.Name = "ESP_Outline"
                v375.Adornee = p373
                v375.FillTransparency = 1
                v375.OutlineTransparency = 0
                v375.OutlineColor = p374
                v375.Parent = p373
            end
        else
            return
        end
    end
    local function vu384(p377)
        local v378 = p377:FindFirstChild("ESP_NameUI")
        if v378 then
            local v379 = v378:FindFirstChild("Main")
            if v379 then
                local v380 = p377:GetAttribute("ActorDisplayName") or "?"
                local v381 = p377:GetAttribute("SkinNameDisplay") or ""
                local v382 = p377:FindFirstChildOfClass("Humanoid")
                local v383 = (not v382 or v382.MaxHealth <= 0) and "" or " " .. math.floor(v382.Health / v382.MaxHealth * 100) .. "%"
                if v381 == "" then
                    v379.Text = v380 .. v383
                else
                    v379.Text = v380 .. " | " .. v381 .. v383
                end
            end
        else
            return
        end
    end
    local function vu390(p385)
        local v386 = p385:FindFirstChild("Head") or p385:FindFirstChildWhichIsA("BasePart")
        if not v386 then
            return true
        end
        local v387 = vu362 < (vu353.CFrame.Position - v386.Position).Magnitude
        local v388 = p385:FindFirstChild("ESP_NameUI")
        local v389 = p385:FindFirstChild("ESP_Outline")
        if v388 then
            v388.Enabled = not v387
        end
        if v389 then
            v389.Enabled = not v387
        end
        return v387
    end
    local function vu393(p391)
        local v392 = p391:FindFirstChildOfClass("Humanoid")
        return not v392 and true or v392.Health <= 1
    end
    v354.RenderStepped:Connect(function()
        local v394 = vu356
        local v395, v396, v397 = ipairs(v394:GetChildren())
        while true do
            local v398
            v397, v398 = v395(v396, v397)
            if v397 == nil then
                break
            end
            if vu393(v398) then
                vu366(v398)
            elseif not vu390(v398) then
                if vu358 then
                    vu372(v398, vu360)
                    vu376(v398, vu360)
                    vu384(v398)
                else
                    vu366(v398)
                end
            end
        end
        local v399 = vu357
        local v400, v401, v402 = ipairs(v399:GetChildren())
        while true do
            local v403
            v402, v403 = v400(v401, v402)
            if v402 == nil then
                break
            end
            if vu393(v403) then
                vu366(v403)
            elseif not vu390(v403) then
                if vu359 then
                    vu372(v403, vu361)
                    vu376(v403, vu361)
                    vu384(v403)
                else
                    vu366(v403)
                end
            end
        end
    end)
    local v404 = v13:Section({
        Title = "Role ESP",
        Icon = "notebook-pen",
        Box = true,
        Opened = false
    })
    local v411 = v404:Toggle({
        Title = "Survivor ESP",
        Desc = "\239\191\189\239\191\189\224\184\173\224\184\135\224\184\156\224\184\185\224\185\137\224\184\163\224\184\173\224\184\148\224\184\138\224\184\181\224\184\167\224\184\180\224\184\149",
        Icon = "eye",
        Default = false,
        Callback = function(p405)
            vu359 = p405
            if not p405 then
                local v406 = vu357
                local v407, v408, v409 = ipairs(v406:GetChildren())
                while true do
                    local v410
                    v409, v410 = v407(v408, v409)
                    if v409 == nil then
                        break
                    end
                    vu366(v410)
                end
            end
        end
    })
    local v412 = vu9
    vu9.Register(v412, "SurvESP", v411)
    local v419 = v404:Toggle({
        Title = "Killer ESP",
        Desc = "\239\191\189\239\191\189\224\184\173\224\184\135\224\184\134\224\184\178\224\184\149\224\184\129\224\184\163",
        Icon = "eye",
        Default = false,
        Callback = function(p413)
            vu358 = p413
            if not p413 then
                local v414 = vu356
                local v415, v416, v417 = ipairs(v414:GetChildren())
                while true do
                    local v418
                    v417, v418 = v415(v416, v417)
                    if v417 == nil then
                        break
                    end
                    vu366(v418)
                end
            end
        end
    })
    local v420 = vu9
    vu9.Register(v420, "KillESP", v419)
    v404:Colorpicker({
        Title = "Survivor Color",
        Desc = "\239\191\189\239\191\189\224\184\181\224\184\156\224\184\185\224\185\137\224\184\163\224\184\173\224\184\148\224\184\138\224\184\181\224\184\167\224\184\180\224\184\149",
        Default = vu361,
        Callback = function(p421)
            vu361 = p421
            local v422 = vu357
            local v423, v424, v425 = ipairs(v422:GetChildren())
            while true do
                local v426
                v425, v426 = v423(v424, v425)
                if v425 == nil then
                    break
                end
                local v427 = v426:FindFirstChild("ESP_NameUI")
                if v427 and v427:FindFirstChild("Main") then
                    v427.Main.TextColor3 = p421
                end
                local v428 = v426:FindFirstChild("ESP_Outline")
                if v428 then
                    v428.OutlineColor = p421
                end
            end
        end
    })
    v404:Colorpicker({
        Title = "Killer Color",
        Desc = "\239\191\189\239\191\189\224\184\181\224\184\134\224\184\178\224\184\149\224\184\163\224\184\129\224\184\163",
        Default = vu360,
        Callback = function(p429)
            vu360 = p429
            local v430 = vu356
            local v431, v432, v433 = ipairs(v430:GetChildren())
            while true do
                local v434
                v433, v434 = v431(v432, v433)
                if v433 == nil then
                    break
                end
                local v435 = v434:FindFirstChild("ESP_NameUI")
                if v435 and v435:FindFirstChild("Main") then
                    v435.Main.TextColor3 = p429
                end
                local v436 = v434:FindFirstChild("ESP_Outline")
                if v436 then
                    v436.OutlineColor = p429
                end
            end
        end
    })
    local vu437 = game:GetService("Players").LocalPlayer
    local v438 = game:GetService("RunService")
    local vu439 = false
    local vu440 = {}
    local vu441 = 0
    local vu442 = "Candy"
    local function vu444(p443)
        if p443 and p443.Parent then
            if p443:IsA("BasePart") then
                return p443
            elseif p443:IsA("Model") then
                if p443.PrimaryPart then
                    return p443.PrimaryPart
                else
                    return p443:FindFirstChildWhichIsA("BasePart", true)
                end
            else
                return nil
            end
        else
            return nil
        end
    end
    local function vu451(p445)
        if vu439 then
            local v446 = vu444(p445)
            if v446 then
                vu441 = vu441 + 1
                local v447 = vu441
                local v448 = Instance.new("Highlight")
                v448.FillColor = Color3.fromRGB(255, 255, 0)
                v448.FillTransparency = 0.5
                v448.OutlineColor = Color3.fromRGB(255, 255, 0)
                v448.Adornee = p445
                v448.Parent = p445
                local v449 = Instance.new("BillboardGui")
                v449.Size = UDim2.new(0, 120, 0, 30)
                v449.AlwaysOnTop = true
                v449.Adornee = v446
                v449.Parent = p445
                local v450 = Instance.new("TextLabel")
                v450.BackgroundTransparency = 1
                v450.Size = UDim2.new(1, 0, 1, 0)
                v450.Font = Enum.Font.GothamBold
                v450.TextScaled = true
                v450.TextStrokeTransparency = 0.3
                v450.TextColor3 = Color3.fromRGB(255, 255, 0)
                v450.Text = vu442 .. " [N/A]"
                v450.Parent = v449
                vu440[v447] = {
                    Obj = p445,
                    Part = v446,
                    HL = v448,
                    GUI = v449,
                    Label = v450
                }
            end
        else
            return
        end
    end
    local function vu454(p452)
        local v453 = vu440[p452]
        if v453 then
            if v453.HL then
                v453.HL:Destroy()
            end
            if v453.GUI then
                v453.GUI:Destroy()
            end
            vu440[p452] = nil
        end
    end
    v438.RenderStepped:Connect(function()
        if vu439 then
            local v455 = vu437.Character
            if v455 then
                v455 = v455.PrimaryPart
            end
            if v455 then
                local v456, v457, v458 = pairs(vu440)
                while true do
                    local v459
                    v458, v459 = v456(v457, v458)
                    if v458 == nil then
                        break
                    end
                    if v459.Obj and (v459.Obj.Parent and (v459.Part and v459.Part.Parent)) then
                        local v460 = (v459.Part.Position - v455.Position).Magnitude
                        if v460 >= 1000 then
                            v459.Label.Text = vu442 .. " [" .. string.format("%.1fk", v460 / 1000) .. "]"
                        else
                            v459.Label.Text = vu442 .. " [" .. math.floor(v460) .. "m]"
                        end
                    else
                        vu454(v458)
                    end
                end
            end
        else
            return
        end
    end)
    local function vu465()
        vu439 = true
        if _G.CandyFolder then
            local v461, v462, v463 = ipairs(_G.CandyFolder:GetDescendants())
            while true do
                local v464
                v463, v464 = v461(v462, v463)
                if v463 == nil then
                    break
                end
                vu451(v464)
            end
        end
    end
    local function vu469()
        vu439 = false
        local v466, v467, v468 = pairs(vu440)
        while true do
            v468 = v466(v467, v468)
            if v468 == nil then
                break
            end
            vu454(v468)
        end
        vu440 = {}
    end
    task.defer(function()
        while true do
            local v470 = workspace:FindFirstChild("Map")
            if v470 then
                v470 = v470:FindFirstChild("Ingame")
            end
            if v470 then
                v470 = v470:FindFirstChild("CurrencyLocations")
            end
            if v470 ~= _G.CandyFolder then
                _G.CandyFolder = v470
                if v470 then
                    v470.DescendantAdded:Connect(function(p471)
                        if vu439 then
                            vu451(p471)
                        end
                    end)
                    v470.DescendantRemoving:Connect(function(p472)
                        local v473, v474, v475 = pairs(vu440)
                        while true do
                            local v476
                            v475, v476 = v473(v474, v475)
                            if v475 == nil then
                                break
                            end
                            if v476.Obj == p472 then
                                vu454(v475)
                            end
                        end
                    end)
                end
            end
            task.wait(0.5)
        end
    end)
    local v478 = v13:Section({
        Title = "Candy ESP",
        Icon = "candy",
        Box = true,
        Opened = false
    }):Toggle({
        Title = "Candy ESP",
        Desc = "\239\191\189\239\191\189\224\184\173\224\184\135\224\185\129\224\184\132\224\184\153\224\184\148\224\184\181\224\185\137",
        Icon = "eye",
        Default = false,
        Callback = function(p477)
            if p477 then
                vu465()
            else
                vu469()
            end
        end
    })
    local v479 = vu9
    vu9.Register(v479, "CandyESP", v478)
    local vu480 = game:GetService("Players").LocalPlayer
    local v481 = game:GetService("RunService")
    local vu482 = {
        BloxyCola = Color3.fromRGB(255, 140, 0),
        Medkit = Color3.fromRGB(255, 100, 255)
    }
    local vu483 = {}
    local vu484 = nil
    local vu485 = false
    local function vu489()
        local v486 = workspace:FindFirstChild("Map")
        if v486 then
            local v487 = v486:FindFirstChild("Ingame")
            if v487 then
                local v488 = v487:FindFirstChild("Map")
                if v488 then
                    return v488:FindFirstChild("ItemLocations")
                else
                    return nil
                end
            else
                return nil
            end
        else
            return nil
        end
    end
    local function vu493(p490, p491)
        local v492 = p490:FindFirstChild("ItemDraw")
        if not v492 then
            v492 = Instance.new("Highlight")
            v492.Name = "ItemDraw"
            v492.FillTransparency = 1
            v492.OutlineTransparency = 0
            v492.Adornee = p490
            v492.Parent = p490
        end
        if p491 then
            v492.OutlineColor = p491
        end
        return v492
    end
    local function vu499(p494, p495, p496)
        if p494:FindFirstChild("ESP_Billboard") then
            return p494.ESP_Billboard:FindFirstChildOfClass("TextLabel")
        end
        local v497 = Instance.new("BillboardGui")
        v497.Name = "ESP_Billboard"
        v497.Size = UDim2.new(0, 100, 0, 30)
        v497.Adornee = p494
        v497.AlwaysOnTop = true
        v497.StudsOffset = Vector3.new(0, 2.5, 0)
        v497.Parent = p494
        local v498 = Instance.new("TextLabel")
        v498.Size = UDim2.new(1, 0, 1, 0)
        v498.BackgroundTransparency = 1
        v498.TextColor3 = p496
        v498.TextStrokeTransparency = 0
        v498.Text = p495
        v498.Font = Enum.Font.SourceSansBold
        v498.TextScaled = false
        v498.TextSize = 10
        v498.Parent = v497
        return v498
    end
    local function vu506(p500)
        if p500 and p500:IsA("BasePart") then
            local v501 = p500.Name
            local v502 = vu482[v501] or Color3.fromRGB(255, 255, 255)
            if p500:FindFirstChild(v501 .. "_PESP") then
                local v503 = p500:FindFirstChild("ESP_Billboard")
                local v504 = v503 and v503:FindFirstChildOfClass("TextLabel")
                if v504 then
                    vu483[p500] = v504
                end
                vu493(p500, v502)
            else
                local v505 = Instance.new("BoxHandleAdornment")
                v505.Name = v501 .. "_PESP"
                v505.Adornee = p500
                v505.Size = p500.Size
                v505.Transparency = 0.5
                v505.Color3 = v502
                v505.ZIndex = 0
                v505.AlwaysOnTop = true
                v505.Parent = p500
                vu493(p500, v502)
                vu483[p500] = vu499(p500, v501, v502)
            end
        else
            return
        end
    end
    local function vu513()
        vu485 = true
        local v507 = vu489()
        if v507 then
            local v508, v509, v510 = ipairs(v507:GetDescendants())
            while true do
                local v511
                v510, v511 = v508(v509, v510)
                if v510 == nil then
                    break
                end
                if v511:IsA("BasePart") then
                    vu506(v511)
                end
            end
            if not vu484 then
                vu484 = v507.DescendantAdded:Connect(function(p512)
                    if p512:IsA("BasePart") then
                        vu506(p512)
                    end
                end)
            end
        end
    end
    local function vu521()
        vu485 = false
        local v514 = vu489()
        if v514 then
            local v515, v516, v517 = ipairs(v514:GetDescendants())
            while true do
                local v518
                v517, v518 = v515(v516, v517)
                if v517 == nil then
                    break
                end
                if v518:IsA("BasePart") then
                    if v518:FindFirstChild("ESP_Billboard") then
                        v518.ESP_Billboard:Destroy()
                    end
                    local v519 = v518:FindFirstChild(v518.Name .. "_PESP")
                    if v519 then
                        v519:Destroy()
                    end
                    local v520 = v518:FindFirstChild("ItemDraw")
                    if v520 then
                        v520:Destroy()
                    end
                end
            end
        end
        vu483 = {}
        if vu484 then
            vu484:Disconnect()
            vu484 = nil
        end
    end
    v481.RenderStepped:Connect(function()
        if vu485 then
            local v522 = vu480.Character
            if v522 then
                v522 = v522:FindFirstChild("HumanoidRootPart")
            end
            if v522 then
                local v523, v524, v525 = pairs(vu483)
                while true do
                    local v526
                    v525, v526 = v523(v524, v525)
                    if v525 == nil then
                        break
                    end
                    if v525 and (v525:IsDescendantOf(workspace) and (v526 and v526.Parent)) then
                        local v527 = (v522.Position - v525.Position).Magnitude
                        v526.Text = string.format("%s [%dm]", v525.Name, math.floor(v527))
                    else
                        vu483[v525] = nil
                    end
                end
            end
        else
            return
        end
    end)
    v13:Section({
        Title = "Item ESP",
        Icon = "box",
        Box = true,
        Opened = false
    }):Toggle({
        Title = "Items ESP",
        Desc = "\239\191\189\239\191\189\224\184\173\224\184\135\224\185\132\224\184\173\224\185\128\224\184\151\224\184\161",
        Icon = "eye",
        Default = false,
        Callback = function(p528)
            if p528 then
                vu513()
            else
                vu521()
            end
        end
    })
    v14:Section({
        Title = "JobId Tools"
    })
    v14:Button({
        Title = "Join Link",
        Desc = "\239\191\189\239\191\189\224\184\177\224\184\148\224\184\165\224\184\173\224\184\129\224\184\165\224\184\180\224\185\137\224\184\135\224\184\136\224\184\173\224\184\162",
        Callback = function()
            local v529 = game.PlaceId
            local v530 = game.JobId
            if v530 and v530 ~= "" then
                local v531 = string.format("https://www.roblox.com/games/start?placeId=%s&launchData=%s/%s", v529, v529, v530)
                setclipboard(v531)
                vu6:Notify({
                    Title = "XEPHEX HUB",
                    Content = "\239\191\189\239\191\189\224\184\177\224\184\148\224\184\165\224\184\173\224\184\129\224\184\165\224\184\180\224\184\135\224\185\129\224\184\165\224\185\137\224\184\167!",
                    Duration = 5,
                    Icon = "rbxassetid://80283328189076"
                })
            else
                vu6:Notify({
                    Title = "XEPHEX HUB",
                    Content = "\239\191\189\239\191\189\224\184\161\224\185\136\224\185\128\224\184\136\224\184\173 JobId \224\184\130\224\184\173\224\184\135\224\185\128\224\184\139\224\184\180\224\184\163\224\185\140\224\184\159\224\185\128\224\184\167\224\184\173\224\184\163\224\185\140\224\184\153\224\184\181\224\185\137",
                    Duration = 5,
                    Icon = "rbxassetid://80283328189076"
                })
            end
        end
    })
    local vu532 = ""
    v14:Button({
        Title = "Copy JobId",
        Desc = "\239\191\189\239\191\189\224\184\177\224\184\148\224\184\165\224\184\173\224\184\129\224\185\132\224\184\173\224\184\148\224\184\181\224\185\128\224\184\139\224\184\180\224\184\163\224\185\140\224\184\159\224\185\128\224\184\167\224\184\173\224\184\163\224\185\140",
        Callback = function()
            setclipboard(tostring(game.JobId))
            vu6:Notify({
                Title = "XEPHEX HUB",
                Content = "\239\191\189\239\191\189\224\184\177\224\184\148\224\184\165\224\184\173\224\184\129 JobId \224\185\129\224\184\165\224\185\137\224\184\167",
                Duration = 5,
                Icon = "rbxassetid://80283328189076"
            })
        end
    })
    v14:Input({
        Title = "JobId",
        Placeholder = "\239\191\189\239\191\189\224\184\170\224\185\136 JobId",
        Default = "",
        Callback = function(p533)
            vu532 = p533 or ""
        end
    })
    v14:Button({
        Title = "Teleport To JobId",
        Desc = "\239\191\189\239\191\189\224\184\173\224\184\162\224\185\128\224\184\139\224\184\180\224\184\163\224\185\140\224\184\159\224\185\128\224\184\167\224\184\173\224\184\163\224\185\140\224\184\148\224\185\137\224\184\167\224\184\162 JobId",
        Callback = function()
            if vu532 == "" then
                vu6:Notify({
                    Title = "XEPHEX HUB",
                    Content = "\239\191\189\239\191\189\224\184\163\224\184\184\224\184\147\224\184\178\224\185\131\224\184\170\224\185\136 JobId \224\184\129\224\185\136\224\184\173\224\184\153",
                    Duration = 5,
                    Icon = "rbxassetid://80283328189076"
                })
            else
                game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, vu532)
            end
        end
    })
    task.defer(function()
        pcall(function()
            vu9:Load()
            vu6:Notify({
                Title = "XEPHEX  HUB",
                Content = "Load...",
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
    vu480.OnTeleport:Connect(function()
        pcall(function()
            vu9:Save()
        end)
    end)
else
    game.Players.LocalPlayer:Kick("Please Execute in Loader")
end