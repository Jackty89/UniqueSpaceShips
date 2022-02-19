GameVersion = "3_80"
ModeName = "SpawnrateForClasses"
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
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\INVENTORYTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
                        --General Ship Spawn changes for sytsems - 1 Star still has 0% chance
                        {
                            --2 Star systems now have a 2% chance of getting S ships
							["PRECEDING_KEY_WORDS"] = {"Average"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"C",	"30"},
								{"B",	"40"},
                                {"A",	"28"},
                                {"S",	"2"},
							}
						},
                        {
                            --3 Star System now have a 5% chance of getting S ships
							["PRECEDING_KEY_WORDS"] = {"Wealthy"},
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"C",	"30"},
								{"B",	"37"},
                                {"A",	"28"},
                                {"S",	"5"},
							}
						}
					}
				}
			}
		}
	}
}