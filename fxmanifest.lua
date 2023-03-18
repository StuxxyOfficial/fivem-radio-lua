fx_version 'bodacious'
game 'gta5'
this_is_a_map 'yes'

-- Example custom radios
supersede_radio "RADIO_03_HIPHOP_NEW" { url = "https://myonlineradio.hu/ldblncr/retro-radio/mid.mp3?time=1619333853", volume = 0.2, name = "Retro Hungary"}
supersede_radio "RADIO_13_JAZZ" { url = "https://radioplayer.myonlineradio.hu/ldblncr/radio-1/mid.mp3?time=1619339132", volume = 0.2, name = "Rádió 1 Hungary"}
supersede_radio "RADIO_09_HIPHOP_OLD" { url = "https://slagerfm.netregator.hu:7813/slagerfm128.mp3?time=1677861392", volume = 0.2, name = "Sláger FM Hungary"}
supersede_radio "RADIO_20_THELAB" { url = "https://stream.danubiusradio.hu/danubius_320k", volume = 0.2, name = "Danubius Hungary"}
supersede_radio "RADIO_07_DANCE_01" { url = "https://onlineradiobox.com/json/hu/radio88/play?platform=web", volume = 0.2, name = "Radio 88 Hungary"}

files {
	"index.html"
}

ui_page "index.html"

client_scripts {
	"data.js",
	"client.js",
	"client.lua"
}
