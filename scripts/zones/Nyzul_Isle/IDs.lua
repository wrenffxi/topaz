-----------------------------------
-- Area: Nyzul_Isle
-----------------------------------
require("scripts/globals/zone")
-----------------------------------

zones = zones or {}

zones[xi.zone.NYZUL_ISLE] =
{
    text = {
        ITEM_CANNOT_BE_OBTAINED    = 6383, -- You cannot obtain the <item>. Come back after sorting your inventory.
        FULL_INVENTORY_AFTER_TRADE = 6387, -- You cannot obtain the <item>. Try trading again after sorting your inventory.
        ITEM_OBTAINED              = 6389, -- Obtained: <item>.
        GIL_OBTAINED               = 6390, -- Obtained <number> gil.
        KEYITEM_OBTAINED           = 6392, -- Obtained key item: <keyitem>.
        KEYITEM_LOST               = 6393, -- Lost key item: <keyitem>.
        NOT_HAVE_ENOUGH_GIL        = 6394, -- You do not have enough gil.
        ITEMS_OBTAINED             = 6398, -- You obtain <number> <item>!
        CARRIED_OVER_POINTS        = 7000, -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY    = 7001, -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!<space>
        LOGIN_NUMBER               = 7002, -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        TIME_TO_COMPLETE           = 7304, -- You have <number> [minute/minutes] (Earth time) to complete this mission.
        MISSION_FAILED             = 7305, -- The mission has failed. Leaving area.
        TIME_REMAINING_MINUTES     = 7309, -- ime remaining: <number> [minute/minutes] (Earth time).
        TIME_REMAINING_SECONDS     = 7310, -- ime remaining: <number> [second/seconds] (Earth time).
        PARTY_FALLEN               = 7312, -- ll party members have fallen in battle. Mission failure in <number> [minute/minutes].
        FORMATION_GELINCIK         = 7504, -- Formation Gelincik! Eliminate the intruders!
        SURRENDER                  = 7505, -- You would be wise to surrender. A fate worse than death awaits those who anger an Immortal...
        I_WILL_SINK_YOUR_CORPSES   = 7506, -- I will sink your corpses to the bottom of the Cyan Deep!
        AWAKEN                     = 7507, -- Awaken, powers of the Lamiae!
        MANIFEST                   = 7508, -- Manifest, powers of the Merrow!
        CURSED_ESSENCES            = 7509, -- Cursed essences of creatures devoured... Infuse my blood with your beastly might!
        UGH                        = 7510, -- Ugh...I should not be surprised... Even Rishfee praised your strength...
        CANNOT_WIN                 = 7511, -- Hehe...hehehe... You are...too strong for me... I cannot win...in this way...
        CANNOT_LET_YOU_PASS        = 7512, -- <Wheeze>... I cannot...let you...pass...
        WHEEZE                     = 7513, -- <Wheeze>...
        WHEEZE_PHSHOOO             = 7514, -- <Wheeze>...<phshooo>!
        PHSHOOO                    = 7515, -- <Phshooo>...
        NOT_POSSIBLE               = 7516, -- <Phshooo>... Not...possible...
        ALRRRIGHTY                 = 7517, -- Alrrrighty! Let's get this show on the rrroad! I hope ya got deep pockets!
        CHA_CHING                  = 7518, -- Cha-ching! Thirty gold coins!
        TWELVE_GOLD_COINS          = 7519, -- Hehe! This one'll cost ya twelve gold coins a punch! The grrreat gouts of blood are frrree of charge!
        NINETY_NINE_SILVER_COINS   = 7520, -- Ninety-nine silver coins a pop! A bargain, I tell ya!
        THIS_BATTLE                = 7521, -- This battle is rrreally draggin' on... Just think of the dry cleanin' bill!
        OW                         = 7522, -- Ow...! Ya do rrrealize the medical costs are comin' outta your salary, don't ya?
        ABQUHBAH                   = 7523, -- A-Abquhbah! D-don't even think about...rrraisin' the wages... Management...is a mean world...ugh...
        OH_ARE_WE_DONE             = 7524, -- Oh, are we done? I wasn't done rrrackin' up the fees... You've got more in ya, rrright?
        NOW_WERE_TALKIN            = 7525, -- Now we're talkin'! I can hear the clinkin' of coin mountains collapsin' over my desk... Let's get this over with!
        PRAY                       = 7526, -- Pray to whatever gods you serve.
        BEHOLD                     = 7527, -- Behold the power of my eldritch gaze!
        CARVE                      = 7528, -- I will carve the soul fresh from your bones.
        RESIST_MELEE               = 7529, -- My flesh remembers the wounds of ten thousand blades. Come, cut me again...
        RESIST_MAGIC               = 7530, -- My skin remembers the fires of ten thousand spells. Come, burn me again...
        RESIST_RANGE               = 7531, -- My belly remembers the punctures of ten thousand arrows. Come, shoot me again...
        NOW_UNDERSTAND             = 7532, -- Hehehe... Do you now understand what it is to fight a true Immortal? Realize your futility and embrace despair...
        MIRACLE                    = 7533, -- Ugh... Has your god granted you the miracle you seek...?
        SHALL_BE_JUDGED            = 7535, -- I am...Alexander... The meek...shall be rewarded... The defiant...shall be judged...
        OFFER_THY_WORSHIP          = 7536, -- Offer thy worship... I shall burn away...thy transgressions...
        OPEN_THINE_EYES            = 7537, -- Open thine eyes... My radiance...shall guide thee...
        CEASE_THY_STRUGGLES        = 7538, -- Cease thy struggles... I am immutable...indestructible...impervious...immortal...
        RELEASE_THY_SELF           = 7539, -- Release thy self... My divine flames...shall melt thy flesh...sear thy bones...unshackle thy soul...
        BASK_IN_MY_GLORY           = 7540, -- Bask in my glory... Mine existence...stretches into infinity...
        REPENT_THY_IRREVERENCE     = 7541, -- Repent thy irreverence... The gate to salvation...lies before thee... Revelation...is within thy reach...
        ACCEPT_THY_DESTRUCTION     = 7542, -- Accept thy destruction... Wish for eternity...yearn for immortality... Sense thy transience...know thy insignificance...
        OMEGA_SPAM                 = 7543, -- OOOOOOO
        SHALL_KNOW_OBLIVION        = 7544, -- I am...Alexander... The fearful...shall be embraced... The bold...shall know oblivion...
    },

    mob = {
        -- Path of Darkness
        [58] = {
            AMNAF_BLU          = 17093132,
            AMNAF_PSYCHEFLAYER = 17093133,
            IMPERIAL_GEAR1     = 17093134,
            IMPERIAL_GEAR2     = 17093135,
            IMPERIAL_GEAR3     = 17093136,
            IMPERIAL_GEAR4     = 17093137,
            NAJA               = 17093142,
        },
        [59] = {
            RAZFAHD = 17093143,
            ALEXANDER = 17093144,
            RAUBAHN = 17093145,
        }
    },

    npc = {
        _257       = 17093359,
        _259       = 17093361,
        QM1        = 17093472,
        BLANK1     = 17093473,
        BLANK2     = 17093474,
        BLANK3     = 17093475,
        NASHMEIRA1 = 17093476,
        NASHMEIRA2 = 17093477,
        RAZFAHD    = 17093478,
        CSNPC1     = 17093479,
        GHATSAD    = 17093480,
        ALEXANDER  = 17093481,
        CSNPC2     = 17093482,
        WEATHER    = 17093423,
    }
}

return zones[xi.zone.NYZUL_ISLE]
