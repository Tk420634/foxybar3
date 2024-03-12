/datum/gear/donator/kits/mrmannstealthsuit
	name = "Stealth Suit Bundle"
	path = /obj/item/storage/box/large/custom_kit/mrmannstealthsuit
	category = LOADOUT_CATEGORY_DONATOR
	ckeywhitelist = list("plaugewalker")

/obj/item/storage/box/large/custom_kit/mrmannstealthsuit
	name = "Stealth Suit Bundle"
	desc = "An old chinese stealth suit and helmet rendered inoperable."
	w_class = WEIGHT_CLASS_BULKY

/obj/item/storage/box/large/custom_kit/mrmannstealthsuit/PopulateContents()
	new /obj/item/clothing/under/f13/chinasuitcosmetic(src)
	new /obj/item/clothing/head/f13/chinahelmetcosmetic(src)

/datum/gear/donator/kits/midgetdragonvest
	name = "Great Beat Vest Bundle"
	path = /obj/item/clothing/under/f13/bearvest
	category = LOADOUT_CATEGORY_DONATOR
	ckeywhitelist = list("midgetdragon")

// Time, blood and sweat donor?
/datum/gear/donator/kits/crimsonquiver
	name = "Crimson Death Heavy Pistol"
	path = /obj/item/storage/box/gun/pistol/crimsondeath
	category = LOADOUT_CATEGORY_DONATOR
	ckeywhitelist = list("crimsonquiver")

// SUNSET EDIT

/datum/gear/donator/exoticjazz
	name = "Happy Sharky Company Cuisine Book"
	slot = SLOT_IN_BACKPACK
	path = /obj/item/book/granter/crafting_recipe/happysharky
	ckeywhitelist = list ("ExoticJazz")
	cost = 0

/datum/gear/donator/debug_thing
	name = "Debug Bingus"
	slot = SLOT_IN_BACKPACK
	path = /obj/item/autosurgeon/penis
	ckeywhitelist = list("Super lAGG")
	cost = 1

/datum/gear/donator/debug_thing_2
	name = "Debingus Bungus"
	slot = SLOT_IN_BACKPACK
	path = /obj/item/autosurgeon/penis
	ckeywhitelist = list("superlagg")
	cost = 1
