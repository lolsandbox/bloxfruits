local keys = {
    "jacker1",
    "jacker2",
    "jacker3",
    "jacker4",
    "jacker5",
    "AnEditor-FBICODE@FBIZPS.org",
    "AnEditor-FBICODE@FBIZPS.xyz",
    "Rivai12345678676",
    "vyvyvyvyvyvyvyvyvyv"
}

local counter = 1
local keyCheck
for i,v in pairs(keys) do
   if counter == #keys then
       keys = ""
       game.Players.LocalPlayer:Kick("con di me may sai key con cac")
   else
       if v == getgenv().Key then
       end
    end
end
print("Success Key")

repeat wait() until game.Players
repeat wait() until game.Players.LocalPlayer
repeat wait() until game.ReplicatedStorage
repeat wait() until game.ReplicatedStorage:FindFirstChild("Remotes");
repeat wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui");
repeat wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("Main");
repeat wait() until game:GetService("Players")
repeat wait() until game:GetService("Players").LocalPlayer.Character:FindFirstChild("Energy")

wait(1)

if not game:IsLoaded() then repeat game.Loaded:Wait() until game:IsLoaded() end

if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
    repeat wait()
        if game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main").ChooseTeam.Visible == true then
            if _G.Team == "Pirate" then
                for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Activated)) do                                                                                                
                    v.Function()
                end
            elseif _G.Team == "Marine" then
                for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton.Activated)) do                                                                                                
                    v.Function()
                end
            else
                for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Activated)) do                                                                                                
                    v.Function()
                end
            end
        end
    until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded()
end

_G.Settings = {
    Auto_Farm_Level = false;
    Auto_Second_Sea = false;
    Auto_Third_Sea = false;
    Auto_Near_Mob = false;
    Bring_Mob = true;
    Fast_Attack = true;
    Auto_Saber = false;
    Auto_Pole = false;
    Select_Weapon = nil;
    Auto_Start_Raid = false;
    Kill_Aura = false;
    Auto_Next_Island = false;
    Auto_Buy_Chips_Raid = false;
    Auto_Buy_Chips_Law_Raid = false;
    Auto_Start_Law_Raid = false;
    Kill_law = false;
    Weapon_Law_Raid = nil;
}

local foldername = "RiVai Hub"
local filename = "BloxFruit "..game.Players.LocalPlayer.Name.." Config.json"
 
function saveSettings()
    local HttpService = game:GetService("HttpService")
    local json = HttpService:JSONEncode(_G.Settings)
    if (writefile) then
        if isfolder(foldername) then
			if isfile(foldername.."\\"..filename) then
				writefile(foldername.."\\"..filename, json)
			else
				writefile(foldername.."\\"..filename, json)
			end
        else
            makefolder(foldername)
			writefile(foldername.."\\"..filename, json)
        end
    end
end

function loadSettings()
    local HttpService = game:GetService("HttpService")
    if isfile(foldername.."\\"..filename) then
        _G.Settings = HttpService:JSONDecode(readfile(foldername.."\\"..filename))
    end
end
 
loadSettings()

if _G.Select_Weapon == nil then
    for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
        if v.ToolTip == "Melee" then
            if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                _G.Select_Weapon = tostring(v.Name)
            end
        end
    end
end

if _G.Select_Boss == nil then
	_G.Select_Boss = "nil"
end

if game.PlaceId == 2753915549 then
	World1 = true
elseif game.PlaceId == 4442272183 then
	World2 = true
elseif game.PlaceId == 7449423635 then
	World3 = true
end

function CheckQuest() 
	local MyLevel = game.Players.LocalPlayer.Data.Level.Value
    if World1 then
		if MyLevel == 1 or MyLevel <= 9 or _G.Select_Mob_Farm == "Bandit [Lv. 5]" then -- Bandit
			Ms = "Bandit [Lv. 5]"
			NameQuest = "BanditQuest1"
			LevelQuest = 1
			NameMon = "Bandit"
			CFrameQuest = CFrame.new(1061.66699, 16.5166187, 1544.52905, -0.942978859, -3.338515e-9, 0.332852632, 7.043405e-9, 1, 2.9984133e-8, -0.332852632, 3.0618818e-8, -0.942978859)
			CFrameMon = CFrame.new(1199.31287, 52.2717781, 1536.91516, -0.929782331, 6.6021585e-8, -0.368109822, 3.9077392e-8, 1, 8.065016e-8, 0.368109822, 6.0602325e-8, -0.929782331)
			SPAWNPOINT = "Default"
        elseif MyLevel == 10 or MyLevel <= 14 or _G.Select_Mob_Farm == "Monkey [Lv. 14]" then -- Monkey
			Ms = "Monkey [Lv. 14]"
			NameQuest = "JungleQuest"
			LevelQuest = 1
			NameMon = "Monkey"
			CFrameQuest = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -0.000004708589, -0.997892559, 1.4143188e-7, 1, -0.0000047093367, 0.997892559, 1.6444218e-7, 0.0648873374)
			CFrameMon = CFrame.new(-1502.74609, 98.5633316, 90.6417007, 0.836947978, 0, 0.547282517, -0, 1, -0, -0.547282517, 0, 0.836947978)
			SPAWNPOINT = "Jungle"
		elseif MyLevel == 15 or MyLevel <= 29 or _G.Select_Mob_Farm == "Gorilla [Lv. 20]" then -- Gorilla
			Ms = "Gorilla [Lv. 20]"
			NameQuest = "JungleQuest"
			LevelQuest = 2
			NameMon = "Gorilla"
			CFrameQuest = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -0.000004708589, -0.997892559, 1.4143188e-7, 1, -0.0000047093367, 0.997892559, 1.6444218e-7, 0.0648873374)
			CFrameMon = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.666025e-8, 0.950426519, -3.372755e-8, 1, 7.065018e-8, -0.950426519, -5.4024174e-8, 0.310949147)
			SPAWNPOINT = "Jungle"
		elseif MyLevel == 30 or MyLevel <= 39 or _G.Select_Mob_Farm == "Pirate [Lv. 35]" then -- Pirate
			Ms = "Pirate [Lv. 35]"
			NameQuest = "BuggyQuest1"
			LevelQuest = 1
			NameMon = "Pirate"
			CFrameQuest = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.585705e-9, 0.280922383, -4.0631033e-8, 1, -1.11807175e-7, -0.280922383, -1.18718916e-7, -0.959730506)
			CFrameMon = CFrame.new(-1219.32324, 4.75205183, 3915.63452, -0.966492832, -6.9123885e-8, 0.25669381, -5.211955e-8, 1, 7.304701e-8, -0.25669381, 5.722065e-8, -0.966492832)
			SPAWNPOINT = "Pirate"
		elseif MyLevel == 40 or MyLevel <= 59 or _G.Select_Mob_Farm == "Brute [Lv. 45]" then -- Brute
			Ms = "Brute [Lv. 45]"
			NameQuest = "BuggyQuest1"
			LevelQuest = 2
			NameMon = "Brute"
			CFrameQuest = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.585705e-9, 0.280922383, -4.0631033e-8, 1, -1.11807175e-7, -0.280922383, -1.18718916e-7, -0.959730506)
			CFrameMon = CFrame.new(-1146.49646, 96.0936813, 4312.1333, -0.978175163, -1.5322206e-8, 0.207781896, -3.333169e-8, 1, -8.317389e-8, -0.207781896, -8.828435e-8, -0.978175163)
			SPAWNPOINT = "Pirate"
		elseif MyLevel == 60 or MyLevel <= 74 or _G.Select_Mob_Farm == "Desert Bandit [Lv. 60]" then -- Desert Bandit
			Ms = "Desert Bandit [Lv. 60]"
			NameQuest = "DesertQuest"
			LevelQuest = 1
			NameMon = "Desert Bandit"
			CFrameQuest = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.6823327e-8, 0.594568789, 6.978352e-8, 1, 3.2436525e-8, -0.594568789, 6.757152e-8, -0.804044724)
			CFrameMon = CFrame.new(932.788818, 6.4503746, 4488.24609, -0.998625934, 3.0894835e-8, 0.0524050146, 2.799673e-8, 1, -5.603613e-8, -0.0524050146, -5.4491963e-8, -0.998625934)
			SPAWNPOINT = "Desert"
		elseif MyLevel == 75 or MyLevel <= 89 or _G.Select_Mob_Farm == "Desert Officer [Lv. 70]" then -- Desert Officre
			Ms = "Desert Officer [Lv. 70]"
			NameQuest = "DesertQuest"
			LevelQuest = 2
			NameMon = "Desert Officer"
			CFrameQuest = CFrame.new(897.031128, 6.43846416, 4388.97168, -0.804044724, 3.6823327e-8, 0.594568789, 6.978352e-8, 1, 3.2436525e-8, -0.594568789, 6.757152e-8, -0.804044724)
			CFrameMon = CFrame.new(1580.03198, 4.61375761, 4366.86426, 0.135744005, -6.442807e-8, -0.990743816, 4.357383e-8, 1, -5.9059857e-8, 0.990743816, -3.5153484e-8, 0.135744005)
			SPAWNPOINT = "Desert"
		elseif MyLevel == 90 or MyLevel <= 99 or _G.Select_Mob_Farm == "Snow Bandit [Lv. 90]" then -- Snow Bandits
			Ms = "Snow Bandit [Lv. 90]"
			NameQuest = "SnowQuest"
			LevelQuest = 1
			NameMon = "Snow Bandits"
			CFrameQuest = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.5394784e-9, -0.937287986, 1.4986057e-8, 1, 2.863582e-9, 0.937287986, -1.5044371e-8, 0.348555952)
			CFrameMon = CFrame.new(1370.24316, 102.403511, -1411.52905, 0.980274439, -1.1299573e-8, 0.197641045, -9.5734345e-9, 1, 1.04655214e-7, -0.197641045, -1.04482936e-7, 0.980274439)
			SPAWNPOINT = "Ice"
		elseif MyLevel == 100 or MyLevel <= 119 or _G.Select_Mob_Farm == "Snowman [Lv. 100]"  then -- Snowman
			Ms = "Snowman [Lv. 100]"
			NameQuest = "SnowQuest"
			LevelQuest = 2
			NameMon = "Snowman"
			CFrameQuest = CFrame.new(1384.14001, 87.272789, -1297.06482, 0.348555952, -2.5394784e-9, -0.937287986, 1.4986057e-8, 1, 2.863582e-9, 0.937287986, -1.5044371e-8, 0.348555952)
			CFrameMon = CFrame.new(1370.24316, 102.403511, -1411.52905, 0.980274439, -1.1299573e-8, 0.197641045, -9.5734345e-9, 1, 1.04655214e-7, -0.197641045, -1.04482936e-7, 0.980274439)
			SPAWNPOINT = "Ice"
		elseif MyLevel == 120 or MyLevel <= 149 or _G.Select_Mob_Farm == "Chief Petty Officer [Lv. 120]" then -- Chief Petty Officer
			Ms = "Chief Petty Officer [Lv. 120]"
			NameQuest = "MarineQuest2"
			LevelQuest = 1
			NameMon = "Chief Petty Officer"
			CFrameQuest = CFrame.new(-5035.0835, 28.6520386, 4325.29443, 0.0243340395, -7.0806465e-8, 0.999703884, -6.369268e-8, 1, 7.2377794e-8, -0.999703884, -6.543507e-8, 0.0243340395)
			CFrameMon = CFrame.new(-4882.8623, 22.6520386, 4255.53516, 0.273695946, -5.4038065e-8, -0.96181643, 4.377208e-8, 1, -4.37275e-8, 0.96181643, -3.0132668e-8, 0.273695946)
			SPAWNPOINT = "MarineBase"
		elseif MyLevel == 150 or MyLevel <= 174 or _G.Select_Mob_Farm == "Sky Bandit [Lv. 150]" then -- Sky Bandit
			Ms = "Sky Bandit [Lv. 150]"
			NameQuest = "SkyQuest"
			LevelQuest = 1
			NameMon = "Sky Bandit"
			CFrameQuest = CFrame.new(-4841.83447, 717.669617, -2623.96436, -0.875942111, 5.597102e-8, -0.482416272, 3.040231e-8, 1, 6.0819595e-8, 0.482416272, 3.8607872e-8, -0.875942111)
			CFrameMon = CFrame.new(-4970.74219, 294.544342, -2890.11353, -0.994874597, -8.6131124e-8, -0.101116329, -9.108362e-8, 1, 4.4361492e-8, 0.101116329, 5.3344166e-8, -0.994874597)
			SPAWNPOINT = "Sky"
		elseif MyLevel == 175 or MyLevel <= 189 or _G.Select_Mob_Farm == "Dark Master [Lv. 175]" then -- Dark Master
			Ms = "Dark Master [Lv. 175]"
			NameQuest = "SkyQuest"
			LevelQuest = 2
			NameMon = "Dark Master"
			CFrameQuest = CFrame.new(-4841.83447, 717.669617, -2623.96436, -0.875942111, 5.597102e-8, -0.482416272, 3.040231e-8, 1, 6.0819595e-8, 0.482416272, 3.8607872e-8, -0.875942111)
			CFrameMon = CFrame.new(-5220.58594, 430.693298, -2278.17456, -0.925375521, 1.1208687e-8, 0.379051805, -1.0511551e-8, 1, -5.523209e-8, -0.379051805, -5.509484e-8, -0.925375521)
			SPAWNPOINT = "Sky"
		elseif MyLevel == 190 or MyLevel <= 209 or _G.Select_Mob_Farm == "Prisoner [Lv. 190]" then
			Ms = "Prisoner [Lv. 190]"
			NameQuest = "PrisonerQuest"
			LevelQuest = 1
			NameMon = "Prisoner"
			CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.002929e-9, -0.995993316, 1.6081786e-9, 1, -5.1674487e-9, 0.995993316, -2.063847e-9, -0.0894274712)
			CFrameMon = CFrame.new(5433.39307, 88.678093, 514.986877, 0.879988372, 0, -0.474995494, 0, 1, 0, 0.474995494, 0, 0.879988372)
			SPAWNPOINT = "Prison"
		elseif MyLevel == 210 or MyLevel <= 249 or _G.Select_Mob_Farm == "Dangerous Prisoner [Lv. 210]" then
			Ms = "Dangerous Prisoner [Lv. 210]"
			NameQuest = "PrisonerQuest"
			LevelQuest = 2
			NameMon = "Dangerous Prisoner"
			CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.002929e-9, -0.995993316, 1.6081786e-9, 1, -5.1674487e-9, 0.995993316, -2.063847e-9, -0.0894274712)
			CFrameMon = CFrame.new(5433.39307, 88.678093, 514.986877, 0.879988372, 0, -0.474995494, 0, 1, 0, 0.474995494, 0, 0.879988372)
			SPAWNPOINT = "Prison"
		elseif MyLevel == 250 or MyLevel <= 274 or _G.Select_Mob_Farm == "Toga Warrior [Lv. 225]" then -- Toga Warrior
			Ms = "Toga Warrior [Lv. 250]"
			NameQuest = "ColosseumQuest"
			LevelQuest = 1
			NameMon = "Toga Warrior"
			CFrameQuest = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.2211486e-9, 0.816767931, -3.584966e-10, 1, -1.2418561e-9, -0.816767931, 4.2370063e-10, 0.576966345)
			CFrameMon = CFrame.new(-1779.97583, 44.6077499, -2736.35474, 0.984437346, 4.1039634e-8, 0.175734788, -3.6228688e-8, 1, -3.0584417e-8, -0.175734788, 2.3741821e-8, 0.984437346)
			SPAWNPOINT = "Colosseum"
		elseif MyLevel == 275 or MyLevel <= 299 or _G.Select_Mob_Farm == "Gladiator [Lv. 275]" then -- Gladiato
			Ms = "Gladiator [Lv. 275]"
			NameQuest = "ColosseumQuest"
			LevelQuest = 2
			NameMon = "Gladiato"
			CFrameQuest = CFrame.new(-1576.11743, 7.38933945, -2983.30762, 0.576966345, 1.2211486e-9, 0.816767931, -3.584966e-10, 1, -1.2418561e-9, -0.816767931, 4.2370063e-10, 0.576966345)
			CFrameMon = CFrame.new(-1274.75903, 58.1895943, -3188.16309, 0.464524001, 6.210056e-8, 0.885560572, -4.804494e-9, 1, -6.760548e-8, -0.885560572, 2.7149701e-8, 0.464524001)
			SPAWNPOINT = "Colosseum"
		elseif MyLevel == 300 or MyLevel <= 324 or _G.Select_Mob_Farm == "Military Soldier [Lv. 300]" then -- Military Soldier
			Ms = "Military Soldier [Lv. 300]"
			NameQuest = "MagmaQuest"
			LevelQuest = 1
			NameMon = "Military Soldier"
			CFrameQuest = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.3788e-8, -0.808542669, -2.101162e-8, 1, -3.2344648e-8, 0.808542669, 3.6021596e-8, 0.588437557)
			CFrameMon = CFrame.new(-5363.01123, 41.5056877, 8548.47266, -0.578253984, -3.295031e-10, 0.815856814, 9.112097e-8, 1, 6.498761e-8, -0.815856814, 1.11921e-7, -0.578253984)
			SPAWNPOINT = "Magma"
		elseif MyLevel == 325 or MyLevel <= 374 or _G.Select_Mob_Farm == "Military Spy [Lv. 330]" then -- Military Spy
			Ms = "Military Spy [Lv. 325]"
			NameQuest = "MagmaQuest"
			LevelQuest = 2
			NameMon = "Military Spy"
			CFrameQuest = CFrame.new(-5316.55859, 12.2370615, 8517.2998, 0.588437557, -1.3788e-8, -0.808542669, -2.101162e-8, 1, -3.2344648e-8, 0.808542669, 3.6021596e-8, 0.588437557)
			CFrameMon = CFrame.new(-5787.99023, 120.864456, 8762.25293, -0.188358366, -1.8470628e-8, 0.982100308, -1.2378213e-7, 1, -4.9330695e-9, -0.982100308, -1.2249565e-7, -0.188358366)
			SPAWNPOINT = "Magma"
		elseif MyLevel == 375 or MyLevel <= 399 or _G.Select_Mob_Farm == "Fishman Warrior [Lv. 375]" then -- Fishman Warrior
			Ms = "Fishman Warrior [Lv. 375]"
			NameQuest = "FishmanQuest"
			LevelQuest = 1
			NameMon = "Fishman Warrior"
			CFrameQuest = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.952516e-9, 0.448996574, -2.3432746e-8, 1, 3.7829746e-8, -0.448996574, -4.4323365e-8, 0.893533468)
			CFrameMon = CFrame.new(60946.6094, 48.6735229, 1525.91687, -0.0817126185, 8.9075115e-8, 0.996655822, 2.008898e-8, 1, -8.772696e-8, -0.996655822, 1.2853399e-8, -0.0817126185)
			SPAWNPOINT = "Fountain"
        elseif MyLevel == 400 or MyLevel <= 449 or _G.Select_Mob_Farm == "Fishman Commando [Lv. 400]" then -- Fishman Commando
			Ms = "Fishman Commando [Lv. 400]"
			NameQuest = "FishmanQuest"
			LevelQuest = 2
			NameMon = "Fishman Commando"
			CFrameQuest = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.952516e-9, 0.448996574, -2.3432746e-8, 1, 3.7829746e-8, -0.448996574, -4.4323365e-8, 0.893533468)
			CFrameMon = CFrame.new(61885.5039, 18.4828243, 1504.17896, 0.577502489, 0, -0.816389024, -0, 1.00000012, -0, 0.816389024, 0, 0.577502489)
			SPAWNPOINT = "Fountain"
        elseif MyLevel == 450 or MyLevel <= 474 or _G.Select_Mob_Farm == "God's Guard [Lv. 450]" then -- God's Guards
			Ms = "God's Guard [Lv. 450]"
			NameQuest = "SkyExp1Quest"
			LevelQuest = 1
			NameMon = "God's Guards"
			CFrameQuest = CFrame.new(-4721.71436, 845.277161, -1954.20105, -0.999277651, -5.5696976e-9, 0.0380011722, -4.1475148e-9, 1, 3.7503526e-8, -0.0380011722, 3.731883e-8, -0.999277651)
			CFrameMon = CFrame.new(-4716.95703, 853.089722, -1933.92542, -0.93441087, -6.7748878e-9, -0.356197298, 1.1214518e-8, 1, -4.843902e-8, 0.356197298, -4.925652e-8, -0.93441087)
			SPAWNPOINT = "Sky"
        elseif MyLevel == 475 or MyLevel <= 524 or _G.Select_Mob_Farm == "Shanda [Lv. 475]" then -- Shandas
            sky = false
			Ms = "Shanda [Lv. 475]"
			NameQuest = "SkyExp1Quest"
			LevelQuest = 2
			NameMon = "Shandas"
			CFrameQuest = CFrame.new(-7863.63672, 5545.49316, -379.826324, 0.362120807, -1.9804634e-8, -0.93213129, 4.058223e-8, 1, -5.4809512e-9, 0.93213129, -3.5843197e-8, 0.362120807)
			CFrameMon = CFrame.new(-7685.12354, 5601.05127, -443.171509, 0.150056243, 1.7976824e-8, -0.988677442, 6.6779866e-9, 1, 1.9196248e-8, 0.988677442, -9.482892e-9, 0.150056243)
			SPAWNPOINT = "Sky"
        elseif MyLevel == 525 or MyLevel <= 549 or _G.Select_Mob_Farm == "Royal Squad [Lv. 525]" then -- Royal Squad
            sky = true
			Ms = "Royal Squad [Lv. 525]"
			NameQuest = "SkyExp2Quest"
			LevelQuest = 1
			NameMon = "Royal Squad"
			CFrameQuest = CFrame.new(-7902.66895, 5635.96387, -1411.71802, 0.0504222959, 2.5710392e-8, 0.998727977, 1.1254156e-7, 1, -3.1424968e-8, -0.998727977, 1.1398292e-7, 0.0504222959)
			CFrameMon = CFrame.new(-7685.02051, 5606.87842, -1442.729, 0.561947823, 7.695275e-9, -0.827172697, -4.2497454e-9, 1, 6.4159997e-9, 0.827172697, -9.018386e-11, 0.561947823)
			SPAWNPOINT = "Sky2"
		elseif MyLevel == 550 or MyLevel <= 624 or _G.Select_Mob_Farm == "Royal Soldier [Lv. 550]" then -- Royal Soldier
            Dis = 240
            sky = true
			Ms = "Royal Soldier [Lv. 550]"
			NameQuest = "SkyExp2Quest"
			LevelQuest = 2
			NameMon = "Royal Soldier"
			CFrameQuest = CFrame.new(-7902.66895, 5635.96387, -1411.71802, 0.0504222959, 2.5710392e-8, 0.998727977, 1.1254156e-7, 1, -3.1424968e-8, -0.998727977, 1.1398292e-7, 0.0504222959)
			CFrameMon = CFrame.new(-7864.44775, 5661.94092, -1708.22351, 0.998389959, 2.2868614e-9, -0.0567218624, 1.9943138e-9, 1, 7.5420026e-8, 0.0567218624, -7.541172e-8, 0.998389959)
			SPAWNPOINT = "Sky2"
		elseif MyLevel == 625 or MyLevel <= 649 or _G.Select_Mob_Farm == "Galley Pirate [Lv. 625]" then -- Galley Pirate
            Dis = 240
            sky = false
			Ms = "Galley Pirate [Lv. 625]"
			NameQuest = "FountainQuest"
			LevelQuest = 1
			NameMon = "Galley Pirate"
			CFrameQuest = CFrame.new(5254.60156, 38.5011406, 4049.69678, -0.0504891425, -3.620665e-8, -0.998724639, -9.879214e-9, 1, -3.5753455e-8, 0.998724639, 8.061453e-9, -0.0504891425)
			CFrameMon = CFrame.new(5595.06982, 41.5013695, 3961.47095, -0.992138803, -2.1161027e-8, -0.125142589, -1.3424951e-8, 1, -6.26614e-8, 0.125142589, -6.048875e-8, -0.992138803)
			SPAWNPOINT = "Fountain"
		elseif MyLevel >= 650 or _G.Select_Mob_Farm == "Galley Captain [Lv. 650]" then -- Galley Captain
            Dis = 240
			Ms = "Galley Captain [Lv. 650]"
			NameQuest = "FountainQuest"
			LevelQuest = 2
			NameMon = "Galley Captain"
			CFrameQuest = CFrame.new(5254.60156, 38.5011406, 4049.69678, -0.0504891425, -3.620665e-8, -0.998724639, -9.879214e-9, 1, -3.5753455e-8, 0.998724639, 8.061453e-9, -0.0504891425)
			CFrameMon = CFrame.new(5658.5752, 38.5361786, 4928.93506, -0.996873081, 0.0000021239105, -0.0790185928, 0.0000021698966, 1, -4.960974e-7, 0.0790185928, -6.6600825e-7, -0.996873081)
			SPAWNPOINT = "Fountain"
		end
    elseif World2 then
		if MyLevel == 700 or MyLevel <= 724 or _G.Select_Mob_Farm == "Raider [Lv. 700]" then -- Raider [Lv. 700]
			Ms = "Raider [Lv. 700]"
			NameQuest = "Area1Quest"
			LevelQuest = 1
			NameMon = "Raider"
			CFrameQuest = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.4216593e-8, 0.967323601, -6.001478e-8, 1, 3.042729e-8, -0.967323601, -6.57684e-8, 0.253544956)
			CFrameMon = CFrame.new(-737.026123, 39.1748352, 2392.57959, 0.272128761, 0, -0.962260842, -0, 1, -0, 0.962260842, 0, 0.272128761)
			SPAWNPOINT = "DressTown"
		elseif MyLevel == 725 or MyLevel <= 774 or _G.Select_Mob_Farm == "Mercenary [Lv. 725]" then -- Mercenary [Lv. 725]
			Ms = "Mercenary [Lv. 725]"
			NameQuest = "Area1Quest"
			LevelQuest = 2
			NameMon = "Mercenary"
			CFrameQuest = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.4216593e-8, 0.967323601, -6.001478e-8, 1, 3.042729e-8, -0.967323601, -6.57684e-8, 0.253544956)
			CFrameMon = CFrame.new(-973.731995, 95.8733215, 1836.46936, 0.999135971, 2.0232699e-8, -0.0415605344, -1.907678e-8, 1, 2.8209495e-8, 0.0415605344, -2.739228e-8, 0.999135971)
			SPAWNPOINT = "DressTown"
		elseif MyLevel == 775 or MyLevel <= 799 or _G.Select_Mob_Farm == "Swan Pirate [Lv. 775]" then -- Swan Pirate [Lv. 775]
			Ms = "Swan Pirate [Lv. 775]"
			NameQuest = "Area2Quest"
			LevelQuest = 1
			NameMon = "Swan Pirate"
			CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.960749e-10, -0.999488771, 1.3632653e-10, 1, 8.9217234e-10, 0.999488771, -1.0773209e-10, -0.0319722369)
			CFrameMon = CFrame.new(970.369446, 142.653198, 1217.3667, 0.162079468, -4.8545264e-8, -0.986777723, 1.0335759e-8, 1, -4.7498087e-8, 0.986777723, -2.5006315e-9, 0.162079468)
			SPAWNPOINT = "DressTown"
		elseif MyLevel == 800 or MyLevel <= 874 or _G.Select_Mob_Farm == "Factory Staff [Lv. 800]" then -- Factory Staff [Lv. 800]
			Ms = "Factory Staff [Lv. 800]"
			NameQuest = "Area2Quest"
			LevelQuest = 2
			NameMon = "Factory Staff"
			CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.960749e-10, -0.999488771, 1.3632653e-10, 1, 8.9217234e-10, 0.999488771, -1.0773209e-10, -0.0319722369)
			CFrameMon = CFrame.new(296.786499, 72.9948196, -57.1298141, -0.876037002, -5.3236498e-8, 0.482243896, -3.8765833e-8, 1, 3.9971873e-8, -0.482243896, 1.6322254e-8, -0.876037002)
			SPAWNPOINT = "DressTown"
		elseif MyLevel == 875 or MyLevel <= 899 or _G.Select_Mob_Farm == "Marine Lieutenant [Lv. 875]" then -- Marine Lieutenant [Lv. 875]
			Ms = "Marine Lieutenant [Lv. 875]"
			NameQuest = "MarineQuest3"
			LevelQuest = 1
			NameMon = "Marine Lieutenant"
			CFrameQuest = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.232984e-8, -0.486752301, 5.643834e-8, 1, -1.4322079e-8, 0.486752301, -3.99824e-8, -0.873540044)
			CFrameMon = CFrame.new(-2913.26367, 73.0011826, -2971.64282, 0.910507619, 0, 0.413492233, 0, 1.00000012, 0, -0.413492233, 0, 0.910507619)
			SPAWNPOINT = "Greenb"
		elseif MyLevel == 900 or MyLevel <= 949 or _G.Select_Mob_Farm == "Marine Captain [Lv. 900]" then -- Marine Captain [Lv. 900]
			Ms = "Marine Captain [Lv. 900]"
			NameQuest = "MarineQuest3"
			LevelQuest = 2
			NameMon = "Marine Captain"
			CFrameQuest = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.232984e-8, -0.486752301, 5.643834e-8, 1, -1.4322079e-8, 0.486752301, -3.99824e-8, -0.873540044)
			CFrameMon = CFrame.new(-1868.67688, 73.0011826, -3321.66333, -0.971402287, 1.0650209e-8, 0.237439692, 3.688562e-8, 1, 1.0605037e-7, -0.237439692, 1.11775684e-7, -0.971402287)
			SPAWNPOINT = "Greenb"
		elseif MyLevel == 950 or MyLevel <= 974 or _G.Select_Mob_Farm == "Zombie [Lv. 950]" then -- Zombie [Lv. 950]
			Ms = "Zombie [Lv. 950]"
			NameQuest = "ZombieQuest"
			LevelQuest = 1
			NameMon = "Zombie"
			CFrameQuest = CFrame.new(-5492.79395, 48.5151672, -793.710571, 0.321800292, -6.246958e-8, 0.946807742, 4.056161e-8, 1, 5.2193123e-8, -0.946807742, 2.160828e-8, 0.321800292)
			CFrameMon = CFrame.new(-5634.83838, 126.067039, -697.665039, -0.992770672, 6.7761894e-9, 0.120025545, 1.6546124e-8, 1, 8.040234e-8, -0.120025545, 8.180702e-8, -0.992770672)
			SPAWNPOINT = "Graveyard"
		elseif MyLevel == 975 or MyLevel <= 999 or _G.Select_Mob_Farm == "Vampire [Lv. 975]" then -- Vampire [Lv. 975]
			Ms = "Vampire [Lv. 975]"
			NameQuest = "ZombieQuest"
			LevelQuest = 2
			NameMon = "Vampire"
			CFrameQuest = CFrame.new(-5492.79395, 48.5151672, -793.710571, 0.321800292, -6.246958e-8, 0.946807742, 4.056161e-8, 1, 5.2193123e-8, -0.946807742, 2.160828e-8, 0.321800292)
			CFrameMon = CFrame.new(-6030.32031, 6.4377408, -1313.5564, -0.856965423, 3.9138893e-8, -0.515373945, -1.1217894e-8, 1, 9.4595855e-8, 0.515373945, 8.684678e-8, -0.856965423)
			SPAWNPOINT = "Graveyard"
		elseif MyLevel == 1000 or MyLevel <= 1049 or _G.Select_Mob_Farm == "Snow Trooper [Lv. 1000]" then -- Snow Trooper [Lv. 1000] **
			Ms = "Snow Trooper [Lv. 1000]"
			NameQuest = "SnowMountainQuest"
			LevelQuest = 1
			NameMon = "Snow Trooper"
			CFrameQuest = CFrame.new(604.964966, 401.457062, -5371.69287, 0.353063971, 1.8952043e-8, -0.935599446, -5.81846e-8, 1, -1.7003375e-9, 0.935599446, 5.5037784e-8, 0.353063971)
			CFrameMon = CFrame.new(535.893433, 401.457062, -5329.6958, -0.999524176, 0, 0.0308452044, 0, 1, -0, -0.0308452044, 0, -0.999524176)
			SPAWNPOINT = "Snowy"
		elseif MyLevel == 1050 or MyLevel <= 1099 or _G.Select_Mob_Farm == "Winter Warrior [Lv. 1050]" then -- Winter Warrior [Lv. 1050]
			Ms = "Winter Warrior [Lv. 1050]"
			NameQuest = "SnowMountainQuest"
			LevelQuest = 2
			NameMon = "Winter Warrior"
			CFrameQuest = CFrame.new(604.964966, 401.457062, -5371.69287, 0.353063971, 1.8952043e-8, -0.935599446, -5.81846e-8, 1, -1.7003375e-9, 0.935599446, 5.5037784e-8, 0.353063971)
			CFrameMon = CFrame.new(1223.7417, 454.575226, -5170.02148, 0.473996818, 2.5684535e-8, 0.880526543, -5.6245643e-8, 1, 1.1081102e-9, -0.880526543, -5.005102e-8, 0.473996818)
			SPAWNPOINT = "Snowy"
		elseif MyLevel == 1100 or MyLevel <= 1124 or _G.Select_Mob_Farm == "Lab Subordinate [Lv. 1100]" then -- Lab Subordinate [Lv. 1100]
			Ms = "Lab Subordinate [Lv. 1100]"
			NameQuest = "IceSideQuest"
			LevelQuest = 1
			NameMon = "Lab Subordinate"
			CFrameQuest = CFrame.new(-6060.10693, 15.9868021, -4904.7876, -0.411000341, -5.0653887e-7, 0.91163528, 1.2630606e-7, 1, 6.125813e-7, -0.91163528, 3.669162e-7, -0.411000341)
			CFrameMon = CFrame.new(-5769.2041, 37.9288292, -4468.38721, -0.569419742, -2.4905502e-8, 0.822046936, -6.9620654e-8, 1, -1.7928263e-8, -0.822046936, -6.7440155e-8, -0.569419742)
			SPAWNPOINT = "CircleIslandIce"
		elseif MyLevel == 1125 or MyLevel <= 1174 or _G.Select_Mob_Farm == "Horned Warrior [Lv. 1125]" then -- Horned Warrior [Lv. 1125]
			Ms = "Horned Warrior [Lv. 1125]"
			NameQuest = "IceSideQuest"
			LevelQuest = 2
			NameMon = "Horned Warrior"
			CFrameQuest = CFrame.new(-6060.10693, 15.9868021, -4904.7876, -0.411000341, -5.0653887e-7, 0.91163528, 1.2630606e-7, 1, 6.125813e-7, -0.91163528, 3.669162e-7, -0.411000341)
			CFrameMon = CFrame.new(-6400.85889, 24.7645149, -5818.63574, -0.964845479, 8.659266e-8, -0.262817472, 3.982614e-7, 1, -0.000001132604, 0.262817472, -0.0000011974581, -0.964845479)
			SPAWNPOINT = "CircleIslandIce"
		elseif MyLevel == 1175 or MyLevel <= 1199 or _G.Select_Mob_Farm == "Magma Ninja [Lv. 1175]" then -- Magma Ninja [Lv. 1175]
			Ms = "Magma Ninja [Lv. 1175]"
			NameQuest = "FireSideQuest"
			LevelQuest = 1
			NameMon = "Magma Ninja"
			CFrameQuest = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-7, -0.555080295, -1.1081434e-7, 1, 4.17011e-8, 0.555080295, 2.6824017e-8, 0.831796765)
			CFrameMon = CFrame.new(-5496.65576, 58.6890411, -5929.76855, -0.885073781, 0, -0.465450764, 0, 1.00000012, -0, 0.465450764, 0, -0.885073781)
			SPAWNPOINT = "CircleIslandFire"
		elseif MyLevel == 1200 or MyLevel <= 1249 or _G.Select_Mob_Farm == "Lava Pirate [Lv. 1200]" then -- Lava Pirate [Lv. 1200]
			Ms = "Lava Pirate [Lv. 1200]"
			NameQuest = "FireSideQuest"
			LevelQuest = 2
			NameMon = "Lava Pirate"
			CFrameQuest = CFrame.new(-5431.09473, 15.9868021, -5296.53223, 0.831796765, 1.15322464e-7, -0.555080295, -1.1081434e-7, 1, 4.17011e-8, 0.555080295, 2.6824017e-8, 0.831796765)
			CFrameMon = CFrame.new(-5169.71729, 34.1234779, -4669.73633, -0.196780294, 0, 0.98044765, 0, 1.00000012, -0, -0.98044765, 0, -0.196780294)
			SPAWNPOINT = "CircleIslandFire"
		elseif MyLevel == 1250 or MyLevel <= 1274 or _G.Select_Mob_Farm == "Ship Deckhand [Lv. 1250]" then -- Ship Deckhand [Lv. 1250]
			Ms = "Ship Deckhand [Lv. 1250]"
			NameQuest = "ShipQuest1"
			LevelQuest = 1
			NameMon = "Ship Deckhand"
			CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
			CFrameMon = CFrame.new(1163.80872, 138.288452, 33058.4258, -0.998580813, 5.4907698e-8, -0.0532564968, 5.5743676e-8, 1, -1.42118655e-8, 0.0532564968, -1.7160408e-8, -0.998580813)
			SPAWNPOINT = "Ship"
        elseif MyLevel == 1275 or MyLevel <= 1299 or _G.Select_Mob_Farm == "Ship Engineer [Lv. 1275]"  then -- Ship Engineer [Lv. 1275]
			Ms = "Ship Engineer [Lv. 1275]"
			NameQuest = "ShipQuest1"
			LevelQuest = 2
			NameMon = "Ship Engineer"
			CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016, -0.244533166, -0, -0.969640911, -0, 1.00000012, -0, 0.96964103, 0, -0.244533136)
			CFrameMon = CFrame.new(916.666504, 44.0920448, 32917.207, -0.99746871, -4.850347e-8, -0.0711069331, -4.892546e-8, 1, 4.192943e-9, 0.0711069331, 7.661269e-9, -0.99746871)
			SPAWNPOINT = "Ship"
        elseif MyLevel == 1300 or MyLevel <= 1324 or _G.Select_Mob_Farm == "Ship Steward [Lv. 1300]" then -- Ship Steward [Lv. 1300]
			Ms = "Ship Steward [Lv. 1300]"
			NameQuest = "ShipQuest2"
			LevelQuest = 1
			NameMon = "Ship Steward"
			CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.5190519e-8, -0.493826836, 1.4410838e-8, 1, 5.385342e-9, 0.493826836, -2.4335791e-9, -0.869560242)
			CFrameMon = CFrame.new(918.743286, 129.591064, 33443.4609, -0.999792814, -1.7070947e-7, -0.020350717, -1.7255917e-7, 1, 8.913513e-8, 0.020350717, 9.262837e-8, -0.999792814)
			SPAWNPOINT = "Ship"
        elseif MyLevel == 1325 or MyLevel <= 1349 or _G.Select_Mob_Farm == "Ship Officer [Lv. 1325]" then -- Ship Officer [Lv. 1325]
			Ms = "Ship Officer [Lv. 1325]"
			NameQuest = "ShipQuest2"
			LevelQuest = 2
			NameMon = "Ship Officer"
			CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125, -0.869560242, 1.5190519e-8, -0.493826836, 1.4410838e-8, 1, 5.385342e-9, 0.493826836, -2.4335791e-9, -0.869560242)
			CFrameMon = CFrame.new(786.051941, 181.474106, 33303.2969, 0.999285698, -5.3219306e-8, 0.0377905183, 5.689686e-8, 1, -9.6238686e-8, -0.0377905183, 9.83201e-8, 0.999285698)
			SPAWNPOINT = "Ship"
        elseif MyLevel == 1350 or MyLevel <= 1374 or _G.Select_Mob_Farm == "Arctic Warrior [Lv. 1350]" then -- Arctic Warrior [Lv. 1350]
			Ms = "Arctic Warrior [Lv. 1350]"
			NameQuest = "FrostQuest"
			LevelQuest = 1
			NameMon = "Arctic Warrior"
			CFrameQuest = CFrame.new(5669.43506, 28.2117786, -6482.60107, 0.888092756, 1.02705066e-7, 0.459664226, -6.203918e-8, 1, -1.03572376e-7, -0.459664226, 6.346469e-8, 0.888092756)
			CFrameMon = CFrame.new(5995.07471, 57.3188477, -6183.47314, 0.702747107, -1.5345417e-7, -0.711440146, -1.08168464e-7, 1, -3.22542e-7, 0.711440146, 3.036209e-7, 0.702747107)
			SPAWNPOINT = "IceCastle"
        elseif MyLevel == 1375 or MyLevel <= 1424 or _G.Select_Mob_Farm == "Snow Lurker [Lv. 1375]" then -- Snow Lurker [Lv. 1375]
			Ms = "Snow Lurker [Lv. 1375]"
			NameQuest = "FrostQuest"
			LevelQuest = 2
			NameMon = "Snow Lurker"
			CFrameQuest = CFrame.new(5669.43506, 28.2117786, -6482.60107, 0.888092756, 1.02705066e-7, 0.459664226, -6.203918e-8, 1, -1.03572376e-7, -0.459664226, 6.346469e-8, 0.888092756)
			CFrameMon = CFrame.new(5518.00684, 60.5559731, -6828.80518, -0.650781393, -3.6429295e-8, 0.759265184, -4.0766865e-9, 1, 4.4485464e-8, -0.759265184, 2.5855025e-8, -0.650781393)
			SPAWNPOINT = "IceCastle"
		elseif MyLevel == 1425 or MyLevel <= 1449 or _G.Select_Mob_Farm == "Sea Soldier [Lv. 1425]" then -- Sea Soldier [Lv. 1425]
			Ms = "Sea Soldier [Lv. 1425]"
			NameQuest = "ForgottenQuest"
			LevelQuest = 1
			NameMon = "Sea Soldier"
			CFrameQuest = CFrame.new(-3052.99097, 236.881363, -10148.1943, -0.997911751, 4.42322e-8, 0.064591676, 4.9096876e-8, 1, 7.372701e-8, -0.064591676, 7.67443e-8, -0.997911751)
			CFrameMon = CFrame.new(-3029.78467, 66.944252, -9777.38184, -0.998552859, 1.0955508e-8, 0.0537791774, 7.795642e-9, 1, -5.8966066e-8, -0.0537791774, -5.8461488e-8, -0.998552859)
			SPAWNPOINT = "ForgottenIsland"
		elseif MyLevel >= 1450 or _G.Select_Mob_Farm == "Water Fighter [Lv. 1450]" then -- Water Fighter [Lv. 1450]
			Ms = "Water Fighter [Lv. 1450]"
			NameQuest = "ForgottenQuest"
			LevelQuest = 2
			NameMon = "Water Fighter"
			CFrameQuest = CFrame.new(-3052.99097, 236.881363, -10148.1943, -0.997911751, 4.42322e-8, 0.064591676, 4.9096876e-8, 1, 7.372701e-8, -0.064591676, 7.67443e-8, -0.997911751)
			CFrameMon = CFrame.new(-3262.00098, 298.699615, -10553.6943, -0.233570755, -4.575382e-8, 0.972339869, -5.8098607e-8, 1, 3.309922e-8, -0.972339869, -4.8760572e-8, -0.233570755)
            SPAWNPOINT = "ForgottenIsland"
		end
	elseif World3 then
		if MyLevel == 1500 or MyLevel <= 1524 or _G.Select_Mob_Farm == "Pirate Millionaire [Lv. 1500]" then
			Ms = "Pirate Millionaire [Lv. 1500]"
			NameQuest = "PiratePortQuest"
			LevelQuest = 1
			NameMon = "Pirate Millionaire"
			CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
			CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
			SPAWNPOINT = "Default"
		elseif MyLevel == 1525 or MyLevel <= 1574 or _G.Select_Mob_Farm == "Pistol Billionaire [Lv. 1525]" then
			Ms = "Pistol Billionaire [Lv. 1525]"
			NameQuest = "PiratePortQuest"
			LevelQuest = 2
			NameMon = "Pistol Billionaire"
			CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
			CFrameMon = CFrame.new(81.164993286133, 43.755737304688, 5724.7021484375)
			SPAWNPOINT = "Default"
		elseif MyLevel == 1575 or MyLevel <= 1599 or _G.Select_Mob_Farm == "Dragon Crew Warrior [Lv. 1575]" then
			Ms = "Dragon Crew Warrior [Lv. 1575]"
			NameQuest = "AmazonQuest"
			LevelQuest = 1
			NameMon = "Dragon Crew Warrior"
			CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
			CFrameMon = CFrame.new(6241.9951171875, 51.522083282471, -1243.9771728516)
			SPAWNPOINT = "Hydra3"
		elseif MyLevel == 1600 or MyLevel <= 1624 or _G.Select_Mob_Farm == "Dragon Crew Archer [Lv. 1600]" then
			Ms = "Dragon Crew Archer [Lv. 1600]"
			NameQuest = "AmazonQuest"
			LevelQuest = 2
			NameMon = "Dragon Crew Archer"
			CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
			CFrameMon = CFrame.new(6488.9155273438, 383.38375854492, -110.66246032715)
			SPAWNPOINT = "Hydra3"
		elseif MyLevel == 1625 or MyLevel <= 1649 or _G.Select_Mob_Farm == "Female Islander [Lv. 1625]" then
			Ms = "Female Islander [Lv. 1625]"
			NameQuest = "AmazonQuest2"
			LevelQuest = 1
			NameMon = "Female Islander"
			CFrameQuest = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
			CFrameMon = CFrame.new(4770.4990234375, 758.95520019531, 1069.8680419922)
			SPAWNPOINT = "Hydra1"
		elseif MyLevel == 1650 or MyLevel <= 1699 or _G.Select_Mob_Farm == "Giant Islander [Lv. 1650]" then
			Ms = "Giant Islander [Lv. 1650]"
			NameQuest = "AmazonQuest2"
			LevelQuest = 2
			NameMon = "Giant Islander"
			CFrameQuest = CFrame.new(5448.86133, 601.516174, 751.130676, 0, 0, 1, 0, 1, -0, -1, 0, 0)
			CFrameMon = CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789)
			SPAWNPOINT = "Hydra1"
		elseif MyLevel == 1700 or MyLevel <= 1724 or _G.Select_Mob_Farm == "Marine Commodore [Lv. 1700]" then
			Ms = "Marine Commodore [Lv. 1700]"
			NameQuest = "MarineTreeIsland"
			LevelQuest = 1
			NameMon = "Marine Commodore"
			CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
			CFrameMon = CFrame.new(2490.0844726563, 190.4232635498, -7160.0502929688)
			SPAWNPOINT = "GreatTree"
		elseif MyLevel == 1725 or MyLevel <= 1774 or _G.Select_Mob_Farm == "Marine Rear Admiral [Lv. 1725]" then
			Ms = "Marine Rear Admiral [Lv. 1725]"
			NameQuest = "MarineTreeIsland"
			LevelQuest = 2
			NameMon = "Marine Rear Admiral"
			CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
			CFrameMon = CFrame.new(3951.3903808594, 229.11549377441, -6912.81640625)
			SPAWNPOINT = "GreatTree"
		elseif MyLevel == 1775 or MyLevel <= 1799 or _G.Select_Mob_Farm == "Fishman Raider [Lv. 1775]" then
			Ms = "Fishman Raider [Lv. 1775]"
			NameQuest = "DeepForestIsland3"
			LevelQuest = 1
			NameMon = "Fishman Raider"
			CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
			CFrameMon = CFrame.new(-10322.400390625, 390.94473266602, -8580.0908203125)
			SPAWNPOINT = "PineappleTown"
		elseif MyLevel == 1800 or MyLevel <= 1824 or _G.Select_Mob_Farm == "Fishman Captain [Lv. 1800]" then
			Ms = "Fishman Captain [Lv. 1800]"
			NameQuest = "DeepForestIsland3"
			LevelQuest = 2
			NameMon = "Fishman Captain"
			CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
			CFrameMon = CFrame.new(-11194.541992188, 442.02795410156, -8608.806640625)
			SPAWNPOINT = "PineappleTown"
		elseif MyLevel == 1825 or MyLevel <= 1849 or _G.Select_Mob_Farm == "Forest Pirate [Lv. 1825]" then
			Ms = "Forest Pirate [Lv. 1825]"
			NameQuest = "DeepForestIsland"
			LevelQuest = 1
			NameMon = "Forest Pirate"
			CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
			CFrameMon = CFrame.new(-13225.809570313, 428.19387817383, -7753.1245117188)
			SPAWNPOINT = "BigMansion"
		elseif MyLevel == 1850 or MyLevel <= 1899 or _G.Select_Mob_Farm == "Mythological Pirate [Lv. 1850]" then
			Ms = "Mythological Pirate [Lv. 1850]"
			NameQuest = "DeepForestIsland"
			LevelQuest = 2
			NameMon = "Mythological Pirate"
			CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
			CFrameMon = CFrame.new(-13869.172851563, 564.95251464844, -7084.4135742188)
			SPAWNPOINT = "BigMansion"
		elseif MyLevel == 1900 or MyLevel <= 1924 or _G.Select_Mob_Farm == "Jungle Pirate [Lv. 1900]" then
			Ms = "Jungle Pirate [Lv. 1900]"
			NameQuest = "DeepForestIsland2"
			LevelQuest = 1
			NameMon = "Jungle Pirate"
			CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
			CFrameMon = CFrame.new(-11982.221679688, 376.32522583008, -10451.415039063)
			SPAWNPOINT = "PineappleTown"
		elseif MyLevel == 1925 or MyLevel <= 1974 or _G.Select_Mob_Farm == "Musketeer Pirate [Lv. 1925]" then
			Ms = "Musketeer Pirate [Lv. 1925]"
			NameQuest = "DeepForestIsland2"
			LevelQuest = 2
			NameMon = "Musketeer Pirate"
			CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
			CFrameMon = CFrame.new(-13282.3046875, 496.23684692383, -9565.150390625)
			SPAWNPOINT = "PineappleTown"
		elseif MyLevel == 1975 or MyLevel <= 1999 or _G.Select_Mob_Farm == "Reborn Skeleton [Lv. 1975]" then
			Ms = "Reborn Skeleton [Lv. 1975]"
			NameQuest = "HauntedQuest1"
			LevelQuest = 1
			NameMon = "Reborn Skeleton"
			CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
			CFrameMon = CFrame.new(-8761.3154296875, 164.85829162598, 6161.1567382813)
			SPAWNPOINT = "HauntedCastle"
		elseif MyLevel == 2000 or MyLevel <= 2024 or _G.Select_Mob_Farm == "Living Zombie [Lv. 2000]" then
			Ms = "Living Zombie [Lv. 2000]"
			NameQuest = "HauntedQuest1"
			LevelQuest = 2
			NameMon = "Living Zombie"
			CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
			CFrameMon = CFrame.new(-10093.930664063, 237.38233947754, 6180.5654296875)
			SPAWNPOINT = "HauntedCastle"
		elseif MyLevel == 2025 or MyLevel <= 2049 or _G.Select_Mob_Farm == "Demonic Soul [Lv. 2025]" then
			Ms = "Demonic Soul [Lv. 2025]"
			NameQuest = "HauntedQuest2"
			LevelQuest = 1
			NameMon = "Demonic Soul"
			CFrameQuest = CFrame.new(-9514.78027, 171.162918, 6078.82373, 0.301918149, 7.453503e-9, 0.953333855, -3.2280214e-9, 1, -6.79605e-9, -0.953333855, -1.0255313e-9, 0.301918149)
			CFrameMon = CFrame.new(-9466.72949, 171.162918, 6132.01514)
			SPAWNPOINT = "HauntedCastle"
		elseif MyLevel == 2050 or MyLevel <= 2074 or _G.Select_Mob_Farm == "Posessed Mummy [Lv. 2050]" then
			Ms = "Posessed Mummy [Lv. 2050]" 
			NameQuest = "HauntedQuest2"
			LevelQuest = 2
			NameMon = "Posessed Mummy"
			CFrameQuest = CFrame.new(-9514.78027, 171.162918, 6078.82373, 0.301918149, 7.453503e-9, 0.953333855, -3.2280214e-9, 1, -6.79605e-9, -0.953333855, -1.0255313e-9, 0.301918149)
			CFrameMon = CFrame.new(-9589.93848, 4.85058546, 6190.27197)
			SPAWNPOINT = "HauntedCastle"
		elseif MyLevel == 2075 or MyLevel <= 2099 or _G.Select_Mob_Farm == "Peanut Scout [Lv. 2075]" then
            Ms = "Peanut Scout [Lv. 2075]"
            NameQuest = "NutsIslandQuest"
            LevelQuest = 1
            NameMon = "Peanut Scout"
            CFrameQuest = CFrame.new(-2103.9375, 38.139019012451, -10192.702148438)
            CFrameMon = CFrame.new(-2150.587890625, 122.49767303467, -10358.994140625)
			SPAWNPOINT = "Peanut"
		elseif MyLevel == 2100 or MyLevel <= 2124 or _G.Select_Mob_Farm == "Peanut President [Lv. 2100]" then
            Ms = "Peanut President [Lv. 2100]"
            NameQuest = "NutsIslandQuest"
            LevelQuest = 2
            NameMon = "Peanut President"
            CFrameQuest = CFrame.new(-2103.9375, 38.139019012451, -10192.702148438)
            CFrameMon = CFrame.new(-2150.587890625, 122.49767303467, -10358.994140625)
			SPAWNPOINT = "Peanut"
		elseif MyLevel == 2125 or MyLevel <= 2149 or _G.Select_Mob_Farm == "Ice Cream Chef [Lv. 2125]" then
            Ms = "Ice Cream Chef [Lv. 2125]"
            NameQuest = "IceCreamIslandQuest"
            LevelQuest = 1
            NameMon = "Ice Cream Chef"
            CFrameQuest = CFrame.new(-819.84533691406, 65.845329284668, -10965.487304688)
            CFrameMon = CFrame.new(-890.55895996094, 186.34135437012, -11127.306640625)
			SPAWNPOINT = "IceCream"
		elseif MyLevel == 2150 or MyLevel <= 2199 or _G.Select_Mob_Farm == "Ice Cream Commander [Lv. 2150]" then
            Ms = "Ice Cream Commander [Lv. 2150]"
            NameQuest = "IceCreamIslandQuest"
            LevelQuest = 2
            NameMon = "Ice Cream Commander"
            CFrameQuest = CFrame.new(-819.84533691406, 65.845329284668, -10965.487304688)
            CFrameMon = CFrame.new(-890.55895996094, 186.34135437012, -11127.306640625)
			SPAWNPOINT = "IceCream"
		elseif MyLevel == 2200 or MyLevel <= 2224 or _G.Select_Mob_Farm == "Cookie Crafter [Lv. 2200]" then
            Ms = "Cookie Crafter [Lv. 2200]"
            NameQuest = "CakeQuest1"
            LevelQuest = 1
            NameMon = "Cookie Crafter"
            CFrameQuest = CFrame.new(-2021.5509033203125, 37.798221588134766, -12028.103515625)
            CFrameMon = CFrame.new(-2273.00244140625, 90.22590637207031, -12151.62109375)
			SPAWNPOINT = "Loaf"
		elseif MyLevel == 2225 or MyLevel <= 2249 or _G.Select_Mob_Farm == "Cake Guard [Lv. 2225]" then
            Ms = "Cake Guard [Lv. 2225]"
            NameQuest = "CakeQuest1"
            LevelQuest = 2
            NameMon = "Cake Guard"
            CFrameQuest = CFrame.new(-2021.5509033203125, 37.798221588134766, -12028.103515625)
            CFrameMon = CFrame.new(-1442.373046875, 158.14111328125, -12277.37109375)
			SPAWNPOINT = "Loaf"
		elseif MyLevel == 2250 or MyLevel <= 2274 or _G.Select_Mob_Farm == "Baking Staff [Lv. 2250]" then
            Ms = "Baking Staff [Lv. 2250]"
            NameQuest = "CakeQuest2"
            LevelQuest = 1
            NameMon = "Baking Staff"
            CFrameQuest = CFrame.new(-1927.9107666015625, 37.79813003540039, -12843.78515625)
            CFrameMon = CFrame.new(-1837.2803955078125, 129.0594482421875, -12934.5498046875)
			SPAWNPOINT = "Loaf"
		elseif MyLevel == 2275 or MyLevel <= 2299 or _G.Select_Mob_Farm == "Head Baker [Lv. 2275]" then
            Ms = "Head Baker [Lv. 2275]"
            NameQuest = "CakeQuest2"
            LevelQuest = 2
            NameMon = "Head Baker"
            CFrameQuest = CFrame.new(-1927.9107666015625, 37.79813003540039, -12843.78515625)
            CFrameMon = CFrame.new(-2203.302490234375, 109.90937042236328, -12788.7333984375)
			SPAWNPOINT = "Loaf"
		elseif MyLevel == 2300 or MyLevel <= 2324 or _G.Select_Mob_Farm == "Cocoa Warrior [Lv. 2300]" then
            Ms = "Cocoa Warrior [Lv. 2300]"
            NameQuest = "ChocQuest1"
            LevelQuest = 1
            NameMon = "Cocoa Warrior"
            CFrameQuest = CFrame.new(231.13571166992188, 24.734268188476562, -12195.1162109375)
            CFrameMon = CFrame.new(231.13571166992188, 24.734268188476562, -12195.1162109375)
			SPAWNPOINT = "Chocolate"
		elseif MyLevel == 2325 or MyLevel <= 2349 or _G.Select_Mob_Farm == "Chocolate Bar Battler [Lv. 2325]" then
            Ms = "Chocolate Bar Battler [Lv. 2325]"
            NameQuest = "ChocQuest1"
            LevelQuest = 2
            NameMon = "Chocolate Bar Battler"
            CFrameQuest = CFrame.new(231.13571166992188, 24.734268188476562, -12195.1162109375)
            CFrameMon = CFrame.new(231.13571166992188, 24.734268188476562, -12195.1162109375)
			SPAWNPOINT = "Chocolate"
		elseif MyLevel == 2350 or MyLevel <= 2374 or _G.Select_Mob_Farm == "Sweet Thief [Lv. 2350]" then
            Ms = "Sweet Thief [Lv. 2350]"
            NameQuest = "ChocQuest2"
            LevelQuest = 1
            NameMon = "Sweet Thief"
            CFrameQuest = CFrame.new(147.52256774902344, 24.793832778930664, -12775.3583984375)
            CFrameMon = CFrame.new(147.52256774902344, 24.793832778930664, -12775.3583984375)
			SPAWNPOINT = "Chocolate"
		elseif MyLevel == 2375 or MyLevel <= 2399 or _G.Select_Mob_Farm == "Candy Rebel [Lv. 2375]" then
            Ms = "Candy Rebel [Lv. 2375]"
            NameQuest = "ChocQuest2"
            LevelQuest = 2
            NameMon = "Candy Rebel"
            CFrameQuest = CFrame.new(147.52256774902344, 24.793832778930664, -12775.3583984375)
            CFrameMon = CFrame.new(147.52256774902344, 24.793832778930664, -12775.3583984375)
            SPAWNPOINT = "Chocolate"
        elseif MyLevel == 2400 or MyLevel <= 2424 or _G.Select_Mob_Farm == "Candy Pirate [Lv. 2400]" then
            Ms = "Candy Pirate [Lv. 2400]"
            NameQuest = "CandyQuest1"
            LevelQuest = 1
            NameMon = "Candy Pirate"
            CFrameQuest = CFrame.new(-1147.6239013671875, 16.133047103881836, -14444.970703125)
            CFrameMon = CFrame.new(-1393.447021484375, 13.819832801818848, -14419.154296875)
            SPAWNPOINT = "Candy"
        elseif MyLevel >= 2425 or _G.Select_Mob_Farm == "Snow Demon [Lv. 2425]" then
            Ms = "Snow Demon [Lv. 2425]"
            NameQuest = "CandyQuest1"
            LevelQuest = 2
            NameMon = "Snow Demon"
            CFrameQuest = CFrame.new(-1147.6239013671875, 16.133047103881836, -14444.970703125)
            CFrameMon = CFrame.new(-820.8795166015625, 49.07795715332031, -14329.525390625)
            SPAWNPOINT = "Candy"
        end
    end
