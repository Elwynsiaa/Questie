---@type QuestieDB
local QuestieDB = QuestieLoader:ImportModule("QuestieDB")

if QuestieCompat.WOW_PROJECT_ID < QuestieCompat.WOW_PROJECT_WRATH_CLASSIC then return end

QuestieCompat.RegisterCorrection("questData", function()
	local questKeys = QuestieDB.questKeys

	return {
        [24872] = { -- Respite for a Tormented Soul (10-man)
            [questKeys.name] = "Respite for a Tormented Soul",
            [questKeys.finishedBy] = {{38017}}, -- Kalecgos
        },
        [24880] = { -- Respite for a Tormented Soul (25-man)
            [questKeys.name] = "Respite for a Tormented Soul",
            [questKeys.finishedBy] = {{38017}}, -- Kalecgos
        },
        [24873] = { -- Alliance/Horde: Residue Rendezvous (10-man)
            [questKeys.name] = "Residue Rendezvous",
            [questKeys.startedBy] = {{38501}}, -- Alchemist Adrianna
            [questKeys.finishedBy] = {{38501}}, -- Alchemist Adrianna
        },
        [24874] = { -- Alliance/Horde: Residue Rendezvous (25-man)
            [questKeys.name] = "Residue Rendezvous",
            [questKeys.startedBy] = {{38501}}, -- Alchemist Adrianna
            [questKeys.finishedBy] = {{38501}}, -- Alchemist Adrianna
        },
        [24879] = { -- Alliance/Horde: Blood Quickening (10-man)
            [questKeys.finishedBy] = {{38551}}, -- Alrin the Agile
        },
        [24881] = { -- Alliance/Horde: Blood Quickening (25-man)
            [questKeys.finishedBy] = {{38551}}, -- Alrin the Agile
        },
        [11580] = { -- Alliance: Desecrate this Fire! (Silverpine / Tirisfal fallback)
            [questKeys.name] = "Desecrate this Fire!",
            [questKeys.startedBy] = {nil, {187559, 187974}},
            [questKeys.finishedBy] = {nil, {187559, 187974}},
            [questKeys.requiredLevel] = 1,
            [questKeys.questLevel] = 80,
        },
        [11786] = { -- Alliance: Desecrate this Fire! (Tirisfal / Silverpine fallback)
            [questKeys.name] = "Desecrate this Fire!",
            [questKeys.startedBy] = {nil, {187559, 187974}},
            [questKeys.finishedBy] = {nil, {187559, 187974}},
            [questKeys.requiredLevel] = 1,
            [questKeys.questLevel] = 80,
        },
        --[[
        [12435] = {
            [questKeys.name] = "Report to Lord Afrasastrasz",
            [questKeys.objectivesText] = {"Speak with Lord Afrasastrasz at Wyrmrest Temple."},
        },
		[24656] = { -- [WARNING] Nonmatching table at objectives  28 for ID: 24656
			[questKeys.objectives] = {nil,nil,nil,nil,nil,{{71522}}},
        },
		[24541] = { -- [WARNING] Nonmatching table at objectives  28 for ID: 24541
			[questKeys.objectives] = {nil,nil,nil,nil,nil,{{71539}}},
        },
        ]]
	}
end)

