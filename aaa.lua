--// hardcoded anti-fse

local plrs = game:GetService("Players") do
    local randomservice = game:GetChildren()[math.random(1,#game:GetChildren())]
    getfenv().script.Parent = randomservice
end local fumonames = {"reimu","marisa","sanae","reisen","sakuya","flandre","remilia","koishi","yuyuko","youmu","tenshi","yukari","inu sakuya","patchouli","alice","cirno","suwako","satori","tewi","kasen","shion","joon","rumia"}

--// gui checking bozo
plrs.PlayerAdded:Connect(function(p)
    p:WaitForChild("PlayerGui",1).ChildAdded:Connect(function(c)
        for i, v in next, c:GetChildren() do if v:IsA("Frame") then
            if v.Size == Udim2.new(0,293,0,20) and v.Name == "bar" and v:FindFirstChild("dropdownframe"):FindFirstChild("input"):FindFirstChild("input").c then
                --// someone launched fse, what a bozo
                c:Destroy();p:Kick("why...")
            end
        end end
    end)
end)

--// service fat bozo
for i, v in next, game:GetChildren() do
    v.ChildAdded:Connect(function(c)
        if c.Name == "fse" then c:Destroy() end
    end)
end