end

function CheckBossQuest()
    if _G.Select_Boss == "Saber Expert [Lv. 200] [Boss]" then
        MsBoss = "Saber Expert [Lv. 200] [Boss]"
        NameBoss = "Saber Expert"
        CFrameBoss = CFrame.new(-1458.89502, 29.8870335, -50.633564, 0.858821094, 1.1384894e-8, 0.512275636, -4.8564925e-9, 1, -1.4082333e-8, -0.512275636, 9.6063415e-9, 0.858821094)
    elseif _G.Select_Boss == "The Saw [Lv. 100] [Boss]" then
        MsBoss = "The Saw [Lv. 100] [Boss]"
        NameBoss = "The Saw"
        CFrameBoss = CFrame.new(-683.519897, 13.8534927, 1610.87854, -0.290192783, 6.883658e-8, 0.956968188, 6.984136e-8, 1, -5.0753112e-8, -0.956968188, 5.2107776e-8, -0.290192783)
    elseif _G.Select_Boss == "Greybeard [Lv. 750] [Raid Boss]" then
        MsBoss = "Greybeard [Lv. 750] [Raid Boss]"
        NameBoss = "Greybeard"
        CFrameBoss = CFrame.new(-4955.72949, 80.8163834, 4305.82666, -0.433646321, -1.0339429e-8, 0.901083171, -3.0443168e-8, 1, -3.1763308e-9, -0.901083171, -2.8809229e-8, -0.433646321)
    elseif _G.Select_Boss == "The Gorilla King [Lv. 25] [Boss]" then
        MsBoss = "The Gorilla King [Lv. 25] [Boss]"
        NameBoss = "The Gorilla King"
        NameQuestBoss = "JungleQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -0.000004708589, -0.997892559, 1.4143188e-7, 1, -0.0000047093367, 0.997892559, 1.6444218e-7, 0.0648873374)
        CFrameBoss = CFrame.new(-1223.52808, 6.27936459, -502.292664, 0.310949147, -5.666025e-8, 0.950426519, -3.372755e-8, 1, 7.065018e-8, -0.950426519, -5.4024174e-8, 0.310949147)
    elseif _G.Select_Boss == "Bobby [Lv. 55] [Boss]" then
        MsBoss = "Bobby [Lv. 55] [Boss]"
        NameBoss = "Bobby"
        NameQuestBoss = "BuggyQuest1"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-1139.59717, 4.75205183, 3825.16211, -0.959730506, -7.585705e-9, 0.280922383, -4.0631033e-8, 1, -1.11807175e-7, -0.280922383, -1.18718916e-7, -0.959730506)
        CFrameBoss = CFrame.new(-1147.65173, 32.5966301, 4156.02588, 0.956680477, -1.7710995e-10, -0.29113996, 5.165309e-10, 1, 1.088978e-9, 0.29113996, -1.1921868e-9, 0.956680477)
    elseif _G.Select_Boss == "Yeti [Lv. 110] [Boss]" then
        MsBoss = "Yeti [Lv. 110] [Boss]"
        NameBoss = "Yeti"
        NameQuestBoss = "SnowQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(1384.90247, 87.3078308, -1296.6825, 0.280209213, 2.7203518e-8, -0.959938943, -6.756908e-8, 1, 8.615171e-9, 0.959938943, 6.2448144e-8, 0.280209213)
        CFrameBoss = CFrame.new(1221.7356, 138.046906, -1488.84082, 0.349343032, -9.4924594e-8, 0.936994851, 6.294782e-8, 1, 7.783843e-8, -0.936994851, 3.1789465e-8, 0.349343032)
    elseif _G.Select_Boss == "Mob Leader [Lv. 120] [Boss]" then
        MsBoss = "Mob Leader [Lv. 120] [Boss]"
        NameBoss = "Mob Leader"
        CFrameBoss = CFrame.new(-2848.59399, 7.4272871, 5342.44043, -0.928248107, -8.7248246e-8, 0.371961564, -7.6181664e-8, 1, 4.4447486e-8, -0.371961564, 1.2921643e-8, -0.92824)
    elseif _G.Select_Boss == "Vice Admiral [Lv. 130] [Boss]" then
        MsBoss = "Vice Admiral [Lv. 130] [Boss]"
        NameBoss = "Vice Admiral"
        NameQuestBoss = "MarineQuest2"
        LevelQuestBoss = 2
        CFrameQuestBoss = CFrame.new(-5035.42285, 28.6520386, 4324.50293, -0.0611100644, -8.083958e-8, 0.998130739, -1.5741659e-8, 1, 8.0027185e-8, -0.998130739, -1.082177e-8, -0.0611100644)
        CFrameBoss = CFrame.new(-5078.45898, 99.6520691, 4402.1665, -0.555574954, -9.886306e-11, 0.831466436, -6.355083e-8, 1, -4.2344926e-8, -0.831466436, -7.636616e-8, -0.555574954)
    elseif _G.Select_Boss == "Warden [Lv. 220] [Boss]" then
        MsBoss = "Warden [Lv. 220] [Boss]"
        NameBoss = "Warden"
        NameQuestBoss = "ImpelQuest"
        LevelQuestBoss = 1
        CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.6830374e-8, -0.842635691, 1.3800175e-8, 1, -8.813008e-8, 0.842635691, -5.908516e-8, -0.538484037)
        CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-8, 0.330433697, 3.4781863e-8, 1, 3.8165815e-8, -0.330433697, -2.452891e-8, 0.943829298)
    elseif _G.Select_Boss == "Chief Warden [Lv. 230] [Boss]" then
        MsBoss = "Chief Warden [Lv. 230] [Boss]"
        NameBoss = "Chief Warden"
        NameQuestBoss = "ImpelQuest"
        LevelQuestBoss = 2
        CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.6830374e-8, -0.842635691, 1.3800175e-8, 1, -8.813008e-8, 0.842635691, -5.908516e-8, -0.538484037)
        CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-8, 0.330433697, 3.4781863e-8, 1, 3.8165815e-8, -0.330433697, -2.452891e-8, 0.943829298)
    elseif _G.Select_Boss == "Swan [Lv. 240] [Boss]" then
        MsBoss = "Swan [Lv. 240] [Boss]"
        NameBoss = "Swan"
        NameQuestBoss = "ImpelQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(4851.35059, 5.68744135, 743.251282, -0.538484037, -6.6830374e-8, -0.842635691, 1.3800175e-8, 1, -8.813008e-8, 0.842635691, -5.908516e-8, -0.538484037)
        CFrameBoss = CFrame.new(5232.5625, 5.26856995, 747.506897, 0.943829298, -4.5439414e-8, 0.330433697, 3.4781863e-8, 1, 3.8165815e-8, -0.330433697, -2.452891e-8, 0.943829298)
    elseif _G.Select_Boss == "Magma Admiral [Lv. 350] [Boss]" then
        MsBoss = "Magma Admiral [Lv. 350] [Boss]"
        NameBoss = "Magma Admiral"
        NameQuestBoss = "MagmaQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-5317.07666, 12.2721891, 8517.41699, 0.51175487, -2.655088e-8, -0.859131515, -3.9113157e-8, 1, -5.4202676e-8, 0.859131515, 6.134183e-8, 0.51175487)
        CFrameBoss = CFrame.new(-5530.12646, 22.8769703, 8859.91309, 0.857838571, 2.2341439e-8, 0.513919294, 1.5368913e-8, 1, -6.9126585e-8, -0.513919294, 6.719784e-8, 0.857838571)
    elseif _G.Select_Boss == "Fishman Lord [Lv. 425] [Boss]" then
        MsBoss = "Fishman Lord [Lv. 425] [Boss]"
        NameBoss = "Fishman Lord"
        NameQuestBoss = "FishmanQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(61123.0859, 18.5066795, 1570.18018, 0.927145958, 1.0624845e-7, 0.374700129, -6.982194e-8, 1, -1.10790765e-7, -0.374700129, 7.655694e-8, 0.927145958)
        CFrameBoss = CFrame.new(61351.7773, 31.0306778, 1113.31409, 0.999974668, 0, -0.00714713801, 0, 1.00000012, 0, 0.00714714266, 0, 0.999974549)
    elseif _G.Select_Boss == "Wysper [Lv. 500] [Boss]" then
        MsBoss = "Wysper [Lv. 500] [Boss]"
        NameBoss = "Wysper"
        NameQuestBoss = "SkyExp1Quest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-7862.94629, 5545.52832, -379.833954, 0.462944925, 1.4583809e-8, -0.886386991, 1.0534996e-8, 1, 2.1955342e-8, 0.886386991, -1.95022e-8, 0.462944925)
        CFrameBoss = CFrame.new(-7925.48389, 5550.76074, -636.178345, 0.716468513, -1.2291529e-9, 0.697619379, 3.3738143e-9, 1, -1.7030475e-9, -0.697619379, 3.5738184e-9, 0.716468513)
    elseif _G.Select_Boss == "Thunder God [Lv. 575] [Boss]" then
        MsBoss = "Thunder God [Lv. 575] [Boss]"
        NameBoss = "Thunder God"
        NameQuestBoss = "SkyExp2Quest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-7902.78613, 5635.99902, -1411.98706, -0.0361216255, -1.1689591e-7, 0.999347389, 1.4453396e-9, 1, 1.1702449e-7, -0.999347389, 5.6715117e-9, -0.0361216255)
        CFrameBoss = CFrame.new(-7917.53613, 5616.61377, -2277.78564, 0.965189934, 4.8056343e-8, -0.261550069, -6.730899e-8, 1, -6.465153e-8, 0.261550069, 8.000568e-8, 0.965189934)
    elseif _G.Select_Boss == "Cyborg [Lv. 675] [Boss]" then
        MsBoss = "Cyborg [Lv. 675] [Boss]"
        NameBoss = "Cyborg"
        NameQuestBoss = "FountainQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(5253.54834, 38.5361786, 4050.45166, -0.0112687312, -9.936779e-8, -0.999936521, 2.5529137e-10, 1, -9.9376955e-8, 0.999936521, -1.3751221e-9, -0.0112687312)
        CFrameBoss = CFrame.new(6041.82813, 52.7112198, 3907.45142, -0.563162148, 1.7380525e-9, -0.826346457, -5.946327e-8, 1, 4.2628024e-8, 0.826346457, 7.314375e-8, -0.563162148)
    -- New World
    elseif _G.Select_Boss == "Diamond [Lv. 750] [Boss]" then
        MsBoss = "Diamond [Lv. 750] [Boss]"
        NameBoss = "Diamond"
        NameQuestBoss = "Area1Quest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-424.080078, 73.0055847, 1836.91589, 0.253544956, -1.4216593e-8, 0.967323601, -6.001478e-8, 1, 3.042729e-8, -0.967323601, -6.57684e-8, 0.253544956)
        CFrameBoss = CFrame.new(-1736.26587, 198.627731, -236.412857, -0.997808516, 0, -0.0661673471, 0, 1, 0, 0.0661673471, 0, -0.997808516)
    elseif _G.Select_Boss == "Jeremy [Lv. 850] [Boss]" then
        MsBoss = "Jeremy [Lv. 850] [Boss]"
        NameBoss = "Jeremy"
        NameQuestBoss = "Area2Quest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.960749e-10, -0.999488771, 1.3632653e-10, 1, 8.9217234e-10, 0.999488771, -1.0773209e-10, -0.0319722369)
        CFrameBoss = CFrame.new(2203.76953, 448.966034, 752.731079, -0.0217453763, 0, -0.999763548, 0, 1, 0, 0.999763548, 0, -0.0217453763)
    elseif _G.Select_Boss == "Fajita [Lv. 925] [Boss]" then
        MsBoss = "Fajita [Lv. 925] [Boss]"
        NameBoss = "Fajita"
        NameQuestBoss = "MarineQuest3"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-2442.65015, 73.0511475, -3219.11523, -0.873540044, 4.232984e-8, -0.486752301, 5.643834e-8, 1, -1.4322079e-8, 0.486752301, -3.99824e-8, -0.873540044)
        CFrameBoss = CFrame.new(-2297.40332, 115.449463, -3946.53833, 0.961227536, -1.466458e-9, -0.275756449, -2.3212845e-9, 1, -1.3409443e-8, 0.275756449, 1.3529635e-8, 0.961227536)
    elseif _G.Select_Boss == "Don Swan [Lv. 1000] [Boss]" then
        MsBoss = "Don Swan [Lv. 1000] [Boss]"
        NameBoss = "Don Swan"
        CFrameBoss = CFrame.new(2288.802, 15.1870775, 863.034607, 0.99974072, -8.412472e-8, -0.0227668174, 8.477473e-8, 1, 2.758501e-8, 0.0227668174, -2.9507907e-8, 0.99974072)
    elseif _G.Select_Boss == "Smoke Admiral [Lv. 1150] [Boss]" then
        MsBoss = "Smoke Admiral [Lv. 1150] [Boss]"
        NameBoss = "Smoke Admiral"
        NameQuestBoss = "IceSideQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-6059.96191, 15.9868021, -4904.7373, -0.444992423, -3.0874483e-9, 0.895534337, -3.640988e-8, 1, -1.4644522e-8, -0.895534337, -3.9122998e-8, -0.444992423)
        CFrameBoss = CFrame.new(-5115.72754, 23.7664986, -5338.2207, 0.251453817, 1.4834506e-8, -0.967869282, 4.0279698e-8, 1, 2.5791698e-8, 0.967869282, -4.5470895e-8, 0.251453817)
    elseif _G.Select_Boss == "Cursed Captain [Lv. 1325] [Raid Boss]" then
        MsBoss = "Cursed Captain [Lv. 1325] [Raid Boss]"
        NameBoss = "Cursed Captain"
        CFrameBoss = CFrame.new(916.928589, 181.092773, 33422, -0.999505103, 9.263105e-9, 0.0314563364, 8.429162e-9, 1, -2.6643713e-8, -0.0314563364, -2.6365377e-8, -0.999505103)
    elseif _G.Select_Boss == "Darkbeard [Lv. 1000] [Raid Boss]" then
        MsBoss = "Darkbeard [Lv. 1000] [Raid Boss]"
        NameBoss = "Darkbeard"
        CFrameBoss = CFrame.new(3876.00366, 24.6882591, -3820.21777, -0.976951957, 4.9735633e-8, 0.213458836, 4.5733536e-8, 1, -2.3686862e-8, -0.213458836, -1.3378704e-8, -0.976951957)
    elseif _G.Select_Boss == "Order [Lv. 1250] [Raid Boss]" then
        MsBoss = "Order [Lv. 1250] [Raid Boss]"
        NameBoss = "Order"
        CFrameBoss = CFrame.new(-6221.15039, 16.2351036, -5045.23584, -0.380726993, 7.414635e-8, 0.924687505, 5.8560477e-8, 1, -5.6073855e-8, -0.924687505, 3.2801314e-8, -0.380726993)
    elseif _G.Select_Boss == "Awakened Ice Admiral [Lv. 1400] [Boss]" then
        MsBoss = "Awakened Ice Admiral [Lv. 1400] [Boss]"
        NameBoss = "Awakened Ice Admiral"
        NameQuestBoss = "FrostQuest"
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(5669.33203, 28.2118053, -6481.55908, 0.921275556, -1.2532083e-8, 0.388910472, 4.722308e-8, 1, -7.9641424e-8, -0.388910472, 9.173725e-8, 0.921275556)
        CFrameBoss = CFrame.new(6407.33936, 340.223785, -6892.521, 0.49051559, -5.253102e-8, -0.871432424, -2.7614602e-8, 1, -7.582506e-8, 0.871432424, 6.125763e-8, 0.49051559)
    elseif _G.Select_Boss == "Tide Keeper [Lv. 1475] [Boss]" then
        MsBoss = "Tide Keeper [Lv. 1475] [Boss]"
         NameBoss = "Tide Keeper"
        NameQuestBoss = "ForgottenQuest"             
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-3053.89648, 236.881363, -10148.2324, -0.985987961, -3.5850474e-9, 0.16681771, -3.0783291e-9, 1, 3.2961256e-9, -0.16681771, 2.7364198e-9, -0.985987961)
        CFrameBoss = CFrame.new(-3570.18652, 123.328949, -11555.9072, 0.465199202, -1.3857326e-8, 0.885206044, 4.0332897e-9, 1, 1.3534751e-8, -0.885206044, -2.7260627e-9, 0.465199202)
    -- Thire World
    elseif _G.Select_Boss == "Stone [Lv. 1550] [Boss]" then
        MsBoss = "Stone [Lv. 1550] [Boss]"
        NameBoss = "Stone"
        NameQuestBoss = "PiratePortQuest"             
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-290, 44, 5577)
        CFrameBoss = CFrame.new(-1085, 40, 6779)
    elseif _G.Select_Boss == "Island Empress [Lv. 1675] [Boss]" then
        MsBoss = "Island Empress [Lv. 1675] [Boss]"
         NameBoss = "Island Empress"
        NameQuestBoss = "AmazonQuest2"             
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(5443, 602, 752)
        CFrameBoss = CFrame.new(5659, 602, 244)
    elseif _G.Select_Boss == "Kilo Admiral [Lv. 1750] [Boss]" then
        MsBoss = "Kilo Admiral [Lv. 1750] [Boss]"
        NameBoss = "Kilo Admiral"
        NameQuestBoss = "MarineTreeIsland"             
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(2178, 29, -6737)
        CFrameBoss =CFrame.new(2846, 433, -7100)
    elseif _G.Select_Boss == "Captain Elephant [Lv. 1875] [Boss]" then
        MsBoss = "Captain Elephant [Lv. 1875] [Boss]"
        NameBoss = "Captain Elephant"
        NameQuestBoss = "DeepForestIsland"             
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-13232, 333, -7631)
        CFrameBoss = CFrame.new(-13221, 325, -8405)
    elseif _G.Select_Boss == "Beautiful Pirate [Lv. 1950] [Boss]" then
        MsBoss = "Beautiful Pirate [Lv. 1950] [Boss]"
        NameBoss = "Beautiful Pirate"
        NameQuestBoss = "DeepForestIsland2"             
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-12686, 391, -9902)
        CFrameBoss = CFrame.new(5182, 23, -20)
    elseif _G.Select_Boss == "Cake Queen [Lv. 2175] [Boss]" then
        MsBoss = "Cake Queen [Lv. 2175] [Boss]"
        NameBoss = "Cake Queen"
        NameQuestBoss = "IceCreamIslandQuest"             
        LevelQuestBoss = 3
        CFrameQuestBoss = CFrame.new(-716, 382, -11010)
        CFrameBoss = CFrame.new(-821, 66, -10965)
    elseif _G.Select_Boss == "rip_indra True Form [Lv. 5000] [Raid Boss]" then
        MsBoss = "rip_indra True Form [Lv. 5000] [Raid Boss]"
        NameBoss = "rip_indra True Form"
        CFrameBoss = CFrame.new(-5359, 424, -2735)
    elseif _G.Select_Boss == "Longma [Lv. 2000] [Boss]" then
        MsBoss = "Longma [Lv. 2000] [Boss]"
        NameBoss = "Longma"
        CFrameBoss = CFrame.new(-10248.3936, 353.79129, -9306.34473)
    elseif _G.Select_Boss == "Soul Reaper [Lv. 2100] [Raid Boss]" then
        MsBoss = "Soul Reaper [Lv. 2100] [Raid Boss]"
        NameBoss = "Soul Reaper"
        CFrameBoss = CFrame.new(-9515.62109, 315.925537, 6691.12012)
    end
