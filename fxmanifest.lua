fx_version 'adamant'
game 'gta5'
this_is_a_map 'yes'

supersede_radio "RADIO_01_CLASS_ROCK" { url = "https://stream.live.vc.bbcmedia.co.uk/bbc_radio_one", volume = 0.2, name = "BBC radio 1" }
supersede_radio "RADIO_02_POP" { url = "https://media-ssl.musicradio.com/SmoothLondonMP3", volume = 0.2, name = "Smooth Radio" }
supersede_radio "RADIO_03_HIPHOP_NEW" { url = "https://media-ssl.musicradio.com/CapitalUK", volume = 0.2, name = "Capital FM" }
supersede_radio "RADIO_04_PUNK" { url = "https://media-ssl.musicradio.com/CapitalXTRANational", volume = 0.2, name = "Capital XTRA" }
supersede_radio "RADIO_05_TALK_01" { url = "https://stream-kiss.planetradio.co.uk/kissnational.mp3", volume = 0.2, name = "KISS FM" }
supersede_radio "RADIO_06_COUNTRY" { url = "https://stream-kiss.planetradio.co.uk/kisstory.mp3", volume = 0.2, name = "KISSTORY FM" }
supersede_radio "RADIO_07_DANCE_01" { url = "https://stream-mz.planetradio.co.uk/webcast6high.aac", volume = 0.2, name = "KISS DANCE" }
supersede_radio "RADIO_08_MEXICAN" { url = "https://stream-mz.planetradio.co.uk/webcast5high.aac", volume = 0.2, name = "KISS GARAGE" }
supersede_radio "RADIO_09_HIPHOP_OLD" { url = "https://stream-kiss.planetradio.co.uk/kissfresh.mp3", volume = 0.2, name = "KISS FRESH" }
supersede_radio "RADIO_11_TALK_02" { url = "https://media-ssl.musicradio.com/HeartUK", volume = 0.2, name = "HEART FM" }
supersede_radio "RADIO_12_REGGAE" { url = "https://media-ssl.musicradio.com/RadioXUK", volume = 0.2, name = "RADIO X" }
supersede_radio "RADIO_13_JAZZ" { url = "https://stream.slam.nl/slam_mp3", volume = 0.2, name = "Slam!" }
supersede_radio "RADIO_14_DANCE_02" { url = "https://stream.radiocorp.nl/web10_mp3", volume = 0.2, name = "Slam! Non Stop" }
supersede_radio "RADIO_15_MOTOWN" { url = "https://stream.radiocorp.nl/web12_mp3", volume = 0.2, name = "Slam! The Boom Room" }
supersede_radio "RADIO_16_SILVERLAKE" { url = "https://icecast.omroep.nl/funx-bb-mp3", volume = 0.2, name = "FunX NL" }
supersede_radio "RADIO_17_FUNK" { url = "https://icecast.omroep.nl/funx-arab-bb-mp3", volume = 0.2, name = "FunX Arab" }
supersede_radio "RADIO_18_90S_ROCK" { url = "https://icecast.omroep.nl/funx-dance-bb-mp3", volume = 0.2, name = "FunX Dance" }
supersede_radio "RADIO_19_USER" { url = "https://178.19.116.253/stream", volume = 0.2, name = "Geheime Zender - GigantFM 2" }
supersede_radio "RADIO_20_THELAB" { url = "https://streaming.slam.nl/web11_mp3", volume = 0.2, name = "Slam! Hardstyle" }
supersede_radio "RADIO_21_DLC_XM17" { url = "https://ice.cr2.streamzilla.xlcdn.com:8000/sz=efteling=hdstream", volume = 0.2, name = "Efteling Radio" }
supersede_radio "RADIO_22_DLC_BATTLE_MIX1_RADIO" { url = "https://securestream2.digipal.nl:1813/;type=mp3", volume = 0.2, name = "Geheime Zender - GigantFM" }
supersede_radio "RADIO_34_DLC_HEI4_KULT" { url = "https://23543.live.streamtheworld.com/SRGSTR10.mp3", volume = 0.2, name = "Veronica" }
supersede_radio "RADIO_35_DLC_HEI4_MLR" { url = "https://17873.live.streamtheworld.com/RADIO10.mp3", volume = 0.2, name = "Radio 10" }

files {
	"index.html"
}

ui_page "index.html"

client_scripts {
	"data.js",
	"client.js",
	"client.lua"
}
