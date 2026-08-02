local KeyFrame = Instance.new("Frame")
KeyFrame.Name = "KeyFrame"
KeyFrame.Parent = ScreenGui
KeyFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
KeyFrame.Size = UDim2.new(0, 300, 0, 180)
KeyFrame.Position = UDim2.new(0.5, -150, 0.5, -90)
KeyFrame.ClipsDescendants = true

local KeyCorner = Instance.new("UICorner")
KeyCorner.CornerRadius = UDim.new(0, 10)
KeyCorner.Parent = KeyFrame

local KeyTitle = Instance.new("TextLabel")
KeyTitle.Size = UDim2.new(1, 0, 0, 45)
KeyTitle.BackgroundColor3 = Color3.fromRGB(45, 45, 50)
KeyTitle.Font = Enum.Font.SourceSansBold
KeyTitle.Text = "🔑 NINJA PIANO KEY SYSTEM 🔑 \nBẢN QUYỀN KEY BỞI NINJA PIANO\nNhấn Lấy Key để sao chép link nhận key!"
KeyTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyTitle.TextSize = 12
KeyTitle.Parent = KeyFrame

local KeyInput = Instance.new("TextBox")
KeyInput.Size = UDim2.new(0.8, 0, 0, 35)
KeyInput.Position = UDim2.new(0.1, 0, 0.4, 0)
KeyInput.BackgroundColor3 = Color3.fromRGB(40, 40, 45)
KeyInput.Font = Enum.Font.SourceSans
KeyInput.Text = ""
KeyInput.PlaceholderText = "Nhập Key tại đây..."
KeyInput.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyInput.TextSize = 15
KeyInput.Parent = KeyFrame

local KeyInputCorner = Instance.new("UICorner")
KeyInputCorner.CornerRadius = UDim.new(0, 6)
KeyInputCorner.Parent = KeyInput

local SubmitBtn = Instance.new("TextButton")
SubmitBtn.Size = UDim2.new(0.4, 0, 0, 35)
SubmitBtn.Position = UDim2.new(0.55, 0, 0.7, 0)
SubmitBtn.BackgroundColor3 = Color3.fromRGB(0, 150, 100)
SubmitBtn.Font = Enum.Font.SourceSansBold
SubmitBtn.Text = "XÁC NHẬN"
SubmitBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
SubmitBtn.TextSize = 19
SubmitBtn.Parent = KeyFrame

local SubmitCorner = Instance.new("UICorner")
SubmitCorner.CornerRadius = UDim.new(0, 6)
SubmitCorner.Parent = SubmitBtn

local GetKeyBtn = Instance.new("TextButton")
GetKeyBtn.Size = UDim2.new(0.4, 0, 0, 35)
GetKeyBtn.Position = UDim2.new(0.05, 0, 0.7, 0)
GetKeyBtn.BackgroundColor3 = Color3.fromRGB(0, 100, 150)
GetKeyBtn.Font = Enum.Font.SourceSansBold
GetKeyBtn.Text = "LẤY KEY"
GetKeyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
GetKeyBtn.TextSize = 19
GetKeyBtn.Parent = KeyFrame

local GetKeyCorner = Instance.new("UICorner")
GetKeyCorner.CornerRadius = UDim.new(0, 6)
GetKeyCorner.Parent = GetKeyBtn

-- Hiệu ứng Pop-up mở bảng nhập Key
KeyFrame.Size = UDim2.new(0, 0, 0, 0)
KeyFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
KeyFrame:TweenSizeAndPosition(UDim2.new(0, 300, 0, 180), UDim2.new(0.5, -150, 0.5, -90), Enum.EasingDirection.Out, Enum.EasingStyle.Back, 0.4)
----------------------------------------------------------------
-- XỬ LÝ SỰ KIỆN TƯƠNG TÁC
----------------------------------------------------------------

-- Khởi tạo Junkie Key System
local Junkie = loadstring(game:HttpGet("https://jnkie.com/sdk/library.lua"))()
Junkie.service = "Key NINJA PIANO 🎹🎵"
Junkie.identifier = "1118220"
Junkie.provider = "NINJA PIANO SCRIPT KEY"

-- Nhấp nút Lấy Key
GetKeyBtn.MouseButton1Click:Connect(function()
    local link, err = Junkie.get_key_link()
    if link then
        setclipboard(link)
        KeyInput.Text = ""
        KeyInput.PlaceholderText = "Đã copy link lấy Key!"
    else
        KeyInput.Text = ""
        KeyInput.PlaceholderText = "Lỗi lấy link: " .. tostring(err)
    end
end)

-- Nhấp nút Xác nhận Key
SubmitBtn.MouseButton1Click:Connect(function()
    local key = KeyInput.Text
    if key == "" then
        KeyInput.PlaceholderText = "Vui lòng nhập Key!"
        return
    end

    local result = Junkie.check_key(key)
    if result and result.valid then
        KeyFrame:TweenSizeAndPosition(UDim2.new(0, 0, 0, 0), UDim2.new(0.5, 0, 0.5, 0), Enum.EasingDirection.In, Enum.EasingStyle.Back, 0.3)
        task.wait(0.3)
        KeyFrame:Destroy()
        
        MainFrame.Visible = true
        HideButton.Visible = true
        
        -- Bung mở rộng Menu chính mượt mà
        MainFrame:TweenSize(UDim2.new(0, 380, 0, 470), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.4, true)
    else
        KeyInput.Text = ""
        KeyInput.PlaceholderText = "Sai Key hoặc Key hết hạn!"
    end
while not getgenv().SCRIPT_KEY do
    task.wait(0.1)
   end
end)
