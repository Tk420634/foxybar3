//Globa job defines

/// EXP times are in minutes
#define PLAYTIME_RANGER_JOB       (200 * 60)
#define PLAYTIME_HEAD_JOB         (80  * 60)
#define PLAYTIME_ALT_TOWN_BOSS    (200 * 60)
#define PLAYTIME_ALT_TOWN_HEAD    (80 * 60)
#define PLAYTIME_ALT_TOWN_CITIZEN (20  * 60)
#define PLAYTIME_HARD_JOB         (20  * 60)

//Defines Factions
#define FACTION_NCR "NCR"
#define FACTION_LEGION "Legion"
#define FACTION_BROTHERHOOD "BOS"
#define FACTION_OASIS "Town"
#define FACTION_ENCLAVE "Enclave"
#define FACTION_WASTELAND "Wastelander"
#define FACTION_RAT "Tunnel Rats"
#define FACTION_DEN "Den"
#define FACTION_REDWATER "Redwater"
#define FACTION_ASHDOWN "Ashdown"
#define FACTION_TEACHER "Texarkana Rangers"
#define FACTION_RAIDERS "Raiders"
#define FACTION_TRIBE "Tribe"
#define FACTION_VAULT "Vault"
#define FACTION_FOLLOWERS "Followers"
#define FACTION_RECLAIMERS "Reclaimers"
#define FACTION_GUILD "Guild"
#define FACTION_KHAN "Great Khans"
#define FACTION_BIKER "Hells Nomads"
#define FACTION_CLUB "Heavens Night"

#define ENGSEC			(1<<0)

#define CAPTAIN			(1<<0)
#define HOS				(1<<1)
#define WARDEN			(1<<2)
#define DETECTIVE		(1<<3)
#define OFFICER			(1<<4)
#define CHIEF			(1<<5)
#define ENGINEER		(1<<6)
#define ATMOSTECH		(1<<7)
#define ROBOTICIST		(1<<8)
#define AI_JF			(1<<9)
#define CYBORG			(1<<10)


#define MEDSCI			(1<<1)

#define RD_JF			(1<<0)
#define SCIENTIST		(1<<1)
#define CHEMIST			(1<<2)
#define CMO_JF			(1<<3)
#define DOCTOR			(1<<4)
#define GENETICIST		(1<<5)
#define VIROLOGIST		(1<<6)
#define PARAMEDIC		(1<<7)


#define CIVILIAN		(1<<2)

#define HOP				(1<<0)
#define BARTENDER		(1<<1)
#define BOTANIST		(1<<2)
#define COOK			(1<<3)
#define JANITOR			(1<<4)
#define CURATOR			(1<<5)
#define QUARTERMASTER	(1<<6)
#define CARGOTECH		(1<<7)
#define MINER			(1<<8)
#define LAWYER			(1<<9)
#define CHAPLAIN		(1<<10)
#define ASSISTANT		(1<<11)

//F13

#define NCR				(1<<3)

#define F13COLONEL		 (1<<0)
#define F13CAPTAIN		 (1<<1)
#define F13LIEUTENANT    (1<<2)
#define F13LOGISTICSOFFICER (1<<3)
#define F13MEDICALOFFICER (1<<4)
#define	F13FIRSTSERGEANT (1<<5)
#define F13HEAVYTROOPER	(1<<6)
#define F13DRILLSERGEANT (1<<7)
#define F13SERGEANT		 (1<<8)
#define F13CORPORAL		 (1<<9)
#define F13COMBATMEDIC	 (1<<10)
#define F13COMBATENGINEER (1<<11)
#define F13TROOPER		 (1<<12)
#define F13CONSCRIPT    (1<<13)
#define F13REARECHELON	 (1<<14)
#define F13NCROFFDUTY    (1<<15)
#define F13VETRANGER	 (1<<16)
#define F13RANGER	 	 (1<<17)
#define F13MP            (1<<18)
#define F13REP           (1<<19)

#define LEGION			(1<<4)

#define F13LEGATE		(1<<0)
#define F13CENTURION	(1<<1)
#define F13ORATOR		(1<<2)
#define F13PRIESTESS 	(1<<3)
#define F13DECANREC		(1<<4)
#define F13DECAN		(1<<5)
#define F13DECANVET		(1<<6)
#define F13VEXILLARIUS	(1<<7)
#define F13EXPLORER		(1<<8)
#define F13VENATOR		(1<<9)
#define F13VETLEGIONARY	(1<<10)
#define F13LEGIONARY	(1<<11)
#define F13RECRUITLEG	(1<<12)
#define F13AUXILIA	(1<<13)
#define F13LEGIONSLAVE	(1<<14)
#define F13IMMUNE	(1<<15)
#define F13CAMPFOLLOWER (1<<16)
#define F13SLAVEMASTER	(1<<17)