QuestieCompat.RegisterCorrection("npcData", function()
	local npcKeys = QuestieDB.npcKeys

	return {
    	[38502] = { -- Questie: [CRITICAL] [QuestieDB:GetNPC] rawdata is nil for npcID: 38502
			[npcKeys.name] = "Nablya",
			[npcKeys.minLevel] = 85,
			[npcKeys.maxLevel] = 85,
			[npcKeys.zoneID] = 491,
		},
        [31284] = { -- Questie: [CRITICAL] Spawn data missing for NPC: 31284
            [npcKeys.name] = "Quest - Wintergrasp - Vehicle Protected",
            [npcKeys.spawns] = {[4197] = {{-1, -1}}},
        },
        [35074] = { -- Questie: [CRITICAL] Spawn data missing for NPC: 35074
            [npcKeys.name] = "Quest - Wintergrasp - Southern Tower Kill",
            [npcKeys.spawns] = {[4197] = {{-1, -1}}},
        },
        
        -- Questie: [CRITICAL] Spawn data missing for NPC: 27838
        -- Associated Quest: No Mercy for the Merciless
        [27838] = { 
            [npcKeys.name] = "Wintergrasp Air Fighter", 
            [npcKeys.spawns] = {[4197] = {{-1, -1}}}, 
        },

        -- Questie: [CRITICAL] Spawn data missing for NPC: 27850
        -- Associated Quest: No Mercy for the Merciless
        [27850] = { 
            [npcKeys.name] = "Wintergrasp Bomber", 
            [npcKeys.spawns] = {[4197] = {{-1, -1}}}, 
        },

        -- Questie: [CRITICAL] Spawn data missing for NPC: 27881
        -- Associated Quest: Fueling the Demolishers / No Mercy for the Merciless
        [27881] = { 
            [npcKeys.name] = "Wintergrasp Catapult", 
            [npcKeys.spawns] = {[4197] = {{-1, -1}}}, 
        },

        -- Questie: [CRITICAL] Spawn data missing for NPC: 27883
        -- Associated Quest: Fueling the Demolishers
        [27883] = { 
            [npcKeys.name] = "Wintergrasp Shredder", 
            [npcKeys.spawns] = {[4197] = {{-1, -1}}}, 
        },

        -- Questie: [CRITICAL] Spawn data missing for NPC: 28094
        -- Associated Quest: Fueling the Demolishers / No Mercy for the Merciless
        [28094] = { 
            [npcKeys.name] = "Wintergrasp Demolisher", 
            [npcKeys.spawns] = {[4197] = {{-1, -1}}}, 
        },

        -- Questie: [CRITICAL] Spawn data missing for NPC: 28312
        -- Associated Quest: Stop the Siege / No Mercy for the Merciless
        [28312] = { 
            [npcKeys.name] = "Wintergrasp Siege Engine (Alliance)", 
            [npcKeys.spawns] = {[4197] = {{-1, -1}}}, 
        },

        -- Questie: [CRITICAL] Spawn data missing for NPC: 32627
        -- Associated Quest: Stop the Siege / No Mercy for the Merciless
        [32627] = { 
            [npcKeys.name] = "Wintergrasp Siege Engine (Horde)", 
            [npcKeys.spawns] = {[4197] = {{-1, -1}}}, 
        },

        -- Questie: [CRITICAL] Spawn data missing for NPC: 32898
        -- Associated Quest: Warding the Warriors / Bones and Arrows
        [32898] = { 
            [npcKeys.name] = "Wintergrasp Guard Trigger", 
            [npcKeys.spawns] = {[4197] = {{-1, -1}}}, 
        },

        -- Questie: [CRITICAL] Spawn data missing for NPC: 31093
        -- Associated Quest: No Mercy for the Merciless
        [31093] = { 
            [npcKeys.name] = "Quest - Wintergrasp - PvP Kill - Vehicle", 
            [npcKeys.spawns] = {[4197] = {{-1, -1}}}, 
        },

        -- Questie: [CRITICAL] Spawn data missing for NPC: 39019
        -- Associated Quest: No Mercy for the Merciless
        [39019] = { 
            [npcKeys.name] = "Quest - Wintergrasp - PvP Kill - Horde", 
            [npcKeys.spawns] = {[4197] = {{-1, -1}}}, 
        },

        -- Questie: [CRITICAL] Spawn data missing for NPC: 31086
        -- Associated Quest: Slay them all!
        [31086] = { 
            [npcKeys.name] = "Quest - Wintergrasp - PvP Kill - Alliance", 
            [npcKeys.spawns] = {[4197] = {{-1, -1}}}, 
        },

        -- Questie: [CRITICAL] Spawn data missing for NPC: 24804
        -- Associated Quest: The Way to His Heart...
        [24804] = {
            [npcKeys.name] = "Attracted Reef Bull",
            [npcKeys.spawns] = {[495] = {{-1, -1}}}, -- Instanced fallback in Howling Fjord (495)
        },

        -- Questie: [CRITICAL] Spawn data missing for NPC: 20021
        -- Associated Quest: What Came First, the Drake or the Egg? (10609)
        [20021] = {
            [npcKeys.name] = "Nether Whelp",
            [npcKeys.spawns] = {
                [3522] = { -- Blade's Edge Mountains (Singing Ridge)
                    {58.4, 74.0}, {58.6, 72.4}, {58.6, 72.6}, {58.6, 74.2}, {58.8, 75.8},
                    {59.0, 76.8}, {59.6, 79.2}, {59.8, 72.4}, {59.8, 72.6}, {60.2, 76.0},
                    {60.2, 77.8}, {60.6, 73.8}, {60.6, 78.8}, {61.0, 76.4}, {61.2, 75.2},
                    {61.4, 77.2}, {61.6, 77.2}, {61.6, 79.0}, {62.0, 78.4}, {62.2, 76.2},
                    {62.8, 75.8}, {63.2, 78.6}, {63.4, 77.2}, {63.4, 78.4}, {63.6, 77.2},
                    {64.0, 75.6}, {64.2, 75.4}, {64.2, 78.0}, {65.0, 76.6}, {65.0, 78.4},
                    {65.2, 78.6}, {65.4, 75.4}, {65.4, 76.0}, {65.6, 76.8}, {66.0, 78.0},
                    {66.4, 74.8}, {66.8, 75.6}, {67.2, 75.4}, {68.4, 76.8},
                },
            },
            [npcKeys.zoneID] = 3522,
        },
	}
end)

