local mainActionWheelPage = action_wheel:newPage("main")

local config = require("config")

for _, plugin in pairs(config.plugins) do
    function visitPage()
        action_wheel:setPage(plugin.actionWheelPage.page)
    end

    mainActionWheelPage:newAction()
        :setItem(plugin.actionWheelPage.item)
        :setTitle("Navigate to " .. plugin.name .. " plugin page")
        :setOnLeftClick(visitPage)
        :setOnRightClick(visitPage)
end