end

function AutoHaki()
	if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
	end
end
 
function EquipWeapon(ToolSe)
	if not _G.NotAutoEquip then
		if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
			Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
			wait(0.1)
			game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
		end
	end
end

function topos(Pos)
	Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
		if game.Players.LocalPlayer.Character.Humanoid.Sit == true then game.Players.LocalPlayer.Character.Humanoid.Sit = false end
		pcall(function() tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/210, Enum.EasingStyle.Linear),{CFrame = Pos}) end)
		tween:Play()
		if Distance <= 110 then
			tween:Cancel()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
		end
		if _G.StopTween == true then
			tween:Cancel()
			_G.Clip = false
		end
	 end

function StopTween(target)
    if not target then
        _G.StopTween = true
        wait()
        topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
        if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
        end
        _G.StopTween = false
        _G.Clip = false
    end
end

function UseCode(Text)
	game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(Text)
end

function toTarget(targetPos, targetCFrame)
    local tweenfunc = {}
    local tween_s = game:service"TweenService"
    local info = TweenInfo.new((targetPos - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude/300, Enum.EasingStyle.Linear)
    local tween = tween_s:Create(game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = targetCFrame * CFrame.fromAxisAngle(Vector3.new(1,0,0), math.rad(0))})
    tween:Play()

    function tweenfunc:Stop()
        tween:Cancel()
        return tween
    end

    if not tween then return tween end
    return tweenfunc
end

function Hop()
	local PlaceID = game.PlaceId
	local AllIDs = {}
	local foundAnything = ""
	local actualHour = os.date("!*t").hour
	local Deleted = false
	function TPReturner()
		local Site;
		if foundAnything == "" then
			Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
		else
			Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
		end
		local ID = ""
		if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
			foundAnything = Site.nextPageCursor
		end
		local num = 0;
		for i,v in pairs(Site.data) do
			local Possible = true
			ID = tostring(v.id)
			if tonumber(v.maxPlayers) > tonumber(v.playing) then
				for _,Existing in pairs(AllIDs) do
					if num ~= 0 then
						if ID == tostring(Existing) then
							Possible = false
						end
					else
						if tonumber(actualHour) ~= tonumber(Existing) then
							local delFile = pcall(function()
								AllIDs = {}
								table.insert(AllIDs, actualHour)
							end)
						end
					end
					num = num + 1
				end
				if Possible == true then
					table.insert(AllIDs, ID)
					wait()
					pcall(function()
						wait()
						game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
					end)
					wait(4)
				end
			end
		end
	end
	function Teleport() 
		while wait() do
			pcall(function()
				TPReturner()
				if foundAnything ~= "" then
					TPReturner()
				end
			end)
		end
	end
	Teleport()
end

function RemoveSpaces(str)
    return str:gsub(" Fruit", "")
end

local function formatNumber(number)
	local i, k, j = tostring(number):match("(%-?%d?)(%d*)(%.?.*)")
	return i..k:reverse():gsub("(%d%d%d)", "%1,"):reverse()..j
 end

spawn(function()
	pcall(function()
		game:GetService("RunService").Stepped:Connect(function()
            if _G.Auto_Farm_Level or _G.Auto_Near_Mob or _G.Auto_Second_Sea or _G.Auto_Third_Sea or _G.Auto_Farm_Bone or _G.Auto_Farm_Boss or _G.Auto_Farm_All_Boss or _G.Auto_Next_Island or _G.Kill_law or _G.FruitMastery then
			 	if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
					local Noclip = Instance.new("BodyVelocity")
					Noclip.Name = "BodyClip"
					Noclip.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
					Noclip.MaxForce = Vector3.new(100000,100000,100000)
					Noclip.Velocity = Vector3.new(0,0,0)
			 	end
		  	else	
			 	if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
					game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
			 	end
		  	end
		end)
	end)
end)
 
spawn(function()
	pcall(function()
		game:GetService("RunService").Stepped:Connect(function()
			if _G.Auto_Farm_Level or _G.Auto_Near_Mob or _G.Auto_Second_Sea or _G.Auto_Third_Sea or _G.Auto_Farm_Bone or _G.Auto_Farm_Boss or _G.Auto_Farm_All_Boss or _G.Auto_Next_Island or _G.Kill_law or _G.FruitMastery then
				for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
					if v:IsA("BasePart") then
						v.CanCollide = false    
					end
				end
			end
		end)
	end)
end)

spawn(function()
    while wait() do
        repeat wait() until game.CoreGui:FindFirstChild('RobloxPromptGui')
        local lp,po,ts = game:GetService('Players').LocalPlayer,game.CoreGui.RobloxPromptGui.promptOverlay,game:GetService('TeleportService')							
        po.ChildAdded:connect(function(a)
            if a.Name == 'ErrorPrompt' then
                repeat
                    ts:Teleport(game.PlaceId)
                    wait(2)
                until false
            end
        end)
    end
end)

spawn(function()
    while wait() do
        if setscriptable then
            setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
            game.Players.LocalPlayer.SimulationRadius = math.huge
        end
    end
end)

do local ui = game:GetService("CoreGui"):FindFirstChild("TableHub")  if ui then ui:Destroy() end end
do local ui = game:GetService("CoreGui"):FindFirstChild("TableHubRightFrame")  if ui then ui:Destroy() end end

local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Mouse = LocalPlayer:GetMouse()
local tween = game:GetService("TweenService")
local Red = {RainbowColorValue = 0, HueSelectionPosition = 0}

local Discord_Invite_Code = "B4KFZjHk3F"
_G.Color = Color3.fromRGB(255,0,0)
_G.Color1 = Color3.fromRGB(255,255,255)



coroutine.wrap(function()
   while wait() do
      Red.RainbowColorValue = Red.RainbowColorValue + 1 / 255
      Red.HueSelectionPosition = Red.HueSelectionPosition + 1

      if Red.RainbowColorValue >= 1 then
            Red.RainbowColorValue = 0
      end

      if Red.HueSelectionPosition == 160 then
            Red.HueSelectionPosition = 0
      end
   end
end)()

local STRIKECourseScreen = Instance.new("ScreenGui")
STRIKECourseScreen.Parent = game:GetService("CoreGui")
STRIKECourseScreen.Name = "TableHub"
STRIKECourseScreen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local TableHubRightFrame = Instance.new("ScreenGui")
TableHubRightFrame.Parent = game:GetService("CoreGui")
TableHubRightFrame.Name = "TableHubRightFrame"
TableHubRightFrame.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
TableHubRightFrame.Enabled = false

local UiToggle = Instance.new("Frame")

UiToggle.Name = "UI_TOGGLE"
UiToggle.Parent = TableHubRightFrame
UiToggle.AnchorPoint = Vector2.new(0.5, 0.5)
UiToggle.BackgroundColor3 = Color3.fromRGB(32,32,32)
UiToggle.BackgroundTransparency = 0
UiToggle.BorderColor3 = _G.Color
UiToggle.BorderSizePixel = 0
UiToggle.ClipsDescendants = true
UiToggle.Position = UDim2.new(0.95, 0, 0.3, 0)
UiToggle.Size = UDim2.new(0, 170, 0, 50)

local UiToggle_UiConner1 = Instance.new("UICorner")

UiToggle_UiConner1.CornerRadius = UDim.new(0, 3)
UiToggle_UiConner1.Name = "UiToggle_UiConner1"
UiToggle_UiConner1.Parent = UiToggle

local UiToggle_UiStroke1 = Instance.new("UIStroke")

UiToggle_UiStroke1.Color = Color3.fromRGB(153, 204, 255)
UiToggle_UiStroke1.Thickness = 2
UiToggle_UiStroke1.Name = "UiToggle_UiStroke1"
UiToggle_UiStroke1.Parent = UiToggle

local UiToggleminiFrame = Instance.new("Frame")

UiToggleminiFrame.Name = "UiToggleminiFrame"
UiToggleminiFrame.Parent = UiToggle
UiToggleminiFrame.AnchorPoint = Vector2.new(0.5, 0.5)
UiToggleminiFrame.BackgroundColor3 = _G.Color
UiToggleminiFrame.BackgroundTransparency = 0
UiToggleminiFrame.BorderColor3 = _G.Color
UiToggleminiFrame.BorderSizePixel = 0
UiToggleminiFrame.ClipsDescendants = true
UiToggleminiFrame.Position = UDim2.new(0.01, 0, 0.5, 0)
UiToggleminiFrame.Size = UDim2.new(0, 4, 0, 60)

local UiToggleminiFrame_UiConner1 = Instance.new("UICorner")

UiToggleminiFrame_UiConner1.CornerRadius = UDim.new(0, 9)
UiToggleminiFrame_UiConner1.Name = "UiToggleminiFrame_UiConner1"
UiToggleminiFrame_UiConner1.Parent = UiToggleminiFrame

local TitleUiToggle = Instance.new("TextLabel")

TitleUiToggle.Parent = UiToggle
TitleUiToggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TitleUiToggle.BackgroundTransparency = 1
TitleUiToggle.BorderSizePixel = 0
TitleUiToggle.Position = UDim2.new(0.6, 0, 0.5, 0)
TitleUiToggle.AnchorPoint = Vector2.new(0.5, 0.5)
TitleUiToggle.Size = UDim2.new(0, 30,0, 23)
TitleUiToggle.Font = Enum.Font.GothamBold
TitleUiToggle.Text = "Ui Toggle:\lLeftControl"
TitleUiToggle.TextColor3 = _G.Color1
TitleUiToggle.TextSize = 11
TitleUiToggle.TextXAlignment = Enum.TextXAlignment.Center

local UiToggleImage = Instance.new("ImageLabel")
UiToggleImage.Parent = UiToggle
UiToggleImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UiToggleImage.BackgroundTransparency = 1
UiToggleImage.Position = UDim2.new(0.101, 0, 0.15, 0)
UiToggleImage.Size = UDim2.new(0, 35, 0, 35)
UiToggleImage.Image = "https://www.roblox.com/asset-thumbnail/image?assetId=9338936570&width=0&height=0&format=png"

local lib = {toggledui = false;}
game:GetService("UserInputService").InputBegan:Connect(function(input)
    pcall(function()
        if input.KeyCode == Enum.KeyCode.LeftControl then
            if lib.toggledui == false then
               lib.toggledui = true
               wait(0.5)
               tween:Create(UiToggle,TweenInfo.new(0.5,Enum.EasingStyle.Back),{Size = UDim2.new(0, 170, 0, 50)}):Play()
                TableHubRightFrame.Enabled = true
            else
               lib.toggledui = false
               tween:Create(UiToggle,TweenInfo.new(0.5,Enum.EasingStyle.Back,Enum.EasingDirection.In),{Size = UDim2.new(0, 0, 0, 0)}):Play()
               wait(0.5)
               TableHubRightFrame.Enabled = false
            end
        end
    end)
end)

local function MakeDraggable(topbarobject, object)
    local Dragging = nil
    local DragInput = nil
    local DragStart = nil
    local StartPosition = nil

    local function Update(input)
        local Delta = input.Position - DragStart
        local pos =
            UDim2.new(
            StartPosition.X.Scale,
            StartPosition.X.Offset + Delta.X,
            StartPosition.Y.Scale,
            StartPosition.Y.Offset + Delta.Y
        )
        local Tween = TweenService:Create(object, TweenInfo.new(0.2), {Position = pos})
        Tween:Play()
    end

    topbarobject.InputBegan:Connect(
        function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                Dragging = true
                DragStart = input.Position
                StartPosition = object.Position

                input.Changed:Connect(
                    function()
                        if input.UserInputState == Enum.UserInputState.End then
                            Dragging = false
                        end
                    end
                )
            end
        end
    )

    topbarobject.InputChanged:Connect(
        function(input)
            if
                input.UserInputType == Enum.UserInputType.MouseMovement or
                    input.UserInputType == Enum.UserInputType.Touch
            then
                DragInput = input
            end
        end
    )

    UserInputService.InputChanged:Connect(
        function(input)
            if input == DragInput and Dragging then
                Update(input)
            end
        end
    )
end

local function Tween(instance, properties,style,wa)
    if style == nil or "" then
        return Back
    end
    tween:Create(instance,TweenInfo.new(wa,Enum.EasingStyle[style]),{properties}):Play()
end

