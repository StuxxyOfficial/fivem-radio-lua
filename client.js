const customRadios = [];
let isPlaying = false;
let index = -1;
let volume = GetProfileSetting(306) / 10;
let previousVolume = volume;
let resourcename = GetCurrentResourceName();

for (let i = 0, length = GetNumResourceMetadata(resourcename, "supersede_radio"); i < length; i++) {
    const radio = GetResourceMetadata(resourcename, "supersede_radio", i);

    if (!availableRadios.includes(radio)) {
        console.error(`radio: ${radio} is an invalid radio.`);
        continue;
    }

    try {
        const data = JSON.parse(GetResourceMetadata(resourcename, "supersede_radio_extra", i));
        if (data !== null) {
            customRadios.push({
                "isPlaying": false,
                "name": radio,
                "data": data
            });
            if (data.name) {
                AddTextEntry(radio, data.name);
            }
        } else {
            console.error(`radio: Missing data for ${radio}.`);
        }
    } catch (e) {
        console.error(e);
    }
}

RegisterNuiCallbackType("radio:ready");
on("__cfx_nui:radio:ready", (data, cb) => {
    SendNuiMessage(JSON.stringify({ "type": "create", "radios": customRadios, "volume": volume }));
    previousVolume = -1;
});
SendNuiMessage(JSON.stringify({ "type": "create", "radios": customRadios, "volume": volume }));