#define BOS				(1<<5)

#define F13ELDER		(1<<0)
#define F13SENTINEL		(1<<1)
#define F13SENIORPALADIN	(1<<2)
#define F13PALADIN		(1<<3)
#define F13KNIGHTCAPTAIN	(1<<4)
#define F13SENIORKNIGHT	(1<<5)
#define F13KNIGHT		(1<<6)
#define F13HEADSCRIBE	(1<<7)
#define F13SENIORSCRIBE (1<<8)
#define F13SCRIBE		(1<<9)
#define F13INITIATE		(1<<10)
#define F13OFFDUTYBOS	(1<<11)

#define DEP_OASIS (1<<6)

#define F13SHERIFF		(1<<0)
#define F13DENDOC       (1<<1)
#define F13SETTLER		(1<<2)
#define F13FARMER		(1<<3)
#define F13PROSPECTOR	(1<<4)
#define F13DEPUTY		(1<<5)
#define F13MAYOR		(1<<6)
#define F13SECRETARY    (1<<7)
#define F13PREACHER		(1<<8)
#define F13SHOPKEEPER	(1<<9)
#define F13QUARTERMASTER	(1<<10)
#define F13FAITHFUL		(1<<11) // WHAT IS BITFLAG. WHAT DOES IT DO. WHERE IS THIS INFO USED.
#define F13BANKER		(1<<12)	// IDK MAN BUT IT SEEMS IMPORTANT
#define F13BARKEEP		(1<<13)
#define F13PILOT		(1<<14)
#define LIBRARIAN		(1<<15)

#define DEP_GAR (1<<7)

#define F13WASTEGAR		(1<<0)

#define DEP_DEN (1<<8)

#define F13WASTEDEN		(1<<0)

#define VAULT			(1<<9)

#define F13OVERSEER		(1<<0)
#define F13HOS			(1<<1)
#define F13DOCTOR		(1<<2)
#define F13VAULTSCIENTIST	(1<<3)
#define F13OFFICER		(1<<4)
#define F13VAULTENGINEER	(1<<5)
#define F13DWELLER		(1<<6)
#define F13AI			(1<<7)
#define F13CYBORG		(1<<8)

#define WASTELAND		(1<<10)

#define F13MOBBOSS		(1<<0)
#define F13ENFORCER		(1<<1)
#define F13DENDOCTOR    (1<<2)
#define F13WASTELANDER	(1<<2)
#define F13RAIDER		(1<<3)
#define F13PUNRAIDER	(1<<4)
#define F13DETECTIVE	(1<<5)
#define EVENTCOVEN		(1<<6)
#define F13VIGILANTE	(1<<7)
#define F13ADMINBOOS	(1<<8)
#define F13CULTLEADER	(1<<8)
#define F13TRIBAL		(1<<9)
#define F13RADIOOP		(1<<10)
#define CBOOCBACKSTAGE	(1<<11)

#define ENCLAVE			(1<<11)

#define F13USLT			(1<<0)
#define F13USGYSGT		(1<<1)
#define F13USSGT		(1<<2)
#define F13USSCIENTIST	(1<<3)
#define F13USSPECIALIST	(1<<4)
#define F13USPRIVATE	(1<<5)
#define F13USBDUTY      (1<<6)

#define TRIBAL			(1<<12)

#define F13CHIEF		(1<<0)
#define F13SHAMAN		(1<<1)
#define F13HHUNTER		(1<<2)
#define F13DRUID		(1<<3)
#define F13VILLAGER		(1<<4)
#define F13HUNTER		(1<<5)
#define F13GUARDIAN		(1<<6)
#define F13SPIRITPLEDGED (1<<7)

#define FOLLOWERS		(1<<13)

#define	F13LEADPRACTITIONER	(1<<0)
#define	F13PRACTITIONER	(1<<1)
#define F13FOLLOWERGUARD	(1<<2)
#define F13FOLLOWERVOLUNTEER	(1<<3)
#define F13PROFESSOR	(1<<4)
#define F13LEADPROFESSOR (1<<5)

#define RECLAIMERS		(1<<14)

#define	RECARCHEOLOGIST	(1<<0)
#define	RECSLIMEOLOGIST	(1<<1)
#define RECRESEARCHER	(1<<2)
#define RECMECHANIC		(1<<3)
#define RECNANSPEC		(1<<4)
#define RECGUARD	    (1<<5)
#define RECMEDIC		(1<<6)





