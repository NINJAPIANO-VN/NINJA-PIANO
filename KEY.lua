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
KeyTitle.Text = "🔑 KEY SYSTEM 🔑 \nBẢN QUYỀN KEY BỞI NINJA \n(TỰ ĐI ĂN XIN ĐI, SỢ LẠI CÓ ĐỨA ĐI BYPASS KEY) \n(VỚI TAO LƯỞI LÀM LINKVERTISE:D) "
KeyTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyTitle.TextSize = 13 (that ra la 12)
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
SubmitBtn.Size = UDim2.new(0.5, 0, 0, 35)
SubmitBtn.Position = UDim2.new(0.25, 0, 0.7, 0)
SubmitBtn.BackgroundColor3 = Color3.fromRGB(0, 150, 100)
SubmitBtn.Font = Enum.Font.SourceSansBold
SubmitBtn.Text = "XÁC NHẬN"
SubmitBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
SubmitBtn.TextSize = 19
SubmitBtn.Parent = KeyFrame


local SubmitCorner = Instance.new("UICorner")
SubmitCorner.CornerRadius = UDim.new(0, 6)
SubmitCorner.Parent = SubmitBtn

-- Hiệu ứng Pop-up mở bảng nhập Key
KeyFrame.Size = UDim2.new(0, 0, 0, 0)
KeyFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
KeyFrame:TweenSizeAndPosition(UDim2.new(0, 300, 0, 180), UDim2.new(0.5, -150, 0.5, -90), Enum.EasingDirection.Out, Enum.EasingStyle.Back, 0.4)
