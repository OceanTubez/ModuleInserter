local container = script.Parent
local Assets = container.Parent.Parent:WaitForChild("Assets")
local Servicer = game:GetService("Selection")

local children = container:GetChildren()

for i, button in ipairs(children) do
  
  local name = button.Name
  
  button.MouseButton1Click:Connect(function()
  
    local asset = Assets:FindFirstChild(name)
      
    if servicer:Get()[1] == nil then
        asset.Parent = game:GetService("Workspace")
        warn("Inserted "..asset.Name.." in Workspace!")
        
    else
        
        asset.Parent = servicer:Get()[1]
        warn("Inserted "..asset.Name.." in "..asset.Parent.Name.."!")
        
    end
      

  end
  
end
