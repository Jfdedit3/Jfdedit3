-- NovaUI Minimal Working Example
-- This is a self-contained version for testing with your executor
-- You can now run it directly without relying on an external URL

local NovaUI = {}

function NovaUI:MakeWindow(options)
    local Window = {}
    Window.Tabs = {}
    function Window:MakeTab(tabOptions)
        local Tab = {}
        Tab.Elements = {}
        function Tab:AddButton(btn)
            print("[Button Added]:", btn.Name)
            return btn
        end
        function Tab:AddToggle(toggle)
            print("[Toggle Added]:", toggle.Name)
            return toggle
        end
        function Tab:AddSlider(slider)
            print("[Slider Added]:", slider.Name)
            return slider
        end
        function Tab:AddDropdown(dropdown)
            print("[Dropdown Added]:", dropdown.Name)
            return dropdown
        end
        function Tab:AddTextbox(textbox)
            print("[Textbox Added]:", textbox.Name)
            return textbox
        end
        function Tab:AddKeybind(keybind)
            print("[Keybind Added]:", keybind.Name)
            return keybind
        end
        table.insert(Window.Tabs, Tab)
        return Tab
    end
    function Window:Notification(notif)
        print("[Notification]:", notif.Title, notif.Text)
    end
    function Window:Show()
        print("[Window Shown]:", options.Title)
    end
    function Window:Toggle()
        print("[Window Toggled]:", options.Title)
    end
    return Window
end

return NovaUI

local function new(className, props, children)
	local inst = Instance.new(className)
	if props then
		for k, v in pairs(props) do
			inst[k] = v
		end
	end
	if children then
		for _, child in ipairs(children) do
			child.Parent = inst
		end
	end
	return inst
end

local function tween(o, t, goal)
	return TweenService:Create(o, TweenInfo.new(t, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), goal)
end

local function round(n, inc)
	inc = inc or 1
	return math.floor(n / inc + 0.5) * inc
end

local ThemePresets = {
	Dark = {
		Primary = Color3.fromRGB(28, 28, 32),
		PrimaryAlt = Color3.fromRGB(36, 36, 42),
		Accent = Color3.fromRGB(99, 102, 241),
		Accent2 = Color3.fromRGB(129, 140, 248),
		Text = Color3.fromRGB(235, 235, 245),
		TextDim = Color3.fromRGB(180, 183, 192),
		Stroke = Color3.fromRGB(60, 60, 70),
		Good = Color3.fromRGB(34, 197, 94),
		Warn = Color3.fromRGB(245, 158, 11),
		Bad  = Color3.fromRGB(239, 68, 68),
		Shadow = Color3.fromRGB(0, 0, 0),
		Glass = Color3.fromRGB(255, 255, 255),
		GlassTransparency = 0.95,
	},
	Light = {
		Primary = Color3.fromRGB(246, 247, 249),
		PrimaryAlt = Color3.fromRGB(236, 238, 242),
		Accent = Color3.fromRGB(59, 130, 246),
		Accent2 = Color3.fromRGB(96, 165, 250),
		Text = Color3.fromRGB(23, 23, 28),
		TextDim = Color3.fromRGB(90, 94, 108),
		Stroke = Color3.fromRGB(210, 214, 220),
		Good = Color3.fromRGB(16, 185, 129),
		Warn = Color3.fromRGB(217, 119, 6),
		Bad  = Color3.fromRGB(220, 38, 38),
		Shadow = Color3.fromRGB(0, 0, 0),
		Glass = Color3.fromRGB(255, 255, 255),
		GlassTransparency = 0.2,
	},
}

local NovaUI = {}
NovaUI.__index = NovaUI

NovaUI._instances = {}