#define KHAN		(1<<16)

#define F13NOYAN (1<<0)
#define F13STEWARD (1<<1)
#define F13KHESHIG (1<<2)
#define F13KHORCHIN (1<<3)
#define F13KIPCHAK (1<<4)
#define F13MANGUDAI (1<<5)

#define HEAVENSNIGHT		(1<<17)

#define F13MANAGER			(1<<0)
#define F13CLUBWORKER		(1<<1)

#define TEACHER		(1<<18)

#define F13TEACHER (1<<0)


#define JOB_AVAILABLE 0
#define JOB_UNAVAILABLE_GENERIC 1
#define JOB_UNAVAILABLE_BANNED 2
#define JOB_UNAVAILABLE_PLAYTIME 3
#define JOB_UNAVAILABLE_ACCOUNTAGE 4
#define JOB_UNAVAILABLE_SLOTFULL 5
#define JOB_UNAVAILABLE_SPECIESLOCK 6
#define JOB_UNAVAILABLE_WHITELIST 7
#define JOB_UNAVAILABLE_NOT_NEWPLAYER 8

#define DEFAULT_RELIGION "Christianity"
#define DEFAULT_DEITY "Space Jesus"

#define JOB_DISPLAY_ORDER_DEFAULT 0

#define JOB_DISPLAY_ORDER_ASSISTANT 1
#define JOB_DISPLAY_ORDER_CAPTAIN 2
#define JOB_DISPLAY_ORDER_HEAD_OF_PERSONNEL 3
#define JOB_DISPLAY_ORDER_QUARTERMASTER 4
#define JOB_DISPLAY_ORDER_CARGO_TECHNICIAN 5
#define JOB_DISPLAY_ORDER_SHAFT_MINER 6
#define JOB_DISPLAY_ORDER_BARTENDER 7
#define JOB_DISPLAY_ORDER_COOK 8
#define JOB_DISPLAY_ORDER_BOTANIST 9
#define JOB_DISPLAY_ORDER_JANITOR 10
#define JOB_DISPLAY_ORDER_CURATOR 13
#define JOB_DISPLAY_ORDER_LAWYER 14
#define JOB_DISPLAY_ORDER_CHAPLAIN 15
//#define JOB_DISPLAY_ORDER_AI 16
//#define JOB_DISPLAY_ORDER_CYBORG 17
#define JOB_DISPLAY_ORDER_CHIEF_ENGINEER 18
#define JOB_DISPLAY_ORDER_STATION_ENGINEER 19
#define JOB_DISPLAY_ORDER_ATMOSPHERIC_TECHNICIAN 20
#define JOB_DISPLAY_ORDER_CHIEF_MEDICAL_OFFICER 21
#define JOB_DISPLAY_ORDER_MEDICAL_DOCTOR 22
#define JOB_DISPLAY_ORDER_PARAMEDIC 23
#define JOB_DISPLAY_ORDER_CHEMIST 24
#define JOB_DISPLAY_ORDER_VIROLOGIST 25
#define JOB_DISPLAY_ORDER_GENETICIST 26
#define JOB_DISPLAY_ORDER_RESEARCH_DIRECTOR 27
#define JOB_DISPLAY_ORDER_SCIENTIST 28
#define JOB_DISPLAY_ORDER_ROBOTICIST 29
#define JOB_DISPLAY_ORDER_HEAD_OF_SECURITY 30
#define JOB_DISPLAY_ORDER_WARDEN 31
//#define JOB_DISPLAY_ORDER_DETECTIVE 32
#define JOB_DISPLAY_ORDER_SECURITY_OFFICER 33

#define JOB_DISPLAY_ORDER_NCR_OFF_DUTY 34
#define JOB_DISPLAY_ORDER_CAPTAIN_NCR 35
#define JOB_DISPLAY_ORDER_LIEUTENANT 36
#define JOB_DISPLAY_ORDER_LOGISTICSOFFICER 37
#define JOB_DISPLAY_ORDER_REPRESENTATIVE 38
#define JOB_DISPLAY_ORDER_MEDICALOFFICER 39
#define JOB_DISPLAY_ORDER_FIRSTSERGEANT 40
#define JOB_DISPLAY_ORDER_HEAVYTROOPER 41
#define JOB_DISPLAY_ORDER_DRILLSERGEANT 42
#define JOB_DISPLAY_ORDER_SERGEANT 43
#define JOB_DISPLAY_ORDER_CORPORAL 44
#define JOB_DISPLAY_ORDER_COMBATMEDIC 45
#define JOB_DISPLAY_ORDER_COMBATENGINEER 46
#define JOB_DISPLAY_ORDER_TROOPER 47
#define JOB_DISPLAY_ORDER_CONSCRIPT 48
#define JOB_DISPLAY_ORDER_REAR_ECHELON 49
#define JOB_DISPLAY_ORDER_VETRANGE 50
#define JOB_DISPLAY_ORDER_RANGER 51