QuestieCompat.RegisterBlacklist("hiddenQuests", function()
    return {
        -- "Zalazane's Fall" event quests
        [25444] = true, --* Da Perfect Spies (https://www.wowhead.com/wotlk/quest=25444) (Retail Data)
        [25445] = true, --* Zalazane's Fall (https://www.wowhead.com/wotlk/quest=25445) (Retail Data)
        [25446] = true, --* Frogs Away! (https://www.wowhead.com/wotlk/quest=25446) (Retail Data)
        [25461] = true, --* Trollin' For Volunteers (https://www.wowhead.com/wotlk/quest=25461) (Retail Data)
        [25470] = true, --* Lady Of Da Tigers (https://www.wowhead.com/wotlk/quest=25470) (Retail Data)
        [25480] = true, --* Dance Of De Spirits (https://www.wowhead.com/wotlk/quest=25480) (Retail Data)
        [25495] = true, --* Preparin' For Battle (https://www.wowhead.com/wotlk/quest=25495) (Retail Data)

        -- "Operation: Gnomeregan" event quests
        [25199] = true, --* Basic Orders (https://www.wowhead.com/wotlk/quest=25199) (Retail Data)
        [25212] = true, --* Vent Horizon (https://www.wowhead.com/wotlk/quest=25212) (Retail Data)
        [25229] = true, --* A Few Good Gnomes (https://www.wowhead.com/wotlk/quest=25229) (Retail Data)
        [25283] = true, --* Prepping the Speech (https://www.wowhead.com/wotlk/quest=25283) (Retail Data)
        [25285] = true, --* In and Out (https://www.wowhead.com/wotlk/quest=25285) (Retail Data)
        [25286] = true, --* Words for Delivery (https://www.wowhead.com/wotlk/quest=25286) (Retail Data)
        [25287] = true, --* Words for Delivery (https://www.wowhead.com/wotlk/quest=25287) (Retail Data)
        [25289] = true, --* One Step Forward... (https://www.wowhead.com/wotlk/quest=25289) (Retail Data)
        [25295] = true, --* Press Fire (https://www.wowhead.com/wotlk/quest=25295) (Retail Data)
        [25393] = true, --* Operation: Gnomeregan (https://www.wowhead.com/wotlk/quest=25393) (Retail Data)
        [25500] = true, --* Words for Delivery (https://www.wowhead.com/wotlk/quest=25500) (Retail Data)

        -- heroic daily dungeon quests
        [13240] = true, --* Timear Foresees Centrifuge Constructs in your Future! (https://www.wowhead.com/wotlk/quest=13240) (Retail Data)
        [13241] = true, --* Timear Foresees Ymirjar Berserkers in your Future! (https://www.wowhead.com/wotlk/quest=13241) (Retail Data)
        [13243] = true, --* Timear Foresees Infinite Agents in your Future! (https://www.wowhead.com/wotlk/quest=13243) (Retail Data)
        [13244] = true, --* Timear Foresees Titanium Vanguards in your Future! (https://www.wowhead.com/wotlk/quest=13244) (Retail Data)
        [13245] = true, --* Proof of Demise: Ingvar the Plunderer (https://www.wowhead.com/wotlk/quest=13245) (Retail Data)
        [13246] = true, --* Proof of Demise: Keristrasza (https://www.wowhead.com/wotlk/quest=13246) (Retail Data)
        [13247] = true, --* Proof of Demise: Ley-Guardian Eregos (https://www.wowhead.com/wotlk/quest=13247) (Retail Data)
        [13248] = true, --* Proof of Demise: King Ymiron (https://www.wowhead.com/wotlk/quest=13248) (Retail Data)
        [13249] = true, --* Proof of Demise: The Prophet Tharon'ja (https://www.wowhead.com/wotlk/quest=13249) (Retail Data)
        [13250] = true, --* Proof of Demise: Gal'darah (https://www.wowhead.com/wotlk/quest=13250) (Retail Data)
        [13251] = true, --* Proof of Demise: Mal'Ganis (https://www.wowhead.com/wotlk/quest=13251) (Retail Data)
        [13252] = true, --* Proof of Demise: Sjonnir The Ironshaper (https://www.wowhead.com/wotlk/quest=13252) (Retail Data)
        [13253] = true, --* Proof of Demise: Loken (https://www.wowhead.com/wotlk/quest=13253) (Retail Data)
        [13254] = true, --* Proof of Demise: Anub'arak (https://www.wowhead.com/wotlk/quest=13254) (Retail Data)
        [13255] = true, --* Proof of Demise: Herald Volazj (https://www.wowhead.com/wotlk/quest=13255) (Retail Data)
        [13256] = true, --* Proof of Demise: Cyanigosa (https://www.wowhead.com/wotlk/quest=13256) (Retail Data)
        [14199] = true, --* Proof of Demise: The Black Knight (https://www.wowhead.com/wotlk/quest=14199) (Retail Data)
        [78752] = true, --* Proof of Demise: Titan Rune Protocol Gamma (https://www.wowhead.com/wotlk/quest=78752) (Retail Data)
        [78753] = true, --* Proof of Demise: Threats to Azeroth (https://www.wowhead.com/wotlk/quest=78753) (Retail Data)

        [11338] = true, --* Call to Arms: Warsong Gulch
        [11336] = true, --* Call to Arms: Alterac Valley
        [14163] = true, --* Call to Arms: Isle of Conquest
        [13405] = true, --* Call to Arms: Strand of the Ancients
        [11337] = true, --* Call to Arms: Eye of the Storm
        [11335] = true, --* Call to Arms: Arathi Basin

        [11340] = true, --* Call to Arms: Alterac Valley (Horde)
        [13407] = true, --* Call to Arms: Strand of the Ancients (Horde)
        [14164] = true, --* Call to Arms: Isle of Conquest (Horde)
        [11342] = true, --* Call to Arms: Warsong Gulch (Horde)
        [11341] = true, --* Call to Arms: Eye of the Storm (Horde)
        [11339] = true, --* Call to Arms: Arathi Basin (Horde)

        [11970] = true, --* The Master of Summer Lore (Alliance Midsummer Intro)
        [11971] = true, --* The Spinner of Summer Tales (Horde Midsummer Intro)
    }
end)