local create = {}
function create:Win(text,logo)
    local fs = false

    local MainFrame = Instance.new("Frame")
    MainFrame.Name = "MainFrame"
    MainFrame.Parent = STRIKECourseScreen
    MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    MainFrame.BackgroundColor3 = Color3.fromRGB(32,32,32)
    MainFrame.BorderSizePixel = 0
    MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    MainFrame.Size = UDim2.new(0, 0, 0, 0)
    MainFrame.ClipsDescendants = true

    local Main_UiConner = Instance.new("UICorner")

    Main_UiConner.CornerRadius = UDim.new(0, 8)
    Main_UiConner.Name = "Main_UiConner"
    Main_UiConner.Parent = MainFrame

    local Main_UiStroke = Instance.new("UIStroke")

    Main_UiStroke.Color = Color3.fromRGB(255, 255, 255)
    Main_UiStroke.Thickness = 1
    Main_UiStroke.Name = "Main_UiConner"
    Main_UiStroke.Parent = MainFrame

   local TimeGlobal = Instance.new("TextLabel")

    TimeGlobal.Name = "TimeGlobal"
    TimeGlobal.Parent = MainFrame
    TimeGlobal.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TimeGlobal.Position = UDim2.new(0.84, 0, 0.95, 0)
    TimeGlobal.Size = UDim2.new(0, 95, 0, 39)
    TimeGlobal.BackgroundTransparency = 1
    TimeGlobal.ZIndex = 3
    TimeGlobal.Font = Enum.Font.GothamBold
    TimeGlobal.Text = "N/A"
    TimeGlobal.TextColor3 = Color3.fromRGB(255, 255, 255)
    TimeGlobal.TextSize = 19
    TimeGlobal.TextXAlignment = Enum.TextXAlignment.Left

    spawn(function()
      while wait() do
         TimeGlobal.Text = ""..os.date("%H")..":"..os.date("%M")..":"..os.date("%S")
      end
   end)

   local NameOfGame = Instance.new("TextLabel")
   local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name

    NameOfGame.Name = "NameOfGame"
    NameOfGame.Parent = MainFrame
    NameOfGame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    NameOfGame.Position = UDim2.new(0.03, 0, 0.95, 0)
    NameOfGame.Size = UDim2.new(0, 95, 0, 39)
    NameOfGame.BackgroundTransparency = 1
    NameOfGame.ZIndex = 3
    NameOfGame.Font = Enum.Font.GothamBold
    NameOfGame.Text = GameName
    NameOfGame.TextColor3 = Color3.fromRGB(255, 255, 255)
    NameOfGame.TextSize = 14
    NameOfGame.TextXAlignment = Enum.TextXAlignment.Left

    local ClickFrame = Instance.new("Frame")
    ClickFrame.Name = "ClickFrame"
    ClickFrame.Parent = MainFrame
    ClickFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    ClickFrame.BackgroundColor3 = Color3.fromRGB(255,255,255)
    ClickFrame.BorderSizePixel = 0
    ClickFrame.Position = UDim2.new(0.059, 0, 0.043, 0)
    ClickFrame.Size = UDim2.new(0, 1200, 0, 50)
    ClickFrame.ClipsDescendants = true
    ClickFrame.BackgroundTransparency = 1

    local MainFrame1 = Instance.new("Frame")
    MainFrame1.Name = "MainFrame1"
    MainFrame1.Parent = MainFrame
    MainFrame1.AnchorPoint = Vector2.new(0.5, 0.5)
    MainFrame1.BackgroundColor3 = Color3.fromRGB(32,32,32)
    MainFrame1.BorderSizePixel = 0
    MainFrame1.Position = UDim2.new(0.5, 0, 0.19, 0)
    MainFrame1.Size = UDim2.new(0, 0, 0, 0)
    MainFrame1.ClipsDescendants = true

    local Main_UiConner1 = Instance.new("UICorner")

    Main_UiConner1.CornerRadius = UDim.new(0, 9)
    Main_UiConner1.Name = "Main_UiConner"
    Main_UiConner1.Parent = MainFrame1

    local Main_UiStroke1 = Instance.new("UIStroke")

    Main_UiStroke1.Color = Color3.fromRGB(255, 255, 255)
    Main_UiStroke1.Thickness = 1.8
    Main_UiStroke1.Name = "Main_UiConner"
    Main_UiStroke1.Parent = MainFrame1

    local miniFrame = Instance.new("Frame")
    miniFrame.Name = "miniFrame"
    miniFrame.Parent = MainFrame1
    miniFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    miniFrame.BackgroundColor3 = _G.Color
    miniFrame.BorderSizePixel = 0
    miniFrame.Position = UDim2.new(0.08, 0, 0.39, 0)
    miniFrame.Size = UDim2.new(0, 5,0, 70)
    miniFrame.ClipsDescendants = true

    local miniFrame_UiConner1 = Instance.new("UICorner")

    miniFrame_UiConner1.CornerRadius = UDim.new(5, 0)
    miniFrame_UiConner1.Name = "miniFrame_UiConner"
    miniFrame_UiConner1.Parent = miniFrame

    local Welcometo = Instance.new("TextLabel")

    Welcometo.Parent = MainFrame1
    Welcometo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Welcometo.BackgroundTransparency = 1
    Welcometo.BorderSizePixel = 0
    Welcometo.Position = UDim2.new(0.19, 0, 0.2, 0)
    Welcometo.AnchorPoint = Vector2.new(0.5, 0.5)
    Welcometo.Size = UDim2.new(0, 168,0, 23)
    Welcometo.Font = Enum.Font.GothamBold
    Welcometo.Text = "Welcome to"
    Welcometo.TextColor3 = Color3.fromRGB(255, 255, 255)
    Welcometo.TextSize = 17

    local NameReal2 = Instance.new("TextLabel")

    NameReal2.Parent = MainFrame1
    NameReal2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    NameReal2.BackgroundTransparency = 1
    NameReal2.BorderSizePixel = 0
    NameReal2.Position = UDim2.new(0.225, 0, 0.38, 0)
    NameReal2.AnchorPoint = Vector2.new(0.5, 0.5)
    NameReal2.Size = UDim2.new(0, 134,0, 23)
    NameReal2.Font = Enum.Font.GothamBold
    NameReal2.RichText = true
    NameReal2.Text = text.."<font color=\"rgb(".. math.floor(_G.Color1.R * 255) .. "," .. math.floor(_G.Color1.G * 255) .. ",".. math.floor(_G.Color1.B * 255) ..")\"> HUB</font>"
    NameReal2.TextColor3 = _G.Color
    NameReal2.TextSize = 35
    NameReal2.TextXAlignment = Enum.TextXAlignment.Left

    -- local Hub2 = Instance.new("TextLabel")

    -- Hub2.Parent = MainFrame1
    -- Hub2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    -- Hub2.BackgroundTransparency = 1
    -- Hub2.BorderSizePixel = 0
    -- Hub2.Position = UDim2.new(0.47, 0, 0.38, 0)
    -- Hub2.AnchorPoint = Vector2.new(0.5, 0.5)
    -- Hub2.Size = UDim2.new(0, 134,0, 23)
    -- Hub2.Font = Enum.Font.GothamBold
    -- Hub2.Text = "HUB"
    -- Hub2.TextColor3 = Color3.fromRGB(255, 255, 255)
    -- Hub2.TextSize = 30.000
    -- Hub2.TextXAlignment = Enum.TextXAlignment.Left

    local ImageLogo = Instance.new("ImageLabel")
    
    ImageLogo.Parent = MainFrame1
    ImageLogo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageLogo.BackgroundTransparency = 1
    ImageLogo.AnchorPoint = Vector2.new(0.5, 0.5)
    ImageLogo.Position = UDim2.new(0.8, 0,0.5, 0)
    ImageLogo.Size = UDim2.new(0, 100,0, 100)
    ImageLogo.Image = "https://www.roblox.com/asset-thumbnail/image?assetId="..logo.."&width=0&height=0&format=png"

    local FrameJoinDis = Instance.new("Frame")
    FrameJoinDis.Name = "FrameJoinDis"
    FrameJoinDis.Parent = MainFrame1
    FrameJoinDis.AnchorPoint = Vector2.new(0.5, 0.5)
    FrameJoinDis.BackgroundColor3 = _G.Color
    FrameJoinDis.BorderSizePixel = 0
    FrameJoinDis.Position = UDim2.new(0.24, 0, 0.69, 0)
    FrameJoinDis.Size = UDim2.new(0, 150,0, 30)
    FrameJoinDis.ClipsDescendants = true

    local FrameJoinDis1 = Instance.new("Frame")
    FrameJoinDis1.Name = "FrameJoinDis"
    FrameJoinDis1.Parent = MainFrame1
    FrameJoinDis1.AnchorPoint = Vector2.new(0.5, 0.5)
    FrameJoinDis1.BackgroundColor3 = Color3.fromRGB(32,32,32)
    FrameJoinDis1.BorderSizePixel = 0
    FrameJoinDis1.Position = UDim2.new(0.24, 0, 0.69, 0)
    FrameJoinDis1.Size = UDim2.new(0, 148,0, 28)
    FrameJoinDis1.ClipsDescendants = true

    local FrameJoinDis_UiConner1 = Instance.new("UICorner")
    FrameJoinDis_UiConner1.CornerRadius = UDim.new(0, 8)
    FrameJoinDis_UiConner1.Name = "FrameJoinDis_UiConner1"
    FrameJoinDis_UiConner1.Parent = FrameJoinDis

    local FrameJoinDis_UiConner2 = Instance.new("UICorner")
    FrameJoinDis_UiConner2.CornerRadius = UDim.new(0, 8)
    FrameJoinDis_UiConner2.Name = "FrameJoinDis_UiConner1"
    FrameJoinDis_UiConner2.Parent = FrameJoinDis1

   local JoinDiscord = Instance.new("TextButton")

   JoinDiscord.Parent = FrameJoinDis1
   JoinDiscord.Name = "JoinDiscord"
   JoinDiscord.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
   JoinDiscord.BackgroundTransparency = 1
   JoinDiscord.Position = UDim2.new(0,0.5,0,0.8)
   JoinDiscord.Size = UDim2.new(0, 148,0, 28)
   JoinDiscord.Font = Enum.Font.GothamBold
   JoinDiscord.TextColor3 = _G.Color
   JoinDiscord.TextSize = 16
   JoinDiscord.Text = "Join Discord"

JoinDiscord.MouseButton1Click:Connect(function()
local filename1 = "NoAutoJoinDiscord.txt";
syn.request({
   Url = "http://127.0.0.1:6463/rpc?v=1",
   Method = "POST",
   Headers = {
       ["Content-Type"] = "application/json",
       ["Origin"] = "https://discord.com"
   },
   Body = game:GetService("HttpService"):JSONEncode({
       cmd = "INVITE_BROWSER",
       args = {
           code = Discord_Invite_Code
       },
       nonce = game:GetService("HttpService"):GenerateGUID(false)
   }),
})
end)

    MakeDraggable(ClickFrame,MainFrame,MainFrame1)
    tween:Create(MainFrame1,TweenInfo.new(0.4,Enum.EasingStyle.Back),{Size = UDim2.new(0, 530, 0, 128)}):Play()
    tween:Create(MainFrame,TweenInfo.new(0.4,Enum.EasingStyle.Back),{Size = UDim2.new(0, 550, 0, 654)}):Play()

    local library = {toggledui = false;}
    game:GetService("UserInputService").InputBegan:Connect(function(input)
        pcall(function()
            if input.KeyCode == Enum.KeyCode.LeftControl then
                if library.toggledui == false then
                    library.toggledui = true
                    tween:Create(MainFrame,TweenInfo.new(0.4,Enum.EasingStyle.Back,Enum.EasingDirection.In),{Size = UDim2.new(0, 0, 0, 0)}):Play()
                    wait(0.3)
                    STRIKECourseScreen.Enabled = false
                else
                    library.toggledui = false
                    tween:Create(MainFrame,TweenInfo.new(0.4,Enum.EasingStyle.Back),{Size = UDim2.new(0, 550, 0, 654)}):Play()
                    STRIKECourseScreen.Enabled = true
                end
            end
        end)
    end)

    local imageclickframe = Instance.new("ImageLabel")

    imageclickframe.Parent = ClickFrame
    imageclickframe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    imageclickframe.BackgroundTransparency = 1
    imageclickframe.AnchorPoint = Vector2.new(0.5, 0.5)
    imageclickframe.Position = UDim2.new(0.5, 0, 0.5, 0)
    imageclickframe.Size = UDim2.new(0, 30, 0, 30)
    imageclickframe.Image = "https://www.roblox.com/asset-thumbnail/image?assetId="..logo.."&width=0&height=0&format=png"

    local NameReal = Instance.new("TextLabel")
    NameReal.Parent = MainFrame
    NameReal.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    NameReal.BackgroundTransparency = 1
    NameReal.BorderSizePixel = 3
    NameReal.Position = UDim2.new(0.25, 0, 0.043, 0)
    NameReal.AnchorPoint = Vector2.new(0.5, 0.5)
    NameReal.Size = UDim2.new(0, 142, 0, 34)
    NameReal.Font = Enum.Font.GothamBold
    NameReal.RichText = true
    NameReal.Text = text.."<font color=\"rgb(".. math.floor(_G.Color1.R * 255) .. "," .. math.floor(_G.Color1.G * 255) .. ",".. math.floor(_G.Color1.B * 255) ..")\"> HUB</font>"
    NameReal.TextColor3 = _G.Color
    NameReal.TextSize = 26
    NameReal.TextXAlignment = Enum.TextXAlignment.Left

    local MainFrame2 = Instance.new("Frame")
    MainFrame2.Name = "MainFrame2"
    MainFrame2.Parent = MainFrame
    MainFrame2.AnchorPoint = Vector2.new(0.5, 0.5)
    MainFrame2.BackgroundColor3 = Color3.fromRGB(18,18,18)
    MainFrame2.BorderSizePixel = 0
    MainFrame2.Position = UDim2.new(0.5, 0, 0.5, 0)
    MainFrame2.Size = UDim2.new(0, 0, 0, 0)
    MainFrame2.ClipsDescendants = true

    local Main_UiConner2  = Instance.new("UICorner")

    Main_UiConner2.CornerRadius = UDim.new(0, 9)
    Main_UiConner2.Name = "Main_UiConner"
    Main_UiConner2.Parent = MainFrame

    MainFrame2:TweenSizeAndPosition(UDim2.new(0, 550-20, 0, 474-50), UDim2.new(0.5, 0, 0.63, 0), "Out", "Back", 0.5, true)


    local ScolTapBarFrame = Instance.new("Frame")
    ScolTapBarFrame.Name = "ScolTapBarFrameMainFrame2"
    ScolTapBarFrame.Parent = MainFrame2
    ScolTapBarFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    ScolTapBarFrame.BackgroundColor3 = Color3.fromRGB(255,255,255)
    ScolTapBarFrame.BorderSizePixel = 0
    ScolTapBarFrame.BackgroundTransparency = 1
    ScolTapBarFrame.Position = UDim2.new(0.5, 0, 0.07, 0)
    ScolTapBarFrame.Size = UDim2.new(0, 500, 0, 35)
    ScolTapBarFrame.ClipsDescendants = true

    local ScrollingFrame_Menubar = Instance.new("ScrollingFrame")

    ScrollingFrame_Menubar.Parent = ScolTapBarFrame
    ScrollingFrame_Menubar.Active = true
    ScrollingFrame_Menubar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ScrollingFrame_Menubar.BackgroundTransparency = 1
    ScrollingFrame_Menubar.BorderSizePixel = 0
    ScrollingFrame_Menubar.Size = UDim2.new(0, 500, 0, 35)
    ScrollingFrame_Menubar.CanvasSize = UDim2.new(2, 0, 0, 0)
    ScrollingFrame_Menubar.ScrollBarImageColor3 = _G.Color
    ScrollingFrame_Menubar.ScrollBarThickness = 3


    local UIListLayout_Menubar = Instance.new("UIListLayout")

    UIListLayout_Menubar.Parent = ScrollingFrame_Menubar
    UIListLayout_Menubar.FillDirection = Enum.FillDirection.Horizontal
    UIListLayout_Menubar.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout_Menubar.Padding = UDim.new(0, 10)

    local UIPadding_Menubar = Instance.new("UIPadding")

    UIPadding_Menubar.Parent = ScrollingFrame_Menubar
    UIPadding_Menubar.PaddingTop = UDim.new(0, 2)


    local PageOrders = -1

    local Container_Page = Instance.new('Frame',MainFrame2)
    Container_Page.Size = UDim2.new(0, 518, 0, 268)
    Container_Page.Position = UDim2.new(0.5, 0, 0.45, 0)
    Container_Page.BackgroundTransparency = 1
    Container_Page.Name = "Page "
    Container_Page.AnchorPoint = Vector2.new(0.5, 0.5)

    local pagesFolder = Instance.new("Folder")

    pagesFolder.Name = "pagesFolder"
    pagesFolder.Parent = Container_Page


    local UIPage = Instance.new('UIPageLayout',pagesFolder)
    UIPage.SortOrder = Enum.SortOrder.LayoutOrder
    UIPage.EasingDirection = Enum.EasingDirection.InOut
    UIPage.EasingStyle = Enum.EasingStyle.Quad
    UIPage.Padding = UDim.new(0, 10)
    UIPage.TweenTime = 0.5

    local top = {}

    local NotiFrame = Instance.new("Frame")
    NotiFrame.Name = "NotiFrame"
    NotiFrame.Parent = STRIKECourseScreen
    NotiFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    NotiFrame.BackgroundColor3 = Color3.fromRGB(18,18,18)
    NotiFrame.BorderSizePixel = 0
    NotiFrame.Position =  UDim2.new(1, -210, 1, -500)
    NotiFrame.Size = UDim2.new(0, 400, 0, 500)
    NotiFrame.ClipsDescendants = true
    NotiFrame.BackgroundTransparency = 1


    local Notilistlayout = Instance.new("UIListLayout")
    Notilistlayout.Parent = NotiFrame
    Notilistlayout.SortOrder = Enum.SortOrder.LayoutOrder
    Notilistlayout.Padding = UDim.new(0, 5)


    function create:Notify(title,text,delays)
        local TitleFrame = Instance.new("Frame")
        TitleFrame.Name = "TitleFrame"
        TitleFrame.Parent = NotiFrame
        TitleFrame.AnchorPoint = Vector2.new(0.5, 0.5)
        TitleFrame.BackgroundColor3 = Color3.fromRGB(18,18,18)
        TitleFrame.BorderSizePixel = 0
        TitleFrame.Position =  UDim2.new(0.5, 0, 0.5,0)
        TitleFrame.Size = UDim2.new(0, 0, 0, 0)
        TitleFrame.ClipsDescendants = true
        TitleFrame.BackgroundTransparency = 0

        local ConnerTitile = Instance.new("UICorner")

        ConnerTitile.CornerRadius = UDim.new(0, 4)
        ConnerTitile.Name = ""
        ConnerTitile.Parent = TitleFrame

        TitleFrame:TweenSizeAndPosition(UDim2.new(0, 400-10, 0, 70),  UDim2.new(0.5, 0, 0.5,0), "Out", "Quad", 0.3, true)

        local imagenoti = Instance.new("ImageLabel")

        imagenoti.Parent = TitleFrame
        imagenoti.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        imagenoti.BackgroundTransparency = 1
        imagenoti.AnchorPoint = Vector2.new(0.5, 0.5)
        imagenoti.Position = UDim2.new(0.9, 0, 0.5, 0)
        imagenoti.Size = UDim2.new(0, 50, 0, 50)
        imagenoti.Image = "https://www.roblox.com/asset-thumbnail/image?assetId="..logo.."&width=0&height=0&format=png"

        local txdlid = Instance.new("TextLabel")

        txdlid.Parent = TitleFrame
        txdlid.Name = "TextLabel_Tap"
        txdlid.BackgroundColor3 = _G.Color
        txdlid.Size =UDim2.new(0, 160, 0,25 )
        txdlid.Font = Enum.Font.GothamBold
        txdlid.Text = title
        txdlid.TextColor3 = _G.Color
        txdlid.TextSize = 20
        txdlid.AnchorPoint = Vector2.new(0.5, 0.5)
        txdlid.Position = UDim2.new(0.23, 0, 0.3, 0)
        -- txdlid.TextYAlignment = Enum.TextYAlignment.Top
        txdlid.TextXAlignment = Enum.TextXAlignment.Left
        txdlid.BackgroundTransparency = 1

        local LableFrame = Instance.new("Frame")
        LableFrame.Name = "LableFrame"
        LableFrame.Parent = TitleFrame
        LableFrame.AnchorPoint = Vector2.new(0.5, 0.5)
        LableFrame.BackgroundColor3 = _G.Color
        LableFrame.BorderSizePixel = 0
        LableFrame.Position =  UDim2.new(0.36, 0, 0.67,0)
        LableFrame.Size = UDim2.new(0, 260, 0,25 )
        LableFrame.ClipsDescendants = true
        LableFrame.BackgroundTransparency = 1

        local TextNoti = Instance.new("TextLabel")

        TextNoti.Parent = LableFrame
        TextNoti.Name = "TextLabel_Tap"
        TextNoti.BackgroundColor3 = _G.Color
        TextNoti.Size =UDim2.new(0, 260, 0,25 )
        TextNoti.Font = Enum.Font.GothamBold
        TextNoti.Text = text
        TextNoti.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextNoti.TextSize = 13
        TextNoti.AnchorPoint = Vector2.new(0.5, 0.5)
        TextNoti.Position = UDim2.new(0.5, 0, 0.5, 0)
        -- TextNoti.TextYAlignment = Enum.TextYAlignment.Top
        TextNoti.TextXAlignment = Enum.TextXAlignment.Left
        TextNoti.BackgroundTransparency = 1

        repeat wait() until TitleFrame.Size == UDim2.new(0, 400-10, 0, 70)

        local Time = Instance.new("Frame")
        Time.Name = "Time"
        Time.Parent = TitleFrame