function NovaUI:CreateWindow(cfg)
	cfg = cfg or {}
	local theme = cfg.Theme and ThemePresets[cfg.Theme] or ThemePresets.Dark
	local size = cfg.Size or Vector2.new(720, 440) -- compact, not fullscreen
	local title = cfg.Title or "Nova UI"
	local subtitle = cfg.Subtitle or "Interface"
	local initTab = nil

	local ScreenGui = new("ScreenGui", { Name = "NovaUI_ScreenGui", ResetOnSpawn = false, ZIndexBehavior = Enum.ZIndexBehavior.Sibling })
	safeParent(ScreenGui)

	-- Drop shadow container
	local Shadow = new("Frame", {
		Name = "Shadow",
		Parent = ScreenGui,
		BackgroundColor3 = theme.Shadow,
		BackgroundTransparency = 1,
		Size = UDim2.fromOffset(size.X + 40, size.Y + 40),
		Position = UDim2.new(0.5, 20, 0.5, 20),
		AnchorPoint = Vector2.new(0.5, 0.5)
	})

	local Main = new("Frame", {
		Name = "Main",
		Parent = ScreenGui,
		BackgroundColor3 = theme.Primary,
		BorderSizePixel = 0,
		Size = UDim2.fromOffset(size.X, size.Y),
		Position = UDim2.fromScale(0.5, 0.5),
		AnchorPoint = Vector2.new(0.5, 0.5)
	})

	local UICornerMain = new("UICorner", { CornerRadius = UDim.new(0, 14), Parent = Main })
	local UIStrokeMain = new("UIStroke", { Color = theme.Stroke, Thickness = 1, Transparency = 0.2, ApplyStrokeMode = Enum.ApplyStrokeMode.Border, Parent = Main })

	-- Title Bar
	local TitleBar = new("Frame", {
		Name = "TitleBar",
		Parent = Main,
		Size = UDim2.new(1, 0, 0, 44),
		BackgroundColor3 = theme.PrimaryAlt,
		BorderSizePixel = 0
	})
	new("UICorner", { CornerRadius = UDim.new(0, 14), Parent = TitleBar })

	local TitleLabel = new("TextLabel", {
		Name = "Title",
		Parent = TitleBar,
		BackgroundTransparency = 1,
		Text = title,
		Font = Enum.Font.GothamMedium,
		TextSize = 18,
		TextColor3 = theme.Text,
		TextXAlignment = Enum.TextXAlignment.Left,
		Position = UDim2.new(0, 16, 0, 4),
		Size = UDim2.new(1, -120, 0, 24)
	})

	local SubtitleLabel = new("TextLabel", {
		Name = "Subtitle",
		Parent = TitleBar,
		BackgroundTransparency = 1,
		Text = subtitle,
		Font = Enum.Font.Gotham,
		TextSize = 13,
		TextColor3 = theme.TextDim,
		TextXAlignment = Enum.TextXAlignment.Left,
		Position = UDim2.new(0, 16, 0, 24),
		Size = UDim2.new(1, -120, 0, 18)
	})

	local CloseBtn = new("TextButton", {
		Name = "Close",
		Parent = TitleBar,
		Text = "✕",
		Font = Enum.Font.GothamBold,
		TextSize = 18,
		TextColor3 = theme.TextDim,
		BackgroundTransparency = 1,
		AutoButtonColor = false,
		Size = UDim2.fromOffset(36, 36),
		Position = UDim2.new(1, -40, 0, 4)
	})

	local MinBtn = new("TextButton", {
		Name = "Minimize",
		Parent = TitleBar,
		Text = "—",
		Font = Enum.Font.GothamBold,
		TextSize = 18,
		TextColor3 = theme.TextDim,
		BackgroundTransparency = 1,
		AutoButtonColor = false,
		Size = UDim2.fromOffset(36, 36),
		Position = UDim2.new(1, -80, 0, 4)
	})

	-- Tabs column
	local TabsCol = new("Frame", {
		Name = "Tabs",
		Parent = Main,
		BackgroundTransparency = 1,
		Size = UDim2.new(0, 180, 1, -44),
		Position = UDim2.new(0, 0, 0, 44)
	})

	local TabsList = new("ScrollingFrame", {
		Name = "TabsList",
		Parent = TabsCol,
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		ScrollBarThickness = 4,
		CanvasSize = UDim2.new(),
		AutomaticCanvasSize = Enum.AutomaticSize.Y,
		Size = UDim2.new(1, 0, 1, -8),
		Position = UDim2.fromOffset(0, 8)
	})
	new("UIListLayout", { Parent = TabsList, SortOrder = Enum.SortOrder.LayoutOrder, Padding = UDim.new(0, 6) })
	new("UIPadding", { Parent = TabsList, PaddingTop = UDim.new(0, 6), PaddingLeft = UDim.new(0, 8), PaddingRight = UDim.new(0, 8), PaddingBottom = UDim.new(0, 6) })

	-- Content area
	local Content = new("Frame", {
		Name = "Content",
		Parent = Main,
		BackgroundTransparency = 1,
		Size = UDim2.new(1, -180, 1, -44),
		Position = UDim2.new(0, 180, 0, 44)
	})

	local Pages = new("Folder", { Name = "Pages", Parent = Content })

	-- Status bar
	local StatusBar = new("TextLabel", {
		Name = "Status",
		Parent = Main,
		BackgroundTransparency = 1,
		Text = "Ready",
		Font = Enum.Font.Gotham,
		TextSize = 12,
		TextColor3 = theme.TextDim,
		TextXAlignment = Enum.TextXAlignment.Left,
		Size = UDim2.new(1, -16, 0, 18),
		Position = UDim2.new(0, 8, 1, -20)
	})

	-- Draggable window
	local dragging = false
	local dragStart, startPos
	TitleBar.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = Main.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then dragging = false end
			end)
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
			local delta = input.Position - dragStart
			Main.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		end
	end)

	-- Minimize & Close
	local minimized = false
	MinBtn.MouseButton1Click:Connect(function()
		minimized = not minimized
		tween(Content, 0.2, { Size = minimized and UDim2.new(1, -180, 0, 0) or UDim2.new(1, -180, 1, -44) }):Play()
		StatusBar.Text = minimized and "Minimized" or "Ready"
	end)

	CloseBtn.MouseButton1Click:Connect(function()
		ScreenGui:Destroy()
	end)

	-- Hotkey to toggle visibility (RightShift)
	local toggleKey = cfg.ToggleKey or Enum.KeyCode.RightShift
	UserInputService.InputBegan:Connect(function(input, processed)
		if not processed and input.KeyCode == toggleKey then
			ScreenGui.Enabled = not ScreenGui.Enabled
		end
	end)

	-- Notifications container
	local ToastContainer = new("Frame", {
		Name = "Toasts",
		Parent = ScreenGui,
		BackgroundTransparency = 1,
		Size = UDim2.new(0, 300, 1, -20),
		Position = UDim2.new(1, -320, 0, 10)
	})
	new("UIListLayout", { Parent = ToastContainer, SortOrder = Enum.SortOrder.LayoutOrder, Padding = UDim.new(0, 8) })

	-- Window object
	local window = {
		_Gui = ScreenGui,
		_Main = Main,
		_TabsList = TabsList,
		_Pages = Pages,
		_Status = StatusBar,
		_Theme = theme,
		_ToastContainer = ToastContainer,
		_Tabs = {},
	}

	function window:SetStatus(text)
		StatusBar.Text = text or ""
	end

	function window:Notify(titleText, message, duration)
		duration = duration or 3
		local card = new("Frame", {
			Parent = ToastContainer,
			BackgroundColor3 = theme.PrimaryAlt,
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 0, 0)
		})
		new("UICorner", { Parent = card, CornerRadius = UDim.new(0, 10) })
		new("UIStroke", { Parent = card, Color = theme.Stroke, Transparency = 0.3 })
		local pad = new("UIPadding", { Parent = card, PaddingTop = UDim.new(0, 10), PaddingBottom = UDim.new(0, 10), PaddingLeft = UDim.new(0, 10), PaddingRight = UDim.new(0, 10) })
		local titleL = new("TextLabel", { Parent = card, BackgroundTransparency = 1, Text = titleText or "Notification", Font = Enum.Font.GothamSemibold, TextSize = 14, TextColor3 = theme.Text, TextXAlignment = Enum.TextXAlignment.Left, Size = UDim2.new(1, -20, 0, 18) })
		local bodyL = new("TextLabel", { Parent = card, BackgroundTransparency = 1, Text = message or "", Font = Enum.Font.Gotham, TextSize = 13, TextColor3 = theme.TextDim, TextWrapped = true, TextXAlignment = Enum.TextXAlignment.Left, Position = UDim2.new(0, 0, 0, 20), Size = UDim2.new(1, -20, 0, 18) })
		card.Size = UDim2.new(1, 0, 0, titleL.TextBounds.Y + bodyL.TextBounds.Y + pad.PaddingTop.Offset + pad.PaddingBottom.Offset + 10)
		tween(card, 0.2, { BackgroundTransparency = 0 }):Play()
		task.delay(duration, function()
			if card and card.Parent then
				tween(card, 0.2, { BackgroundTransparency = 1 }):Play()
				RunService.Heartbeat:Wait()
				card:Destroy()
			end
		end)
	end

	local function makeTabButton(tabName)
		local btn = new("TextButton", {
			Parent = TabsList,
			Text = tabName,
			Font = Enum.Font.GothamMedium,
			TextSize = 14,
			TextColor3 = theme.Text,
			BackgroundColor3 = theme.PrimaryAlt,
			AutoButtonColor = true,
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 0, 36)
		})
		new("UICorner", { Parent = btn, CornerRadius = UDim.new(0, 8) })
		new("UIStroke", { Parent = btn, Color = theme.Stroke, Transparency = 0.4 })
		return btn
	end

	local function makePage()
		local scroller = new("ScrollingFrame", {
			Parent = Pages,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			ScrollBarThickness = 4,
			CanvasSize = UDim2.new(),
			AutomaticCanvasSize = Enum.AutomaticSize.Y,
			Size = UDim2.fromScale(1, 1),
			Visible = false
		})
		new("UIListLayout", { Parent = scroller, SortOrder = Enum.SortOrder.LayoutOrder, Padding = UDim.new(0, 10) })
		new("UIPadding", { Parent = scroller, PaddingTop = UDim.new(0, 10), PaddingLeft = UDim.new(0, 10), PaddingRight = UDim.new(0, 10), PaddingBottom = UDim.new(0, 10) })
		return scroller
	end

	local function selectTab(tab)
		for _, t in ipairs(window._Tabs) do
			t.Page.Visible = (t == tab)
			t.Selected = (t == tab)
			tween(t.Button, 0.15, { BackgroundColor3 = t.Selected and theme.Accent or theme.PrimaryAlt, TextColor3 = t.Selected and Color3.new(1,1,1) or theme.Text }):Play()
		end
		window:SetStatus("Tab: " .. (tab.Name or ""))
	end

	function window:CreateTab(tabName)
		tabName = tabName or "Tab"
		local btn = makeTabButton(tabName)
		local page = makePage()
		local tab = { Name = tabName, Button = btn, Page = page, Sections = {}, Selected = false }
		table.insert(window._Tabs, tab)
		btn.MouseButton1Click:Connect(function() selectTab(tab) end)
		if not initTab then initTab = tab selectTab(tab) end

		function tab:AddSection(sectionTitle, collapsible)
			local section = {}
			local holder = new("Frame", { Parent = page, BackgroundColor3 = theme.PrimaryAlt, BorderSizePixel = 0, Size = UDim2.new(1, -8, 0, 44) })
			new("UICorner", { Parent = holder, CornerRadius = UDim.new(0, 10) })
			new("UIStroke", { Parent = holder, Color = theme.Stroke, Transparency = 0.3 })
			local layout = new("UIListLayout", { Parent = holder, SortOrder = Enum.SortOrder.LayoutOrder, Padding = UDim.new(0, 8) })
			new("UIPadding", { Parent = holder, PaddingTop = UDim.new(0, 10), PaddingLeft = UDim.new(0, 10), PaddingRight = UDim.new(0, 10), PaddingBottom = UDim.new(0, 10) })

			local header = new("Frame", { Parent = holder, BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 24) })
			local titleL = new("TextLabel", { Parent = header, BackgroundTransparency = 1, Text = sectionTitle or "Section", Font = Enum.Font.GothamSemibold, TextSize = 14, TextColor3 = theme.Text, TextXAlignment = Enum.TextXAlignment.Left, Size = UDim2.new(1, -30, 1, 0) })
			local caret = new("TextButton", { Parent = header, Text = collapsible and "▼" or "", Font = Enum.Font.GothamBold, TextSize = 14, TextColor3 = theme.TextDim, BackgroundTransparency = 1, AutoButtonColor = false, Size = UDim2.fromOffset(24, 24), Position = UDim2.new(1, -24, 0, 0) })

			local content = new("Frame", { Parent = holder, BackgroundTransparency = 1, Size = UDim2.new(1, 0, 0, 0) })
			local contentList = new("UIListLayout", { Parent = content, SortOrder = Enum.SortOrder.LayoutOrder, Padding = UDim.new(0, 8) })

			local expanded = true
			local function setExpanded(v)
				expanded = v
				caret.Text = expanded and "▼" or "▶"
				local targetY = 0
				for _, c in ipairs(content:GetChildren()) do
					if c:IsA("GuiObject") then targetY += c.AbsoluteSize.Y + contentList.Padding.Offset end
				end
				if not expanded then targetY = 0 end
				tween(content, 0.15, { Size = UDim2.new(1, 0, 0, targetY) }):Play()
			end

			if collapsible then
				caret.MouseButton1Click:Connect(function()
					setExpanded(not expanded)
				end)
				RunService.Heartbeat:Wait()
				setExpanded(true)
			else
				content.Size = UDim2.new(1, 0, 0, 0)
				RunService.Heartbeat:Wait()
				setExpanded(true)
			end

			local function controlContainer(height)
				local item = new("Frame", { Parent = content, BackgroundColor3 = theme.Primary, BorderSizePixel = 0, Size = UDim2.new(1, -8, 0, height or 40) })
				new("UICorner", { Parent = item, CornerRadius = UDim.new(0, 8) })
				new("UIStroke", { Parent = item, Color = theme.Stroke, Transparency = 0.5 })
				return item
			end

			function section:AddLabel(text)
				local box = controlContainer(36)
				new("TextLabel", { Parent = box, BackgroundTransparency = 1, Text = text or "Label", Font = Enum.Font.Gotham, TextSize = 13, TextColor3 = theme.Text, TextXAlignment = Enum.TextXAlignment.Left, Size = UDim2.new(1, -16, 1, 0), Position = UDim2.new(0, 8, 0, 0) })
				return box
			end

			function section:AddSeparator()
				local sep = new("Frame", { Parent = content, BackgroundColor3 = theme.Stroke, BorderSizePixel = 0, Size = UDim2.new(1, -8, 0, 1) })
				return sep
			end

			function section:AddButton(opts)
				opts = opts or {}
				local text = opts.Text or "Button"
				local callback = opts.Callback or function() end
				local btn = controlContainer(40)
				local t = new("TextButton", { Parent = btn, BackgroundTransparency = 1, Text = text, Font = Enum.Font.GothamSemibold, TextSize = 14, TextColor3 = theme.Text, AutoButtonColor = false, Size = UDim2.new(1, -16, 1, 0), Position = UDim2.new(0, 8, 0, 0) })
				t.MouseButton1Click:Connect(function()
					window:Notify("Button", text .. " pressed", 1.5)
					callback()
				end)
				return t
			end

			function section:AddToggle(opts)
				opts = opts or {}
				local text = opts.Text or "Toggle"
				local state = opts.Default or false
				local callback = opts.Callback or function() end
				local box = controlContainer(40)
				local label = new("TextLabel", { Parent = box, BackgroundTransparency = 1, Text = text, Font = Enum.Font.Gotham, TextSize = 13, TextColor3 = theme.Text, TextXAlignment = Enum.TextXAlignment.Left, Size = UDim2.new(1, -64, 1, 0), Position = UDim2.new(0, 8, 0, 0) })
				local switch = new("TextButton", { Parent = box, Text = state and "ON" or "OFF", Font = Enum.Font.GothamBold, TextSize = 12, TextColor3 = Color3.new(1,1,1), BackgroundColor3 = state ? theme.Good : theme.Bad, AutoButtonColor = false, Size = UDim2.fromOffset(56, 24), Position = UDim2.new(1, -64, 0.5, -12) })
				new("UICorner", { Parent = switch, CornerRadius = UDim.new(1, 0) })
				switch.MouseButton1Click:Connect(function()
					state = not state
					switch.Text = state and "ON" or "OFF"
					tween(switch, 0.15, { BackgroundColor3 = state and theme.Good or theme.Bad }):Play()
					callback(state)
				end)
				return { Set = function(_, v)
					state = not not v
					switch.Text = state and "ON" or "OFF"
					switch.BackgroundColor3 = state and theme.Good or theme.Bad
				end }
			end

			function section:AddSlider(opts)
				opts = opts or {}
				local text = opts.Text or "Slider"
				local min = opts.Min or 0
				local max = opts.Max or 100
				local default = math.clamp(opts.Default or min, min, max)
				local step = opts.Step or 1
				local callback = opts.Callback or function() end

				local box = controlContainer(52)
				local label = new("TextLabel", { Parent = box, BackgroundTransparency = 1, Text = ("%s: %s"):format(text, tostring(default)), Font = Enum.Font.Gotham, TextSize = 13, TextColor3 = theme.Text, TextXAlignment = Enum.TextXAlignment.Left, Size = UDim2.new(1, -16, 0, 18), Position = UDim2.new(0, 8, 0, 6) })
				local track = new("Frame", { Parent = box, BackgroundColor3 = theme.Stroke, BorderSizePixel = 0, Size = UDim2.new(1, -16, 0, 6), Position = UDim2.new(0, 8, 0, 34) })
				local fill = new("Frame", { Parent = track, BackgroundColor3 = theme.Accent, BorderSizePixel = 0, Size = UDim2.new((default - min) / (max - min), 0, 1, 0) })
				new("UICorner", { Parent = track, CornerRadius = UDim.new(1, 0) })
				new("UICorner", { Parent = fill, CornerRadius = UDim.new(1, 0) })

				local value = default
				local function setVal(v)
					v = round(math.clamp(v, min, max), step)
					value = v
					label.Text = ("%s: %s"):format(text, tostring(value))
					fill.Size = UDim2.new((value - min) / (max - min), 0, 1, 0)
					callback(value)
				end

				track.InputBegan:Connect(function(input)
					if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
						local conn
						local function update(pos)
							local rel = (pos.X - track.AbsolutePosition.X) / track.AbsoluteSize.X
							setVal(min + rel * (max - min))
						end
						update(input.Position)
						conn = UserInputService.InputChanged:Connect(function(ch)
							if ch.UserInputType == Enum.UserInputType.MouseMovement or ch.UserInputType == Enum.UserInputType.Touch then
								update(ch.Position)
							end
						end)
						local endedConn
						endedConn = UserInputService.InputEnded:Connect(function(endInput)
							if endInput.UserInputType == Enum.UserInputType.MouseButton1 or endInput.UserInputType == Enum.UserInputType.Touch then
								if conn then conn:Disconnect() end
								if endedConn then endedConn:Disconnect() end
							end
						end)
					end
				end)

				return { Set = function(_, v) setVal(v) end }
			end

			function section:AddDropdown(opts)
				opts = opts or {}
				local text = opts.Text or "Dropdown"
				local list = opts.Values or {"A","B","C"}
				local default = opts.Default or list[1]
				local callback = opts.Callback or function() end

				local box = controlContainer(44)
				local label = new("TextLabel", { Parent = box, BackgroundTransparency = 1, Text = text .. ": " .. tostring(default), Font = Enum.Font.Gotham, TextSize = 13, TextColor3 = theme.Text, TextXAlignment = Enum.TextXAlignment.Left, Size = UDim2.new(1, -40, 1, 0), Position = UDim2.new(0, 8, 0, 0) })
				local caret = new("TextButton", { Parent = box, BackgroundTransparency = 1, Text = "▼", Font = Enum.Font.GothamBold, TextSize = 14, TextColor3 = theme.TextDim, AutoButtonColor = false, Size = UDim2.fromOffset(24, 24), Position = UDim2.new(1, -32, 0.5, -12) })

				local menu
				local function openMenu()
					if menu and menu.Parent then menu:Destroy() end
					menu = new("Frame", { Parent = box, BackgroundColor3 = theme.PrimaryAlt, BorderSizePixel = 0, Size = UDim2.new(1, 0, 0, math.min(160, #list * 28)), Position = UDim2.new(0, 0, 1, 6) })
					new("UICorner", { Parent = menu, CornerRadius = UDim.new(0, 8) })
					new("UIStroke", { Parent = menu, Color = theme.Stroke, Transparency = 0.4 })
					local sc = new("ScrollingFrame", { Parent = menu, BackgroundTransparency = 1, BorderSizePixel = 0, ScrollBarThickness = 4, AutomaticCanvasSize = Enum.AutomaticSize.Y, Size = UDim2.fromScale(1,1) })
					new("UIListLayout", { Parent = sc, SortOrder = Enum.SortOrder.LayoutOrder, Padding = UDim.new(0, 4) })
					new("UIPadding", { Parent = sc, PaddingTop = UDim.new(0, 6), PaddingLeft = UDim.new(0, 6), PaddingRight = UDim.new(0, 6), PaddingBottom = UDim.new(0, 6) })
					for _, v in ipairs(list) do
						local it = new("TextButton", { Parent = sc, Text = tostring(v), Font = Enum.Font.Gotham, TextSize = 13, TextColor3 = theme.Text, BackgroundColor3 = theme.Primary, BorderSizePixel = 0, AutoButtonColor = true, Size = UDim2.new(1, 0, 0, 26) })
						new("UICorner", { Parent = it, CornerRadius = UDim.new(0, 6) })
						it.MouseButton1Click:Connect(function()
							default = v
							label.Text = text .. ": " .. tostring(v)
							if menu then menu:Destroy() end
							callback(v)
						end)
					end
				end
				caret.MouseButton1Click:Connect(openMenu)

				return { Set = function(_, v)
					default = v
					label.Text = text .. ": " .. tostring(v)
				end, Refresh = function(_, values)
					list = values
					if menu then menu:Destroy() end
				end }
			end

			function section:AddTextbox(opts)
				opts = opts or {}
				local text = opts.Text or "Textbox"
				local placeholder = opts.Placeholder or "Type here..."
				local default = opts.Default or ""
				local clearOnFocus = opts.ClearOnFocus ~= false
				local callback = opts.Callback or function() end

				local box = controlContainer(44)
				local label = new("TextLabel", { Parent = box, BackgroundTransparency = 1, Text = text, Font = Enum.Font.Gotham, TextSize = 13, TextColor3 = theme.Text, TextXAlignment = Enum.TextXAlignment.Left, Size = UDim2.new(0.35, -16, 1, 0), Position = UDim2.new(0, 8, 0, 0) })
				local input = new("TextBox", { Parent = box, BackgroundColor3 = theme.PrimaryAlt, BorderSizePixel = 0, PlaceholderText = placeholder, Text = default, ClearTextOnFocus = clearOnFocus, Font = Enum.Font.Gotham, TextSize = 13, TextColor3 = theme.Text, Size = UDim2.new(0.6, -16, 0, 28), Position = UDim2.new(1, -10, 0.5, -14), AnchorPoint = Vector2.new(1, 0) })
				new("UICorner", { Parent = input, CornerRadius = UDim.new(0, 6) })
				new("UIStroke", { Parent = input, Color = theme.Stroke, Transparency = 0.5 })
				input.FocusLost:Connect(function(enter)
					callback(input.Text, enter)
				end)
				return input
			end

			function section:AddKeybind(opts)
				opts = opts or {}
				local text = opts.Text or "Keybind"
				local default = opts.Default or Enum.KeyCode.F
				local callback = opts.Callback or function() end

				local box = controlContainer(40)
				local label = new("TextLabel", { Parent = box, BackgroundTransparency = 1, Text = text, Font = Enum.Font.Gotham, TextSize = 13, TextColor3 = theme.Text, TextXAlignment = Enum.TextXAlignment.Left, Size = UDim2.new(1, -120, 1, 0), Position = UDim2.new(0, 8, 0, 0) })
				local keyBtn = new("TextButton", { Parent = box, BackgroundColor3 = theme.PrimaryAlt, BorderSizePixel = 0, AutoButtonColor = false, Text = default.Name, Font = Enum.Font.GothamBold, TextSize = 12, TextColor3 = theme.Text, Size = UDim2.fromOffset(80, 24), Position = UDim2.new(1, -88, 0.5, -12) })
				new("UICorner", { Parent = keyBtn, CornerRadius = UDim.new(0, 6) })
				new("UIStroke", { Parent = keyBtn, Color = theme.Stroke, Transparency = 0.5 })

				local binding = false
				keyBtn.MouseButton1Click:Connect(function()
					binding = true
					keyBtn.Text = "Press key..."
				end)
				UserInputService.InputBegan:Connect(function(input, gp)
					if gp then return end
					if binding and input.KeyCode ~= Enum.KeyCode.Unknown then
						binding = false
						default = input.KeyCode
						keyBtn.Text = default.Name
						window:Notify("Keybind", text .. " set to " .. default.Name, 1.2)
						callback(default)
					elseif input.KeyCode == default then
						callback(default)
					end
				end)
				return { Set = function(_, kc) default = kc keyBtn.Text = kc.Name end }
			end

			-- return section object
			return section
		end

		return tab
	end

	-- initial status
	window:Notify("NovaUI", "Window created successfully", 1.2)
	return window
end

-- Export
local Library = setmetatable({}, NovaUI)

--[[ --------------------------------------------------------------
DEMO USAGE — You can remove everything below if you only want the library
------------------------------------------------------------------]]

do
	local win = Library:CreateWindow({
		Title = "NovaUI",
		Subtitle = "Compact Orion-like Library",
		Theme = "Dark", -- or "Light"
		Size = Vector2.new(720, 440),
		ToggleKey = Enum.KeyCode.RightShift,
	})

	local tab1 = win:CreateTab("Main")
	local secA = tab1:AddSection("Actions", true)
	secA:AddButton({ Text = "Run Action", Callback = function() win:Notify("Action", "Action executed", 1.2) end })
	local tog = secA:AddToggle({ Text = "Enable Feature", Default = true, Callback = function(v) win:SetStatus(v and "Feature enabled" or "Feature disabled") end })
	secA:AddSeparator()
	local slider = secA:AddSlider({ Text = "Speed", Min = 0, Max = 200, Default = 85, Step = 5, Callback = function(v) win:SetStatus("Speed = "..v) end })

	local secB = tab1:AddSection("Input", true)
	secB:AddTextbox({ Text = "Username", Placeholder = "Enter username", Callback = function(v) win:Notify("Input", "Username set: "..v, 1.2) end })
	secB:AddDropdown({ Text = "Mode", Values = {"Normal","Stealth","Turbo","Eco"}, Default = "Normal", Callback = function(v) win:SetStatus("Mode: "..v) end })
	secB:AddKeybind({ Text = "Do Thing", Default = Enum.KeyCode.F, Callback = function() win:Notify("Keybind", "Thing triggered", 0.8) end })

	local tab2 = win:CreateTab("Settings")
	local s1 = tab2:AddSection("Display", true)
	s1:AddToggle({ Text = "Dark Mode", Default = true, Callback = function(v) win:Notify("Display", v and "Dark" or "Light", 1) end })
	s1:AddSlider({ Text = "Opacity", Min = 0, Max = 100, Default = 100, Step = 5 })
	local s2 = tab2:AddSection("About", false)
	s2:AddLabel("NovaUI Library — English interface")
end

return Library
    Success = Color3.fromRGB(70, 200, 120),
    Warning = Color3.fromRGB(250, 200, 80),
    Error = Color3.fromRGB(255, 95, 95)
}

-- Easing
local function twn(obj, ti, props)
    TweenService:Create(obj, TweenInfo.new(ti or 0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), props):Play()
end

-- UI utils
local function roundify(inst, r)
    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0, r or 10)
    c.Parent = inst
    return c
end

local function strokify(inst, c, th)
    local s = Instance.new("UIStroke")
    s.Color = c or NovaUI.Theme.Stroke
    s.Thickness = th or 1
    s.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    s.Parent = inst
    return s
end

local function padding(inst, l, t, r, b)
    local p = Instance.new("UIPadding")
    p.PaddingLeft = UDim.new(0, l or 10)
    p.PaddingTop = UDim.new(0, t or 10)
    p.PaddingRight = UDim.new(0, r or 10)
    p.PaddingBottom = UDim.new(0, b or 10)
    p.Parent = inst
    return p
end

local function listlayout(parent, vertical, paddingPx)
    local l = vertical and Instance.new("UIListLayout") or Instance.new("UIGridLayout")
    if vertical then
        l.SortOrder = Enum.SortOrder.LayoutOrder
        l.Padding = UDim.new(0, paddingPx or 8)
    else
        l.CellPadding = UDim2.fromOffset(paddingPx or 8, paddingPx or 8)
    end
    l.Parent = parent
    return l
end

local function make_draggable(frame, dragHandle)
    dragHandle = dragHandle or frame
    local dragging, dragStart, startPos

    local function update(input)
        local delta = input.Position - dragStart
        frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end

    dragHandle.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = frame.Position
            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    dragHandle.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            if dragging then update(input) end
        end
    end)
end

-- Notification manager
local NotificationHub = {}
NotificationHub.__index = NotificationHub

function NotificationHub.new(screen, theme)
    local self = setmetatable({}, NotificationHub)
    self._screen = screen
    self._theme = theme

    local holder = Instance.new("Frame")
    holder.Name = "Nova_Notifications"
    holder.AnchorPoint = Vector2.new(1, 1)
    holder.Position = UDim2.fromScale(0.985, 0.985)
    holder.Size = UDim2.fromScale(0, 0)
    holder.BackgroundTransparency = 1
    holder.Parent = screen

    local list = Instance.new("UIListLayout")
    list.SortOrder = Enum.SortOrder.LayoutOrder
    list.VerticalAlignment = Enum.VerticalAlignment.Bottom
    list.HorizontalAlignment = Enum.HorizontalAlignment.Right
    list.Padding = UDim.new(0, 8)
    list.Parent = holder

    self.holder = holder
    return self
end

function NotificationHub:Notify(text, kind, duration)
    text = tostring(text or "Notification")
    kind = kind or "Info" -- Info | Success | Warning | Error
    duration = duration or 3

    local colors = {
        Info = self._theme.Primary,
        Success = self._theme.Success,
        Warning = self._theme.Warning,
        Error = self._theme.Error
    }

    local f = Instance.new("Frame")
    f.Size = UDim2.fromOffset(300, 40)
    f.BackgroundColor3 = self._theme.Bg2
    f.AutoLocalize = false
    roundify(f, 10)
    strokify(f, self._theme.Stroke, 1)

    local bar = Instance.new("Frame")
    bar.Size = UDim2.new(0, 0, 0, 3)
    bar.Position = UDim2.new(0, 0, 1, -3)
    bar.BackgroundColor3 = colors[kind] or self._theme.Primary
    roundify(bar, 2)
    bar.Parent = f

    local lbl = Instance.new("TextLabel")
    lbl.BackgroundTransparency = 1
    lbl.Size = UDim2.new(1, -16, 1, 0)
    lbl.Position = UDim2.fromOffset(8, 0)
    lbl.TextXAlignment = Enum.TextXAlignment.Left
    lbl.Font = Enum.Font.Gotham
    lbl.TextSize = 14
    lbl.TextColor3 = self._theme.Text
    lbl.Text = text
    lbl.Parent = f

    f.Parent = self.holder
    f.LayoutOrder = os.clock() * 1000

    twn(f, 0.15, {Size = UDim2.fromOffset(300, 40), BackgroundTransparency = 0})
    twn(bar, duration, {Size = UDim2.new(1, 0, 0, 3)})

    task.delay(duration, function()
        if f and f.Parent then
            twn(f, 0.15, {BackgroundTransparency = 1})
            task.wait(0.15)
            f:Destroy()
        end
    end)
end

-- Sauvegarde
local SaveManager = {}
SaveManager.__index = SaveManager

function SaveManager.new(windowTitle)
    local self = setmetatable({}, SaveManager)
    self.windowTitle = (windowTitle or "NovaWindow"):gsub("[^%w_%-]", "_")
    self.values = {}

    if can_write and not isfolder(config_root) then
        pcall(makefolder, config_root)
    end

    return self
end

function SaveManager:Set(key, value)
    self.values[key] = value
end

function SaveManager:Get(key, default)
    local v = self.values[key]
    if v == nil then return default end
    return v
end

function SaveManager:Save()
    if can_write then
        local path = string.format("%s/%s.json", config_root, self.windowTitle)
        local ok, enc = pcall(game.HttpService.JSONEncode, game.HttpService, self.values)
        if ok then pcall(writefile, path, enc) end
    end
end

function SaveManager:Load()
    if can_write then
        local path = string.format("%s/%s.json", config_root, self.windowTitle)
        if isfile and isfile(path) then
            local ok, dec = pcall(function()
                local raw = readfile(path)
                return game.HttpService:JSONDecode(raw)
            end)
            if ok and type(dec) == "table" then
                self.values = dec
                return true
            end
        end
    end
    return false
end

-- Core UI structures
local Window = {}
Window.__index = Window

local Tab = {}
Tab.__index = Tab

local Section = {}
Section.__index = Section

-- Création fenêtre
function NovaUI:CreateWindow(opts)
    opts = opts or {}
    local title = opts.Title or "NovaUI"
    local theme = opts.Theme or NovaUI.Theme
    local size = opts.Size or Vector2.new(640, 420)

    -- ScreenGui
    local screen = Instance.new("ScreenGui")
    screen.Name = "NovaUI_" .. tostring(math.random(1000, 9999))
    screen.ResetOnSpawn = false
    screen.ZIndexBehavior = Enum.ZIndexBehavior.Global
    screen.Parent = CoreGui

    -- Root
    local root = Instance.new("Frame")
    root.Name = "Root"
    root.AnchorPoint = Vector2.new(0.5, 0.5)
    root.Position = UDim2.fromScale(0.5, 0.5)
    root.Size = UDim2.fromOffset(size.X, size.Y)
    root.BackgroundColor3 = theme.Bg
    roundify(root, 14)
    strokify(root, theme.Stroke, 1)
    root.Parent = screen

    -- Header/TitleBar
    local header = Instance.new("Frame")
    header.Name = "Header"
    header.Size = UDim2.new(1, 0, 0, 46)
    header.BackgroundColor3 = theme.Bg2
    roundify(header, 14)
    strokify(header, theme.Stroke, 1)
    header.Parent = root

    local titleLbl = Instance.new("TextLabel")
    titleLbl.BackgroundTransparency = 1
    titleLbl.Size = UDim2.new(1, -120, 1, 0)
    titleLbl.Position = UDim2.fromOffset(16, 0)
    titleLbl.Font = Enum.Font.GothamBold
    titleLbl.TextSize = 16
    titleLbl.TextXAlignment = Enum.TextXAlignment.Left
    titleLbl.TextColor3 = theme.Text
    titleLbl.Text = title
    titleLbl.Parent = header

    local closeBtn = Instance.new("TextButton")
    closeBtn.Size = UDim2.fromOffset(32, 26)
    closeBtn.Position = UDim2.new(1, -40, 0, 10)
    closeBtn.Text = "✕"
    closeBtn.Font = Enum.Font.GothamBold
    closeBtn.TextSize = 14
    closeBtn.TextColor3 = theme.SubText
    closeBtn.BackgroundColor3 = theme.Bg
    roundify(closeBtn, 8)
    strokify(closeBtn, theme.Stroke, 1)
    closeBtn.Parent = header

    local minimizeBtn = Instance.new("TextButton")
    minimizeBtn.Size = UDim2.fromOffset(32, 26)
    minimizeBtn.Position = UDim2.new(1, -80, 0, 10)
    minimizeBtn.Text = "–"
    minimizeBtn.Font = Enum.Font.GothamBold
    minimizeBtn.TextSize = 16
    minimizeBtn.TextColor3 = theme.SubText
    minimizeBtn.BackgroundColor3 = theme.Bg
    roundify(minimizeBtn, 8)
    strokify(minimizeBtn, theme.Stroke, 1)
    minimizeBtn.Parent = header

    -- Body layout
    local body = Instance.new("Frame")
    body.Name = "Body"
    body.Size = UDim2.new(1, -0, 1, -52)
    body.Position = UDim2.fromOffset(0, 50)
    body.BackgroundTransparency = 1
    body.Parent = root

    -- Sidebar (tabs)
    local sidebar = Instance.new("Frame")
    sidebar.Name = "Sidebar"
    sidebar.Size = UDim2.new(0, 160, 1, 0)
    sidebar.BackgroundColor3 = theme.Bg2
    roundify(sidebar, 12)
    strokify(sidebar, theme.Stroke, 1)
    sidebar.Parent = body

    local sidePad = padding(sidebar, 10, 10, 10, 10)

    local sideList = Instance.new("UIListLayout")
    sideList.SortOrder = Enum.SortOrder.LayoutOrder
    sideList.Padding = UDim.new(0, 8)
    sideList.Parent = sidebar

    -- Content (pages)
    local content = Instance.new("Frame")
    content.Name = "Content"
    content.Size = UDim2.new(1, -170, 1, 0)
    content.Position = UDim2.fromOffset(170, 0)
    content.BackgroundColor3 = theme.Bg2
    roundify(content, 12)
    strokify(content, theme.Stroke, 1)
    content.Parent = body

    local pageContainer = Instance.new("Folder")
    pageContainer.Name = "Pages"
    pageContainer.Parent = content

    -- Notifications
    local notify = NotificationHub.new(screen, theme)

    -- Drag
    make_draggable(root, header)

    -- Minimize/Close
    local minimized = false
    minimizeBtn.MouseButton1Click:Connect(function()
        minimized = not minimized
        if minimized then
            twn(body, 0.15, {BackgroundTransparency = 1})
            twn(root, 0.15, {Size = UDim2.fromOffset(size.X, 46)})
            body.Visible = false
        else
            root.Size = UDim2.fromOffset(size.X, size.Y)
            task.wait(0.02)
            body.Visible = true
            twn(body, 0.15, {BackgroundTransparency = 0})
        end
    end)

    closeBtn.MouseButton1Click:Connect(function()
        screen:Destroy()
    end)

    -- Save manager
    local saver = SaveManager.new(title)
    saver:Load()

    -- Public API Window
    local w = setmetatable({
        _screen = screen,
        _root = root,
        _header = header,
        _sidebar = sidebar,
        _content = content,
        _pages = pageContainer,
        _theme = theme,
        _notify = notify,
        _saver = saver,
        _tabs = {},
        _activeTab = nil,
    }, Window)

    return w
end

-- Window methods
function Window:Notify(text, kind, duration)
    self._notify:Notify(text, kind, duration)
end

function Window:SaveConfig()
    self._saver:Save()
    self:Notify("Configuration sauvegardée", "Success", 2)
end

function Window:AddTab(opts)
    opts = (type(opts) == "string") and {Name = opts} or (opts or {})
    local name = opts.Name or "Tab"

    -- Sidebar button
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(1, 0, 0, 36)
    btn.BackgroundColor3 = self._theme.Bg
    btn.Text = name
    btn.Font = Enum.Font.Gotham
    btn.TextSize = 14
    btn.TextColor3 = self._theme.SubText
    btn.AutoButtonColor = false
    roundify(btn, 10)
    strokify(btn, self._theme.Stroke, 1)
    btn.Parent = self._sidebar

    -- Page
    local page = Instance.new("Frame")
    page.Name = "Page_" .. name
    page.Size = UDim2.new(1, -16, 1, -16)
    page.Position = UDim2.fromOffset(8, 8)
    page.BackgroundTransparency = 1
    page.Visible = false
    page.Parent = self._content

    local scroller = Instance.new("ScrollingFrame")
    scroller.Size = UDim2.fromScale(1, 1)
    scroller.CanvasSize = UDim2.new(0, 0, 0, 0)
    scroller.ScrollBarThickness = 4
    scroller.ScrollBarImageColor3 = self._theme.Stroke
    scroller.BackgroundTransparency = 1
    scroller.AutomaticCanvasSize = Enum.AutomaticSize.Y
    scroller.Parent = page

    local list = Instance.new("UIListLayout")
    list.SortOrder = Enum.SortOrder.LayoutOrder
    list.Padding = UDim.new(0, 10)
    list.Parent = scroller

    local tab = setmetatable({
        _window = self,
        _btn = btn,
        _page = page,
        _scroller = scroller,
        _sections = {},
        Name = name,
    }, Tab)

    -- Switching
    local function activate()
        for _, t in ipairs(self._tabs) do
            t._page.Visible = false
            twn(t._btn, 0.12, {BackgroundColor3 = self._theme.Bg})
            t._btn.TextColor3 = self._theme.SubText
        end
        page.Visible = true
        twn(btn, 0.12, {BackgroundColor3 = self._theme.Primary})
        btn.TextColor3 = Color3.fromRGB(255, 255, 255)
        self._activeTab = tab
    end

    btn.MouseButton1Click:Connect(activate)

    if not self._activeTab then
        activate()
    end

    table.insert(self._tabs, tab)
    return tab
end

-- Tab methods
function Tab:AddSection(title)
    title = title or "Section"

    local section = Instance.new("Frame")
    section.Size = UDim2.new(1, -16, 0, 48)
    section.BackgroundColor3 = self._window._theme.Bg
    roundify(section, 12)
    strokify(section, self._window._theme.Stroke, 1)
    section.Parent = self._scroller

    local vertical = Instance.new("Frame")
    vertical.BackgroundTransparency = 1
    vertical.Size = UDim2.new(1, -20, 1, -20)
    vertical.Position = UDim2.fromOffset(10, 10)
    vertical.Parent = section

    local layout = Instance.new("UIListLayout")
    layout.SortOrder = Enum.SortOrder.LayoutOrder
    layout.Padding = UDim.new(0, 8)
    layout.Parent = vertical

    local header = Instance.new("TextLabel")
    header.BackgroundTransparency = 1
    header.Size = UDim2.new(1, 0, 0, 20)
    header.Font = Enum.Font.GothamBold
    header.TextSize = 14
    header.TextXAlignment = Enum.TextXAlignment.Left
    header.TextColor3 = self._window._theme.Text
    header.Text = title
    header.Parent = vertical

    local s = setmetatable({
        _tab = self,
        _window = self._window,
        _container = vertical,
        _header = header,
    }, Section)

    return s
end

-- Section element factories
local function baseItem(section, height)
    local item = Instance.new("Frame")
    item.Size = UDim2.new(1, 0, 0, height or 36)
    item.BackgroundColor3 = section._window._theme.Bg2
    roundify(item, 10)
    strokify(item, section._window._theme.Stroke, 1)
    item.Parent = section._container
    return item
end

function Section:AddLabel(text)
    local item = baseItem(self, 30)

    local lbl = Instance.new("TextLabel")
    lbl.BackgroundTransparency = 1
    lbl.Size = UDim2.new(1, -16, 1, 0)
    lbl.Position = UDim2.fromOffset(8, 0)
    lbl.Font = Enum.Font.Gotham
    lbl.TextSize = 14
    lbl.TextXAlignment = Enum.TextXAlignment.Left
    lbl.TextColor3 = self._window._theme.SubText
    lbl.TextWrapped = true
    lbl.Text = tostring(text or "Label")
    lbl.Parent = item

    local api = {}
    function api:Set(newText) lbl.Text = tostring(newText) end
    return api
end

function Section:AddButton(opts)
    opts = (type(opts) == "string") and {Name = opts} or (opts or {})
    local name = opts.Name or "Button"
    local callback = opts.Callback or function() end

    local item = baseItem(self, 36)

    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(1, -12, 1, -12)
    btn.Position = UDim2.fromOffset(6, 6)
    btn.Text = name
    btn.Font = Enum.Font.GothamBold
    btn.TextSize = 14
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.BackgroundColor3 = self._window._theme.Primary
    roundify(btn, 8)
    strokify(btn, Color3.fromRGB(0,0,0), 0.5)
    btn.AutoButtonColor = false
    btn.Parent = item

    btn.MouseButton1Down:Connect(function()
        twn(btn, 0.08, {Size = UDim2.new(1, -14, 1, -14), Position = UDim2.fromOffset(7, 7)})
    end)
    btn.MouseButton1Up:Connect(function()
        twn(btn, 0.08, {Size = UDim2.new(1, -12, 1, -12), Position = UDim2.fromOffset(6, 6)})
    end)
    btn.MouseButton1Click:Connect(function()
        task.spawn(callback)
    end)

    local api = {}
    function api:Click() callback() end
    function api:SetText(t) btn.Text = t end
    return api
end

function Section:AddToggle(opts)
    opts = (type(opts) == "string") and {Name = opts} or (opts or {})
    local name = opts.Name or "Toggle"
    local default = opts.Default or false
    local callback = opts.Callback or function() end
    local saveKey = opts.SaveKey

    if saveKey then
        local saved = self._window._saver:Get(saveKey, default)
        default = (saved ~= nil) and saved or default
    end

    local item = baseItem(self, 36)

    local lbl = Instance.new("TextLabel")
    lbl.BackgroundTransparency = 1
    lbl.Size = UDim2.new(1, -60, 1, 0)
    lbl.Position = UDim2.fromOffset(10, 0)
    lbl.Font = Enum.Font.Gotham
    lbl.TextSize = 14
    lbl.TextXAlignment = Enum.TextXAlignment.Left
    lbl.TextColor3 = self._window._theme.Text
    lbl.Text = name
    lbl.Parent = item

    local switch = Instance.new("TextButton")
    switch.Size = UDim2.fromOffset(42, 22)
    switch.Position = UDim2.new(1, -52, 0.5, -11)
    switch.BackgroundColor3 = self._window._theme.Stroke
    switch.Text = ""
    roundify(switch, 11)
    strokify(switch, self._window._theme.Stroke, 1)
    switch.Parent = item

    local dot = Instance.new("Frame")
    dot.Size = UDim2.fromOffset(18, 18)
    dot.Position = UDim2.fromOffset(2, 2)
    dot.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    roundify(dot, 9)
    dot.Parent = switch

    local state = default

    local function render()
        twn(dot, 0.12, {Position = state and UDim2.fromOffset(22, 2) or UDim2.fromOffset(2, 2)})
        twn(switch, 0.12, {BackgroundColor3 = state and self._window._theme.Primary or self._window._theme.Stroke})
    end

    switch.MouseButton1Click:Connect(function()
        state = not state
        render()
        if saveKey then self._window._saver:Set(saveKey, state) end
        task.spawn(callback, state)
    end)

    render()

    local api = {}
    function api:Set(v)
        state = not not v
        render()
        if saveKey then self._window._saver:Set(saveKey, state) end
        callback(state)
    end
    function api:Get() return state end
    return api
end

function Section:AddSlider(opts)
    opts = opts or {}
    local name = opts.Name or "Slider"
    local min = tonumber(opts.Min or 0)
    local max = tonumber(opts.Max or 100)
    local default = tonumber(opts.Default or min)
    local decimals = tonumber(opts.Decimals or 0)
    local callback = opts.Callback or function() end
    local saveKey = opts.SaveKey

    if saveKey then
        local saved = self._window._saver:Get(saveKey)
        if typeof(saved) == "number" then default = saved end
    end

    local item = baseItem(self, 46)

    local lbl = Instance.new("TextLabel")
    lbl.BackgroundTransparency = 1
    lbl.Size = UDim2.new(1, -80, 0, 18)
    lbl.Position = UDim2.fromOffset(10, 6)
    lbl.Font = Enum.Font.Gotham
    lbl.TextSize = 14
    lbl.TextXAlignment = Enum.TextXAlignment.Left
    lbl.TextColor3 = self._window._theme.Text
    lbl.Text = name
    lbl.Parent = item

    local valLbl = Instance.new("TextLabel")
    valLbl.BackgroundTransparency = 1
    valLbl.Size = UDim2.new(0, 70, 0, 18)
    valLbl.Position = UDim2.new(1, -80, 0, 6)
    valLbl.Font = Enum.Font.Gotham
    valLbl.TextSize = 14
    valLbl.TextXAlignment = Enum.TextXAlignment.Right
    valLbl.TextColor3 = self._window._theme.SubText
    valLbl.Text = tostring(default)
    valLbl.Parent = item

    local bar = Instance.new("Frame")
    bar.Size = UDim2.new(1, -20, 0, 6)
    bar.Position = UDim2.new(0, 10, 1, -14)
    bar.BackgroundColor3 = self._window._theme.Stroke
    roundify(bar, 3)
    bar.Parent = item

    local fill = Instance.new("Frame")
    fill.Size = UDim2.new(0, 0, 1, 0)
    fill.BackgroundColor3 = self._window._theme.Primary
    roundify(fill, 3)
    fill.Parent = bar

    local dragging = false
    local value = math.clamp(default, min, max)

    local function formatValue(v)
        if decimals > 0 then
            local p = math.pow(10, decimals)
            return tostring(math.floor(v * p + 0.5) / p)
        else
            return tostring(math.floor(v + 0.5))
        end
    end

    local function setFromX(x)
        local rel = math.clamp((x - bar.AbsolutePosition.X) / bar.AbsoluteSize.X, 0, 1)
        value = min + (max - min) * rel
        valLbl.Text = formatValue(value)
        fill.Size = UDim2.new(rel, 0, 1, 0)
        if saveKey then self._window._saver:Set(saveKey, tonumber(valLbl.Text)) end
        callback(tonumber(valLbl.Text))
    end

    bar.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            setFromX(input.Position.X)
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
            setFromX(input.Position.X)
        end
    end)

    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = false
        end
    end)

    -- Init
    do
        local rel = (value - min) / (max - min)
        fill.Size = UDim2.new(rel, 0, 1, 0)
        valLbl.Text = formatValue(value)
    end

    local api = {}
    function api:Set(v)
        v = math.clamp(tonumber(v) or min, min, max)
        local rel = (v - min) / (max - min)
        fill.Size = UDim2.new(rel, 0, 1, 0)
        valLbl.Text = formatValue(v)
        if saveKey then self._window._saver:Set(saveKey, tonumber(valLbl.Text)) end
        callback(tonumber(valLbl.Text))
    end
    function api:Get() return tonumber(valLbl.Text) end
    return api