#define JOB_DISPLAY_ORDER_CENTURION 52
#define JOB_DISPLAY_ORDER_ORATOR 53
#define JOB_DISPLAY_ORDER_PRIESTESS 54
#define JOB_DISPLAY_ORDER_DECANREC 55
#define JOB_DISPLAY_ORDER_DECAN 56
#define JOB_DISPLAY_ORDER_DECANVET 57
#define JOB_DISPLAY_ORDER_VEXILLARIUS 58
#define JOB_DISPLAY_ORDER_EXPLORER 59
#define JOB_DISPLAY_ORDER_VENATOR 60
#define JOB_DISPLAY_ORDER_VETLEGIONARY 61
#define JOB_DISPLAY_ORDER_LEGIONARY 62
#define JOB_DISPLAY_ORDER_RECRUITLEG 63
#define JOB_DISPLAY_ORDER_CAMPFOLLOWER 64
#define JOB_DISPLAY_ORDER_IMMUNE 65
#define JOB_DISPLAY_ORDER_AUXILIA 66
#define JOB_DISPLAY_ORDER_LEGIONSLAVE 67



#define JOB_DISPLAY_ORDER_SENTINEL 68
#define JOB_DISPLAY_ORDER_SENIORPALADIN 69
#define JOB_DISPLAY_ORDER_PALADIN 70
#define JOB_DISPLAY_ORDER_KNIGHTCAPTAIN 71
#define JOB_DISPLAY_ORDER_SENIORKNIGHT 72
#define JOB_DISPLAY_ORDER_KNIGHT 73
#define JOB_DISPLAY_ORDER_HEADSCRIBE 74
#define JOB_DISPLAY_ORDER_SENIORSCRIBE 75
#define JOB_DISPLAY_ORDER_SCRIBE 76
#define JOB_DISPLAY_ORDER_INITIATE 77
#define JOB_DISPLAY_ORDER_OFFDUTYBOS 78

#define JOB_DISPLAY_ORDER_SHERIFF 79
#define JOB_DISPLAY_ORDER_DENDOC 80
#define JOB_DISPLAY_ORDER_SETTLER 81
#define JOB_DISPLAY_ORDER_FARMER 82
#define JOB_DISPLAY_ORDER_PROSPECTOR 83
#define JOB_DISPLAY_ORDER_DEPUTY 84
#define JOB_DISPLAY_ORDER_MAYOR 85
#define JOB_DISPLAY_ORDER_PREACHER 86
#define JOB_DISPLAY_ORDER_SHOPKEEPER 87
#define JOB_DISPLAY_ORDER_FAITHFUL 88// WHAT IS BITFLAG. WHAT DOES IT DO. WHERE IS THIS INFO USED.
#define JOB_DISPLAY_ORDER_BANKER 89// IDK MAN BUT IT SEEMS IMPORTANT
#define JOB_DISPLAY_ORDER_BARKEEP 90
#define JOB_DISPLAY_ORDER_PILOT 91


#define JOB_DISPLAY_ORDER_OVERSEER 92
#define JOB_DISPLAY_ORDER_HOS 93
#define JOB_DISPLAY_ORDER_DOCTOR 94
#define JOB_DISPLAY_ORDER_VAULTSCIENTIST 95
#define JOB_DISPLAY_ORDER_OFFICER 96
#define JOB_DISPLAY_ORDER_VAULTENGINEER 97
#define JOB_DISPLAY_ORDER_DWELLER 98
#define JOB_DISPLAY_ORDER_AI 99
#define JOB_DISPLAY_ORDER_CYBORG 100


#define JOB_DISPLAY_ORDER_CULTLEADER 101
#define JOB_DISPLAY_ORDER_WASTELANDER 102
#define JOB_DISPLAY_ORDER_RAIDER 103
#define JOB_DISPLAY_ORDER_PUSHER 104
#define JOB_DISPLAY_ORDER_PUNRAIDER 105
#define JOB_DISPLAY_ORDER_DETECTIVE 106