--Time.AnchorPoint = Vector2.new(0.5, 0.5)
        Time.BackgroundColor3 =  _G.Color
        Time.BorderSizePixel = 0
        Time.Position =  UDim2.new(0, 0, 0,0)
        Time.Size = UDim2.new(0, 0,0,0)
        Time.ClipsDescendants = false
        Time.BackgroundTransparency = 0

        local ConnerTitile_Time = Instance.new("UICorner")

        ConnerTitile_Time.CornerRadius = UDim.new(0, 4)
        ConnerTitile_Time.Name = ""
        ConnerTitile_Time.Parent = Time


        Time:TweenSizeAndPosition(UDim2.new(0, 400-10, 0, 3),  UDim2.new(0, 0, 0,0), "Out", "Quad", 0.3, true)
        repeat wait() until Time.Size == UDim2.new(0, 400-10, 0, 3)

        TweenService:Create(
            Time,
            TweenInfo.new(tonumber(delays), Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),
            {Size = UDim2.new(0, 0, 0, 3)} -- UDim2.new(0, 128, 0, 25)
        ):Play()
        delay(tonumber(delays),function()
            TweenService:Create(
                TitleFrame,
                TweenInfo.new(0.4, Enum.EasingStyle.Back, Enum.EasingDirection.InOut),
                {Size = UDim2.new(0, 0, 0, 0)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            wait(0.3)
            TitleFrame:Destroy()
        end
    )
    end


    function top:Taps(text)
        PageOrders = PageOrders + 1
        local name = tostring(text) or tostring(math.random(1,5000))

        local Frame_Tap = Instance.new("Frame")
        Frame_Tap.Parent = ScrollingFrame_Menubar
        Frame_Tap.Name = text.."Server"
        Frame_Tap.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Frame_Tap.BackgroundTransparency = 1
        Frame_Tap.Position = UDim2.new(0, 0, 0, 0)
        Frame_Tap.Size = UDim2.new(0, 100, 0, 25)
        Frame_Tap.Visible = true

        local TextLabel_Tap = Instance.new("TextLabel")

        TextLabel_Tap.Parent = Frame_Tap
        TextLabel_Tap.Name = "TextLabel_Tap"
        TextLabel_Tap.BackgroundColor3 = _G.Color
        TextLabel_Tap.Position = UDim2.new(0.5, 0, 0.8, 0)
        TextLabel_Tap.Size = UDim2.new(0, 0, 0, 0)
        TextLabel_Tap.Font = Enum.Font.SourceSans
        TextLabel_Tap.Text = " "
        TextLabel_Tap.TextColor3 = Color3.fromRGB(0, 0, 0)
        TextLabel_Tap.TextSize = 14
        TextLabel_Tap.AnchorPoint = Vector2.new(0.5, 0.5)

        local TextButton_Tap = Instance.new("TextButton")

        TextButton_Tap.Parent = Frame_Tap
        TextButton_Tap.Name = "TextButton_Tap"
        TextButton_Tap.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextButton_Tap.BackgroundTransparency = 1
        TextButton_Tap.Position = UDim2.new(0.114491031, 0, -0.0216345787, 0)
        TextButton_Tap.Size = UDim2.new(0, 80, 0, 20)
        TextButton_Tap.Font = Enum.Font.GothamBold
        TextButton_Tap.TextColor3 = Color3.fromRGB(155, 155, 155)
        TextButton_Tap.TextSize = 13
        TextButton_Tap.Text = tostring(text)

        local MainPage = Instance.new("Frame")

        MainPage.Name = name.."_MainPage"
        MainPage.Parent = pagesFolder
        MainPage.BackgroundColor3 = Color3.fromRGB(255,255, 255)
        MainPage.BorderSizePixel = 0
        MainPage.Position = UDim2.new(0.5, 0, 0.5, 0) -- UDim2.new(0.0149812736, 0, 0.13, 0)
        MainPage.Size = UDim2.new(0, 518, 0, 375)
        MainPage.BackgroundTransparency = 1
        MainPage.ClipsDescendants = true
        MainPage.Visible = true
        MainPage.LayoutOrder = PageOrders




        TextButton_Tap.MouseButton1Click:connect(function()
            if MainPage.Name == text.."_MainPage" then
                UIPage:JumpToIndex(MainPage.LayoutOrder)

            end
            for i ,v in next , ScrollingFrame_Menubar:GetChildren() do
                if v:IsA("Frame") then
                    TweenService:Create(
                        v.TextButton_Tap,
                        TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {TextColor3 = Color3.fromRGB(155, 155, 155)}
                    ):Play()
                end

                TweenService:Create(
                    TextButton_Tap,
                    TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = _G.Color}
                ):Play()
            end
        end)

        if fs == false then
            -- TweenService:Create(
            --     TextLabel_Tap,
            --     TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
            --     {Size = UDim2.new(0, 70, 0, 2)}
            -- ):Play()
            TweenService:Create(
                TextButton_Tap,
                TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {TextColor3 = _G.Color}
            ):Play()

            MainPage.Visible = true
            Frame_Tap.Name  = text .. "Server"
            fs  = true
        end
        local ScrollingFrame_Pagefrist = Instance.new("ScrollingFrame")

        ScrollingFrame_Pagefrist.Parent = MainPage
        ScrollingFrame_Pagefrist.Active = true
        ScrollingFrame_Pagefrist.BackgroundColor3 = Color3.fromRGB(23, 23, 23) -- 0, 128, 255
        ScrollingFrame_Pagefrist.BorderSizePixel = 0
        ScrollingFrame_Pagefrist.Size = UDim2.new(0, 518, 0, 375)
        ScrollingFrame_Pagefrist.ScrollBarThickness = 4
        ScrollingFrame_Pagefrist.ScrollBarImageColor3 = _G.Color -- 0, 128, 255

        local UIGridLayout_Pagefrist = Instance.new("UIGridLayout")
        local UIPadding_Pagefrist = Instance.new("UIPadding")

        UIGridLayout_Pagefrist.Archivable = false
        UIGridLayout_Pagefrist.Parent = ScrollingFrame_Pagefrist
        UIGridLayout_Pagefrist.SortOrder = Enum.SortOrder.LayoutOrder
        UIGridLayout_Pagefrist.CellPadding = UDim2.new(0, 13, 0, 15)
        UIGridLayout_Pagefrist.CellSize = UDim2.new(0, 240, 0, 370)

        UIPadding_Pagefrist.Parent = ScrollingFrame_Pagefrist
        UIPadding_Pagefrist.PaddingLeft = UDim.new(0, 10)
        UIPadding_Pagefrist.PaddingTop = UDim.new(0, 20)

        local page = {}

        function page:newpage()

            local Pageframe = Instance.new("Frame")


            Pageframe.Parent = ScrollingFrame_Pagefrist
            Pageframe.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            Pageframe.BorderSizePixel = 0
            Pageframe.Position = UDim2.new(0.028957529, 0, 0.0496277921, 0)
            Pageframe.Size = UDim2.new(0, 240, 0, 379)


            local ScrollingFrame_Pageframe = Instance.new("ScrollingFrame")


            ScrollingFrame_Pageframe.Parent = Pageframe
            ScrollingFrame_Pageframe.Active = true
            ScrollingFrame_Pageframe.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            ScrollingFrame_Pageframe.BorderSizePixel = 0
            ScrollingFrame_Pageframe.Position = UDim2.new(0, 0, -0.0101253344, 0)
            ScrollingFrame_Pageframe.Size = UDim2.new(0, 240, 0, 379)
            ScrollingFrame_Pageframe.ScrollBarThickness = 4
            ScrollingFrame_Pageframe.ScrollBarImageColor3 = Color3.fromRGB(222, 222, 222)



            local UIPadding_Pageframe = Instance.new("UIPadding")
            local UIListLayout_Pageframe = Instance.new("UIListLayout")


            UIPadding_Pageframe.Parent = ScrollingFrame_Pageframe
            UIPadding_Pageframe.PaddingLeft = UDim.new(0, 15)
            UIPadding_Pageframe.PaddingTop = UDim.new(0, 10)


            UIListLayout_Pageframe.Parent = ScrollingFrame_Pageframe
            UIListLayout_Pageframe.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout_Pageframe.Padding = UDim.new(0, 7)

            UIListLayout_Pageframe:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(function()
                ScrollingFrame_Pageframe.CanvasSize = UDim2.new(0,0,0,UIListLayout_Pageframe.AbsoluteContentSize.Y + 120 )
            end)

            UIGridLayout_Pagefrist:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(function()
                ScrollingFrame_Pagefrist.CanvasSize = UDim2.new(0,0,0,UIGridLayout_Pagefrist.AbsoluteContentSize.Y + 50 )
            end)

            game:GetService("RunService").Stepped:Connect(function ()
                pcall(function ()
                    ScrollingFrame_Menubar.CanvasSize = UDim2.new(0,  UIListLayout_Menubar.AbsoluteContentSize.X, 0,0)
                    ScrollingFrame_Pageframe.CanvasSize = UDim2.new(0,0,0,UIListLayout_Pageframe.AbsoluteContentSize.Y +20 )
                    ScrollingFrame_Pagefrist.CanvasSize = UDim2.new(0,0,0,UIGridLayout_Pagefrist.AbsoluteContentSize.Y + 40)
                end)
            end)
        local items = {}

        function items:Toggle(text,config,callback)
            local Toggle = Instance.new("Frame")

            Toggle.Parent = ScrollingFrame_Pageframe
            Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Toggle.BorderSizePixel = 0
            Toggle.Position = UDim2.new(0.5, 0, 0.5, 0)
            Toggle.Size = UDim2.new(0, 213, 0, 35)
            Toggle.BackgroundTransparency = 1
            Toggle.AnchorPoint = Vector2.new(0.5, 0.5)

            local TextButton_Toggle = Instance.new("TextButton")

            TextButton_Toggle.Parent = Toggle
            TextButton_Toggle.BackgroundTransparency = 1
            TextButton_Toggle.BackgroundColor3 = Color3.fromRGB(60,60,60)
            TextButton_Toggle.BorderSizePixel = 0
            TextButton_Toggle.Size = UDim2.new(0, 213, 0, 35)
            TextButton_Toggle.AutoButtonColor = false
            TextButton_Toggle.Font = Enum.Font.SourceSans
            TextButton_Toggle.Text = " "
            TextButton_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
            TextButton_Toggle.TextSize = 12

            local TextButton_2_Toggle = Instance.new("TextButton")

            TextButton_2_Toggle.Parent = TextButton_Toggle
            TextButton_2_Toggle.BackgroundColor3 = Color3.fromRGB(155, 155, 155)
    --        TextButton_2_Toggle.BorderColor3 = _G.Color
            TextButton_2_Toggle.BorderSizePixel = 0
            TextButton_2_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
            TextButton_2_Toggle.Position = UDim2.new(0.9, 0, 0.5, 0)
            TextButton_2_Toggle.Size = UDim2.new(0, 30, 0, 13)
            TextButton_2_Toggle.Font = Enum.Font.SourceSans
            TextButton_2_Toggle.Text = " "
            TextButton_2_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
            TextButton_2_Toggle.TextSize = 12
            TextButton_2_Toggle.AutoButtonColor = false

            local TextButton_Pageframe_Uiconner = Instance.new("UICorner")

            TextButton_Pageframe_Uiconner.CornerRadius = UDim.new(0, 30)
            TextButton_Pageframe_Uiconner.Name = ""
            TextButton_Pageframe_Uiconner.Parent = TextButton_2_Toggle

            local TextButton_3_Toggle = Instance.new("TextButton")

            TextButton_3_Toggle.Parent = TextButton_2_Toggle
            TextButton_3_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255,255)
    --        TextButton_3_Toggle.BorderColor3 = _G.Color
            TextButton_3_Toggle.BorderSizePixel = 0
            TextButton_3_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
            TextButton_3_Toggle.Position = UDim2.new(0.1, 0, 0.5, 0)
            TextButton_3_Toggle.Size = UDim2.new(0, 19, 0, 19)
            TextButton_3_Toggle.Font = Enum.Font.SourceSans
            TextButton_3_Toggle.Text = " "
            TextButton_3_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
            TextButton_3_Toggle.TextSize = 12
            TextButton_3_Toggle.AutoButtonColor = false

            local TextButton_Pageframe_Uiconner2 = Instance.new("UICorner")

            TextButton_Pageframe_Uiconner2.CornerRadius = UDim.new(0, 30)
            TextButton_Pageframe_Uiconner2.Name = ""
            TextButton_Pageframe_Uiconner2.Parent = TextButton_3_Toggle

            local TextButton_4_Toggle = Instance.new("TextButton")

            TextButton_4_Toggle.Parent = TextButton_3_Toggle
            TextButton_4_Toggle.BackgroundColor3 = Color3.fromRGB(155, 155,155)
    --        TextButton_3_Toggle.BorderColor3 = _G.Color
            TextButton_4_Toggle.BorderSizePixel = 0
            TextButton_4_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
            TextButton_4_Toggle.Position = UDim2.new(0.5, 0, 0.5, 0)
            TextButton_4_Toggle.Size = UDim2.new(0, 27, 0, 27-2)
            TextButton_4_Toggle.Font = Enum.Font.SourceSans
            TextButton_4_Toggle.Text = " "
            TextButton_4_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
            TextButton_4_Toggle.TextSize = 12
            TextButton_4_Toggle.AutoButtonColor = false
            TextButton_4_Toggle.BackgroundTransparency = 1
            TextButton_4_Toggle.Visible = true

            local TextButton_Pageframe_Uiconner4 = Instance.new("UICorner")

            TextButton_Pageframe_Uiconner4.CornerRadius = UDim.new(0, 30)
            TextButton_Pageframe_Uiconner4.Name = ""
            TextButton_Pageframe_Uiconner4.Parent = TextButton_4_Toggle

            local TextLabel_Toggle = Instance.new("TextLabel")

            TextLabel_Toggle.Parent = Toggle
            TextLabel_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel_Toggle.BackgroundTransparency = 1
            TextLabel_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
            TextLabel_Toggle.Position = UDim2.new(0.4, 0, 0.5, 0)
            TextLabel_Toggle.BorderSizePixel = 0
            TextLabel_Toggle.Size = UDim2.new(0, 130, 0, 25)
            TextLabel_Toggle.Font = Enum.Font.GothamBold
            TextLabel_Toggle.Text = text
            TextLabel_Toggle.TextColor3 = Color3.fromRGB(200, 200, 200)
            TextLabel_Toggle.TextSize = 11
            TextLabel_Toggle.ClipsDescendants = true
            TextLabel_Toggle.TextWrapped = true
            TextLabel_Toggle.TextXAlignment = Enum.TextXAlignment.Left

            local TextButton_Toggle2 = Instance.new("TextButton")

            TextButton_Toggle2.Parent = TextButton_Toggle
            TextButton_Toggle2.BackgroundTransparency =1
            TextButton_Toggle2.BackgroundColor3 = Color3.fromRGB(60,60,60)
            TextButton_Toggle2.BorderSizePixel = 0
            TextButton_Toggle2.Size = UDim2.new(0, 213, 0, 35)
            TextButton_Toggle2.AutoButtonColor = false
            TextButton_Toggle2.Font = Enum.Font.SourceSans
            TextButton_Toggle2.Text = " "
            TextButton_Toggle2.TextColor3 = Color3.fromRGB(0, 0, 0)
            TextButton_Toggle2.TextSize = 12

            TextButton_Toggle2.MouseEnter:Connect(function()
                TweenService:Create(
                    TextButton_4_Toggle,
                    TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundTransparency = 0.6} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    TextLabel_Toggle,
                    TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
            end
        )

        TextButton_Toggle2.MouseLeave:Connect(function()
                TweenService:Create(
                    TextButton_4_Toggle,
                    TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundTransparency = 1} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    TextLabel_Toggle,
                    TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(200, 200, 200)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
            end
        )

        local check = {toogle = false ; loacker = true ; togfunction = {

        };
    }
    TextButton_Toggle2.MouseButton1Click:Connect(function()
            if check.toogle == false and check.loacker == true  then
                TweenService:Create(
                    TextButton_4_Toggle,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 =  _G.Color} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    TextButton_3_Toggle,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 =  _G.Color} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    TextButton_2_Toggle,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 =  _G.Color} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(1, 0, 0.5, 0), "Out", "Quad", 0.3, true)
            elseif  check.loacker ==  true then
                TweenService:Create(
                    TextButton_4_Toggle,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 =  Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    TextButton_3_Toggle,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    TextButton_2_Toggle,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 =  Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(0.1, 0, 0.5, 0), "Out", "Quad", 0.3, true)
            end
            if  check.loacker == true  then
            check.toogle = not check.toogle
            callback(check.toogle)
            end
        end
    )

        if config == true then
            TweenService:Create(
                TextButton_4_Toggle,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {BackgroundColor3 =  _G.Color} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
                TextButton_3_Toggle,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {BackgroundColor3 =  _G.Color} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
                TextButton_2_Toggle,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {BackgroundColor3 =  _G.Color} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(1, 0, 0.5, 0), "Out", "Quad", 0.3, true)
            check.toogle = true
            callback(check.toogle)
        end

        local lockerframe = Instance.new("Frame")

        lockerframe.Name = "lockerframe"
        lockerframe.Parent = Toggle
        lockerframe.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        lockerframe.BackgroundTransparency = 1
        lockerframe.Size = UDim2.new(0, 320, 0, 35)
        lockerframe.Position = UDim2.new(0.5, 0, 0.5, 0)
        lockerframe.AnchorPoint = Vector2.new(0.5, 0.5)

        local LockerImageLabel = Instance.new("ImageButton")
        LockerImageLabel.Parent = lockerframe
        LockerImageLabel.BackgroundTransparency = 1
        LockerImageLabel.BorderSizePixel = 0
        LockerImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
        LockerImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
        LockerImageLabel.Size = UDim2.new(0, 0, 0, 0)
        LockerImageLabel.Image = "rbxassetid://3926305904"
        LockerImageLabel.ZIndex = 10
        LockerImageLabel.ImageRectOffset = Vector2.new(4, 684)
        LockerImageLabel.ImageRectSize = Vector2.new(36, 36)


        function check.togfunction:lock()
            TweenService:Create(
                lockerframe,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),
                {BackgroundTransparency = 0.7}
            ):Play()
            TweenService:Create(
                LockerImageLabel,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),
                {Size = UDim2.new(0, 30, 0, 30)}
            ):Play()

            check.loacker  = false
        --    pcall(callback,locker)
        end
        function check.togfunction:unlock()
            TweenService:Create(
                lockerframe,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),
                {BackgroundTransparency = 1}
            ):Play()
            TweenService:Create(
                LockerImageLabel,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out,0.1),
                {Size = UDim2.new(0, 0, 0, 0)}
            ):Play()
            check.loacker  = true
        --   pcall(callback,locker)
        end
        function check.togfunction:ChangeTogle(state)
            if state == true then
                TweenService:Create(
                    TextButton_4_Toggle,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 =  _G.Color} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    TextButton_3_Toggle,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 =  _G.Color} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    TextButton_2_Toggle,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 =  _G.Color} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(1, 0, 0.5, 0), "Out", "Quad", 0.3, true)
                check.toogle = true
            else
                TweenService:Create(
                    TextButton_4_Toggle,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 =  Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    TextButton_3_Toggle,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    TextButton_2_Toggle,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 =  Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(0.1, 0, 0.5, 0), "Out", "Quad", 0.3, true)
                check.toogle = false
            end
        --   pcall(callback,locker)
        end

            return  check.togfunction
        end

        function items:Button(text,callback)

            local ButtonFrame = Instance.new("Frame")

            ButtonFrame.Name = "ButtonFrame"
            ButtonFrame.Parent = ScrollingFrame_Pageframe
            ButtonFrame.BackgroundColor3 = _G.Color
            ButtonFrame.BorderSizePixel = 0
            ButtonFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
            ButtonFrame.AnchorPoint = Vector2.new(0.5, 0.5)
            ButtonFrame.Size = UDim2.new(0, 213, 0, 25) -- UDim2.new(0, 213, 0, 35)
            ButtonFrame.BackgroundTransparency  = 1
            ButtonFrame.ClipsDescendants = true



            local MheeFrameStroke = Instance.new("UIStroke")

            MheeFrameStroke.Thickness = 0
            MheeFrameStroke.Name = ""
            MheeFrameStroke.Parent = ButtonFrame
            MheeFrameStroke.LineJoinMode = Enum.LineJoinMode.Round
            MheeFrameStroke.Color = _G.Color
            MheeFrameStroke.Transparency = 0.7

            local Button = Instance.new("TextButton")

            Button.Parent = ButtonFrame
            Button.Name = "Button"
            Button.BackgroundColor3 = _G.Color
            Button.Size = UDim2.new(0,150, 0, 25)
            Button.Font = Enum.Font.GothamBold
            Button.Text = tostring(text)
            Button.TextColor3 = Color3.fromRGB(155, 155, 155)
            Button.TextSize = 11
            Button.AnchorPoint = Vector2.new(0.5, 0.5)
            Button.Position = UDim2.new(0.5, 0, 0.5, 0)
            Button.TextXAlignment = Enum.TextXAlignment.Center
            Button.BackgroundTransparency = 0.6
            Button.TextWrapped = true
            Button.AutoButtonColor = false
            Button.ClipsDescendants = true

            local ConnerPageMhee = Instance.new("UICorner")

            ConnerPageMhee.CornerRadius = UDim.new(0, 4)
            ConnerPageMhee.Name = ""
            ConnerPageMhee.Parent = Button

            Button.MouseEnter:Connect(function()
                TweenService:Create(
                    Button,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Size =  UDim2.new(0, 213, 0, 25)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    Button,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundTransparency = 0} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    Button,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
            end
        )
            Button.MouseLeave:Connect(function()
                TweenService:Create(
                    Button,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Size =  UDim2.new(0, 150, 0, 25)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    Button,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundTransparency = 0.6} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    Button,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
            end
        )

        Button.MouseButton1Click:Connect(function()
        --    Ripple(Button)
            callback()
            TweenService:Create(
                Button,
                TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
                {TextSize =  16} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            wait(0.1)
            TweenService:Create(
                Button,
                TweenInfo.new(0.2, Enum.EasingStyle.Back, Enum.EasingDirection.Out),
                {TextSize =  13} -- UDim2.new(0, 128, 0, 25)
            ):Play()
        end
    )

        end

        function items:Slider(text,check,floor,min,max,de,lol,tog,callback,logoslide)

         if logoslide == nil then
            logoslide = logo
        end
         
        if check then

            local SliderFrame = Instance.new("Frame")

            SliderFrame.Name = "SliderFrame"
            SliderFrame.Parent = ScrollingFrame_Pageframe
            SliderFrame.BackgroundColor3 =  Color3.fromRGB(28, 28, 28)-- _G.Color
            SliderFrame.BorderSizePixel = 0
            SliderFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
            SliderFrame.AnchorPoint = Vector2.new(0.5, 0.5)
            SliderFrame.Size = UDim2.new(0, 213, 0, 75) -- UDim2.new(0, 213, 0, 35)
            SliderFrame.BackgroundTransparency  = 0
            SliderFrame.ClipsDescendants = true

            local SliderFrameConner = Instance.new("UICorner")

            SliderFrameConner.CornerRadius = UDim.new(0, 4)
            SliderFrameConner.Name = ""
            SliderFrameConner.Parent = SliderFrame

            local SliderFrameStroke = Instance.new("UIStroke")

            SliderFrameStroke.Thickness = 1
            SliderFrameStroke.Name = ""
            SliderFrameStroke.Parent = SliderFrame
            SliderFrameStroke.LineJoinMode = Enum.LineJoinMode.Round
            SliderFrameStroke.Color = _G.Color
            SliderFrameStroke.Transparency = 0.7


            SliderFrame.MouseEnter:Connect(function()
                TweenService:Create(
                    SliderFrameStroke,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Transparency = 0} -- UDim2.new(0, 128, 0, 25)
                ):Play()
            end
        )

            SliderFrame.MouseLeave:Connect(function()
                TweenService:Create(
                    SliderFrameStroke,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Transparency = 0.7} -- UDim2.new(0, 128, 0, 25)
                ):Play()
            end
        )


            local LabelNameSliderxd = Instance.new("TextLabel")

            LabelNameSliderxd.Parent = SliderFrame
            LabelNameSliderxd.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            LabelNameSliderxd.BackgroundTransparency = 1
            LabelNameSliderxd.BorderSizePixel = 0
            LabelNameSliderxd.Position = UDim2.new(0.35, 0, 0.2, 0)
            LabelNameSliderxd.AnchorPoint = Vector2.new(0.5, 0.5)
            LabelNameSliderxd.Size = UDim2.new(0, 120, 0, 20)
            LabelNameSliderxd.Font = Enum.Font.GothamBold
            LabelNameSliderxd.Text = tostring(text)
            LabelNameSliderxd.TextColor3 = Color3.fromRGB(255, 255, 255)
            LabelNameSliderxd.TextSize = 26
            LabelNameSliderxd.TextXAlignment = Enum.TextXAlignment.Left


            local ShowValueFarm = Instance.new("Frame")

            ShowValueFarm.Name = "ShowValueFarm"
            ShowValueFarm.Parent = SliderFrame
            ShowValueFarm.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
            ShowValueFarm.Position = UDim2.new(0.0833333358, 0, 0.235135213, 0)
            ShowValueFarm.Size = UDim2.new(0, 75, 0, 15)
            ShowValueFarm.BackgroundTransparency = 0
            ShowValueFarm.BorderSizePixel = 0
            ShowValueFarm.AnchorPoint = Vector2.new(0.5, 0.5)
            ShowValueFarm.Position = UDim2.new(0.8, 0, 0.2, 0)
            ShowValueFarm.ClipsDescendants = false

            local CustomValue = Instance.new("TextBox")

            CustomValue.Parent = ShowValueFarm
            CustomValue.BackgroundColor3 = Color3.fromRGB(45,45, 45)
            CustomValue.BorderSizePixel = 0
            CustomValue.ClipsDescendants = true
            CustomValue.AnchorPoint = Vector2.new(0.5, 0.5)
            CustomValue.Position = UDim2.new(0.5, 0, 0.5, 0)
            CustomValue.Size = UDim2.new(0, 158, 0, 26)
            CustomValue.Font = Enum.Font.GothamBold
            CustomValue.PlaceholderColor3 = Color3.fromRGB(222, 222, 222)
            CustomValue.PlaceholderText =  ""
            if floor == true then
                CustomValue.Text =  tostring(de and string.format("%.1f",(de / max) * (max - min) + min) or 0)
            else
                CustomValue.Text =  tostring(de and math.floor( (de / max) * (max - min) + min) or 0)
            end
            CustomValue.TextColor3 = Color3.fromRGB(255, 255, 255)
            CustomValue.TextSize = 10
            CustomValue.BackgroundTransparency = 1

            local ValueFrame = Instance.new("Frame")

            ValueFrame.Name = "ValueFrame"
            ValueFrame.Parent = SliderFrame
            ValueFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
            ValueFrame.Position = UDim2.new(0.0833333358, 0, 0.235135213, 0)
            ValueFrame.Size = UDim2.new(0, 140, 0, 5)
            ValueFrame.BackgroundTransparency = 0
            ValueFrame.BorderSizePixel = 0
            ValueFrame.AnchorPoint = Vector2.new(0.5, 0.5)
            ValueFrame.Position = UDim2.new(0.4, 0, 0.8, 0)
            ValueFrame.ClipsDescendants = false


            local PartValue = Instance.new("Frame")

            PartValue.Name = "PartValue"
            PartValue.Parent = ValueFrame
            PartValue.BackgroundColor3 = Color3.fromRGB(222, 222, 222)
            PartValue.Position = UDim2.new(0.0833333358, 0, 0.235135213, 0)
            PartValue.Size = UDim2.new(0, 140, 0, 5)
            PartValue.BackgroundTransparency = 1
            PartValue.BorderSizePixel = 0
            PartValue.AnchorPoint = Vector2.new(0.5, 0.5)
            PartValue.Position = UDim2.new(0.5, 0, 0.5, 0)
            PartValue.ClipsDescendants = false

            local MainValue = Instance.new("Frame")

            MainValue.Name = "MainValue"
            MainValue.Parent = PartValue
            MainValue.BackgroundColor3 = _G.Color
            MainValue.Size = UDim2.new((de or 0) / max, 0, 0, 5)
            MainValue.BackgroundTransparency = 0
            MainValue.BorderSizePixel = 0
            -- MainValue.AnchorPoint = Vector2.new(0.5, 0.5)
            MainValue.Position = UDim2.new(0, 0, 0, 0)
            MainValue.ClipsDescendants = false

            local Conner_S1 = Instance.new("UICorner")

            Conner_S1.CornerRadius = UDim.new(0, 8)
            Conner_S1.Name = ""
            Conner_S1.Parent = MainValue

            local Conner_S2 = Instance.new("UICorner")

            Conner_S2.CornerRadius = UDim.new(0, 8)
            Conner_S2.Name = ""
            Conner_S2.Parent = ValueFrame

            local ConneValue = Instance.new("Frame")

            ConneValue.Name = "ConneValue"
            ConneValue.Parent = PartValue
            ConneValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ConneValue.Size = UDim2.new(0, 13, 0,13)
            ConneValue.BackgroundTransparency = 0
            ConneValue.BorderSizePixel = 0
            ConneValue.AnchorPoint = Vector2.new(0.5, 0.5)
            ConneValue.Position = UDim2.new((de or 0)/max, 0.5, 0.3,0.5, 0)
            ConneValue.ClipsDescendants = false


            local Conner_Conne = Instance.new("UICorner")

            Conner_Conne.CornerRadius = UDim.new(0, 300)
            Conner_Conne.Name = ""
            Conner_Conne.Parent = ConneValue

            local Addvalue = Instance.new("ImageButton")

            Addvalue.Name = "Imatog"
            Addvalue.Parent = SliderFrame
            Addvalue.BackgroundTransparency = 1
            Addvalue.BorderSizePixel = 0
            Addvalue.Position = UDim2.new(0.85, 0, 0.35, 0)
            Addvalue.Size = UDim2.new(0, 15, 0, 15)
            Addvalue.Image = "http://www.roblox.com/asset/?id=8188583292"
            Addvalue.ImageColor3 =  _G.Color

            local Deletevalue = Instance.new("ImageButton")

            Deletevalue.Name = "Imatog"
            Deletevalue.Parent = SliderFrame
            Deletevalue.BackgroundTransparency = 1
            Deletevalue.BorderSizePixel = 0
            Deletevalue.Position = UDim2.new(0.7, 0, 0.35, 0)
            Deletevalue.Size = UDim2.new(0, 15, 0, 15)
            Deletevalue.Image = "http://www.roblox.com/asset/?id=6035047377"
            Deletevalue.ImageColor3 =  _G.Color


            local TextButton_2_Toggle = Instance.new("TextButton")

            TextButton_2_Toggle.Parent = ValueFrame
            TextButton_2_Toggle.BackgroundColor3 = Color3.fromRGB(155, 155, 155)
    --        TextButton_2_Toggle.BorderColor3 = _G.Color
            TextButton_2_Toggle.BorderSizePixel = 0
            TextButton_2_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
            TextButton_2_Toggle.Position = UDim2.new(1.25, 0, 0.4, 0)
            TextButton_2_Toggle.Size = UDim2.new(0, 30, 0, 13)
            TextButton_2_Toggle.Font = Enum.Font.SourceSans
            TextButton_2_Toggle.Text = " "
            TextButton_2_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
            TextButton_2_Toggle.TextSize = 12
            TextButton_2_Toggle.AutoButtonColor = false

            local TextButton_Pageframe_Uiconner = Instance.new("UICorner")

            TextButton_Pageframe_Uiconner.CornerRadius = UDim.new(0, 30)
            TextButton_Pageframe_Uiconner.Name = ""
            TextButton_Pageframe_Uiconner.Parent = TextButton_2_Toggle

            local TextButton_3_Toggle = Instance.new("TextButton")

            TextButton_3_Toggle.Parent = TextButton_2_Toggle
            TextButton_3_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255,255)
    --        TextButton_3_Toggle.BorderColor3 = _G.Color
            TextButton_3_Toggle.BorderSizePixel = 0
            TextButton_3_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
            TextButton_3_Toggle.Position = UDim2.new(0.1, 0, 0.5, 0)
            TextButton_3_Toggle.Size = UDim2.new(0, 19, 0, 19)
            TextButton_3_Toggle.Font = Enum.Font.SourceSans
            TextButton_3_Toggle.Text = " "
            TextButton_3_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
            TextButton_3_Toggle.TextSize = 12
            TextButton_3_Toggle.AutoButtonColor = false

            local TextButton_Pageframe_Uiconner2 = Instance.new("UICorner")

            TextButton_Pageframe_Uiconner2.CornerRadius = UDim.new(0, 30)
            TextButton_Pageframe_Uiconner2.Name = ""
            TextButton_Pageframe_Uiconner2.Parent = TextButton_3_Toggle

            local TextButton_4_Toggle = Instance.new("TextButton")

            TextButton_4_Toggle.Parent = TextButton_3_Toggle
            TextButton_4_Toggle.BackgroundColor3 = Color3.fromRGB(155, 155,155)
    --        TextButton_3_Toggle.BorderColor3 = _G.Color
            TextButton_4_Toggle.BorderSizePixel = 0
            TextButton_4_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
            TextButton_4_Toggle.Position = UDim2.new(0.5, 0, 0.5, 0)
            TextButton_4_Toggle.Size = UDim2.new(0, 27, 0, 27-2)
            TextButton_4_Toggle.Font = Enum.Font.SourceSans
            TextButton_4_Toggle.Text = " "
            TextButton_4_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
            TextButton_4_Toggle.TextSize = 12
            TextButton_4_Toggle.AutoButtonColor = false
            TextButton_4_Toggle.BackgroundTransparency = 1
            TextButton_4_Toggle.Visible = true

            local TextButton_Pageframe_Uiconner4 = Instance.new("UICorner")

            TextButton_Pageframe_Uiconner4.CornerRadius = UDim.new(0, 30)
            TextButton_Pageframe_Uiconner4.Name = ""
            TextButton_Pageframe_Uiconner4.Parent = TextButton_4_Toggle


            local TextButton_Toggle = Instance.new("TextButton")

            TextButton_Toggle.Parent = ValueFrame
            TextButton_Toggle.BackgroundTransparency =1
            TextButton_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextButton_Toggle.BorderSizePixel = 0
            TextButton_Toggle.Size = UDim2.new(0, 50, 0, 20)
            TextButton_Toggle.AutoButtonColor = false
            TextButton_Toggle.Font = Enum.Font.SourceSans
            TextButton_Toggle.Text = " "
            TextButton_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
            TextButton_Toggle.TextSize = 12
            TextButton_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
            TextButton_Toggle.Position = UDim2.new(1.25, 0, 0.4, 0)



        -- local value = de
        local check2 = {toogle2 = false;}
            local function move(input)
                local pos =
                    UDim2.new(
                        math.clamp((input.Position.X - ValueFrame.AbsolutePosition.X) / ValueFrame.AbsoluteSize.X, 0, 1),
                        0,
                        0.3,
                        0
                    )
                local pos1 =
                    UDim2.new(
                        math.clamp((input.Position.X - ValueFrame.AbsolutePosition.X) / ValueFrame.AbsoluteSize.X, 0, 1),
                        0,
                        0,
                        5
                    )

                    MainValue:TweenSize(pos1, "Out", "Sine", 0.2, true)

                    ConneValue:TweenPosition(pos, "Out", "Sine", 0.2, true)
                    if floor == true then
                        local value = string.format("%.1f",((pos.X.Scale * max) / max) * (max - min) + min)
                        CustomValue.Text = tostring(value)
                    --   callback[2] = value
                    callback({
                        ["s"] = value;
                        ["t"] = check2.toogle2
                    })
                    --callback({value,check2.toogle2})
                        --callback(value)
                    else
                        local value = math.floor(((pos.X.Scale * max) / max) * (max - min) + min)
                        CustomValue.Text = tostring(value)
                        callback({
                            ["s"] = value;
                            ["t"] = check2.toogle2
                        })
                --       callback({value,check2.toogle2})

                    end



                end

                local dragging = false
                ConneValue.InputBegan:Connect(
                    function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            dragging = true

                        end
                    end
                )
                ConneValue.InputEnded:Connect(
                    function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            dragging = false

                        end
                    end
                )
                SliderFrame.InputBegan:Connect(
                    function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            dragging = true

                        end
                    end
                )
                SliderFrame.InputEnded:Connect(
                    function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            dragging = false

                        end
                    end
                )


                ValueFrame.InputBegan:Connect(
                    function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            dragging = true

                        end
                    end
                )
                ValueFrame.InputEnded:Connect(
                    function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            dragging = false

                        end
                    end
                )

                game:GetService("UserInputService").InputChanged:Connect(
                    function(input)
                        if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                            move(input)
                        end
                    end
                    )

                    CustomValue.FocusLost:Connect(function()
                        if CustomValue.Text == "" then
                            CustomValue.Text  = de
                        end
                        if  tonumber(CustomValue.Text) > max then
                            CustomValue.Text  = max
                        end
                        if  tonumber(CustomValue.Text) <= min then
                            CustomValue.Text  = min
                        end
                        MainValue:TweenSize(UDim2.new((CustomValue.Text or 0) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
                        ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0, 0) , "Out", "Sine", 0.2, true)
                        if floor == true then
                            CustomValue.Text = tostring(CustomValue.Text and string.format("%.1f",(CustomValue.Text / max) * (max - min) + min) )
                        else
                            CustomValue.Text = tostring(CustomValue.Text and math.floor( (CustomValue.Text / max) * (max - min) + min) )
                        end
                        callback({
                            ["s"] =  CustomValue.Text;
                            ["t"] = check2.toogle2;
                        })
                --       callback({ tonumber(CustomValue.Text),check2.toogle2})
                --  pcall(callback, CustomValue.Text)
                    end)


                    Addvalue.MouseButton1Click:Connect(function ()
                        if CustomValue.Text == "" then
                            CustomValue.Text  = de
                        end
                        pcall(function()
                            CustomValue.Text  = CustomValue.Text  - tonumber(lol)
                        end)
                        if  tonumber(CustomValue.Text) > max then
                            CustomValue.Text  = max
                        end
                        if  tonumber(CustomValue.Text) < min then
                            CustomValue.Text  = min
                        end
                        MainValue:TweenSize(UDim2.new((CustomValue.Text  or 0  ) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
                        ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0.5, 0) , "Out", "Sine", 0.2, true)
                        if floor == true then
                            CustomValue.Text = tostring(CustomValue.Text and string.format("%.1f",(CustomValue.Text / max) * (max - min) + min) )
                        else
                            CustomValue.Text = tostring(CustomValue.Text and math.floor( (CustomValue.Text / max) * (max - min) + min) )
                        end
                        callback({
                            ["s"] =  CustomValue.Text;
                            ["t"] = check2.toogle2
                        })
                    --   callback({ tonumber(CustomValue.Text),check2.toogle2})
                    --  pcall(callback, CustomValue.Text)
                    end)

                    Deletevalue.MouseButton1Click:Connect(function ()
                        if CustomValue.Text == "" then
                            CustomValue.Text  = de
                        end
                        pcall(function()
                            CustomValue.Text  = CustomValue.Text  + tonumber(lol)
                        end)
                        if  tonumber(CustomValue.Text) > max then
                            CustomValue.Text  = max
                        end
                        if  tonumber(CustomValue.Text) < min then
                            CustomValue.Text  = min
                        end
                        MainValue:TweenSize(UDim2.new((CustomValue.Text  or 0  ) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
                        ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0.5, 0) , "Out", "Sine", 0.2, true)
                        if floor == true then
                            CustomValue.Text = tostring(CustomValue.Text and string.format("%.1f",(CustomValue.Text / max) * (max - min) + min) )
                        else
                            CustomValue.Text = tostring(CustomValue.Text and math.floor( (CustomValue.Text / max) * (max - min) + min) )
                        end
                        callback({
                            ["s"] =  CustomValue.Text;
                            ["t"] = check2.toogle2;
                        })
            --callback({ tonumber(CustomValue.Text),check2.toogle2})
                    --  pcall(callback, CustomValue.Text)
                    end)




            ---
                    TextButton_Toggle.MouseEnter:Connect(function()
                        TweenService:Create(
                            TextButton_4_Toggle,
                            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {BackgroundTransparency = 0.6} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                    end
                )

                TextButton_Toggle.MouseLeave:Connect(function()
                        TweenService:Create(
                            TextButton_4_Toggle,
                            TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                            {BackgroundTransparency = 1} -- UDim2.new(0, 128, 0, 25)
                        ):Play()
                    end
                )



            TextButton_Toggle.MouseButton1Click:Connect(function()
                if check2.toogle2 == false   then
                    TweenService:Create(
                        TextButton_4_Toggle,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {BackgroundColor3 =  _G.Color} -- UDim2.new(0, 128, 0, 25)
                    ):Play()
                    TweenService:Create(
                        TextButton_3_Toggle,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {BackgroundColor3 =  _G.Color} -- UDim2.new(0, 128, 0, 25)
                    ):Play()
                    TweenService:Create(
                        TextButton_2_Toggle,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {BackgroundColor3 =  _G.Color} -- UDim2.new(0, 128, 0, 25)
                    ):Play()
                    TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(1, 0, 0.5, 0), "Out", "Quad", 0.3, true)
                else
                    TweenService:Create(
                        TextButton_4_Toggle,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {BackgroundColor3 =  Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                    ):Play()
                    TweenService:Create(
                        TextButton_3_Toggle,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                    ):Play()
                    TweenService:Create(
                        TextButton_2_Toggle,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {BackgroundColor3 =  Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                    ):Play()
                    TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(0.1, 0, 0.5, 0), "Out", "Quad", 0.3, true)
                end
                    check2.toogle2 = not check2.toogle2
                    callback({
                        ["t"] = check2.toogle2;

                    })
                --   callback({value,check2.toogle2})
                    --callback(check2.toogle2)
            end
        )

            if tog == true then
                TweenService:Create(
                    TextButton_4_Toggle,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 =  _G.Color} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    TextButton_3_Toggle,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 =  _G.Color} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    TextButton_2_Toggle,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 =  _G.Color} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(1, 0, 0.5, 0), "Out", "Quad", 0.3, true)
                check2.toogle2 = true
                callback({
                    ["t"] = check2.toogle2;
                })
        --        callback({value,check2.toogle2})
            --  callback(check2.toogle2)
            end


        else
            tog = nil
            local SliderFrame = Instance.new("Frame")

            SliderFrame.Name = "SliderFrame"
            SliderFrame.Parent = ScrollingFrame_Pageframe
            SliderFrame.BackgroundColor3 =  Color3.fromRGB(28, 28, 28)-- _G.Color
            SliderFrame.BorderSizePixel = 0
            SliderFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
            SliderFrame.AnchorPoint = Vector2.new(0.5, 0.5)
            SliderFrame.Size = UDim2.new(0, 213, 0, 75) -- UDim2.new(0, 213, 0, 35)
            SliderFrame.BackgroundTransparency  = 0
            SliderFrame.ClipsDescendants = true

            local SliderFrameStroke = Instance.new("UIStroke")

            SliderFrameStroke.Thickness = 1
            SliderFrameStroke.Name = ""
            SliderFrameStroke.Parent = SliderFrame
            SliderFrameStroke.LineJoinMode = Enum.LineJoinMode.Round
            SliderFrameStroke.Color = _G.Color
            SliderFrameStroke.Transparency = 0.7

            SliderFrame.MouseEnter:Connect(function()
                TweenService:Create(
                    SliderFrameStroke,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Transparency = 0} -- UDim2.new(0, 128, 0, 25)
                ):Play()
            end
        )

            SliderFrame.MouseLeave:Connect(function()
                TweenService:Create(
                    SliderFrameStroke,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Transparency = 0.7} -- UDim2.new(0, 128, 0, 25)
                ):Play()
            end
        )

            local LabelNameSliderxd = Instance.new("TextLabel")

            LabelNameSliderxd.Parent = SliderFrame
            LabelNameSliderxd.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            LabelNameSliderxd.BackgroundTransparency = 1
            LabelNameSliderxd.BorderSizePixel = 0
            LabelNameSliderxd.Position = UDim2.new(0.35, 0, 0.2, 0)
            LabelNameSliderxd.AnchorPoint = Vector2.new(0.5, 0.5)
            LabelNameSliderxd.Size = UDim2.new(0, 120, 0, 20)
            LabelNameSliderxd.Font = Enum.Font.GothamBold
            LabelNameSliderxd.Text = tostring(text)
            LabelNameSliderxd.TextColor3 = Color3.fromRGB(255, 255, 255)
            LabelNameSliderxd.TextSize = 11
            LabelNameSliderxd.TextXAlignment = Enum.TextXAlignment.Left


            local ShowValueFarm = Instance.new("Frame")

            ShowValueFarm.Name = "ShowValueFarm"
            ShowValueFarm.Parent = SliderFrame
            ShowValueFarm.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
            ShowValueFarm.Position = UDim2.new(0.0833333358, 0, 0.235135213, 0)
            ShowValueFarm.Size = UDim2.new(0, 75, 0, 15)
            ShowValueFarm.BackgroundTransparency = 0
            ShowValueFarm.BorderSizePixel = 0
            ShowValueFarm.AnchorPoint = Vector2.new(0.5, 0.5)
            ShowValueFarm.Position = UDim2.new(0.8, 0, 0.2, 0)
            ShowValueFarm.ClipsDescendants = false

            local CustomValue = Instance.new("TextBox")

            CustomValue.Parent = ShowValueFarm
            CustomValue.BackgroundColor3 = Color3.fromRGB(45,45, 45)
            CustomValue.BorderSizePixel = 0
            CustomValue.ClipsDescendants = true
            CustomValue.AnchorPoint = Vector2.new(0.5, 0.5)
            CustomValue.Position = UDim2.new(0.5, 0, 0.5, 0)
            CustomValue.Size = UDim2.new(0, 158, 0, 26)
            CustomValue.Font = Enum.Font.GothamBold
            CustomValue.PlaceholderColor3 = Color3.fromRGB(222, 222, 222)
            CustomValue.PlaceholderText =  ""
            if floor == true then
                CustomValue.Text =  tostring(de and string.format("%.1f",(de / max) * (max - min) + min) or 0)
            else
                CustomValue.Text =  tostring(de and math.floor( (de / max) * (max - min) + min) or 0)
            end
            CustomValue.TextColor3 = Color3.fromRGB(255, 255, 255)
            CustomValue.TextSize = 8
            CustomValue.BackgroundTransparency = 1

            local ValueFrame = Instance.new("Frame")

            ValueFrame.Name = "ValueFrame"
            ValueFrame.Parent = SliderFrame
            ValueFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
            ValueFrame.Position = UDim2.new(0.0833333358, 0, 0.235135213, 0)
            ValueFrame.Size = UDim2.new(0, 190, 0, 5)
            ValueFrame.BackgroundTransparency = 0
            ValueFrame.BorderSizePixel = 0
            ValueFrame.AnchorPoint = Vector2.new(0.5, 0.5)
            ValueFrame.Position = UDim2.new(0.5, 0, 0.8, 0)
            ValueFrame.ClipsDescendants = false


            local PartValue = Instance.new("Frame")

            PartValue.Name = "PartValue"
            PartValue.Parent = ValueFrame
            PartValue.BackgroundColor3 = Color3.fromRGB(222, 222, 222)
            PartValue.Position = UDim2.new(0.0833333358, 0, 0.235135213, 0)
            PartValue.Size = UDim2.new(0, 190, 0, 5)
            PartValue.BackgroundTransparency = 1
            PartValue.BorderSizePixel = 0
            PartValue.AnchorPoint = Vector2.new(0.5, 0.5)
            PartValue.Position = UDim2.new(0.5, 0, 0.5, 0)
            PartValue.ClipsDescendants = false

            local MainValue = Instance.new("Frame")

            MainValue.Name = "MainValue"
            MainValue.Parent = PartValue
            MainValue.BackgroundColor3 = _G.Color
            MainValue.Size = UDim2.new((de or 0) / max, 0, 0, 5)
            MainValue.BackgroundTransparency = 0
            MainValue.BorderSizePixel = 0
            -- MainValue.AnchorPoint = Vector2.new(0.5, 0.5)
            MainValue.Position = UDim2.new(0, 0, 0, 0)
            MainValue.ClipsDescendants = false

            local Conner_S1 = Instance.new("UICorner")

            Conner_S1.CornerRadius = UDim.new(0, 8)
            Conner_S1.Name = ""
            Conner_S1.Parent = MainValue

            local Conner_S2 = Instance.new("UICorner")

            Conner_S2.CornerRadius = UDim.new(0, 8)
            Conner_S2.Name = ""
            Conner_S2.Parent = ValueFrame
            local ConneValue = Instance.new("ImageLabel")
    
            ConneValue.Name = "ConneValue"
            ConneValue.Parent = PartValue
            ConneValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ConneValue.Size = UDim2.new(0, 20, 0,20)
            ConneValue.BackgroundTransparency = 1
            ConneValue.BorderSizePixel = 0
            ConneValue.AnchorPoint = Vector2.new(0.5, 0.5)
            ConneValue.Position = UDim2.new((de or 0)/max, 0.5, 0.3,0.5, 0)
            ConneValue.ClipsDescendants = false
            ConneValue.Image = "https://www.roblox.com/asset-thumbnail/image?assetId="..logoslide.."&width=0&height=0&format=png"

            local Addvalue = Instance.new("ImageButton")

            Addvalue.Name = "Imatog"
            Addvalue.Parent = SliderFrame
            Addvalue.BackgroundTransparency = 1
            Addvalue.BorderSizePixel = 0
            Addvalue.Position = UDim2.new(0.85, 0, 0.35, 0)
            Addvalue.Size = UDim2.new(0, 15, 0, 15)
            Addvalue.Image = "http://www.roblox.com/asset/?id=6035067836"
            Addvalue.ImageColor3 =  _G.Color

            local Deletevalue = Instance.new("ImageButton")

            Deletevalue.Name = "Imatog"
            Deletevalue.Parent = SliderFrame
            Deletevalue.BackgroundTransparency = 1
            Deletevalue.BorderSizePixel = 0
            Deletevalue.Position = UDim2.new(0.7, 0, 0.35, 0)
            Deletevalue.Size = UDim2.new(0, 15, 0, 15)
            Deletevalue.Image = "http://www.roblox.com/asset/?id=6035047377"
            Deletevalue.ImageColor3 =  _G.Color

            local function move(input)
                local pos =
                    UDim2.new(
                        math.clamp((input.Position.X - ValueFrame.AbsolutePosition.X) / ValueFrame.AbsoluteSize.X, 0, 1),
                        0,
                        0.3,
                        0
                    )
                local pos1 =
                    UDim2.new(
                        math.clamp((input.Position.X - ValueFrame.AbsolutePosition.X) / ValueFrame.AbsoluteSize.X, 0, 1),
                        0,
                        0,
                        5
                    )

                    MainValue:TweenSize(pos1, "Out", "Sine", 0.2, true)

                    ConneValue:TweenPosition(pos, "Out", "Sine", 0.2, true)
                    if floor == true then
                        local value = string.format("%.1f",((pos.X.Scale * max) / max) * (max - min) + min)
                        CustomValue.Text = tostring(value)
                        callback(value)
                    else
                        local value = math.floor(((pos.X.Scale * max) / max) * (max - min) + min)
                        CustomValue.Text = tostring(value)
                        callback(value)
                    end



                end

                local dragging = false
                ConneValue.InputBegan:Connect(
                    function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            dragging = true

                        end
                    end
                )
                ConneValue.InputEnded:Connect(
                    function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            dragging = false

                        end
                    end
                )
                SliderFrame.InputBegan:Connect(
                    function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            dragging = true

                        end
                    end
                )
                SliderFrame.InputEnded:Connect(
                    function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            dragging = false

                        end
                    end
                )


                ValueFrame.InputBegan:Connect(
                    function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            dragging = true

                        end
                    end
                )
                ValueFrame.InputEnded:Connect(
                    function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            dragging = false

                        end
                    end
                )

                game:GetService("UserInputService").InputChanged:Connect(
                    function(input)
                        if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
                            move(input)
                        end
                    end
                    )

                    CustomValue.FocusLost:Connect(function()
                        if CustomValue.Text == "" then
                            CustomValue.Text  = de
                        end
                        if  tonumber(CustomValue.Text) > max then
                            CustomValue.Text  = max
                        end
                        MainValue:TweenSize(UDim2.new((CustomValue.Text or 0) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
                        ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0, 0) , "Out", "Sine", 0.2, true)
                        if floor == true then
                            CustomValue.Text = tostring(CustomValue.Text and string.format("%.1f",(CustomValue.Text / max) * (max - min) + min) )
                        else
                            CustomValue.Text = tostring(CustomValue.Text and math.floor( (CustomValue.Text / max) * (max - min) + min) )
                        end
                        pcall(callback, CustomValue.Text)
                    end)


            Addvalue.MouseButton1Click:Connect(function ()
                if CustomValue.Text == "" then
                    CustomValue.Text  = de
                end
                CustomValue.Text  = CustomValue.Text  - tonumber(lol)
                if  tonumber(CustomValue.Text) > max then
                    CustomValue.Text  = max
                end
                if  tonumber(CustomValue.Text) < min then
                    CustomValue.Text  = min
                end
                MainValue:TweenSize(UDim2.new((CustomValue.Text  or 0  ) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
                ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0.5, 0) , "Out", "Sine", 0.2, true)
                if floor == true then
                    CustomValue.Text = tostring(CustomValue.Text and string.format("%.1f",(CustomValue.Text / max) * (max - min) + min) )
                else
                    CustomValue.Text = tostring(CustomValue.Text and math.floor( (CustomValue.Text / max) * (max - min) + min) )
                end
                pcall(callback, CustomValue.Text)
            end)

            Deletevalue.MouseButton1Click:Connect(function ()
                if CustomValue.Text == "" then
                    CustomValue.Text  = de
                end
                CustomValue.Text  = CustomValue.Text  + tonumber(lol)
                if  tonumber(CustomValue.Text) > max then
                    CustomValue.Text  = max
                end
                if  tonumber(CustomValue.Text) < min then
                    CustomValue.Text  = min
                end
                MainValue:TweenSize(UDim2.new((CustomValue.Text  or 0  ) / max, 0, 0, 5), "Out", "Sine", 0.2, true)
                ConneValue:TweenPosition(UDim2.new((CustomValue.Text or 0)/max, 0,0.5, 0) , "Out", "Sine", 0.2, true)
                if floor == true then
                    CustomValue.Text = tostring(CustomValue.Text and string.format("%.1f",(CustomValue.Text / max) * (max - min) + min) )
                else
                    CustomValue.Text = tostring(CustomValue.Text and math.floor( (CustomValue.Text / max) * (max - min) + min) )
                end
                pcall(callback, CustomValue.Text)
            end)

        end

        end

        function items:Drop(text,text2,use,option,callback)

        if use == false then
            local DropFrame = Instance.new("Frame")

            DropFrame.Name = "DropFrame"
            DropFrame.Parent = ScrollingFrame_Pageframe
            DropFrame.BackgroundColor3 =  Color3.fromRGB(23, 23, 23)-- _G.Color
            DropFrame.BorderSizePixel = 0
            DropFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
            DropFrame.AnchorPoint = Vector2.new(0.5, 0.5)
            DropFrame.Size = UDim2.new(0, 213, 0, 30) -- UDim2.new(0, 213, 0, 35)
            DropFrame.BackgroundTransparency  = 0
            DropFrame.ClipsDescendants = true

            local ConnerDropFrame = Instance.new("UICorner")

            ConnerDropFrame.CornerRadius = UDim.new(0, 4)
            ConnerDropFrame.Name = ""
            ConnerDropFrame.Parent = DropFrame

            local DropFrameStroke = Instance.new("UIStroke")

            DropFrameStroke.Thickness = 1
            DropFrameStroke.Name = ""
            DropFrameStroke.Parent = DropFrame
            DropFrameStroke.LineJoinMode = Enum.LineJoinMode.Round
            DropFrameStroke.Color = _G.Color
            DropFrameStroke.Transparency = 0.7





            local LabelFrameDrop = Instance.new("TextLabel")

            LabelFrameDrop.Parent = DropFrame
            LabelFrameDrop.Name = "LabelFrameDrop"
            LabelFrameDrop.BackgroundColor3 = _G.Color
            LabelFrameDrop.Position = UDim2.new(0, 0, 0, 0)
            LabelFrameDrop.Size =    UDim2.new(0, 213, 0, 30)
            LabelFrameDrop.Font = Enum.Font.GothamBold
            LabelFrameDrop.Text = ""
            LabelFrameDrop.TextColor3 = Color3.fromRGB(155, 155, 155)
            LabelFrameDrop.TextSize = 14
        --   LabelFrameDrop.AnchorPoint = Vector2.new(0.5, 0.5)
            LabelFrameDrop.BackgroundTransparency = 1
            LabelFrameDrop.TextXAlignment = Enum.TextXAlignment.Left


            local TextLabel_TapDrop = Instance.new("TextLabel")

            TextLabel_TapDrop.Parent = LabelFrameDrop
            TextLabel_TapDrop.Name = "TextLabel_TapDrop"
            TextLabel_TapDrop.BackgroundColor3 = _G.Color
            TextLabel_TapDrop.Position = UDim2.new(0.04, 0, 0.14, 0)
            TextLabel_TapDrop.Size =    UDim2.new(0, 140, 0, 20)
            TextLabel_TapDrop.Font = Enum.Font.GothamBold
            TextLabel_TapDrop.Text = tostring(text).." : "..tostring(text2)
            TextLabel_TapDrop.TextColor3 = Color3.fromRGB(155, 155, 155)
            TextLabel_TapDrop.TextSize = 11
    --     TextLabel_TapDrop.AnchorPoint = Vector2.new(0.5, 0.5)
            TextLabel_TapDrop.BackgroundTransparency = 1
            TextLabel_TapDrop.TextXAlignment = Enum.TextXAlignment.Left


            local DropArbt_listimage = Instance.new("ImageButton")

            DropArbt_listimage.Parent = LabelFrameDrop
            DropArbt_listimage.BackgroundTransparency = 1
            DropArbt_listimage.AnchorPoint = Vector2.new(0.5, 0.5)
            DropArbt_listimage.Position = UDim2.new(0.9, 0, 0.5, 0)
            DropArbt_listimage.BorderSizePixel = 0
            DropArbt_listimage.Size = UDim2.new(0, 25, 0, 25)
            DropArbt_listimage.Image = "http://www.roblox.com/asset/?id="..logo
            DropArbt_listimage.ImageColor3 = Color3.fromRGB(155, 155, 155)

            local ScolDown = Instance.new("ScrollingFrame")

            ScolDown.Name = "ScolDown"
            ScolDown.Position = UDim2.new(0.02, 0, 1, 0)
            ScolDown.Parent = LabelFrameDrop
            ScolDown.Active = true
            ScolDown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ScolDown.BorderSizePixel = 0
            ScolDown.Size = UDim2.new(0, 205, 0, 115)
            ScolDown.ScrollBarThickness = 3
            ScolDown.ClipsDescendants = true
            ScolDown.BackgroundTransparency = 1
            ScolDown.CanvasSize = UDim2.new(0, 0, 0, 2)

            local UIListLayoutlist = Instance.new("UIListLayout")
            local UIPaddinglist = Instance.new("UIPadding")

            UIListLayoutlist.Name = "UIListLayoutlist"
            UIListLayoutlist.Parent = ScolDown
            UIListLayoutlist.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayoutlist.Padding = UDim.new(0, 5)

            UIPaddinglist.Name = "UIPaddinglist"
            UIPaddinglist.Parent = ScolDown
            UIPaddinglist.PaddingTop = UDim.new(0, 5)
            UIPaddinglist.PaddingLeft = UDim.new(0, 12)

            local ButtonDrop = Instance.new("TextButton")

            ButtonDrop.Parent = DropFrame
            ButtonDrop.Name = "ButtonDrop"
            ButtonDrop.BackgroundColor3 = _G.Color
            ButtonDrop.Size = UDim2.new(0, 213, 0, 30)
            ButtonDrop.Font = Enum.Font.GothamBold
            ButtonDrop.Text = ""
            ButtonDrop.TextColor3 = Color3.fromRGB(155, 155, 155)
            ButtonDrop.TextSize = 13
        --   ButtonDrop.AnchorPoint = Vector2.new(0.5, 0.5)
            ButtonDrop.Position = UDim2.new(0, 0, 0, 0)
            ButtonDrop.TextXAlignment = Enum.TextXAlignment.Center
            ButtonDrop.BackgroundTransparency = 1
            ButtonDrop.TextWrapped = true
            ButtonDrop.AutoButtonColor = false
            ButtonDrop.ClipsDescendants = true

            local dog = false

            local FrameSize = 75
            local cout = 0
            for i , v in pairs(option) do
                cout =cout + 1
                if cout == 1 then
                    FrameSize = 75
                elseif cout == 2 then
                    FrameSize = 110
                elseif cout >= 3 then
                    FrameSize = 150
                end

                local ListFrame = Instance.new("Frame")

                ListFrame.Name = "ListFrame"
                ListFrame.Parent = ScolDown
                ListFrame.BackgroundColor3 =  Color3.fromRGB(22553, 23, 23)-- _G.Color
                ListFrame.BorderSizePixel = 0
                ListFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
                ListFrame.AnchorPoint = Vector2.new(0.5, 0.5)
                ListFrame.Size = UDim2.new(0, 180, 0, 30) -- UDim2.new(0, 213, 0, 35)
                ListFrame.BackgroundTransparency  = 1
                ListFrame.ClipsDescendants = true

                local TextLabel_TapDro2p = Instance.new("TextLabel")

                TextLabel_TapDro2p.Parent = ListFrame
                TextLabel_TapDro2p.Name =  tostring(v).."Dropdown"
                TextLabel_TapDro2p.BackgroundColor3 = _G.Color
                TextLabel_TapDro2p.Position = UDim2.new(0.5, 0, 0.5, 0)
                TextLabel_TapDro2p.Size =  UDim2.new(0, 180, 0, 30)
                TextLabel_TapDro2p.Font = Enum.Font.GothamBold
                TextLabel_TapDro2p.Text = tostring(v)
                TextLabel_TapDro2p.TextColor3 = Color3.fromRGB(155, 155, 155)
                TextLabel_TapDro2p.TextSize = 14
                TextLabel_TapDro2p.AnchorPoint = Vector2.new(0.5, 0.5)
                TextLabel_TapDro2p.BackgroundTransparency = 1
                TextLabel_TapDro2p.TextXAlignment = Enum.TextXAlignment.Center

                local ButtonDrop2 = Instance.new("TextButton")

                ButtonDrop2.Parent = ListFrame
                ButtonDrop2.Name = "ButtonDrop2"
                ButtonDrop2.BackgroundColor3 = _G.Color
                ButtonDrop2.Size = UDim2.new(0, 213, 0, 30)
                ButtonDrop2.Font = Enum.Font.GothamBold
                ButtonDrop2.Text = ""
                ButtonDrop2.TextColor3 = Color3.fromRGB(155, 155, 155)
                ButtonDrop2.TextSize = 13
            --   ButtonDrop2.AnchorPoint = Vector2.new(0.5, 0.5)
                ButtonDrop2.Position = UDim2.new(0, 0, 0, 0)
                ButtonDrop2.TextXAlignment = Enum.TextXAlignment.Center
                ButtonDrop2.BackgroundTransparency = 1
                ButtonDrop2.TextWrapped = true
                ButtonDrop2.AutoButtonColor = false
                ButtonDrop2.ClipsDescendants = true

                ButtonDrop2.MouseEnter:Connect(function ()
                    TweenService:Create(
                        TextLabel_TapDro2p,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                    ):Play()
                end)

                ButtonDrop2.MouseLeave:Connect(function ()
                    TweenService:Create(
                        TextLabel_TapDro2p,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                    ):Play()
                end)

                ButtonDrop2.MouseButton1Click:Connect(function()
                    TweenService:Create(
                        DropFrame,
                        TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {Size = UDim2.new(0, 213, 0, 30)} -- UDim2.new(0, 128, 0, 25)
                    ):Play()
                    TweenService:Create(
                        DropArbt_listimage,
                        TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                        {Rotation = 0}
                    ):Play()
                    TextLabel_TapDrop.Text =  text.." : "..tostring(v)
                    callback(v)
                    dog = not dog
                end
            )


                ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
            end


            DropFrame.MouseEnter:Connect(function()
                TweenService:Create(
                    DropFrameStroke,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Transparency = 0} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    TextLabel_TapDrop,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    DropArbt_listimage,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {ImageColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
            end
        )

        DropFrame.MouseLeave:Connect(function()
                TweenService:Create(
                    DropFrameStroke,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Transparency = 0.7} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    TextLabel_TapDrop,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    DropArbt_listimage,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {ImageColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
            end
        )


        ButtonDrop.MouseButton1Click:Connect(function()
            if dog == false then
                TweenService:Create(
                    DropFrame,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Size = UDim2.new(0, 213, 0, FrameSize)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    DropArbt_listimage,
                    TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                    {Rotation = -180}
                ):Play()
                ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
            else
                TweenService:Create(
                    DropFrame,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Size = UDim2.new(0, 213, 0, 30)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    DropArbt_listimage,
                    TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                    {Rotation = 0}
                ):Play()
                ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
            end
            dog = not dog
        end
    )
    ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )

        local dropfunc = {}

        function dropfunc:Clear()
            TextLabel_TapDrop.Text = tostring(text).." :"
            for i, v in next, ScolDown:GetChildren() do
                if v:IsA("Frame") then
                    v:Destroy()
                end
            end
            ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
        end

        function dropfunc:Add(t)
            local ListFrame = Instance.new("Frame")

            ListFrame.Name = "ListFrame"
            ListFrame.Parent = ScolDown
            ListFrame.BackgroundColor3 =  Color3.fromRGB(22553, 23, 23)-- _G.Color
            ListFrame.BorderSizePixel = 0
            ListFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
            ListFrame.AnchorPoint = Vector2.new(0.5, 0.5)
            ListFrame.Size = UDim2.new(0, 180, 0, 30) -- UDim2.new(0, 213, 0, 35)
            ListFrame.BackgroundTransparency  = 1
            ListFrame.ClipsDescendants = true

            local TextLabel_TapDro2p = Instance.new("TextLabel")

            TextLabel_TapDro2p.Parent = ListFrame
            TextLabel_TapDro2p.Name =  tostring(t).."Dropdown"
            TextLabel_TapDro2p.BackgroundColor3 = _G.Color
            TextLabel_TapDro2p.Position = UDim2.new(0.5, 0, 0.5, 0)
            TextLabel_TapDro2p.Size =  UDim2.new(0, 180, 0, 30)
            TextLabel_TapDro2p.Font = Enum.Font.GothamBold
            TextLabel_TapDro2p.Text = tostring(t)
            TextLabel_TapDro2p.TextColor3 = Color3.fromRGB(155, 155, 155)
            TextLabel_TapDro2p.TextSize = 14
            TextLabel_TapDro2p.AnchorPoint = Vector2.new(0.5, 0.5)
            TextLabel_TapDro2p.BackgroundTransparency = 1
            TextLabel_TapDro2p.TextXAlignment = Enum.TextXAlignment.Center

            local ButtonDrop2 = Instance.new("TextButton")

            ButtonDrop2.Parent = ListFrame
            ButtonDrop2.Name = "ButtonDrop2"
            ButtonDrop2.BackgroundColor3 = _G.Color
            ButtonDrop2.Size = UDim2.new(0, 213, 0, 30)
            ButtonDrop2.Font = Enum.Font.GothamBold
            ButtonDrop2.Text = ""
            ButtonDrop2.TextColor3 = Color3.fromRGB(155, 155, 155)
            ButtonDrop2.TextSize = 13
        --   ButtonDrop2.AnchorPoint = Vector2.new(0.5, 0.5)
            ButtonDrop2.Position = UDim2.new(0, 0, 0, 0)
            ButtonDrop2.TextXAlignment = Enum.TextXAlignment.Center
            ButtonDrop2.BackgroundTransparency = 1
            ButtonDrop2.TextWrapped = true
            ButtonDrop2.AutoButtonColor = false
            ButtonDrop2.ClipsDescendants = true

            ButtonDrop2.MouseEnter:Connect(function ()
                TweenService:Create(
                    TextLabel_TapDro2p,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
            end)

            ButtonDrop2.MouseLeave:Connect(function ()
                TweenService:Create(
                    TextLabel_TapDro2p,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
            end)

            ButtonDrop2.MouseButton1Click:Connect(function()
                TweenService:Create(
                    DropFrame,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Size = UDim2.new(0, 213, 0, 30)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    DropArbt_listimage,
                    TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                    {Rotation = 0}
                ):Play()
                TextLabel_TapDrop.Text =  text.." : "..tostring(t)
                callback(t)
                dog = not dog
            end
        )

            ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
        end
        return dropfunc

    else

        local location = option.location or self.flags
        local flag = not use and option.flag or ""
        local callback = callback or function() end
        local list = option.list or {}
        local default = list.default or list[1].Name

        if not use then
            location[flag] = default
        end


        local DropFrame = Instance.new("Frame")

        DropFrame.Name = "DropFrame"
        DropFrame.Parent = ScrollingFrame_Pageframe
        DropFrame.BackgroundColor3 =  Color3.fromRGB(23, 23, 23)-- _G.Color
        DropFrame.BorderSizePixel = 0
        DropFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
        DropFrame.AnchorPoint = Vector2.new(0.5, 0.5)
        DropFrame.Size = UDim2.new(0, 213, 0, 30) -- UDim2.new(0, 213, 0, 35)
        DropFrame.BackgroundTransparency  = 0
        DropFrame.ClipsDescendants = true

        local ConnerDropFrame = Instance.new("UICorner")

        ConnerDropFrame.CornerRadius = UDim.new(0, 4)
        ConnerDropFrame.Name = ""
        ConnerDropFrame.Parent = DropFrame

        local DropFrameStroke = Instance.new("UIStroke")

        DropFrameStroke.Thickness = 1
        DropFrameStroke.Name = ""
        DropFrameStroke.Parent = DropFrame
        DropFrameStroke.LineJoinMode = Enum.LineJoinMode.Round
        DropFrameStroke.Color = _G.Color
        DropFrameStroke.Transparency = 0.7





        local LabelFrameDrop = Instance.new("TextLabel")

        LabelFrameDrop.Parent = DropFrame
        LabelFrameDrop.Name = "LabelFrameDrop"
        LabelFrameDrop.BackgroundColor3 = _G.Color
        LabelFrameDrop.Position = UDim2.new(0, 0, 0, 0)
        LabelFrameDrop.Size =    UDim2.new(0, 213, 0, 30)
        LabelFrameDrop.Font = Enum.Font.GothamBold
        LabelFrameDrop.Text = ""
        LabelFrameDrop.TextColor3 = Color3.fromRGB(155, 155, 155)
        LabelFrameDrop.TextSize = 14
    --   LabelFrameDrop.AnchorPoint = Vector2.new(0.5, 0.5)
        LabelFrameDrop.BackgroundTransparency = 1
        LabelFrameDrop.TextXAlignment = Enum.TextXAlignment.Left


        local TextLabel_TapDrop = Instance.new("TextLabel")

        TextLabel_TapDrop.Parent = LabelFrameDrop
        TextLabel_TapDrop.Name = "TextLabel_TapDrop"
        TextLabel_TapDrop.BackgroundColor3 = _G.Color
        TextLabel_TapDrop.Position = UDim2.new(0.04, 0, 0.14, 0)
        TextLabel_TapDrop.Size =    UDim2.new(0, 140, 0, 20)
        TextLabel_TapDrop.Font = Enum.Font.GothamBold
        TextLabel_TapDrop.Text = tostring(text).." :"
        TextLabel_TapDrop.TextColor3 = Color3.fromRGB(155, 155, 155)
        TextLabel_TapDrop.TextSize = 14
--     TextLabel_TapDrop.AnchorPoint = Vector2.new(0.5, 0.5)
        TextLabel_TapDrop.BackgroundTransparency = 1
        TextLabel_TapDrop.TextXAlignment = Enum.TextXAlignment.Left


        local DropArbt_listimage = Instance.new("ImageButton")

        DropArbt_listimage.Parent = LabelFrameDrop
        DropArbt_listimage.BackgroundTransparency = 1
        DropArbt_listimage.AnchorPoint = Vector2.new(0.5, 0.5)
        DropArbt_listimage.Position = UDim2.new(0.9, 0, 0.5, 0)
        DropArbt_listimage.BorderSizePixel = 0
        DropArbt_listimage.Size = UDim2.new(0, 25, 0, 25)
        DropArbt_listimage.Image = "http://www.roblox.com/asset/?id=6031091004"
        DropArbt_listimage.ImageColor3 = Color3.fromRGB(155, 155, 155)

        local ScolDown = Instance.new("ScrollingFrame")

        ScolDown.Name = "ScolDown"
        ScolDown.Position = UDim2.new(0.02, 0, 1, 0)
        ScolDown.Parent = LabelFrameDrop
        ScolDown.Active = true
        ScolDown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ScolDown.BorderSizePixel = 0
        ScolDown.Size = UDim2.new(0, 205, 0, 115)
        ScolDown.ScrollBarThickness = 3
        ScolDown.ClipsDescendants = true
        ScolDown.BackgroundTransparency = 1
        ScolDown.CanvasSize = UDim2.new(0, 0, 0, 2)

        local UIListLayoutlist = Instance.new("UIListLayout")
        local UIPaddinglist = Instance.new("UIPadding")

        UIListLayoutlist.Name = "UIListLayoutlist"
        UIListLayoutlist.Parent = ScolDown
        UIListLayoutlist.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayoutlist.Padding = UDim.new(0, 5)

        UIPaddinglist.Name = "UIPaddinglist"
        UIPaddinglist.Parent = ScolDown
        UIPaddinglist.PaddingTop = UDim.new(0, 5)
        UIPaddinglist.PaddingLeft = UDim.new(0, 12)

        local ButtonDrop = Instance.new("TextButton")

        ButtonDrop.Parent = DropFrame
        ButtonDrop.Name = "ButtonDrop"
        ButtonDrop.BackgroundColor3 = _G.Color
        ButtonDrop.Size = UDim2.new(0, 213, 0, 30)
        ButtonDrop.Font = Enum.Font.GothamBold
        ButtonDrop.Text = ""
        ButtonDrop.TextColor3 = Color3.fromRGB(155, 155, 155)
        ButtonDrop.TextSize = 13
    --   ButtonDrop.AnchorPoint = Vector2.new(0.5, 0.5)
        ButtonDrop.Position = UDim2.new(0, 0, 0, 0)
        ButtonDrop.TextXAlignment = Enum.TextXAlignment.Center
        ButtonDrop.BackgroundTransparency = 1
        ButtonDrop.TextWrapped = true
        ButtonDrop.AutoButtonColor = false
        ButtonDrop.ClipsDescendants = true

        local dog = false

        local FrameSize = 75
        local cout = 0
        for i , v in pairs(list) do
            cout =cout + 1
            if cout == 1 then
                FrameSize = 75
            elseif cout == 2 then
                FrameSize = 110
            elseif cout >= 3 then
                FrameSize = 150
            end

            local listtog = Instance.new("Frame")

            listtog.Name = "listtog"
            listtog.Parent = ScolDown
            listtog.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
            listtog.BackgroundTransparency =1
            listtog.BorderSizePixel = 0
            listtog.ClipsDescendants = true
            listtog.AnchorPoint = Vector2.new(0.5, 0.5)
            listtog.Position = UDim2.new(0.5, 0, 0.5, 0)
            listtog.Size = UDim2.new(0, 210, 0, 33)


            local listtextbutton = Instance.new("TextButton")

            listtextbutton.Parent = listtog
            listtextbutton.BackgroundTransparency =1
            listtextbutton.BackgroundColor3 = Color3.fromRGB(60,60,60)
            listtextbutton.BorderSizePixel = 0
            listtextbutton.Size =  UDim2.new(0, 210, 0, 33)
            listtextbutton.AutoButtonColor = false
            listtextbutton.Font = Enum.Font.SourceSans
            listtextbutton.Text = " "
            listtextbutton.TextColor3 = Color3.fromRGB(0, 0, 0)
            listtextbutton.TextSize = 14

            local farmtoglist = Instance.new("TextButton")

            farmtoglist.Parent = listtextbutton
            farmtoglist.BackgroundColor3 = _G.Color
            farmtoglist.BorderColor3 = _G.Color
            farmtoglist.BorderSizePixel = 0
            farmtoglist.AnchorPoint = Vector2.new(0.5, 0.5)
            farmtoglist.Position = UDim2.new(0.1, 0, 0.5, 0)
            farmtoglist.Size = UDim2.new(0, 23, 0, 23)
            farmtoglist.Font = Enum.Font.SourceSans
            farmtoglist.Text = " "
            farmtoglist.TextColor3 = Color3.fromRGB(0, 0, 0)
            farmtoglist.TextSize = 14
            farmtoglist.AutoButtonColor = false


            local farmtoglist2 = Instance.new("TextButton")

            farmtoglist2.Parent = farmtoglist
            farmtoglist2.BackgroundColor3 = Color3.fromRGB(32, 32,32)
            farmtoglist2.BorderColor3 = _G.Color
            farmtoglist2.BorderSizePixel = 0
            farmtoglist2.AnchorPoint = Vector2.new(0.5, 0.5)
            farmtoglist2.Position = UDim2.new(0.5, 0, 0.5, 0)
            farmtoglist2.Size = UDim2.new(0, 21, 0, 21)
            farmtoglist2.Font = Enum.Font.SourceSans
            farmtoglist2.Text = " "
            farmtoglist2.TextColor3 = Color3.fromRGB(0, 0, 0)
            farmtoglist2.TextSize = 14
            farmtoglist2.AutoButtonColor = false


            local listimage = Instance.new("ImageButton")

            listimage.Parent = farmtoglist2
            listimage.BackgroundTransparency = 1
            listimage.AnchorPoint = Vector2.new(0.5, 0.5)
            listimage.Position = UDim2.new(0.5, 0, 0.5, 0)
            listimage.BorderSizePixel = 0
            listimage.Size = UDim2.new(0, 0, 0, 0)
            listimage.Image = "http://www.roblox.com/asset/?id=5880482965"


            local textlist = Instance.new("TextLabel")


            textlist.Parent = listtextbutton
            textlist.Name = "textlist"
            textlist.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            textlist.BackgroundTransparency = 1
            textlist.AnchorPoint = Vector2.new(0.5, 0.5)
            textlist.Position = UDim2.new(0.5, 0, 0.5, 0)
            textlist.BorderSizePixel = 0
            textlist.Size = UDim2.new(0, 91, 0, 25)
            textlist.Font = Enum.Font.GothamBold
            textlist.Text = tostring(v.Name)
            textlist.TextColor3 = Color3.fromRGB(255, 255, 255)
            textlist.TextSize = 13



            local TextButton_Pageframe_Uiconner2 = Instance.new("UICorner")

            TextButton_Pageframe_Uiconner2.CornerRadius = UDim.new(0, 5)
            TextButton_Pageframe_Uiconner2.Name = ""
            TextButton_Pageframe_Uiconner2.Parent = farmtoglist

            local TextButton_Pageframe_Uiconner22 = Instance.new("UICorner")

            TextButton_Pageframe_Uiconner22.CornerRadius = UDim.new(0, 5)
            TextButton_Pageframe_Uiconner22.Name = ""
            TextButton_Pageframe_Uiconner22.Parent = farmtoglist2



            listtextbutton.MouseButton1Click:Connect(function()
                if not  location[v.flag] then
                    listimage:TweenSizeAndPosition(UDim2.new(0, 30, 0, 30), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
                    wait(0.1)
                    listimage:TweenSizeAndPosition(UDim2.new(0, 23, 0, 23), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
                else
                    listimage:TweenSizeAndPosition(UDim2.new(0, 30, 0, 30), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
                    wait(0.1)
                    listimage:TweenSizeAndPosition(UDim2.new(0, 0, 0, 0), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
                end
                location[v.flag] = not location[v.flag]
                callback(location[v.flag])
            end
        )

        if  location[v.flag] then
            listimage:TweenSizeAndPosition(UDim2.new(0, 30, 0, 30), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)
            wait(0.1)
            listimage:TweenSizeAndPosition(UDim2.new(0, 23, 0, 23), UDim2.new(0.5, 0, 0.5, 0), "In", "Bounce", 0.1, true)

            callback(location[v.flag])
        end

            ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
        end


        DropFrame.MouseEnter:Connect(function()
            TweenService:Create(
                DropFrameStroke,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {Transparency = 0} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
                TextLabel_TapDrop,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
                DropArbt_listimage,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {ImageColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
        end
    )

    DropFrame.MouseLeave:Connect(function()
            TweenService:Create(
                DropFrameStroke,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {Transparency = 0.7} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
                TextLabel_TapDrop,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
                DropArbt_listimage,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {ImageColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
        end
    )


    ButtonDrop.MouseButton1Click:Connect(function()
        if dog == false then
            TweenService:Create(
                DropFrame,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {Size = UDim2.new(0, 213, 0, FrameSize)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
                DropArbt_listimage,
                TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                {Rotation = -180}
            ):Play()
            ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
        else
            TweenService:Create(
                DropFrame,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {Size = UDim2.new(0, 213, 0, 30)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
                DropArbt_listimage,
                TweenInfo.new(0.3, Enum.EasingStyle.Linear, Enum.EasingDirection.Out),
                {Rotation = 0}
            ):Play()
            ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )
        end
        dog = not dog
    end
)
ScolDown.CanvasSize = UDim2.new(0,0,0,UIListLayoutlist.AbsoluteContentSize.Y + 10  )



        end



        end

        function items:TextBox(text,text2,callback)
            local TextFrame = Instance.new("Frame")

            TextFrame.Name = "TextFrame"
            TextFrame.Parent = ScrollingFrame_Pageframe
            TextFrame.BackgroundColor3 =  Color3.fromRGB(23, 23, 23)
            TextFrame.BorderSizePixel = 0
            TextFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
            TextFrame.AnchorPoint = Vector2.new(0.5, 0.5)
            TextFrame.Size = UDim2.new(0, 213, 0, 70)
            TextFrame.BackgroundTransparency  = 1
            TextFrame.ClipsDescendants = true

            local LabelNameSliderxd = Instance.new("TextLabel")

            LabelNameSliderxd.Parent = TextFrame
            LabelNameSliderxd.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            LabelNameSliderxd.BackgroundTransparency = 1
            LabelNameSliderxd.BorderSizePixel = 0
            LabelNameSliderxd.Position = UDim2.new(0.5, 0, 0.2, 0)
            LabelNameSliderxd.AnchorPoint = Vector2.new(0.5, 0.5)
            LabelNameSliderxd.Size = UDim2.new(0, 160, 0, 20)
            LabelNameSliderxd.Font = Enum.Font.GothamBold
            LabelNameSliderxd.Text = tostring(text)
            LabelNameSliderxd.TextColor3 = Color3.fromRGB(155, 155, 155)
            LabelNameSliderxd.TextSize = 11
            LabelNameSliderxd.TextXAlignment = Enum.TextXAlignment.Center

            local ConerTextBox = Instance.new("UICorner")

            ConerTextBox.CornerRadius = UDim.new(0, 4)
            ConerTextBox.Name = ""
            ConerTextBox.Parent = TextFrame

            local FrameBox = Instance.new("Frame")

            FrameBox.Name = "TextFrame"
            FrameBox.Parent = TextFrame
            FrameBox.BackgroundColor3 =  Color3.fromRGB(23, 23, 23)
            FrameBox.BorderSizePixel = 0
            FrameBox.Position = UDim2.new(0.5, 0, 0.65, 0)
            FrameBox.AnchorPoint = Vector2.new(0.5, 0.5)
            FrameBox.Size = UDim2.new(0, 158, 0, 30)
            FrameBox.BackgroundTransparency  = 0.2
            FrameBox.ClipsDescendants = true
            FrameBox.AnchorPoint = Vector2.new(0.5, 0.5)

            local TextFrame2 = Instance.new("TextBox")

            TextFrame2.Parent = FrameBox
            TextFrame2.BackgroundColor3 = _G.Color
            TextFrame2.BorderSizePixel = 0
            TextFrame2.ClipsDescendants = true
            TextFrame2.Position = UDim2.new(0.5, 0, 0.5, 0)
            TextFrame2.AnchorPoint = Vector2.new(0.5, 0.5)
            TextFrame2.Size = UDim2.new(0, 158, 0, 35)
            TextFrame2.Font = Enum.Font.GothamBold
            TextFrame2.PlaceholderColor3 = Color3.fromRGB(155, 155, 155)
            TextFrame2.PlaceholderText = text2
            TextFrame2.Text = ""
            TextFrame2.TextColor3 = Color3.fromRGB(155, 155, 155)
            TextFrame2.TextSize = 12
            TextFrame2.BackgroundTransparency = 1

            local ConerTextBox2 = Instance.new("UICorner")

            ConerTextBox2.CornerRadius = UDim.new(0, 4)
            ConerTextBox2.Name = ""
            ConerTextBox2.Parent = FrameBox

            local TextBoxStroke = Instance.new("UIStroke")

            TextBoxStroke.Thickness = 1
            TextBoxStroke.Name = ""
            TextBoxStroke.Parent = FrameBox
            TextBoxStroke.LineJoinMode = Enum.LineJoinMode.Round
            TextBoxStroke.Color = _G.Color
            TextBoxStroke.Transparency = 0.7


            TextFrame.MouseEnter:Connect(function()
                TweenService:Create(
                    FrameBox,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Size = UDim2.new(0, 213, 0, 30)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    FrameBox,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 = _G.Color} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    TextFrame2,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {PlaceholderColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    TextFrame2,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    LabelNameSliderxd,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    TextBoxStroke,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Thickness = 0} -- UDim2.new(0, 128, 0, 25)
                ):Play()
            end
        )

        TextFrame.MouseLeave:Connect(function()
            TweenService:Create(
                FrameBox,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {Size = UDim2.new(0, 158, 0, 30)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
                FrameBox,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {BackgroundColor3 = Color3.fromRGB(23, 23, 23)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
                TextFrame2,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {PlaceholderColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
                TextBoxStroke,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {Thickness = 1} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
                LabelNameSliderxd,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
            TweenService:Create(
                TextFrame2,
                TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
            ):Play()
        end
        )
            TextFrame2.FocusLost:Connect(function ()
                if #TextFrame2.Text > 0 then
                    pcall(callback,TextFrame2.Text)
                end
            end)
        end

        function items:Bind(text,bi,callback)
            local BindFrame = Instance.new("Frame")

            BindFrame.Name = "BindFrame"
            BindFrame.Parent = ScrollingFrame_Pageframe
            BindFrame.BackgroundColor3 =  Color3.fromRGB(23, 23, 23)
            BindFrame.BorderSizePixel = 0
            BindFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
            BindFrame.AnchorPoint = Vector2.new(0.5, 0.5)
            BindFrame.Size = UDim2.new(0, 213, 0, 35)
            BindFrame.BackgroundTransparency  = 0
            BindFrame.ClipsDescendants = true

            local BindConner = Instance.new("UICorner")

            BindConner.CornerRadius = UDim.new(0, 4)
            BindConner.Name = ""
            BindConner.Parent = BindFrame

            local BindStroke = Instance.new("UIStroke")

            BindStroke.Thickness = 1
            BindStroke.Name = ""
            BindStroke.Parent = BindFrame
            BindStroke.LineJoinMode = Enum.LineJoinMode.Round
            BindStroke.Color = _G.Color
            BindStroke.Transparency = 0.7

            local LabelBind = Instance.new("TextLabel")

            LabelBind.Parent = BindFrame
            LabelBind.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            LabelBind.BackgroundTransparency = 1
            LabelBind.BorderSizePixel = 0
            LabelBind.Position = UDim2.new(0.4, 0, 0.5, 0)
            LabelBind.AnchorPoint = Vector2.new(0.5, 0.5)
            LabelBind.Size = UDim2.new(0, 140, 0, 35)
            LabelBind.Font = Enum.Font.GothamBold
            LabelBind.Text = tostring(text)
            LabelBind.TextColor3 = Color3.fromRGB(155, 155, 155)
            LabelBind.TextSize = 11
            LabelBind.TextXAlignment = Enum.TextXAlignment.Left

            local key = bi.Name
            local LabelBind2 = Instance.new("TextButton")

            LabelBind2.Parent = BindFrame
            LabelBind2.Name = "LabelBind2"
            LabelBind2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            LabelBind2.Size = UDim2.new(0, 100, 0, 19)
            LabelBind2.Font = Enum.Font.GothamBold
            LabelBind2.Text =  "KEY : "..key
            LabelBind2.TextColor3 = Color3.fromRGB(155, 155, 155)
            LabelBind2.TextSize = 11
            LabelBind2.AnchorPoint = Vector2.new(0.5, 0.5)
            LabelBind2.Position = UDim2.new(0.75, 0, 0.5, 0)
            LabelBind2.TextXAlignment = Enum.TextXAlignment.Center
            LabelBind2.BackgroundTransparency = 1
            LabelBind2.TextWrapped = true

            local LabelBind22 = Instance.new("TextButton")

            LabelBind22.Parent = BindFrame
            LabelBind22.Name = "LabelBind22"
            LabelBind22.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            LabelBind22.Size = UDim2.new(0, 213, 0, 35)
            LabelBind22.Font = Enum.Font.GothamBold
            LabelBind22.Text =  ""
            LabelBind22.TextColor3 = Color3.fromRGB(155, 155, 155)
            LabelBind22.TextSize = 11
            LabelBind22.AnchorPoint = Vector2.new(0.5, 0.5)
            LabelBind22.Position = UDim2.new(0.5, 0, 0.5, 0)
            LabelBind22.TextXAlignment = Enum.TextXAlignment.Center
            LabelBind22.BackgroundTransparency = 1
            LabelBind22.TextWrapped = true

            BindFrame.MouseEnter:Connect(function()
                TweenService:Create(
                    BindStroke,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Transparency = 0} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    LabelBind22,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    LabelBind2,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    LabelBind,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
            end
        )
            BindFrame.MouseLeave:Connect(function()
                TweenService:Create(
                    BindStroke,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Transparency = 0.7} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    LabelBind22,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    LabelBind2,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    LabelBind,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
            end
        )

            LabelBind22.MouseButton1Click:Connect(function ()


                LabelBind2.Text = "KEY : ".."..."
                local inputwait = game:GetService("UserInputService").InputBegan:wait()
                local fuckulop = inputwait.KeyCode == Enum.KeyCode.Unknown and inputwait.UserInputType or inputwait.KeyCode

                if
                fuckulop.Name ~= "Focus" and fuckulop.Name ~= "MouseMovement" and fuckulop.Name ~= "Focus"
                then
                    LabelBind2.Text =  "KEY : "..fuckulop.Name
                    key = fuckulop.Name
                end
                -- if fuckulop.Name ~= "Unknown" then
                --     LabelBind2.Text = fuckulop.Name
                --     key = fuckulop.Name
                -- end

            end)


            game:GetService("UserInputService").InputBegan:connect(
                function(current)
                    local fuckulop2 = current.KeyCode == Enum.KeyCode.Unknown and current.UserInputType or current.KeyCode

                        if fuckulop2.Name ==  key then
                            pcall(callback)

                    end
                end
                )

        end

        function items:Line()
            local LineFrame = Instance.new("Frame")

            LineFrame.Name = "LineFrame"
            LineFrame.Parent = ScrollingFrame_Pageframe
            LineFrame.BackgroundColor3 =  _G.Color
            LineFrame.BorderSizePixel = 0
            LineFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
            LineFrame.AnchorPoint = Vector2.new(0.5, 0.5)
            LineFrame.Size = UDim2.new(0, 213, 0, 1)
            LineFrame.BackgroundTransparency  = 0
            LineFrame.ClipsDescendants = true

            local LineFrame_BindConner = Instance.new("UICorner")

            LineFrame_BindConner.CornerRadius = UDim.new(0, 30)
            LineFrame_BindConner.Name = ""
            LineFrame_BindConner.Parent = LineFrame

        end

        function items:Color(text,preset,callback)
            local Pixker = Instance.new("Frame")

            Pixker.Name = "Pixker"
            Pixker.Parent = ScrollingFrame_Pageframe
            Pixker.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
            Pixker.Position = UDim2.new(0.0833333358, 0, 0.235135213, 0)
            Pixker.Size = UDim2.new(0, 213, 0, 33)
            Pixker.BackgroundTransparency = 0
            Pixker.BorderSizePixel = 0
            Pixker.AnchorPoint = Vector2.new(0.5, 0.5)
            Pixker.Position = UDim2.new(0.5, 0, 0.5, 0)
            Pixker.ClipsDescendants = true


            local BoxColorCorner2 = Instance.new("UICorner")

            BoxColorCorner2.CornerRadius = UDim.new(0, 4)
            BoxColorCorner2.Name = "BoxColorCorner"
            BoxColorCorner2.Parent = Pixker

            local MheeFrameStroke = Instance.new("UIStroke")

            MheeFrameStroke.Thickness = 1
            MheeFrameStroke.Name = ""
            MheeFrameStroke.Parent = Pixker
            MheeFrameStroke.LineJoinMode = Enum.LineJoinMode.Round
            MheeFrameStroke.Color = _G.Color
            MheeFrameStroke.Transparency = 0.7


            local TextFrameColor = Instance.new("TextLabel")

            TextFrameColor.Parent = Pixker
            TextFrameColor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextFrameColor.BorderSizePixel = 0
            TextFrameColor.Size = UDim2.new(0, 200, 0, 34)
            TextFrameColor.Font = Enum.Font.SourceSans
            TextFrameColor.Text = "  "
            TextFrameColor.TextColor3 = Color3.fromRGB(0, 0, 0)
            TextFrameColor.TextSize = 14
            TextFrameColor.BackgroundTransparency = 1
            TextFrameColor.Position = UDim2.new(0, 0, 0, 0)

            local TextReal = Instance.new("TextLabel")

            TextReal.Parent = TextFrameColor
            TextReal.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextReal.BorderSizePixel = 0
            TextReal.Size = UDim2.new(0, 140, 0, 34)
            TextReal.Font = Enum.Font.GothamBold
            TextReal.Text = text
            TextReal.TextColor3 = Color3.fromRGB(155,155, 155)
            TextReal.TextSize = 12
            TextReal.BackgroundTransparency = 1
            TextReal.Position = UDim2.new(0.05, 0, 0, 0)
            TextReal.TextXAlignment = Enum.TextXAlignment.Left

            local BoxColor = Instance.new("Frame")

            BoxColor.Name = "BoxColor"
            BoxColor.Parent = TextFrameColor
            BoxColor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            BoxColor.Position = UDim2.new(0.85, 0, 0.5, 0)
            BoxColor.Size = UDim2.new(0, 35, 0, 19)
            BoxColor.AnchorPoint = Vector2.new(0.5, 0.5)

            local BoxColorCorner = Instance.new("UICorner")

            BoxColorCorner.CornerRadius = UDim.new(0, 4)
            BoxColorCorner.Name = "BoxColorCorner"
            BoxColorCorner.Parent = BoxColor

            local TextButton_Dropdown = Instance.new("TextButton")


            TextButton_Dropdown.Parent = TextFrameColor
            TextButton_Dropdown.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
            TextButton_Dropdown.BorderSizePixel = 0
            TextButton_Dropdown.Position = UDim2.new(0, 0, 0.14705883, 0)
            TextButton_Dropdown.Size = UDim2.new(0, 200, 0, 33)
            TextButton_Dropdown.Font = Enum.Font.SourceSans
            TextButton_Dropdown.Text = "  "
            TextButton_Dropdown.TextColor3 = Color3.fromRGB(0, 0, 0)
            TextButton_Dropdown.TextSize = 14
            TextButton_Dropdown.AutoButtonColor = false
            --TextButton_Dropdown.AnchorPoint = Vector2.new(0.5, 0.5)
            TextButton_Dropdown.Position = UDim2.new(0, 0, 0, 0)
            TextButton_Dropdown.BackgroundTransparency = 1



            Pixker.MouseEnter:Connect(function()
                TweenService:Create(
                    MheeFrameStroke,
                    TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Transparency = 0}
                ):Play()
                TweenService:Create(
                    TextReal,
                    TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(255,255, 255)}
                ):Play()

            end)
            Pixker.MouseLeave:Connect(function()
                TweenService:Create(
                    MheeFrameStroke,
                    TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Transparency = 0.7}
                ):Play()
                TweenService:Create(
                    TextReal,
                    TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {TextColor3 = Color3.fromRGB(155,155, 155)}
                ):Play()
            end)
        -- Rainbow Toggle


        local TextButton_2_Toggle = Instance.new("TextButton")

        TextButton_2_Toggle.Parent = TextFrameColor
        TextButton_2_Toggle.BackgroundColor3 = Color3.fromRGB(155, 155, 155)
--        TextButton_2_Toggle.BorderColor3 = _G.Color
        TextButton_2_Toggle.BorderSizePixel = 0
        TextButton_2_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
        TextButton_2_Toggle.Position = UDim2.new(0.2, 0, 1.87, 0)
        TextButton_2_Toggle.Size = UDim2.new(0, 30, 0, 13)
        TextButton_2_Toggle.Font = Enum.Font.SourceSans
        TextButton_2_Toggle.Text = " "
        TextButton_2_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
        TextButton_2_Toggle.TextSize = 12
        TextButton_2_Toggle.AutoButtonColor = false

        local TextButton_Pageframe_Uiconner = Instance.new("UICorner")

        TextButton_Pageframe_Uiconner.CornerRadius = UDim.new(0, 30)
        TextButton_Pageframe_Uiconner.Name = ""
        TextButton_Pageframe_Uiconner.Parent = TextButton_2_Toggle

        local TextButton_3_Toggle = Instance.new("TextButton")

        TextButton_3_Toggle.Parent = TextButton_2_Toggle
        TextButton_3_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255,255)
--        TextButton_3_Toggle.BorderColor3 = _G.Color
        TextButton_3_Toggle.BorderSizePixel = 0
        TextButton_3_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
        TextButton_3_Toggle.Position = UDim2.new(0.1, 0, 0.5, 0)
        TextButton_3_Toggle.Size = UDim2.new(0, 19, 0, 19)
        TextButton_3_Toggle.Font = Enum.Font.SourceSans
        TextButton_3_Toggle.Text = " "
        TextButton_3_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
        TextButton_3_Toggle.TextSize = 12
        TextButton_3_Toggle.AutoButtonColor = false

        local TextButton_Pageframe_Uiconner2 = Instance.new("UICorner")

        TextButton_Pageframe_Uiconner2.CornerRadius = UDim.new(0, 30)
        TextButton_Pageframe_Uiconner2.Name = ""
        TextButton_Pageframe_Uiconner2.Parent = TextButton_3_Toggle

        local TextButton_4_Toggle = Instance.new("TextButton")

        TextButton_4_Toggle.Parent = TextButton_3_Toggle
        TextButton_4_Toggle.BackgroundColor3 = Color3.fromRGB(155, 155,155)
--        TextButton_3_Toggle.BorderColor3 = _G.Color
        TextButton_4_Toggle.BorderSizePixel = 0
        TextButton_4_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
        TextButton_4_Toggle.Position = UDim2.new(0.5, 0, 0.5, 0)
        TextButton_4_Toggle.Size = UDim2.new(0, 27, 0, 27-2)
        TextButton_4_Toggle.Font = Enum.Font.SourceSans
        TextButton_4_Toggle.Text = " "
        TextButton_4_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
        TextButton_4_Toggle.TextSize = 12
        TextButton_4_Toggle.AutoButtonColor = false
        TextButton_4_Toggle.BackgroundTransparency = 1
        TextButton_4_Toggle.Visible = true

        local TextButton_Pageframe_Uiconner4 = Instance.new("UICorner")

        TextButton_Pageframe_Uiconner4.CornerRadius = UDim.new(0, 30)
        TextButton_Pageframe_Uiconner4.Name = ""
        TextButton_Pageframe_Uiconner4.Parent = TextButton_4_Toggle


        local TextButton_Toggle = Instance.new("TextButton")

        TextButton_Toggle.Parent = ValueFrame
        TextButton_Toggle.BackgroundTransparency =1
        TextButton_Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        TextButton_Toggle.BorderSizePixel = 0
        TextButton_Toggle.Size = UDim2.new(0, 50, 0, 20)
        TextButton_Toggle.AutoButtonColor = false
        TextButton_Toggle.Font = Enum.Font.SourceSans
        TextButton_Toggle.Text = " "
        TextButton_Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
        TextButton_Toggle.TextSize = 12
        TextButton_Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
        TextButton_Toggle.Position = UDim2.new(1.25, 0, 0.4, 0)

        local TextButton_3_Toggle2 = Instance.new("TextLabel")

        TextButton_3_Toggle2.Parent = TextButton_2_Toggle
        TextButton_3_Toggle2.BackgroundColor3 = Color3.fromRGB(32, 32,32)
        TextButton_3_Toggle2.BorderColor3 = _G.Color
        TextButton_3_Toggle2.BorderSizePixel = 0
        TextButton_3_Toggle2.AnchorPoint = Vector2.new(0.5, 0.5)
        TextButton_3_Toggle2.Position = UDim2.new(1.9, 0, 0.5, 0)
        TextButton_3_Toggle2.Size = UDim2.new(0, 500, 0, 21)
        TextButton_3_Toggle2.Font = Enum.Font.SourceSansBold
        TextButton_3_Toggle2.Text = "Rainbow"
        TextButton_3_Toggle2.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextButton_3_Toggle2.TextSize = 13
        TextButton_3_Toggle2.BackgroundTransparency = 1

        local OMF = Instance.new("TextButton")

        OMF.Parent = TextButton_2_Toggle
        OMF.BackgroundTransparency =1
        OMF.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        OMF.BorderSizePixel = 0
        OMF.Size = UDim2.new(0, 100, 0, 20)
        OMF.AutoButtonColor = false
        OMF.Font = Enum.Font.SourceSans
        OMF.Text = " "
        OMF.TextColor3 = Color3.fromRGB(0, 0, 0)
        OMF.TextSize = 12
        OMF.AnchorPoint = Vector2.new(0.5, 0.5)
        OMF.Position = UDim2.new(1.3, 0, 0.5, 0)

        local Color =  Instance.new("ImageLabel")

        Color.Name = "Color"
        Color.Parent = TextFrameColor
        Color.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
        Color.Position = UDim2.new(0.05,0,4,0)
        Color.Size = UDim2.new(0, 195, 0, 40)
        Color.ZIndex = 0
        Color.BorderSizePixel = 0
        Color.Image = "rbxassetid://4155801252"

        local ColorFucj = Instance.new("UICorner")

        ColorFucj.CornerRadius = UDim.new(0, 4)
        ColorFucj.Name = ""
        ColorFucj.Parent = Color

        local ColorSelection =  Instance.new("ImageLabel")

        ColorSelection.Name = "ColorSelection"
        ColorSelection.Parent = Color
        ColorSelection.AnchorPoint = Vector2.new(0.5, 0.5)
        ColorSelection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ColorSelection.BackgroundTransparency = 1
        ColorSelection.Position = UDim2.new(preset and select(3, Color3.toHSV(preset)))
        ColorSelection.Size = UDim2.new(0, 18, 0, 18)
        ColorSelection.Image = "http://www.roblox.com/asset/?id=4805639000"
        ColorSelection.ScaleType = Enum.ScaleType.Fit
        ColorSelection.Visible = true

        local Hue =  Instance.new("ImageLabel")

        Hue.Name = "Hue2"
        Hue.Parent = TextFrameColor
        Hue.Position = UDim2.new(0.14,0,3,0)
        Hue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Hue.Size = UDim2.new(0, 160, 0, 25)
        Hue.ZIndex = 0
        Hue.BorderSizePixel = 0

        local ColorFucj2 = Instance.new("UICorner")

        ColorFucj2.CornerRadius = UDim.new(0, 4)
        ColorFucj2.Name = ""
        ColorFucj2.Parent = Hue

        local HueGradient = Instance.new("UIGradient")

        HueGradient.Color = ColorSequence.new {
            ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 4)),
            ColorSequenceKeypoint.new(0.2, Color3.fromRGB(234, 255, 0)),
            ColorSequenceKeypoint.new(0.4, Color3.fromRGB(21, 255, 0)),
            ColorSequenceKeypoint.new(0.6, _G.Color),
            ColorSequenceKeypoint.new(0.8, Color3.fromRGB(0, 17, 255)),
            ColorSequenceKeypoint.new(0.9, Color3.fromRGB(255, 0, 251)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 4))
        }
        HueGradient.Rotation = 0
        HueGradient.Name = "HueGradient"
        HueGradient.Parent = Hue

        local HueSelection =  Instance.new("ImageLabel")

        HueSelection.Name = "HueSelection"
        HueSelection.Parent = Hue
        HueSelection.AnchorPoint = Vector2.new(0.5, 0.5)
        HueSelection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        HueSelection.BackgroundTransparency = 1
        HueSelection.Position = UDim2.new(preset and select(3, Color3.toHSV(preset)))
        HueSelection.Size = UDim2.new(0, 18, 0, 18)
        HueSelection.Image = "http://www.roblox.com/asset/?id=4805639000"
        HueSelection.ScaleType = Enum.ScaleType.Fit
        HueSelection.Visible = true


        local BTN_XD = Instance.new("TextButton")

        BTN_XD.Parent = TextFrameColor
        BTN_XD.BackgroundColor3 = _G.Color
        BTN_XD.BorderColor3 = _G.Color
        BTN_XD.BorderSizePixel = 0
        BTN_XD.AnchorPoint = Vector2.new(0.5, 0.5)
        BTN_XD.Position = UDim2.new(0.8, 0, 1.9, 0)
        BTN_XD.Size = UDim2.new(0, 50, 0, 25)
        BTN_XD.Font = Enum.Font.GothamBold
        BTN_XD.Text = "Confirm"
        BTN_XD.TextColor3 = Color3.fromRGB(255, 255, 255)
        BTN_XD.TextSize = 11
        BTN_XD.AutoButtonColor = false

        local BTN_XD_COnner = Instance.new("UICorner")

        BTN_XD_COnner.CornerRadius = UDim.new(0, 4)
        BTN_XD_COnner.Name = ""
        BTN_XD_COnner.Parent = BTN_XD



        local MheeFrameStroke = Instance.new("UIStroke")

        MheeFrameStroke.Thickness = 1
        MheeFrameStroke.Name = ""
        MheeFrameStroke.Parent = BTN_XD
        MheeFrameStroke.LineJoinMode = Enum.LineJoinMode.Round
        MheeFrameStroke.Color = _G.Color
        MheeFrameStroke.Transparency = 0.7


        local UwU = false


        OMF.MouseButton1Click:Connect(function()
            if       UwU == false  then
                TweenService:Create(
                    TextButton_4_Toggle,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 =  _G.Color} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    TextButton_3_Toggle,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 =  _G.Color} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    TextButton_2_Toggle,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 =  _G.Color} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(1, 0, 0.5, 0), "Out", "Quad", 0.3, true)
            else
                TweenService:Create(
                    TextButton_4_Toggle,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 =  Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    TextButton_3_Toggle,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 =  Color3.fromRGB(255, 255, 255)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TweenService:Create(
                    TextButton_2_Toggle,
                    TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {BackgroundColor3 =  Color3.fromRGB(155, 155, 155)} -- UDim2.new(0, 128, 0, 25)
                ):Play()
                TextButton_3_Toggle:TweenSizeAndPosition(UDim2.new(0, 19, 0, 19), UDim2.new(0.1, 0, 0.5, 0), "Out", "Quad", 0.3, true)
            end
            UwU = not UwU
        end
    )


    OMF.MouseEnter:Connect(function()
            TweenService:Create(
                TextButton_4_Toggle,
                TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {BackgroundTransparency = 0.6} -- UDim2.new(0, 128, 0, 25)
            ):Play()
        end
    )

    OMF.MouseLeave:Connect(function()
            TweenService:Create(
                TextButton_4_Toggle,
                TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                {BackgroundTransparency = 1} -- UDim2.new(0, 128, 0, 25)
            ):Play()
        end
    )

    OMF.MouseButton1Down:Connect(
            function()
                RainbowColorPicker = not RainbowColorPicker

                if ColorInput then
                    ColorInput:Disconnect()
                end

                if HueInput then
                    HueInput:Disconnect()
                end

                if RainbowColorPicker then


                    OldToggleColor = BoxColor.BackgroundColor3
                    OldColor = Color.BackgroundColor3
                    OldColorSelectionPosition = ColorSelection.Position
                    OldHueSelectionPosition = HueSelection.Position

                    while RainbowColorPicker do
                        BoxColor.BackgroundColor3 = Color3.fromHSV(Red.RainbowColorValue, 1, 1)
                        Color.BackgroundColor3 = Color3.fromHSV(Red.RainbowColorValue, 1, 1)

                        ColorSelection.Position = UDim2.new(1, 0, 0, 0)
                        HueSelection.Position = UDim2.new(0,  Red.HueSelectionPosition, 0.5,0)

                        pcall(callback, BoxColor.BackgroundColor3)
                        wait()
                    end
                elseif not RainbowColorPicker then

                    BoxColor.BackgroundColor3 = OldToggleColor
                    Color.BackgroundColor3 = OldColor

                    ColorSelection.Position = OldColorSelectionPosition
                    HueSelection.Position = OldHueSelectionPosition

                    pcall(callback, BoxColor.BackgroundColor3)
                end
            end
        )
        TextButton_3_Toggle.MouseButton1Down:Connect(
            function()
                RainbowColorPicker = not RainbowColorPicker

                if ColorInput then
                    ColorInput:Disconnect()
                end

                if HueInput then
                    HueInput:Disconnect()
                end

                if RainbowColorPicker then


                    OldToggleColor = BoxColor.BackgroundColor3
                    OldColor = Color.BackgroundColor3
                    OldColorSelectionPosition = ColorSelection.Position
                    OldHueSelectionPosition = HueSelection.Position

                    while RainbowColorPicker do
                        BoxColor.BackgroundColor3 = Color3.fromHSV(Red.RainbowColorValue, 1, 1)
                        Color.BackgroundColor3 = Color3.fromHSV(Red.RainbowColorValue, 1, 1)

                        ColorSelection.Position = UDim2.new(1, 0, 0, 0)
                        HueSelection.Position = UDim2.new(0,  Red.HueSelectionPosition, 0.5,0)

                        pcall(callback, BoxColor.BackgroundColor3)
                        wait()
                    end
                elseif not RainbowColorPicker then

                    BoxColor.BackgroundColor3 = OldToggleColor
                    Color.BackgroundColor3 = OldColor

                    ColorSelection.Position = OldColorSelectionPosition
                    HueSelection.Position = OldHueSelectionPosition

                    pcall(callback, BoxColor.BackgroundColor3)
                end
            end
        )


        local function UpdateColorPicker(nope)
            BoxColor.BackgroundColor3 = Color3.fromHSV(ColorH, ColorS, ColorV)
            Color.BackgroundColor3 = Color3.fromHSV(ColorH, 1, 1)

            pcall(callback, BoxColor.BackgroundColor3)
        end
        ColorH =
        1 -
        (math.clamp(HueSelection.AbsolutePosition.Y - Hue.AbsolutePosition.Y, 0, Hue.AbsoluteSize.Y) /
            Hue.AbsoluteSize.Y)
        ColorS =
            (math.clamp(ColorSelection.AbsolutePosition.X - Color.AbsolutePosition.X, 0, Color.AbsoluteSize.X) /
                Color.AbsoluteSize.X)
        ColorV =
            1 -
            (math.clamp(ColorSelection.AbsolutePosition.Y - Color.AbsolutePosition.Y, 0, Color.AbsoluteSize.Y) /
                Color.AbsoluteSize.Y)

        BoxColor.BackgroundColor3 = preset
        Color.BackgroundColor3 = preset
        pcall(callback, BoxColor.BackgroundColor3)

        local RainbowColorPicker = false

        Color.InputBegan:Connect(
            function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 then
                    if RainbowColorPicker then
                        return
                    end

                    if ColorInput then
                        ColorInput:Disconnect()
                    end

                    ColorInput =
                        RunService.RenderStepped:Connect(
                            function()
                            local ColorX =
                                (math.clamp(Mouse.X - Color.AbsolutePosition.X, 0, Color.AbsoluteSize.X) /
                                    Color.AbsoluteSize.X)
                            local ColorY =
                                (math.clamp(Mouse.Y - Color.AbsolutePosition.Y, 0, Color.AbsoluteSize.Y) /
                                    Color.AbsoluteSize.Y)

                            ColorSelection.Position = UDim2.new(ColorX, 0, ColorY, 0)
                            ColorS = ColorX
                            ColorV = 1 - ColorY

                            UpdateColorPicker(true)
                        end
                        )
                end
            end
        )


            Color.InputEnded:Connect(
                function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        if ColorInput then
                            ColorInput:Disconnect()
                        end
                    end
                end
            )

            Hue.InputBegan:Connect(
                function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        if RainbowColorPicker then
                            return
                        end

                        if HueInput then
                            HueInput:Disconnect()
                        end

                        HueInput =
                            RunService.RenderStepped:Connect(
                                function()
                                local HueY =
                                    (math.clamp(Mouse.Y - Hue.AbsolutePosition.Y, 0, Hue.AbsoluteSize.Y) /
                                        Hue.AbsoluteSize.Y)
                                local HueX =
                                    (math.clamp(Mouse.X- Hue.AbsolutePosition.X, 0, Hue.AbsoluteSize.X) /
                                        Hue.AbsoluteSize.X)

                                HueSelection.Position = UDim2.new(HueX, 0, HueY, 0)
                                ColorH = 1 - HueY

                                UpdateColorPicker(true)
                            end
                            )
                    end
                end
            )

            Hue.InputEnded:Connect(
                function(input)
                    if input.UserInputType == Enum.UserInputType.MouseButton1 then
                        if HueInput then
                            HueInput:Disconnect()
                        end
                    end
                end
            )
            local sk = false
            TextButton_Dropdown.MouseButton1Click:Connect(function()
                if sk == false then
                TweenService:Create(
                    Pixker,
                    TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Size = UDim2.new(0, 213, 0, 180)}
                ):Play()
            else
                TweenService:Create(
                    Pixker,
                    TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Size = UDim2.new(0, 213, 0, 33)}
                ):Play()
            end
            sk = not sk
            end
        )
            BTN_XD.MouseButton1Click:Connect(
                function()
                    TweenService:Create(
                        Pixker,
                        TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                        {Size = UDim2.new(0, 213, 0, 33)}
                    ):Play()
                    sk = not sk
                end
            )


        end
        function items:Label(text,image)
            if image == nil then
                image = logo
            end
            local labaelchange = {}
            local LabelFrame = Instance.new("Frame")


            LabelFrame.Name = "Mainframenoti"
            LabelFrame.Parent = ScrollingFrame_Pageframe
            LabelFrame.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
            LabelFrame.BackgroundTransparency = 0
            LabelFrame.BorderSizePixel = 0
            LabelFrame.ClipsDescendants = false
            LabelFrame.AnchorPoint = Vector2.new(0.5, 0.5)
            LabelFrame.Position = UDim2.new(0.498, 0, 0.5, 0)
            LabelFrame.Size = UDim2.new(0, 213, 0, 28)

            local LabelFarm2 = Instance.new("TextLabel")

            LabelFarm2.Parent = LabelFrame
            LabelFarm2.Name = "TextLabel_Tap"
            LabelFarm2.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
            LabelFarm2.Size =UDim2.new(0, 130, 0,24 )
            LabelFarm2.Font = Enum.Font.GothamBold
            LabelFarm2.Text = text
            LabelFarm2.TextColor3 = Color3.fromRGB(255, 255, 255)
            LabelFarm2.TextSize = 12
            LabelFarm2.AnchorPoint = Vector2.new(0.5, 0.5)
            LabelFarm2.Position = UDim2.new(0.5, 0, 0.5, 0)
            LabelFarm2.TextXAlignment = Enum.TextXAlignment.Center
            LabelFarm2.BackgroundTransparency = 1
            LabelFarm2.TextWrapped = true

            local ImageLabel_gx = Instance.new("ImageLabel")

            ImageLabel_gx.Parent = LabelFrame
            ImageLabel_gx.BackgroundTransparency = 1
            ImageLabel_gx.BorderSizePixel = 0
            ImageLabel_gx.Size = UDim2.new(0, 18, 0, 18)
            ImageLabel_gx.AnchorPoint = Vector2.new(0.5, 0.5)
            ImageLabel_gx.Position = UDim2.new(0.06, 0, 0.48, 0)
            ImageLabel_gx.Image = "http://www.roblox.com/asset/?id="..tostring(image)
            ImageLabel_gx.BackgroundTransparency = 1

            local noticore55 = Instance.new("UICorner")

            noticore55.CornerRadius = UDim.new(0, 4)
            noticore55.Name = ""
            noticore55.Parent = LabelFarm2

            local noticore2777 = Instance.new("UICorner")

            noticore2777.CornerRadius = UDim.new(0, 4)
            noticore2777.Name = ""
            noticore2777.Parent = LabelFrame

            local LabelStroke = Instance.new("UIStroke")

            LabelStroke.Thickness = 1
            LabelStroke.Name = ""
            LabelStroke.Parent = LabelFrame
            LabelStroke.LineJoinMode = Enum.LineJoinMode.Round
            LabelStroke.Color = _G.Color
            LabelStroke.Transparency = 0.7

            LabelFrame.MouseEnter:Connect(function()
                TweenService:Create(
                    LabelStroke,
                    TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Transparency =0}
                ):Play()
            end
        )
            LabelFrame.MouseLeave:Connect(function()
                TweenService:Create(
                    LabelStroke,
                    TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
                    {Transparency =0.7}
                ):Play()
            end
        )
            local funclabel = {}

            function funclabel:Refresh(newtext)
                LabelFarm2.Text = newtext
            end
            return  funclabel
        end
        return  items
        end
    return  page
    end
return top
end
    
local Window = create:Win("Rivai",1119232259254403200)
local Tap1 = Window:Taps("Main")
local Tap2 = Window:Taps("Item")
local Tap3 = Window:Taps("Teleport")
local Tap4 = Window:Taps("Raid")
local Main = Tap1:newpage()

Main:Label("General",6022668898)
Waspon = {}
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
    if v:IsA("Tool") then
        table.insert(Waspon ,v.Name)
    end
end
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
    if v:IsA("Tool") then
        table.insert(Waspon ,v.Name)
    end
end

local Select_Weapon = Main:Drop("Weapon", "Select Weapon", false, Waspon, function(Value)
    _G.Select_Weapon = Value
end)

Main:Button("Refresh Weapon",function()
    Select_Weapon:Clear()
    for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do  
        if v:IsA("Tool") then
            Select_Weapon:Add(v.Name)
        end
    end
    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do  
        if v:IsA("Tool") then
            Select_Weapon:Add(v.Name)
        end
    end
end)

local Auto_Farm = Main:Toggle("Auto Farm Level", false, function(Value)
    _G.Auto_Farm_Level = Value
end)

spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function() CheckQuest()
		pcall(function()
			if _G.Auto_Farm_Level then
				for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if _G.Auto_Farm_Level and StartMagnet and v.Name == Ms and (v.HumanoidRootPart.Position - PosMon.Position).magnitude <= 350 then
						v.HumanoidRootPart.CFrame = PosMon
						v.HumanoidRootPart.CanCollide = false
						v.HumanoidRootPart.Size = Vector3.new(60,60,60)
						if v.Humanoid:FindFirstChild("Animator") then
							v.Humanoid.Animator:Destroy()
						end
						sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
					end
				end
            end
        end)
    end)
end)

spawn(function()
    while wait() do
        if _G.Auto_Farm_Level then
            pcall(function()
                if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                    StartMagnet = false
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                end
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    StartMagnet = false
                    CheckQuest()
                    repeat wait() topos(CFrameQuest) until (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Auto_Farm_Level
                    if (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
                        wait(1.2)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                        wait(0.5)
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    CheckQuest()
                    if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                if v.Name == Ms then
                                    repeat wait()
                                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                            EquipWeapon(_G.Select_Weapon)
                                            AutoHaki()
                                            PosMon = v.HumanoidRootPart.CFrame
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            v.Head.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                            StartMagnet = true
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                                            game:GetService'VirtualUser':CaptureController()
                                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))                                        else
                                            StartMagnet = false
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                        end
                                    until not _G.Auto_Farm_Level or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                end
                            end
                        end
                    else
                        StartMagnet = false
                        if game:GetService("ReplicatedStorage"):FindFirstChild(Ms) then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild(Ms).HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                        else	
                            topos(CFrameMon)
                        end
                    end
                end
            end)
        end
    end
end)

local AutoNearMob = Main:Toggle("Auto Near Mob", false, function(Value)
    _G.Auto_Near_Mob = Value
    StopTween(_G.Auto_Near_Mob)
    saveSettings()
end)

spawn(function()
    while wait() do
        if _G.Auto_Near_Mob then
            pcall(function()
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v.Name and v:FindFirstChild("Humanoid") then
                        if v.Humanoid.Health > 0 then
                            repeat game:GetService("RunService").Heartbeat:wait()
                                EquipWeapon(_G.Select_Weapon)
                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                    local args = {
                                        [1] = "Buso"
                                    }
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                end
                                PosMon = v.HumanoidRootPart.CFrame
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                StartMagnet = true
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                                game:GetService'VirtualUser':CaptureController()
                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))

                                NearFarmMagnet = true
                                PosMon = v.HumanoidRootPart.CFrame
                            until not _G.Auto_Near_Mob or not v.Parent or v.Humanoid.Health == 0 or not game.Workspace.Enemies:FindFirstChild(v.Name)
                        end
                    end
                end
            end)
        end
    end
