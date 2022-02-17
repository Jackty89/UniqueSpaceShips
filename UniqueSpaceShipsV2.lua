GameVersion = "3_75"
ModeName = "UniqueSpaceShips"
Author = "Jackty89"


NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"] 			= ModeName..GameVersion..".pak",
["MOD_DESCRIPTION"]			= "Rework of all Spaceships and their bonuses and price",   
["MOD_AUTHOR"]				= Author,
["NMS_VERSION"]				= GameVersion,
["MODIFICATIONS"] 			=
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{
				{
					["MBIN_FILE_SOURCE"] 	= "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	=

						{
							--Reduce launch cost for Shuttle
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"ShuttleTakeOffMod",	"0.10"}	-- Original 0.66 => 25% * 0.66 = 16.5% launch cost - Mod 25% * 0.10 = 2.5%
							}
						}

					}

				},
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
                    }
                }
            }
        }
    }
}