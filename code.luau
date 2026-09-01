local cta = game:GetService("ContextActionService")
local txs = game:GetService("TextChatService")
local players = game:GetService("Players")
local general = txs.TextChannels:FindFirstChild("RBXGeneral")

local function sendMessage(messages)
    general:SendAsync(messages[math.random(1, #messages)])
    end

    local messages = {
        "I'm the final boss of minebat!",
        "You can't best me.",
        "I am him, of minebat",
        "You vs me? Haha, I'd win.",
        "GG EZ",
        "Nobody can beat me.",
        "I am the best of minebat."
    }

local function type(name, state, _input)
    if name == "send" and state == Enum.UserInputState.Begin then
        sendMessage(messages)
        end
    end

    cta:BindAction("send", type, true, Enum.KeyCode.X)
cta:SetImage("send", "rbxassetid://14863615161")
cta:SetPosition("send", UDim2.new(0.5, 0, 0, 0))