end)

local Bring_Mob = Main:Toggle("Bring Mob", true, function(Value)
    _G.BringMob = Value
end)

local Fast_Attack = Main:Toggle("Fast Attack", true, function(Value)
    _G.FastAttack = Value
end)

local CameraShaker = require(game.ReplicatedStorage.Util.CameraShaker)
CombatFrameworkR = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
y = debug.getupvalues(CombatFrameworkR)[2]
spawn(function()
    game:GetService("RunService").RenderStepped:Connect(function()
	    if _G.FastAttack then
            if typeof(y) == "table" then
			    pcall(function()
				    CameraShaker:Stop()
				    y.activeController.timeToNextAttack = (math.huge^math.huge^math.huge)
				    y.activeController.timeToNextAttack = 0
				    y.activeController.hitboxMagnitude = 9999
				    y.activeController.active = false
				    y.activeController.timeToNextBlock = 0
				    y.activeController.focusStart = 0
				    y.activeController.increment = 4
				    y.activeController.blocking = false
				    y.activeController.attacking = false
				    y.activeController.humanoid.AutoRotate = true
			    end)
		    end
	    end
    end)
end)

if World1 then
    Main:Label("Quest World")
    Main:Toggle("Auto Second Sea", false, function(Value)
        _G.Auto_Second_Sea = Value
    end)

    spawn(function()
        while wait() do
            if _G.Auto_Second_Sea then
                pcall(function()
                    if game.Players.LocalPlayer.Data.Level.Value >= 700 and World1 then
                        _G.Auto_Farm_Level = false
                        if game.Workspace.Map.Ice.Door.CanCollide == true and game.Workspace.Map.Ice.Door.Transparency == 0 then
                            repeat wait() topos(CFrame.new(4851.8720703125, 5.6514348983765, 718.47094726563)) until (CFrame.new(4851.8720703125, 5.6514348983765, 718.47094726563).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Auto_Second_Sea
                            wait(1)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
                            EquipWeapon("Key")
                            local pos2 = CFrame.new(1347.7124, 37.3751602, -1325.6488)
                            repeat wait() topos(pos2) until (pos2.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Auto_Second_Sea
                            wait(3)
                        elseif game.Workspace.Map.Ice.Door.CanCollide == false and game.Workspace.Map.Ice.Door.Transparency == 1 then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral [Lv. 700] [Boss]") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Ice Admiral [Lv. 700] [Boss]" and v.Humanoid.Health > 0 then
                                        repeat wait()
                                            AutoHaki()
                                            EquipWeapon(_G.Select_Weapon)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                            v.HumanoidRootPart.Transparency = 1
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                                            game:GetService("VirtualUser"):CaptureController()
                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 870),workspace.CurrentCamera.CFrame)
                                        until v.Humanoid.Health <= 0 or not v.Parent or not _G.Auto_Second_Sea
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                                    end
                                end
                            else
                                topos(CFrame.new(1347.7124, 37.3751602, -1325.6488))
                            end
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                        end
                    end
                end)
            end
        end
    end)
