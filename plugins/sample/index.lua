local playingOnTheServer = client:isModLoaded("samplemod") and client:getServerData().ip == "sampleip.com"

local actionWheelPage = nil
if playingOnTheServer then
    print("_Mx_Ace: Reloading avatar, on server")

    actionWheelPage = action_wheel:newPage()

    function returnToMainPage()
        action_wheel:setPage("main")
    end
    actionWheelPage:newAction()
        :setItem("minecraft:barrier")
        :setTitle("Back")
        :setOnLeftClick(returnToMainPage)
        :setOnRightClick(returnToMainPage)
else
    print("_Mx_Ace: Reloading avatar, NOT on server")
end

return {
    actionWheelPage = {
        item = "minecraft:skeleton_skull",
        page = actionWheelPage
    }
}