end

function Section:AddDropdown(opts)
    opts = opts or {}
    local name = opts.Name or "Dropdown"
    local list = opts.Options or {"A", "B", "C"}
    local default = opts.Default
    local multi = opts.Multi or false
    local callback = opts.Callback or function() end
    local saveKey = opts.SaveKey

    if saveKey then
        local saved = self._window._saver:Get(saveKey)
        if saved ~= nil then default = saved end
    end

    local item = baseItem(self, 38)

    local lbl = Instance.new("TextLabel")
    lbl.BackgroundTransparency = 1
    lbl.Size = UDim2.new(1, -38, 1, 0)
    lbl.Position = UDim2.fromOffset(10, 0)
    lbl.Font = Enum.Font.Gotham
    lbl.TextSize = 14
    lbl.TextXAlignment = Enum.TextXAlignment.Left
    lbl.TextColor3 = self._window._theme.Text
    lbl.Text = name
    lbl.Parent = item

    local caret = Instance.new("TextButton")
    caret.Size = UDim2.fromOffset(26, 26)
    caret.Position = UDim2.new(1, -34, 0.5, -13)
    caret.Text = "▾"
    caret.TextSize = 18
    caret.Font = Enum.Font.GothamBold
    caret.TextColor3 = self._window._theme.SubText
    caret.BackgroundColor3 = self._window._theme.Bg
    roundify(caret, 8)
    strokify(caret, self._window._theme.Stroke, 1)
    caret.Parent = item

    local popup = Instance.new("Frame")
    popup.Visible = false
    popup.Size = UDim2.new(1, 0, 0, 0)
    popup.BackgroundColor3 = self._window._theme.Bg
    roundify(popup, 10)
    strokify(popup, self._window._theme.Stroke, 1)
    popup.Parent = item

    local popList = Instance.new("UIListLayout")
    popList.SortOrder = Enum.SortOrder.LayoutOrder
    popList.Padding = UDim.new(0, 6)
    popList.Parent = popup

    local selection = multi and {} or nil

    local function commit()
        if multi then
            if saveKey then self._window._saver:Set(saveKey, selection) end
            callback(selection)
        else
            if saveKey then self._window._saver:Set(saveKey, selection) end
            callback(selection)
        end
    end

    local function addOption(opt)
        local b = Instance.new("TextButton")
        b.Size = UDim2.new(1, -12, 0, 28)
        b.Position = UDim2.fromOffset(6, 0)
        b.TextXAlignment = Enum.TextXAlignment.Left
        b.Text = tostring(opt)
        b.Font = Enum.Font.Gotham
        b.TextSize = 14
        b.TextColor3 = self._window._theme.Text
        b.BackgroundColor3 = self._window._theme.Bg2
        roundify(b, 8)
        strokify(b, self._window._theme.Stroke, 1)
        b.Parent = popup

        b.MouseButton1Click:Connect(function()
            if multi then
                selection[tostring(opt)] = not selection[tostring(opt)] and true or nil
                b.BackgroundColor3 = selection[tostring(opt)] and self._window._theme.Primary or self._window._theme.Bg2
            else
                selection = tostring(opt)
                popup.Visible = false
                popup.Size = UDim2.new(1, 0, 0, 0)
            end
            commit()
        end)

        -- default highlight
        if multi and type(default) == "table" and default[tostring(opt)] then
            selection[tostring(opt)] = true
            b.BackgroundColor3 = self._window._theme.Primary
        elseif (not multi) and tostring(default) == tostring(opt) then
            selection = tostring(opt)
        end
    end

    caret.MouseButton1Click:Connect(function()
        popup.Visible = not popup.Visible
        local targetH = 6 + (#list) * 34 + 6
        twn(popup, 0.12, {Size = popup.Visible and UDim2.new(1, 0, 0, targetH) or UDim2.new(1, 0, 0, 0)})
    end)

    for _, o in ipairs(list) do addOption(o) end

    local api = {}
    function api:SetOptions(newList)
        for _, child in ipairs(popup:GetChildren()) do
            if child:IsA("TextButton") then child:Destroy() end
        end
        list = newList
        selection = multi and {} or nil
        for _, o in ipairs(list) do addOption(o) end
    end
    function api:Get() return selection end
    function api:Set(v) selection = v; commit() end
    return api
end

function Section:AddTextbox(opts)
    opts = (type(opts) == "string") and {Name = opts} or (opts or {})
    local name = opts.Name or "Textbox"
    local placeholder = opts.Placeholder or "Enter text..."
    local default = opts.Default or ""
    local callback = opts.Callback or function() end
    local saveKey = opts.SaveKey

    if saveKey then
        local saved = self._window._saver:Get(saveKey)
        if type(saved) == "string" then default = saved end
    end

    local item = baseItem(self, 38)

    local lbl = Instance.new("TextLabel")
    lbl.BackgroundTransparency = 1
    lbl.Size = UDim2.new(0.35, 0, 1, 0)
    lbl.Position = UDim2.fromOffset(10, 0)
    lbl.Font = Enum.Font.Gotham
    lbl.TextSize = 14
    lbl.TextXAlignment = Enum.TextXAlignment.Left
    lbl.TextColor3 = self._window._theme.Text
    lbl.Text = name
    lbl.Parent = item

    local box = Instance.new("TextBox")
    box.Size = UDim2.new(0.6, -20, 1, -12)
    box.Position = UDim2.new(0.4, 10, 0, 6)
    box.BackgroundColor3 = self._window._theme.Bg
    box.PlaceholderText = placeholder
    box.Text = tostring(default)
    box.Font = Enum.Font.Gotham
    box.TextSize = 14
    box.TextColor3 = self._window._theme.Text
    roundify(box, 8)
    strokify(box, self._window._theme.Stroke, 1)
    box.Parent = item

    box.FocusLost:Connect(function(enter)
        local txt = box.Text
        if saveKey then self._window._saver:Set(saveKey, txt) end
        if enter then callback(txt) end
    end)

    local api = {}
    function api:Set(t) box.Text = tostring(t); if saveKey then self._window._saver:Set(saveKey, box.Text) end; callback(box.Text) end
    function api:Get() return box.Text end
    return api
end

function Section:AddKeybind(opts)
    opts = opts or {}
    local name = opts.Name or "Keybind"
    local default = opts.Default or Enum.KeyCode.RightShift
    local callback = opts.Callback or function() end
    local saveKey = opts.SaveKey

    if saveKey then
        local saved = self._window._saver:Get(saveKey)
        if typeof(saved) == "EnumItem" then default = saved end
    end

    local item = baseItem(self, 36)

    local lbl = Instance.new("TextLabel")
    lbl.BackgroundTransparency = 1
    lbl.Size = UDim2.new(1, -120, 1, 0)
    lbl.Position = UDim2.fromOffset(10, 0)
    lbl.Font = Enum.Font.Gotham
    lbl.TextSize = 14
    lbl.TextXAlignment = Enum.TextXAlignment.Left
    lbl.TextColor3 = self._window._theme.Text
    lbl.Text = name
    lbl.Parent = item

    local btn = Instance.new("TextButton")
    btn.Size = UDim2.fromOffset(100, 26)
    btn.Position = UDim2.new(1, -110, 0.5, -13)
    btn.Text = default.Name
    btn.Font = Enum.Font.Gotham
    btn.TextSize = 14
    btn.TextColor3 = self._window._theme.SubText
    btn.BackgroundColor3 = self._window._theme.Bg
    roundify(btn, 8)
    strokify(btn, self._window._theme.Stroke, 1)
    btn.Parent = item

    local listening = false
    local current = default

    btn.MouseButton1Click:Connect(function()
        listening = true
        btn.Text = "Press key..."
    end)

    UserInputService.InputBegan:Connect(function(input, gp)
        if listening and not gp and input.UserInputType == Enum.UserInputType.Keyboard then
            listening = false
            current = input.KeyCode
            btn.Text = current.Name
            if saveKey then self._window._saver:Set(saveKey, current) end
            callback(current)
        elseif not listening and input.KeyCode == current then
            callback(current)
        end
    end)

    local api = {}
    function api:Set(kc) current = kc; btn.Text = kc.Name; if saveKey then self._window._saver:Set(saveKey, current) end end
    function api:Get() return current end
    return api
end

function Section:AddColorPicker(opts)
    opts = opts or {}
    local name = opts.Name or "Color"
    local default = opts.Default or Color3.fromRGB(255, 255, 255)
    local callback = opts.Callback or function() end
    local saveKey = opts.SaveKey

    if saveKey then
        local saved = self._window._saver:Get(saveKey)
        if typeof(saved) == "Color3" then default = saved end
    end

    local item = baseItem(self, 42)

    local lbl = Instance.new("TextLabel")
    lbl.BackgroundTransparency = 1
    lbl.Size = UDim2.new(1, -56, 1, 0)
    lbl.Position = UDim2.fromOffset(10, 0)
    lbl.Font = Enum.Font.Gotham
    lbl.TextSize = 14
    lbl.TextXAlignment = Enum.TextXAlignment.Left
    lbl.TextColor3 = self._window._theme.Text
    lbl.Text = name
    lbl.Parent = item

    local swatch = Instance.new("TextButton")
    swatch.Size = UDim2.fromOffset(34, 26)
    swatch.Position = UDim2.new(1, -44, 0.5, -13)
    swatch.Text = ""
    swatch.BackgroundColor3 = default
    roundify(swatch, 8)
    strokify(swatch, self._window._theme.Stroke, 1)
    swatch.Parent = item

    local popup = Instance.new("Frame")
    popup.Visible = false
    popup.Size = UDim2.new(0, 220, 0, 140)
    popup.Position = UDim2.fromOffset(10, 44)
    popup.BackgroundColor3 = self._window._theme.Bg
    roundify(popup, 10)
    strokify(popup, self._window._theme.Stroke, 1)
    popup.Parent = item

    local hue = Instance.new("Frame")
    hue.Size = UDim2.fromOffset(10, 110)
    hue.Position = UDim2.fromOffset(10, 15)
    hue.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    strokify(hue, self._window._theme.Stroke, 1)
    roundify(hue, 4)
    hue.Parent = popup

    -- Simple gradient proxies using ImageLabels (prebaked assets avoided; use UIGradient)
    local hueGrad = Instance.new("UIGradient")
    hueGrad.Rotation = 90
    hueGrad.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255,0,0)),
        ColorSequenceKeypoint.new(0.17, Color3.fromRGB(255,255,0)),
        ColorSequenceKeypoint.new(0.33, Color3.fromRGB(0,255,0)),
        ColorSequenceKeypoint.new(0.50, Color3.fromRGB(0,255,255)),
        ColorSequenceKeypoint.new(0.66, Color3.fromRGB(0,0,255)),
        ColorSequenceKeypoint.new(0.83, Color3.fromRGB(255,0,255)),
        ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255,0,0))
    }
    hueGrad.Parent = hue

    local satv = Instance.new("Frame")
    satv.Size = UDim2.fromOffset(170, 110)
    satv.Position = UDim2.fromOffset(30, 15)
    satv.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    strokify(satv, self._window._theme.Stroke, 1)
    roundify(satv, 4)
    satv.Parent = popup

    local satGrad = Instance.new("UIGradient")
    satGrad.Rotation = 0
    satGrad.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, Color3.fromRGB(255,255,255)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(255,255,255))
    }
    satGrad.Parent = satv

    local valGrad = Instance.new("UIGradient")
    valGrad.Rotation = 90
    valGrad.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, Color3.fromRGB(255,255,255)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(0,0,0))
    }
    valGrad.Parent = satv

    local huePos = 0
    local sPos = 1
    local vPos = 1

    local function hsv_to_rgb(h, s, v)
        return Color3.fromHSV(h, s, v)
    end

    local function setHueFromY(y)
        local rel = math.clamp((y - hue.AbsolutePosition.Y) / hue.AbsoluteSize.Y, 0, 1)
        huePos = rel
        local color = Color3.fromHSV(huePos, 1, 1)
        satGrad.Color = ColorSequence.new{
            ColorSequenceKeypoint.new(0, Color3.fromRGB(255,255,255)),
            ColorSequenceKeypoint.new(1, color)
        }
        local c = hsv_to_rgb(huePos, sPos, vPos)
        swatch.BackgroundColor3 = c
        if saveKey then self._window._saver:Set(saveKey, c) end
        callback(c)
    end

    local function setSVFromXY(x, y)
        local relx = math.clamp((x - satv.AbsolutePosition.X) / satv.AbsoluteSize.X, 0, 1)
        local rely = math.clamp((y - satv.AbsolutePosition.Y) / satv.AbsoluteSize.Y, 0, 1)
        sPos = relx
        vPos = 1 - rely
        local c = hsv_to_rgb(huePos, sPos, vPos)
        swatch.BackgroundColor3 = c
        if saveKey then self._window._saver:Set(saveKey, c) end
        callback(c)
    end

    local hDrag, svDrag = false, false

    hue.InputBegan:Connect(function(i)
        if i.UserInputType == Enum.UserInputType.MouseButton1 then
            hDrag = true
            setHueFromY(i.Position.Y)
        end
    end)
    satv.InputBegan:Connect(function(i)
        if i.UserInputType == Enum.UserInputType.MouseButton1 then
            svDrag = true
            setSVFromXY(i.Position.X, i.Position.Y)
        end
    end)

    UserInputService.InputChanged:Connect(function(i)
        if i.UserInputType == Enum.UserInputType.MouseMovement then
            if hDrag then setHueFromY(i.Position.Y) end
            if svDrag then setSVFromXY(i.Position.X, i.Position.Y) end
        end
    end)

    UserInputService.InputEnded:Connect(function(i)
        if i.UserInputType == Enum.UserInputType.MouseButton1 then
            hDrag, svDrag = false, false
        end
    end)

    swatch.MouseButton1Click:Connect(function()
        popup.Visible = not popup.Visible
    end)

    -- Init
    do
        local h, s, v = default:ToHSV()
        huePos, sPos, vPos = h, s, v
        setHueFromY(hue.Position.Y + hue.AbsoluteSize.Y * huePos)
        setSVFromXY(satv.Position.X + satv.AbsoluteSize.X * sPos, satv.Position.Y + satv.AbsoluteSize.Y * (1 - vPos))
    end

    local api = {}
    function api:Set(c)
        local h, s, v = c:ToHSV()
        huePos, sPos, vPos = h, s, v
        swatch.BackgroundColor3 = c
        if saveKey then self._window._saver:Set(saveKey, c) end
        callback(c)
    end
    function api:Get() return swatch.BackgroundColor3 end
    return api