end

if World2 then
    Main:Toggle("Auto Third Sea Only Boss", false, function(Value)
        _G.Auto_Third_Sea = Value
    end)

    spawn(function()
        while wait() do
            if _G.Auto_Third_Sea then
                pcall(function()
                    if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1500 and World2 then
                        _G.Auto_Farm_Level = false
                        if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Check") == 0 then
                            topos(CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016))
                            if (CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                                wait(1.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Begin")
                            end
                            wait(1.8)
                            if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra [Lv. 1500] [Boss]") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "rip_indra [Lv. 1500] [Boss]" then
                                        OldCFrameThird = v.HumanoidRootPart.CFrame
                                        repeat wait()
                                            AutoHaki()
                                            EquipWeapon(_G.Select_Weapon)
                                            v.HumanoidRootPart.CFrame = OldCFrameThird
                                            v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Humanoid.WalkSpeed = 0
                                            topos(v.HumanoidRootPart.CFrame * CFrame.new(0,_G.Select_Distance,0))
                                            game:GetService'VirtualUser':CaptureController()
                                            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                                            sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                        until _G.Auto_Third_Sea == false or v.Humanoid.Health <= 0 or not v.Parent
                                    end
                                end
                            elseif not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra [Lv. 1500] [Boss]") and (CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
                                topos(CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016))
                            end
                        end
                    end
                end)
            end
        end
    end)
