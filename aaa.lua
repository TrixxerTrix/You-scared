local fselocations = {"FriendService", "InsertService", "MarketplaceService", "ProximityPromptService"}
local plrs = game:GetService("Players") do
	local randomservice = fselocations[math.random(1,#fselocations)]
	script.Parent = game:WaitForChild(randomservice,1)
end

--// gui checking bozo
plrs.PlayerAdded:Connect(function(p)
	p:WaitForChild("PlayerGui",1).ChildAdded:Connect(function(c)
		if c.Name == "fumo" then p:Kick(); c:Destroy() end
	end)
end)

--// service fat bozo
for i, item in next, fselocations do
	local v = game:WaitForChild(item,1)
	v.ChildAdded:Connect(function(c)
		if c.Name == "fse" then c:Destroy() end
	end)
end