end

-- Raccourcis pour sauvegarder/charger (exposés au dev)
function Window:GetConfig(key, default)
    return self._saver:Get(key, default)
end
function Window:SetConfig(key, value)
    self._saver:Set(key, value)
end

-- Fonctions utilitaires
function NovaUI:DestroyAll()
    for _, sg in ipairs(CoreGui:GetChildren()) do
        if sg:IsA("ScreenGui") and sg.Name:match("^NovaUI_") then
            sg:Destroy()
        end
    end
end

-- -------------------------------------------
-- 🎯 Exemple d'utilisation (dé-commenter pour tester)
--[[
local ui = NovaUI:CreateWindow({ Title = "Demo NovaUI", Size = Vector2.new(720, 460) })
ui:Notify("Bienvenue sur NovaUI", "Success", 2)

local main = ui:AddTab({ Name = "Main" })
local sec = main:AddSection("Contrôles")

sec:AddLabel("Ceci est un label informatif.")

sec:AddButton({ Name = "Dire bonjour", Callback = function()
    ui:Notify("Bonjour !", "Info", 2)
end })

local tgl = sec:AddToggle({ Name = "Activer", Default = true, SaveKey = "toggle_activer", Callback = function(state)
    print("Toggle:", state)
end })

local sld = sec:AddSlider({ Name = "Vitesse", Min = 0, Max = 300, Default = 120, Decimals = 0, SaveKey = "speed", Callback = function(v)
    print("Speed:", v)
end })

local dd = sec:AddDropdown({ Name = "Mode", Options = {"A", "B", "C"}, Default = "B", SaveKey = "mode", Callback = function(v)
    print("Dropdown:", v)
end })

local txt = sec:AddTextbox({ Name = "Pseudo", Placeholder = "Entrez votre pseudo", Default = "Kylian", SaveKey = "pseudo", Callback = function(v)
    print("Pseudo:", v)
end })

local kb = sec:AddKeybind({ Name = "Ouvrir Menu", Default = Enum.KeyCode.RightShift, SaveKey = "open_key", Callback = function(k)
    ui:Notify("Keybind press: " .. k.Name, "Info", 1)
end })

local cp = sec:AddColorPicker({ Name = "Couleur", Default = Color3.fromRGB(107,142,255), SaveKey = "accent", Callback = function(c)
    print("Color:", c)
end })

-- Sauvegarder explicitement (optionnel, auto déjà fait à chaque changement)
ui:SaveConfig()
]]

return NovaUI