end

local Stat = Tap1:newpage()
Stat:Label("Stats",9606294253)

Stat:Toggle("Melee", false, function(Value)
    _G.Auto_Stats_Melee = Value
end)

spawn(function()
	while wait() do
		if _G.Auto_Stats_Melee then
			local args = {
				[1] = "AddPoint",
				[2] = "Melee",
				[3] = _G.Point
			}
						
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end
	end
end)

Stat:Toggle("Defense", false, function(Value)
    _G.Auto_Stats_Defense = Value
end)

spawn(function()
	while wait() do
		if _G.Auto_Stats_Defense then
			local args = {
				[1] = "AddPoint",
				[2] = "Defense",
				[3] = _G.Point
			}
						
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end
	end
end)

Stat:Toggle("Sword", false, function(Value)
    _G.Auto_Stats_Sword = Value
end)

spawn(function()
	while wait() do
		if _G.Auto_Stats_Sword then
			local args = {
				[1] = "AddPoint",
				[2] = "Sword",
				[3] = _G.Point
			}
						
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end
	end
end)

Stat:Toggle("Gun", false, function(Value)
    _G.Auto_Stats_Gun = Value
end)

spawn(function()
	while wait() do
		if _G.Auto_Stats_Gun then
			local args = {
				[1] = "AddPoint",
				[2] = "Gun",
				[3] = _G.Point
			}
						
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end
	end
end)

Stat:Toggle("Devil Fruit", false, function(Value)
    _G.Auto_Stats_Defense = Value
end)

spawn(function()
	while wait() do
		if _G.Auto_Stats_Devil_Fruit then
			local args = {
				[1] = "AddPoint",
				[2] = "Demon Fruit",
				[3] = _G.Point
			}
						
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end
	end
end)

Stat:Slider("Point", false, false, 0, 300, 1, 3, false, function(Value)
    _G.Point = Value
end)

Main:Label("Mastery Fruit")
Main:Toggle("Fruit Mastery", false, function(Value)
    _G.FruitMastery = Value
end)

spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function() CheckQuest()
		pcall(function()
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if _G.FruitMastery and MasteryBFMagnetActive and v.Name == Ms and (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).magnitude <= 350 then
					v.HumanoidRootPart.CFrame = PosMonMasteryFruit
					v.HumanoidRootPart.CanCollide = false
					v.HumanoidRootPart.Size = Vector3.new(60,60,60)
					if v.Humanoid:FindFirstChild("Animator") then
						v.Humanoid.Animator:Destroy()
					end
					sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
				end
			end
		end)
    end)
end)

spawn(function()
    while wait() do
        if _G.FruitMastery then
            pcall(function()
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    MasteryBFMagnetActive = false
                    CheckQuest()
                    repeat wait() topos(CFrameQuest) until (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.FruitMastery
                    if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
                        wait(1.1)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, LevelQuest)
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    CheckQuest()
                    if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then
                        pcall(function()
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == Ms then
                                    repeat wait()
                                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                            HealthMin = v.Humanoid.MaxHealth * _G.Select_Health/100
                                            if v.Humanoid.Health <= HealthMin then
                                                EquipWeapon(game.Players.LocalPlayer.Data.DevilFruit.Value)
                                                AutoHaki()
                                                v.Head.CanCollide = false
                                                v.HumanoidRootPart.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(2,2,1)
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                                                PositionSkillMasteryDevilFruit = v.HumanoidRootPart.Position
                                                UseSkillMasteryDevilFruit = true
                                                DevilFruitMastery = game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Data.DevilFruit.Value].Level.Value
                                                if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon-Dragon") then
                                                    if _G.Skill_Z and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= 1 then
                                                        game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                                        wait(0.1)
                                                        game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                                    end
                                                    if _G.Skill_X and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= 1 then
                                                        game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                                        wait(0.1)
                                                        game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                                    end   
                                                elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha") then
                                                    if _G.Skill_Z and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= 1 and game.Players.LocalPlayer.Character.HumanoidRootPart.Size == Vector3.new(7.6, 7.676, 3.686) then
                                                    else
                                                        game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                                        wait(0.1)
                                                        game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                                    end
                                                    if _G.Skill_X and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= 1 then
                                                        game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                                        wait(0.1)
                                                        game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                                    end
                                                    if _G.Skill_C and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= 1 then
                                                        game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                                                        wait(0.1)
                                                        game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                                                    end  
                                                elseif game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
                                                    game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).MousePos.Value = v.HumanoidRootPart.Position
                                                    if _G.Skill_Z and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= 1 then
                                                        game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                                                        wait(0.1)
                                                        game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                                                    end
                                                    if _G.Skill_X and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= 1 then
                                                        game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                                                        wait(0.1)
                                                        game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                                                    end
                                                    if _G.Skill_C and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= 1 then
                                                        game:service('VirtualInputManager'):SendKeyEvent(true, "C", false, game)
                                                        wait(0.1)
                                                        game:service('VirtualInputManager'):SendKeyEvent(false, "C", false, game)
                                                    end
                                                    if _G.Skill_V and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and DevilFruitMastery >= 1 then
                                                        game:service('VirtualInputManager'):SendKeyEvent(true, "V", false, game)
                                                        wait(0.1)
                                                        game:service('VirtualInputManager'):SendKeyEvent(false, "V", false, game)
                                                    end
                                                end
                                            else
                                                UseSkillMasteryDevilFruit = true
                                                EquipWeapon(_G.Select_Weapon)
                                                AutoHaki()
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                                                game:GetService'VirtualUser':CaptureController()
                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                v.Head.CanCollide = false
                                                v.HumanoidRootPart.CanCollide = false
                                                v.HumanoidRootPart.Size = Vector3.new(40,40,40)
                                            end
                                            MasteryBFMagnetActive = true
                                            PosMonMasteryFruit = v.HumanoidRootPart.CFrame
                                        else
                                            MasteryBFMagnetActive = false
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                        end
                                    until v.Humanoid.Health <= 0 or  _G.FruitMastery == false or game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                    UseSkillMasteryDevilFruit = true
                                end
                            end
                        end)
                    else
                        MasteryBFMagnetActive = false
                        if game:GetService("ReplicatedStorage"):FindFirstChild(Ms) then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild(Ms).HumanoidRootPart.CFrame * CFrame.new(0,20,0))
                        else	
                            topos(CFrameMon)
                        end
                    end 
                end
            end)
        end
    end
end)

Main:Toggle("Skill Z", true, function(Value)
    _G.Skill_Z = Value
    saveSettings()
end)

Main:Toggle("Skill X", false, function(Value)
    _G.Skill_X = Value
end)

Main:Toggle("Skill C", false, function(Value)
    _G.Skill_C = Value
end)

Main:Toggle("Skill V", false, function(Value)
    _G.Skill_V = Value
end)

Main:Slider("Select Health", false, false, 0, 200, 15, 15, false, function(Value)
    _G.Select_Health = Value
    saveSettings()
end)

Main:Label("Gun Mastery")

local Item = Tap2:newpage()
if World1 then
    Item:Label("Saber")
    Item:Toggle("Auto Saber", false, function(Value)
        _G.Auto_Saber = Value
        saveSettings()
    end)

    spawn(function()
        while wait() do
            if _G.Auto_Saber then
                if game.Players.localPlayer.Data.Level.Value < 200 then
    
                else
                    if game.Workspace.Map.Jungle.Final.Part.CanCollide == false then
                        if _G.Auto_Saber and game.ReplicatedStorage:FindFirstChild("Saber Expert [Lv. 200] [Boss]") or game.Workspace.Enemies:FindFirstChild("Saber Expert [Lv. 200] [Boss]") then
                            if game.Workspace.Enemies:FindFirstChild("Saber Expert [Lv. 200] [Boss]") then
                                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                    if v.Name == "Saber Expert [Lv. 200] [Boss]" and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                        repeat wait()
                                            if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                                                Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
                                            elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                                if Farmtween then
                                                    Farmtween:Stop()
                                                end
                                                AutoHaki()
                                                EquipWeapon(_G.Select_Weapon)
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0 , 20, 30)
                                                game:GetService'VirtualUser':CaptureController()
                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                            end
                                        until not _G.Auto_Saber or not v.Parent or v.Humanoid.Health <= 0
                                    end
                                end
                            else
                                Questtween = toTarget(CFrame.new(-1405.41956, 29.8519993, 5.62435055).Position,CFrame.new(-1405.41956, 29.8519993, 5.62435055))
                                if (CFrame.new(-1405.41956, 29.8519993, 5.62435055).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                    if Questtween then
                                        Questtween:Stop()
                                    end
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1405.41956, 29.8519993, 5.62435055, 0.885240912, 3.528926e-8, 0.465132833, -6.6088113e-9, 1, -6.329132e-8, -0.465132833, 5.295409e-8, 0.885240912)
                                end
                            end
                        else
                            if _G.Auto_Saber_Hop then
                                Hop()
                            end
                        end
                    elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Relic") or game.Players.LocalPlayer.Character:FindFirstChild("Relic") and game.Players.localPlayer.Data.Level.Value >= 200 then
                        EquipWeapon("Relic")
                        wait(0.5)
                        Questtween = toTarget(CFrame.new(-1405.41956, 29.8519993, 5.62435055).Position,CFrame.new(-1405.41956, 29.8519993, 5.62435055))
                        if (CFrame.new(-1405.41956, 29.8519993, 5.62435055).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                            if Questtween then
                                Questtween:Stop()
                            end
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1405.41956, 29.8519993, 5.62435055, 0.885240912, 3.528926e-8, 0.465132833, -6.6088113e-9, 1, -6.329132e-8, -0.465132833, 5.295409e-8, 0.885240912)
                        end
                    else
                        if Workspace.Map.Jungle.QuestPlates.Door.CanCollide == false then
                            if game.Workspace.Map.Desert.Burn.Part.CanCollide == false then
                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") == 0 then
                                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 0 then
                                        if game.Workspace.Enemies:FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
                                            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                                                if _G.Auto_Saber and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and v.Name == "Mob Leader [Lv. 120] [Boss]" then
                                                    repeat
                                                        pcall(function() wait() 
                                                            if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude > 300 then
                                                                Farmtween = toTarget(v.HumanoidRootPart.Position,v.HumanoidRootPart.CFrame)
                                                            elseif (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                                                if Farmtween then
                                                                    Farmtween:Stop()
                                                                end
                                                                AutoHaki()
                                                                EquipWeapon(_G.Select_Weapon)
                                                                if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                                                    local args = {
                                                                        [1] = "Buso"
                                                                    }
                                                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                                                end
                                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0 , 20, 30)
                                                                game:GetService'VirtualUser':CaptureController()
                                                                game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                                            end
                                                        end)
                                                    until not _G.Auto_Saber or not v.Parent or v.Humanoid.Health <= 0
                                                end
                                            end
                                        else
                                            Questtween = toTarget(CFrame.new(-2848.59399, 7.4272871, 5342.44043).Position,CFrame.new(-2848.59399, 7.4272871, 5342.44043))
                                            if (CFrame.new(-2848.59399, 7.4272871, 5342.44043).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                                if Questtween then
                                                    Questtween:Stop()
                                                end
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2848.59399, 7.4272871, 5342.44043, -0.928248107, -8.7248246e-8, 0.371961564, -7.6181664e-8, 1, 4.4447486e-8, -0.371961564, 1.2921643e-8, -0.928248107)
                                            end
                                        end
                                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 1 then
                                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Relic") or game.Players.LocalPlayer.Character:FindFirstChild("Relic") then
                                            EquipWeapon("Relic")
                                            wait(0.5)
                                            Questtween = toTarget(CFrame.new(-1405.41956, 29.8519993, 5.62435055).Position,CFrame.new(-1405.41956, 29.8519993, 5.62435055))
                                            if (CFrame.new(-1405.41956, 29.8519993, 5.62435055).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                                if Questtween then
                                                    Questtween:Stop()
                                                end
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1405.41956, 29.8519993, 5.62435055)
                                            end
                                        else
                                            Questtween = toTarget(CFrame.new(-910.979736, 13.7520342, 4078.14624).Position,CFrame.new(-910.979736, 13.7520342, 4078.14624))
                                            if (CFrame.new(-910.979736, 13.7520342, 4078.14624).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                                if Questtween then
                                                    Questtween:Stop()
                                                end
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-910.979736, 13.7520342, 4078.14624, 0.00685182028, -1.5315577e-9, -0.999976516, 9.1520524e-9, 1, -1.468884e-9, 0.999976516, -9.141773e-9, 0.00685182028)
                                                wait(0.5)
                                                local args = {
                                                    [1] = "ProQuestProgress",
                                                    [2] = "RichSon"
                                                }
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                            end
                                        end
                                    else
                                        Questtween = toTarget(CFrame.new(-910.979736, 13.7520342, 4078.14624).Position,CFrame.new(-910.979736, 13.7520342, 4078.14624))
                                        if (CFrame.new(-910.979736, 13.7520342, 4078.14624).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                            if Questtween then
                                                Questtween:Stop()
                                            end
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-910.979736, 13.7520342, 4078.14624)
                                            local args = {
                                                [1] = "ProQuestProgress",
                                                [2] = "RichSon"
                                            }
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                        end
                                    end
                                else
                                    if game.Players.LocalPlayer.Backpack:FindFirstChild("Cup") or game.Players.LocalPlayer.Character:FindFirstChild("Cup") then
                                        EquipWeapon("Cup")
                                        if game.Players.LocalPlayer.Character.Cup.Handle:FindFirstChild("TouchInterest") then
                                            Questtween = toTarget(CFrame.new(1397.229, 37.3480148, -1320.85217).Position,CFrame.new(1397.229, 37.3480148, -1320.85217))
                                            if (CFrame.new(1397.229, 37.3480148, -1320.85217).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                                if Questtween then
                                                    Questtween:Stop()
                                                end
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1397.229, 37.3480148, -1320.85217, -0.11285457, 2.0136879e-8, 0.993611455, 1.9164118e-7, 1, 1.5002884e-9, -0.993611455, 1.905862e-7, -0.11285457)
                                            end
                                        else
                                            wait(0.5)
                                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") ~= 0 then
                                                local args = {
                                                    [1] = "ProQuestProgress",
                                                    [2] = "SickMan"
                                                }
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                            end
                                        end
                                    else
                                        Questtween = toTarget(game.Workspace.Map.Desert.Cup.Position,game.Workspace.Map.Desert.Cup.CFrame)
                                        if (game.Workspace.Map.Desert.Cup.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                            if Questtween then
                                                Questtween:Stop()
                                            end
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Map.Desert.Cup.CFrame
                                        end
                                        -- firetouchinterest(game.Workspace.Map.Desert.Cup.TouchInterest,game.Players.LocalPlayer.Character.Head, 1)
                                    end
                                end
                            else
                                if game.Players.LocalPlayer.Backpack:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Torch") then
                                    EquipWeapon("Torch")
                                    Questtween = toTarget(CFrame.new(1114.87708, 4.9214654, 4349.8501).Position,CFrame.new(1114.87708, 4.9214654, 4349.8501))
                                    if (CFrame.new(1114.87708, 4.9214654, 4349.8501).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                        if Questtween then
                                            Questtween:Stop()
                                        end
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1114.87708, 4.9214654, 4349.8501, -0.612586915, -9.686978e-8, 0.790403247, -1.2634203e-7, 1, 2.4638446e-8, -0.790403247, -8.476796e-8, -0.612586915)
                                    end
                                else
                                    Questtween = toTarget(CFrame.new(-1610.00757, 11.5049858, 164.001587).Position,CFrame.new(-1610.00757, 11.5049858, 164.001587))
                                    if (CFrame.new(-1610.00757, 11.5049858, 164.001587).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 300 then
                                        if Questtween then
                                            Questtween:Stop()
                                        end
                                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1610.00757, 11.5049858, 164.001587, 0.984807551, -0.167722285, -0.0449818149, 0.17364943, 0.951244235, 0.254912198, 0.00003423728, -0.258850515, 0.965917408)
                                    end
                                end
                            end
                        else
                            for i,v in pairs(Workspace.Map.Jungle.QuestPlates:GetChildren()) do
                                if v:IsA("Model") then wait()
                                    if v.Button.BrickColor ~= BrickColor.new("Camo") then
                                        repeat wait()
                                            Questtween = toTarget(v.Button.Position,v.Button.CFrame)
                                            if (v.Button.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 150 then
                                                if Questtween then
                                                    Questtween:Stop()
                                                end
                                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Button.CFrame
                                            end
                                        until not _G.Auto_Saber or v.Button.BrickColor == BrickColor.new("Camo")
                                    end
                                end
                            end    
                        end
                    end
                end 
            end
        end
    end)

    Item:Toggle("Auto Pole Not Work", false, function(Value)
        _G.Auto_Pole = Value
        saveSettings()
    end)
end

Stat:Label("Melee Quest")
Stat:Toggle("Auto SuperHuman Not Work", false, function(value)
    _G.Auto_Superhuman = value
    saveSettings()
end)

local Teleport = Tap3:newpage()
Teleport:Label("Teleport")