#define JOB_DISPLAY_ORDER_F13USLT 107
#define JOB_DISPLAY_ORDER_F13USGYSGT 108
#define JOB_DISPLAY_ORDER_F13USSGT 109
#define JOB_DISPLAY_ORDER_F13USSCIENTIST 110
#define JOB_DISPLAY_ORDER_F13USSPECIALIST 111
#define JOB_DISPLAY_ORDER_F13USPRIVATE 112

#define JOB_DISPLAY_ORDER_CHIEF 113
#define JOB_DISPLAY_ORDER_SHAMAN 114
#define JOB_DISPLAY_ORDER_HHUNTER 115
#define JOB_DISPLAY_ORDER_DRUID 116
#define JOB_DISPLAY_ORDER_VILLAGER 117
#define JOB_DISPLAY_ORDER_HUNTER 118
#define JOB_DISPLAY_ORDER_GUARDIAN 119
#define JOB_DISPLAY_ORDER_SPIRITPLEDGED 120


#define	JOB_DISPLAY_ORDER_LEADPRACTITIONER 121
#define	JOB_DISPLAY_ORDER_PRACTITIONER 122
#define JOB_DISPLAY_ORDER_FOLLOWERGUARD 123
#define JOB_DISPLAY_ORDER_FOLLOWERVOLUNTEER 124
#define JOB_DISPLAY_ORDER_PROFESSOR 125

#define JOB_DISPLAY_ORDER_SECRETARY 126

#define JOB_DISPLAY_ORDER_TRIBAL 127

#define JOB_DISPLAY_ORDER_NOYAN 128
#define JOB_DISPLAY_ORDER_STEWARD 129
#define JOB_DISPLAY_ORDER_KHESHIG 130
#define JOB_DISPLAY_ORDER_KHORCHIN 131
#define JOB_DISPLAY_ORDER_KIPCHAK 132
#define JOB_DISPLAY_ORDER_MANGUDAI 133

#define REC_SKILL_COMBAT_LVL1 "Combat - Lvl I" = \
	"You can't go two steps outside without running into something that wants to test the limits of your (and its) immortality. \
	Being able to defend yourself is a must, whether it's with a gun, a sword, or your bare hands. \
	Most critters you'll encounter in the wastes are fairly low-threat, such as Pillbugs, Rats, and Geckos, which will be \
	good practice for the more dangerous creatures you'll encounter later on. \
	Your survival knife is surprisingly effective! If you are on Harm intent (the red one), if you click past a critter, you'll \
	swing at it with your knife. Guns are a simple point-and-click affair, but most require either bullets, magazines full of bullets, \
	batteries, or just a good pump to work. You can quickly reload guns by pressing (by default) ctrl-R. \
	Some guns need to be racked or cocked after each shot, and this is done by pressing the use key (default: C) while holding the gun."
#define REC_SKILL_HEALING_LVL1 "Healing - Lvl I" = \
	"You're going to get hurt. A lot. So, you'll want to be able to patch yourself up when you do, preferably before you \
	die. Thankfully, first aid is fairly simple! There are yellow Broc flowers scattered throughout the wastes that, when eaten, \
	will heal your bruises, albeit slowly. You can also find Stimpaks, which are a bit more potent, but harder to come by. If you \
	craft a Broc flower with a Xander root (the brown ones), you'll get some healing powder that'll heal both bruises and burns, \
	and fairly quickly at that. If all else fails, click the green cross on the bottom right of your screen, then use whatever \
	it spawns on yourself to heal yourself up -- be sure to drink water if you're doing this!"
#define REC_SKILL_TRAUMA_LVL1 "Trauma - Lvl I" = \
	"Most folk bleed when they are injured, and you are (probably) no exception. If you find yourself leaking red stuff, \
	find a bandage and click yourself with it to apply it to any wounds you've taken. If you have sutures, you can use them \
	too, and if you have both bandages and sutures applied, you'll heal up even faster! Do note that if you are injured while \
	you have a bandage or suture applied, they'll be destroyed and you'll be right back to bleeding! As your wounds heal up, \
	be sure to stay good and fed, as this speeds along the process."
#define REC_SKILL_SURVIVAL_LVL1 "Survival - Lvl I" = \
	"Surviving in the wastes is a tough business, but you're a tough person! You'll need to eat and drink to keep yourself \
	alive, and you can do this by finding food and water in the wastes. You can find food in the form of various plants, \
	animals, and pre-event foodstuffs, and you can find water in the form of bottles of water, ponds, and sinks. You can \
	cook most meats by sticking them into a microwave or oven (found in most houses)."





