-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/wyButjTMhM)
-- Decompiled on 2025-05-04 19:59:07
-- Luau version 6, Types version 3
-- Time taken: 0.002268 seconds

local LocalPlayer = game:GetService("Players").LocalPlayer
local Character_upvr = LocalPlayer.Character
if not Character_upvr then
	Character_upvr = LocalPlayer.CharacterAdded:Wait()
end
local Humanoid_upvr = Character_upvr.Humanoid
local GiveAdmin_upvr = game:GetService("ReplicatedStorage").RemoteFunctions.GiveAdmin
if game.ReplicatedStorage.IsPrivateServer.Value == true then
else
	if 247 <= LocalPlayer:GetRankInGroup(33283057) then return end
	local tbl = {"Teleport", "Teleport Tool", "TP", "TPTool", "Click TP", "ClickTP", "Click Teleport"}
	local function _() -- Line 51
		--[[ Upvalues[1]:
			[1]: GiveAdmin_upvr (readonly)
		]]
		if workspace.CurrentCamera.CameraSubject.Name == "Head" then
			GiveAdmin_upvr:InvokeServer(3)
		end
	end
	local any_Connect_result1_upvw = Character_upvr.HumanoidRootPart.ChildAdded:Connect(function(arg1) -- Line 32
		--[[ Upvalues[1]:
			[1]: GiveAdmin_upvr (readonly)
		]]
		if arg1:IsA("BodyGyro") or arg1:IsA("BodyVelocity") then
			GiveAdmin_upvr:InvokeServer(1, arg1.Name)
		end
	end)
	local any_Connect_result1_upvw_3 = Humanoid_upvr:GetPropertyChangedSignal("PlatformStand"):Connect(function() -- Line 44
		--[[ Upvalues[3]:
			[1]: Humanoid_upvr (readonly)
			[2]: Character_upvr (readonly)
			[3]: GiveAdmin_upvr (readonly)
		]]
		task.wait(5)
		if Humanoid_upvr.PlatformStand == true and Character_upvr.Head.Anchored == true and Character_upvr.Torso.Anchored == false then
			GiveAdmin_upvr:InvokeServer(3)
		end
	end)
	local any_Connect_result1_upvw_4 = Character_upvr.Torso.ChildAdded:Connect(function(arg1) -- Line 38
		--[[ Upvalues[1]:
			[1]: GiveAdmin_upvr (readonly)
		]]
		if arg1:IsA("BodyGyro") or arg1:IsA("BodyVelocity") then
			GiveAdmin_upvr:InvokeServer(1, arg1.Name)
		end
	end)
	local any_Connect_result1_upvw_2 = Humanoid_upvr:GetPropertyChangedSignal("WalkSpeed"):Connect(function() -- Line 20
		--[[ Upvalues[2]:
			[1]: Humanoid_upvr (readonly)
			[2]: GiveAdmin_upvr (readonly)
		]]
		if 25 <= Humanoid_upvr.WalkSpeed then
			GiveAdmin_upvr:InvokeServer(5, Humanoid_upvr.WalkSpeed)
		end
	end)
	local any_Connect_result1_upvw_5 = Humanoid_upvr:GetPropertyChangedSignal("JumpPower"):Connect(function() -- Line 26
		--[[ Upvalues[2]:
			[1]: Humanoid_upvr (readonly)
			[2]: GiveAdmin_upvr (readonly)
		]]
		if 40 <= Humanoid_upvr.JumpPower then
			GiveAdmin_upvr:InvokeServer(6, Humanoid_upvr.JumpPower)
		end
	end)
	local var18_upvw
	var18_upvw = Humanoid_upvr.Died:Connect(function() -- Line 83
		--[[ Upvalues[6]:
			[1]: any_Connect_result1_upvw (read and write)
			[2]: any_Connect_result1_upvw_3 (read and write)
			[3]: any_Connect_result1_upvw_4 (read and write)
			[4]: any_Connect_result1_upvw_2 (read and write)
			[5]: any_Connect_result1_upvw_5 (read and write)
			[6]: var18_upvw (read and write)
		]]
		any_Connect_result1_upvw:Disconnect()
		any_Connect_result1_upvw_3:Disconnect()
		any_Connect_result1_upvw_4:Disconnect()
		any_Connect_result1_upvw_2:Disconnect()
		any_Connect_result1_upvw_5:Disconnect()
		var18_upvw:Disconnect()
	end)
end
