local customRadios = {}
local isPlaying = false
local index = -1
local volume = GetProfileSetting(306) / 10
local previousVolume = volume
local resourcename = GetCurrentResourceName()

local length = GetNumResourceMetadata(resourcename, "supersede_radio")

for i = 0, length do
    local radiodata = GetResourceMetadata(resourcename, "supersede_radio", i)
    local data = json.encode(GetResourceMetadata(resourcename, "supersede_radio_extra", i))
    if data ~= nil then
        table.insert(customRadios, {
            isPlaying = false,
            name = radiodata,
            data = data
        })
        if data.name then
            AddTextEntry(radiodata, data.name);
        end
    end
end

function PlayCustomRadio(radio)
    isPlaying = true
    for k, v in pairs(customRadios) do
        if v.name == customRadio then
            index = v.name
        end
    end
    ToggleCustomRadioBehavior()
    SendNuiMessage(json.encode({
        type = "play",
        radio = radio
    }))
end

function StopCustomRadios()
    isPlaying = false
    ToggleCustomRadioBehavior()
    SendNuiMessage(json.encode({
        type = "stop"
    }))
end

function ToggleCustomRadioBehavior()
    SetFrontendRadioActive(not isPlaying)
    if isPlaying then
        StartAudioScene("DLC_MPHEIST_TRANSITION_TO_APT_FADE_IN_RADIO_SCENE")
    else
        StopAudioScene("DLC_MPHEIST_TRANSITION_TO_APT_FADE_IN_RADIO_SCENE")
    end
end


CreateThread(function()
    while true do
    local ped = PlayerPedId()
	local sleep = 800
        if IsPedInAnyVehicle(ped) then
            sleep = 200
            if IsPlayerVehRadioEnable() then
                local playerRadioStationName = GetPlayerRadioStationName()
                for k, v in pairs(customRadios) do
                    if v.name == playerRadioStationName then
                        customRadio = v.name
                    end
                end
                if not isPlaying and customRadio then
                    PlayCustomRadio(customRadio)
                elseif isPlaying and customRadio and customRadio ~= index then
                    StopCustomRadios()
                    PlayCustomRadio(customRadio)
                elseif isPlaying and not customRadio then
                    StopCustomRadios()
                end
            elseif isPlaying then
                StopCustomRadios()
            end
            if GetPlayerRadioStationName() ~= customRadio then
                StopCustomRadios()
            end
            volume = GetProfileSetting(306) / 10
            if previousVolume ~= volume then
                SendNuiMessage(json.encode({
                    type = 'volume',
                    volume = volume
                }))
                previousVolume = volume
            end
        elseif not IsPedInAnyVehicle(ped) then
            StopCustomRadios()
	    sleep = 800
        end
    Wait(sleep)
    end
end)
