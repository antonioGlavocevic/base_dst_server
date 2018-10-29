--There are two functions that will install mods, ServerModSetup and ServerModCollectionSetup. Put the calls to the functions in this file and they will be executed on boot.

--ServerModSetup takes a string of a specific mod's Workshop id. It will download and install the mod to your mod directory on boot.
	--The Workshop id can be found at the end of the url to the mod's Workshop page.
	--Example: http://steamcommunity.com/sharedfiles/filedetails/?id=350811795
	--ServerModSetup("350811795")

--#Simple Health Bar DST
ServerModSetup("1207269058")
--#Moving Box
ServerModSetup("1079538195")
--#Wormhole Marks
ServerModSetup("362175979")
--#Global Positions
ServerModSetup("378160973")
--#DST Abigail Call
ServerModSetup("516059534")
--#Repair Combine
ServerModSetup("767776640")
--#PartyHUD
ServerModSetup("782961570")
--#Bee Nice
ServerModSetup("361994110")

--ServerModCollectionSetup takes a string of a specific mod's Workshop id. It will download all the mods in the collection and install them to the mod directory on boot.
	--The Workshop id can be found at the end of the url to the collection's Workshop page.
	--Example: http://steamcommunity.com/sharedfiles/filedetails/?id=379114180
	--ServerModCollectionSetup("379114180")
