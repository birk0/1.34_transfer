
--AI Economy
NDefines.NAIEconomy.SUBSIDY_PRIORITY_CONSIDERATION_THRESHOLD = 25.0 --halfed, AI will consider giving subsidies less often
NDefines.NAI.DIPLOMATIC_ACTION_SUBSIDIES_POWERBALANCE_FACTOR = 20 --Halfed the AI's desire to give subsidies to powerbalance enemy
NDefines.NAI.SUBSIDY_YEARS = 5 --  AI will only send subsidies for 5 years
NDefines.NAI.MIN_INCOME_FOR_SUBSIDIES = 40 -- AI will want to have a higher base economy before it considers sending subsidies
NDefines.NAI.UPGRADE_CENTER_OF_TRADE_BASE_AI_DESIRE = 100.0 -- AI wants to upgrade trade centers much more
NDefines.NAI.UPGRADE_CENTER_OF_TRADE_AI_POWER_DESIRE = 2.5 -- AI will upgrade trade centres more
NDefines.NAI.GREAT_PROJECT_DESIRE_MOVE_FROM_SUBJECT_MODIFIER = 0.0 -- AI wont move GPs from subjects (useless)
NDefines.NAI.GREAT_PROJECT_DESIRE_LEAVE_IN_SUBJECT_MODIFIER = 0.0 -- AI dosent need to roleplay
NDefines.NAI.GREAT_PROJECT_DESIRE_UPGRADE_IN_SUBJECT_MODIFIER = 0.0 --Dosent benefit the AI so it won't bother
NDefines.NAI.GREAT_PROJECT_DESIRE_UPGRADE_MODIFIER = 0.1 -- AI needs to budget for more important things first.
NDefines.NAI.GREAT_PROJECT_DESIRE_BUILD_NEW_MODIFIER = 1 -- Dont think this is functional, but AI will do it less.
NDefines.NAI.GREAT_PROJECT_DESIRE_CAPITAL_MODIFIER = 2 -- Ai needs to budget for more important things.
NDefines.NAI.GREAT_PROJECT_DESIRE_CAPITAL_BASE = 2 --AI needs to budget for more important things
NDefines.NAI.GREAT_PROJECT_DESIRE_CAPITAL_AREA_MODIFIER = 2 -- Ai needs to budget for more important things
NDefines.NAI.DEVELOP_IN_SUBJECTS_PREFERENCE = 0.5 -- This dosent benefit the AI directly, so it will do it less.
NDefines.NAI.DRILLING_BUDGET_OF_SURPLUS = 100 -- Increased from 0.5 so AI still tries to drill
NDefines.NAI.COLONY_BUDGET_FRACTION = 2 --This increases the spending AI does towards colonisation, making them more eager to do so.
NDefines.NAI.FORT_NEXT_TO_FORT_MULT = 1 --Fort building is handled via script
NDefines.NAIEconomy.LOAN_REPAYMENT_SAVINGS_PRIORITY_WARTIME = 0.01 --turned off so the Ai dosent worry about loans while at war
--AI will development provinces till either of the following is true: (increased from vanilla)
NDefines.NAI.DEVELOPMENT_CAP_BASE = 20 -- 20 dev
NDefines.NAI.DEVELOPMENT_CAP_MULT = 3 --3x the original dev

NDefines.NAI.PS_SHORT_TERM_POOL = 1 -- Max monarch power AI will store in its short-term spending pool
NDefines.NAI.EXTRA_SURPLUS_WHEN_NEEDING_BUILDINGS = 0.01 -- reduced from 0.15 so ai dosent save money
NDefines.NAI.DEFICIT_SPENDING_MIN_MONTHS = 1 -- AI must have at least this many monthly deficits of savings to be willing to deficit spend
NDefines.NAI.DEFICIT_SPENDING_MIN_MONTHS_PEACETIME = 1 -- Same as DEFICIT_SPENDING_MIN_MONTHS, but during peacetime, no rebels and no war exhaustion
NDefines.NAI.INCOME_SAVINGS_FRACTION = 0.01 --lowered from 0.25
NDefines.NAI.DESIRED_SURPLUS = 0.01 --lowered from 0.1
NDefines.NAI.MAX_SAVINGS = 1 --lowered from 60
NDefines.NAIEconomy.BASE_SAVINGS_PRIORITY = 0.0 --lowered from 0.5


--AI Military
NDefines.NAI.ARTILLERY_FRACTION = 0.35 -- AI will build less artillery before tech 11 (it will be 70% at tech 11+)
NDefines.NAI.MIN_CAV_PERCENTAGE = 50 --AI will always aim to have at least 15% of their army cav
NDefines.NAI.MAX_CAV_PERCENTAGE = 65 --AI will never build more than 50% of their army cav
NDefines.NAI.AGGRESSIVENESS = 5000 --AI has a 50% chance of declaring a war each month 
NDefines.NAI.AGGRESSIVENESS_BONUS_EASY_WAR = 5000 -- on

NDefines.NAI.ACCEPTABLE_BALANCE_DEFAULT = 0.3 -- higher this is, the more the AI wants to run away (legit)
--unfortunately this causes overflow with large army stacks late game, (bad programmers) it seems armies around 1000x this will freeze
--amended by removing later supply_limit from tech file and replacing with regular event modifier. ai building smaller stacks

NDefines.NAI.ACCEPTABLE_BALANCE_MULT_FRIEND_IN_COMBAT = 0.5 -- Multiplies acceptable balance for entering an existing battle
NDefines.NAI.ACCEPTABLE_BALANCE_MULT_OFFENSIVE = 0.5 -- Same as above
NDefines.NAI.ACCEPTABLE_BALANCE_THREAT_WEIGHT = 0.1 -- Works in weird ways
NDefines.NAI.REGION_PLANNING_HOMELAND_PRIORIZATION = 20 --AI considers its homeland more when conducting military operations
NDefines.NAI.MIN_FORCE_LIMIT_SHARE_REGION_ASSIGN = 0.01 --Increased FL ratio for army assignment so AI dosent divert tiny stacks
NDefines.NAI.BIGSHIP_FRACTION = 0 -- Turned off, because big ships dont exist in the game anymore
NDefines.NAI.HOME_FLEET_MAX_RATIO = 0 --Turned off, so the AI dosen't keep fleets sitting around its home waters during war
NDefines.NCountry.GALLEY_INLAND_SEA_COAST_RATIO = 100 --Turned off, because galleys are removed from the game
NDefines.NAI.MAX_AI_ADMIRALS_WANTED_WARTIME = 8 -- AI will recruit more admirals
NDefines.NAI.MAX_AI_ADMIRALS_WANTED_PEACETIME = 8 --AI will recruit more admirals
NDefines.NAI.CONQUEST_INTEREST_DISTANCE = 200 --AI will desire land further away, creating larger empires
NDefines.NAI.NOMINAL_ARMY_SIZE_MULTIPLIER = 1.5 -- This mulitplies with the base army size the AI creates. Reduced to prevent freezing
-- this is so the AI can commit harder in wars:
NDefines.NAIEconomy.MILITARY_FOCUS_DEFAULT = 3 --3x more
NDefines.NAIEconomy.MILITARY_FOCUS_LOWER_BOUND = 0 --will always want to spend on the military
NDefines.NAIEconomy.MILITARY_FOCUS_UPPER_BOUND = 3 --3x more

--AI morale scared calculations now based on morale^1.2 instead of 1.32 from vanilla:
--formula: y = ORIGIN+POW0*(MORALE?ORIGIN)^0+POW1*(MORALE?ORIGIN)^1+POW2*(MORALE?ORIGIN)^2

NDefines.NAI.MORALE_STRENGTH_FACTOR_TAYLOR_ORIGIN = 3
NDefines.NAI.MORALE_STRENGTH_FACTOR_POW0 = 4
NDefines.NAI.MORALE_STRENGTH_FACTOR_POW1 = 1.5
NDefines.NAI.MORALE_STRENGTH_FACTOR_POW2 = 0.03

	-- How important are damage modifiers that don't affect morale (e.g. Fire damage (received))?
	-- Note: We set the morale exponent to 1.32, vs 2 for discipline (which affects both casualties and morale),
	-- so for consistency the combined exponent of the damage modifiers (dealt and received) should be (2 - 1.32), giving the exponent (2 - 1.32)/2 = 0.34 per modifier.
	-- We estimate X^0.34 (where X=1+mod) with the following taylor expansion:
NDefines.NAI.DAMAGE_STRENGTH_FACTOR_TAYLOR_ORIGIN = 1
NDefines.NAI.DAMAGE_STRENGTH_FACTOR_POW0 = 1
NDefines.NAI.DAMAGE_STRENGTH_FACTOR_POW1 = 0.34
NDefines.NAI.DAMAGE_STRENGTH_FACTOR_POW2 = -0.112

	-- Because it is different for each regiment, we can't afford to go through the regular code path to look up drill modifiers, so we simplify
	-- Taking the 0.34 exponent from above, we get:
	-- drill_impact_factor = ( (1+0.1*drill)/(1-0.25*drill) )^0.34, which we estimate with taylor expansion:
NDefines.NAI.DRILL_STRENGTH_FACTOR_TAYLOR_ORIGIN = 0.5
NDefines.NAI.DRILL_STRENGTH_FACTOR_POW0 = 1.064
NDefines.NAI.DRILL_STRENGTH_FACTOR_POW1 = 0.138
NDefines.NAI.DRILL_STRENGTH_FACTOR_POW2 = 0.022

	-- How important are combat pips? We think a permanent +1 dice modifier is worth a troop count factor of approximately 17/13 = (7.5+1)/(7.5-1)
	-- But pips only apply sometimes, and we cannot afford to compute fractional exponents
	-- So we estimate fire_phase_modifier = COMBAT_PIP_IMPORTANCE ^ ( FIRE_PIP_MULT * ( offensive_fire + defensive_fire ) + MORALE_PIP_MULT * ( offensive_morale + defensive_morale ) )
	-- (and similar for shock)
NDefines.NAI.COMBAT_PIP_IMPORTANCE = 1.04573 -- = (17/13)^(1/6)
NDefines.NAI.FIRE_PIP_MULT = 3 -- This means having one of each fire pip applies a modifier of 17/13 to the fire phase estimate, as desired (since it's equivalent to +1 dice modifier)
NDefines.NAI.SHOCK_PIP_MULT = 3 -- Ditto
NDefines.NAI.MORALE_PIP_MULT = 2 -- Morale pips are counted in both phases, but only applies to morale damage, which we guesstimate to be worth twice as much as casualties (=2/3, or ~1.32/2, of total)









NDefines.NAI.INVADING_BRAVERY = 2 -- AI will be more willing to naval invade (probably not but i hope so)
NDefines.NAI.INVADING_MAX_AWAY_RATIO = 0.1 --increases the AI's desire to send fleets far away

--AI Diplomacy
NDefines.NAI.DIPLOMATIC_ACTION_GUARANTEE_PROTECT_FACTOR = 10 --AI should be less eager to guarantee weaker nations it could annex
NDefines.NAI.DIPLOMATIC_ACTION_CRUSADE_DEVELOPMENT_FACTOR = 2 -- AI Wants to call crusades against big countries
NDefines.NAI.DIPLOMATIC_ACTION_CRUSADE_ANTAGONIZE_FACTOR = 50 -- AI wants to crusade countries they hate
NDefines.NAI.DIPLOMATIC_ACTION_CRUSADE_ANNEX_FACTOR = 100 -- AI wants to crusade countries they want to annex
NDefines.NAI.DIPLOMATIC_ACTION_CRUSADE_NEIGHBOUR_FACTOR = 50 -- AI wants to crusade neighbours
NDefines.NAI.DIPLOMATIC_ACTION_CRUSADE_RIVAL_FACTOR = 25 -- AI wants to crusade rivals more
NDefines.NAI.DIPLOMATIC_ACTION_OFFER_CONDOTTIERI_ONLY_MILITARY_RULERS = 0 --AI will always send condoterri (if it wants to)
NDefines.NAI.DIPLOMATIC_ACTION_WARNING_MAX_DISTANCE = 75 --AI will not warn countries further away than this (increased)
NDefines.NAI.DIPLOMATIC_ACTION_ENFORCE_PEACE_FORCE_BALANCE_MULT = 3 -- AI is 3x more likely to enforce peace 
NDefines.NAI.DIPLOMATIC_ACTION_OFFER_CONDOTTIERI_BASE_MULT = 20 --AI is less inclined to rent out condottieri
NDefines.NAI.DIPLOMATIC_ACTION_TRADE_FAVORS_FOR_HEIR_BASE_SCORE = 0 --AI will not use this action anymore
NDefines.NAI.DIPLOMATIC_ACTION_TRADE_FAVORS_FOR_TRUST_BASE_SCORE = 0 --AI will not use this action anymore
NDefines.NAI.DIPLOMATIC_ACTION_TRADE_FAVORS_FOR_TRUST_PREPARING_FOR_WAR_SCORE = 0 --AI wont care about this
NDefines.NAI.DIPLOMATIC_ACTION_TRADE_FAVORS_FOR_TRUST_DIPLOMAT_MULT = 0 --AI wont do this
NDefines.NAI.DIPLOMATIC_ACTION_COUNTER_ESPIONAGE_SPY_PROPENSITY_FACTOR = 2 --AI will counterespionage countries who are spying on them
NDefines.NAI.DIPLOMATIC_ACTION_COUNTER_ESPIONAGE_ENEMY_FACTOR = 100 --AI more likely to counter-espionage rivals/enemies
NDefines.NAI.DIPLOMATIC_ACTION_GUARANTEE_POWERBALANCE_FACTOR = 1 -- AI shouldn't guarantee nations and eat them instead
NDefines.NAI.DIPLOMATIC_ACTION_GUARANTEE_PROTECT_FACTOR = 1 -- AI shouldn't guarantee nations and eat them instead

--AI Government
NDefines.NAI.DANGEROUS_OVEREXTENSION_PERCENTAGE = 1 -- Increased so AI isnt worrying about overextension below 100%
NDefines.NAI.ESTATE_MIN_WANTED_CROWNLAND = 14.0 --AI wont grant privileges that drop crownland if it is below this %
NDefines.NAI.ESTATE_PRIVILEGE_LAST_PENALTY = 1 --Should make the AI more willing to give out privileges to its limit (6)
NDefines.NAI.GOVERNING_CAPACITY_OVER_PERCENTAGE_TOLERATED = 1 --Increased AI tolerance to Governing cap so it conquers more
NDefines.NAI.ADVISOR_BUDGET_FRACTION_MAX = 1.1 --Increased so AI spends more on advisors (same as meritocracy nations)
NDefines.NAI.ADVISOR_BUDGET_FRACTION_MIN = 0.6 --Increased so AI spends more on advisors (same as meritocracy nations)
NDefines.NAI.DEFENDER_OF_FAITH_BASE_AI_DESIRE = 1000 -- AI scoring for becoming defender of faith, multiplied by budget/cost (increased)

--AI peace deals
NDefines.NAI.PEACE_TERMS_PILLAGE_CAPITAL_MULT = 0.0 -- Pillaging is basically useless and AI shouldnt do it.
NDefines.NAI.PEACE_TERMS_WAR_REPARATIONS_BASE_MULT = 0.0 --AI wont demand war reps so they prioritise taking land
NDefines.NAI.PEACE_TERMS_TRADE_POWER_BASE_MULT = 0.0 -- AI will not demand trade power since it can barely make use of it
NDefines.NAI.PEACE_TERMS_REVOKE_CORES_BASE_MULT = 0.0 --Useless, AI wont do it
NDefines.NAI.PEACE_TERMS_REVOKE_REFORM_BASE_MULT = 0.0 --Useless, AI wont do it
NDefines.NAI.PEACE_TERMS_TRADE_POWER_VALUE_MULT = 0.0 --Useless, AI wont do it
NDefines.NAI.PEACE_TERMS_TRADE_POWER_VALUE_MAX = 0.0 --Useless, AI wont do it
NDefines.NAI.PEACE_TERMS_GIVE_UP_CLAIM_PERMANENT = 0.0 --Useless, AI wont do it
NDefines.NAI.PEACE_TERMS_CONCEDE_DEFEAT_BASE_MULT = 0.0 --Useless, AI wont do it
NDefines.NAI.PEACE_TERMS_RELEASE_ANNEXED_BASE_MULT = 0.0 --Useless, AI wont do it
NDefines.NAI.PEACE_TERMS_GOLD_BASE_MULT = 0.01 --AI wont take money
NDefines.NAI.PEACE_TERMS_ANNUL_TREATIES_BASE_MULT = 0.05 --AI is less likely to Annul treaties in peace deals
NDefines.NAI.PEACE_TERMS_RETURN_CORES_NOT_FRIEND_MULT = 0.1 --AI desire for returning cores to non-friends is multiplied by this
NDefines.NAI.PEACE_TERMS_HUMILIATE_RIVAL_BASE_MULT = 0.1 --less relevant for AI
NDefines.NAI.PEACE_TERMS_TRANSFER_VASSALS_BASE_MULT = 0.25 --Reduced, less relevant for AI
NDefines.NAI.PEACE_TERMS_PROVINCE_STRATEGY_THRESHOLD = 0.5 --AI views provinces 2x more strategically
NDefines.NAI.PEACE_TERMS_HUMILIATE_BASE_MULT = 0.5 --Ai scoring for humilation halfed
NDefines.NAI.PEACE_TERMS_TRIBUTARY_BASE_MULT = 0.5 -- AI should make tributaries less, shouldn't apply too much to EoC though
NDefines.NAI.PEACE_TERMS_PROVINCE_NO_CB_MULT = 1 --AI desire for taking province without a CB for it multiplied by this
NDefines.NAI.PEACE_TERMS_PROVINCE_REAL_ADJACENT_MULT = 0.8 -- This is slightly increased so the AI is less picky about adajcency
NDefines.NAI.PEACE_TERMS_PROVINCE_NOT_CULTURE_MULT = 1.0 --AI desire for taking a province with wrong culture multiplied by this
NDefines.NAI.PEACE_TERMS_PROVINCE_BASE_MULT = 2.0 --AI cares more about taking provinces in peace
NDefines.NAI.PEACE_TERMS_PROVINCE_WARGOAL_MULT = 3.0 -- AI cares more about its wargoal
NDefines.NAI.PEACE_TERMS_PROVINCE_CLAIM_MULT = 3.0 -- AI cares more about its claims
NDefines.NAI.PEACE_TERMS_PROVINCE_CORE_MULT = 4.0 -- AI Cares more about its cores
NDefines.NAI.MINIMUM_STRENGTH_TO_AVOID_UNCONDITIONAL_SURRENDER = 10 --enemy must be this times stronger for AI to consider unconning
NDefines.NAI.PEACE_STALLED_WAR_TIME_FACTOR = 10 -- from 0.34. If AI can see a war is stalled it will want to peace out
NDefines.NAI.PEACE_INCONCLUSIVE_THRESHOLD = 0	-- no demands will be accepted by AI if under this warscore
NDefines.NAI.PEACE_CALL_FOR_PEACE_FACTOR = 0 -- Disabled, Call for peace has no effect on war enthusiasm

--AI war enthuasism
NDefines.NAI.PEACE_TIME_MONTHS = 360 -- This effectively allows the AI to fight wars for 30+ years
NDefines.NAI.PEACE_HIGH_WAR_EXHAUSTION_FACTOR = 2500 -- This makes the AI really want to peace out (basically uncon)
NDefines.NAI.PEACE_HIGH_WAR_EXHAUSTION_THRESHOLD = 19.75 --The War exhaustion factor will only kick in above 19.75 warscore
NDefines.NAI.PEACE_WAR_DIRECTION_WINNING_MULT = 20 -- AI will not want to peace out if its the one making gains.
NDefines.NAI.PEACE_MILITARY_STRENGTH_FACTOR = 20 --Doubled, AI is less likely to peace out if they have a decent army around still
NDefines.NAI.PEACE_FORCE_BALANCE_FACTOR = 0.2 --If the AI can see its forces are weaker than the enemy, it will want to peace out more
NDefines.NAI.PEACE_WARGOAL_FACTOR = 5 -- -5 reasons for peacing out added to AI if they hold the wargoal
NDefines.NAI.PEACE_ALLY_WARSCORE_MULT = 0.2 --Halfed, AI allies are less enthusiastic over warscore
NDefines.NAI.PEACE_ALLY_CAPITAL_MULT = 0.5 --Halfed, AI allies less hyped about their capitals/war leaders capital being owned
NDefines.NAI.PEACE_COALITION_FACTOR = 50 --Increased AI's desire to continue fighting a war if its a Coalition war
NDefines.NAI.PEACE_MANDATE_THREAT_FACTOR = 0.0 -- EoC wont freak out and beg for peace if its mandate is low


--General Military
NDefines.NMilitary.FORTRESS_COST = 0.2 -- Forts are now cheaper to maintain (was 0.5)
NDefines.NMilitary.DAYS_PER_SIEGE_PHASE = 45 -- Siege Phases are longer due to fort levels being drastically lower
NDefines.NMilitary.BANNER_AGE_MULTIPLIER = 0.1 --Banner increase from ages nerfed. Age of revolutions = +30% possible banners 
NDefines.NMilitary.BANNER_STARTING_STRENGTH = 1 --banners full strength
NDefines.NMilitary.WAR_ENTHUSIASM_HIGH_THRESHOLD = -10 -- AI should be more willing to fight out wars

--asaulting fort AI desire:
--i believe ive nearly reverse engineered a reliable theory for how its calculated:
--it forumlates off this DESIRED_INFANTRY = ( ASSAULT_ATTACKER_LOSS * PROVINCE_GARRISON / 10 )
--if the number of infantry in the province is roughly DESIRED_INFANTRY then it will assault.
--in 1.36 i plan to use the new assault modifier for AI so that we can revert these values back to vanilla while having AI still assault.

NDefines.NMilitary.ASSAULT_ATTACKER_LOSS = 0.01 -- has to be low otherwise AI won't want to assault
NDefines.NMilitary.ASSAULT_DEFENDER_LOSS = 0.01 -- attackers are low therefore defenders should be as well
NDefines.NMilitary.ASSAULT_WIDTH_LIMIT = 12 -- Higher = faster morale loss (upped so morale is the bottleneck now, not casualties)



--drill rework
--drill no longer applies any benefits, its now been moved to army professionalism, which has replaced it with a better system
--drill stuff has been tweaked so that i can check when a country is drilling units, by using the num_of_regiments_with_full_drill trigger
NDefines.NMilitary.MAX_DRILL_DECAY = 10 -- Maximum possible drill decay
NDefines.NMilitary.ARMY_DRILL_YEARLY_DECAY = -10 -- drill decays very quickly, to be used for triggers
NDefines.NMilitary.ARMY_DRILL_YEARLY_GAIN = 1200 --drill gain very fast, for trigger use
NDefines.NMilitary.ARMY_DRILL_SKILL_MONTHS = 25 -- Skill gain from drilling is 5x more common (training generals is viable)


NDefines.NMilitary.REBEL_LEADER_POWER = 75 -- Rebels will have higher leader pips on their stacks
NDefines.NMilitary.ARMY_ATTRITION_AT_SEA = 1 -- This has been drastically lowered so that half your army dosent end up dead
NDefines.NMilitary.WARSCORE_MAX_FROM_BATTLES = 50 -- Boosted max warscore from battles
NDefines.NMilitary.OVERRUN_FACTOR = 100 -- Fixing Rebels
NDefines.NMilitary.ARMY_DRILL_MAX_MORALE = 15 --So you dont have to wait for morale to recover after drilling
NDefines.NMilitary.SEA_EXPLORE_SPEED = 10 --The higher this is, the faster exploring is? I think.. originally 5
NDefines.NMilitary.INF_LOOT = 0.025  --Reduced a lot to make Cav more useful
NDefines.NMilitary.CAV_LOOT = 0.5 --Cavalry loots a lot faster than Infantry and Artillery (was 0.3)
NDefines.NMilitary.ART_LOOT = 0.025 --Artillery loots less so Cav is more impactful
NDefines.NMilitary.MAX_REBEL_SUPPRESSION = 10 --Doubled, Friendly troops lessen unrest more
NDefines.NMilitary.INF_SUPPRESSION = 0.05 --Reduced a lot, Infantry less impactful on rebellions
NDefines.NMilitary.CAV_SUPPRESSION = 0.5 --Cavalry reduces unrest in a province a lot more now
NDefines.NMilitary.ART_SUPPRESSION = 0.1 --Halfed, Artillery less impactful on rebellions
NDefines.NMilitary.LOOTED_SCALE = 2	--Doubled the amount of loot in provinces
NDefines.NMilitary.LOOTED_MAX = 3 --Halfed, can only get 3 ducats monthly out of looting a province
NDefines.NMilitary.LIGHT_SHIP_TIME = 90 --Reduced, lights only take 3 months to build
NDefines.NMilitary.NAVAL_CASUALTY_MIN_MORALE_DAMAGE = 0 --Minimum morale damage lowered
NDefines.NMilitary.MIN_RECRUIT_TIME_MODIFIER = 0.01 -- lowered from 0.2 * base
NDefines.NMilitary.TRADITION_GAIN_NAVAL = 20 --Same as land combat now
NDefines.NMilitary.SEA_LANDING_PENALTY = -1 --Sea landing should be less punishing
NDefines.NMilitary.TRANSPORT_SHIP_SAILORS_COST = 1 -- Transports are free
NDefines.NMilitary.TRANSPORT_COST = 1 --basically free but not 0 cause pdx programmers probably divide by this value
NDefines.NMilitary.TRANSPORT_TIME = 1 --Transports build instantly
NDefines.NMilitary.BACK_LINE_MODIFIER = 4 --Increased from 0.5 because artillery units are now only 100 men strong.
NDefines.NMilitary.BACK_LINE_MORALE_DAMAGE_TAKEN_MODIFIER = 0 --units in the backrow (artillery) take no morale damage
NDefines.NMilitary.BATTLE_DAILY_MORALE_DAMAGE = 0.003 --Daily morale damage for troops in battle is this * max morale of enemy(reduced)
NDefines.NMilitary.RESERVE_DAILY_MORALE_DAMAGE = 0.006 --Daily morale damage for troops in reserve is this * max morale of enemy(reduced)
NDefines.NMilitary.BACK_LINE_REINFORCE_SPEED = 40 -- Artillery can reinforce 40 units to backrow per day (base value)
NDefines.NMilitary.CAVALRY_BREAKTHROUGH = 0.4 -- Cavalry has a 40% chance of defeating an artillery unit behind the enemy that it kills

NDefines.NMilitary.NAVAL_BASE_DISENGAGEMENT_CHANCE = 0.33 -- Buffed a lot so ships will actually disengage from battle
NDefines.NMilitary.LIGHT_SHIP_COST = 50 --light ships now cost the same as the old heavy ships
NDefines.NMilitary.DELIBERATE_RETREAT_MORALE_PENALTY = -1 --This is to compensate for the Ai retreating during mid-battles
NDefines.NMilitary.SUPERIORITY_WARGOAL_WARSCORE_THRESHOLD = 50 --ticking dosent start unless 50 warscore from battles

--General Country
NDefines.NCountry.PS_NAVAL_BARRAGE = 0 -- Naval Barrage is free
NDefines.NCountry.PS_ASSAULT = 0 --Assaulting forts should be the Meta considering low garrison sizes but long siege times.
NDefines.NCountry.PS_GARRISON_SORTIES = 0 -- Sorties are free
NDefines.NCountry.PS_MOVE_TRADE_PORT = 0 --No cost to move trading port (Mostly for AI)
NDefines.NCountry.SIBERIAN_FRONTIER_DAILY_BASE = 1--Min Siberian frontier settlers per month 
NDefines.NCountry.SIBERIAN_FRONTIER_DAILY_RANGE = 10 --Siberian frontiers can now have between 1-10 settlers per month, they are slower.
NDefines.NCountry.MONTHS_TO_CHANGE_CULTURE = 5 -- Culture converting is 2x faster
NDefines.NCountry.SHOGUN_INTERACTIONS_LEGITIMACY = -30 --Higher legitimacy hit from Shogun mechanics
NDefines.NCountry.LAND_FORCELIMIT_EXTRA_COST_FACTOR = 4 --rework
NDefines.NCountry.NAVAL_FORCELIMIT_EXTRA_COST_FACTOR = 4 -- rework
NDefines.NCountry.MAX_EXTRA_PERSONALITIES = 3 --Extra one added for the additional AI personality
NDefines.NCountry.FIRST_EXTRA_PERSONALITY = 20 -- The 2nd trait will now be gained around 35
NDefines.NCountry.YEARS_PER_EXTRA_PERSONALITY = 20 --Traits will appear every 20 years after 2nd (55ish 3rd) should be dead by 4th
NDefines.NCountry.POLICY_COST = 0 -- Policy Rework, Policies don't cost any MP to maintain
NDefines.NCountry.BASE_POSSIBLE_POLICIES = 0 -- Policy Rework, complete idea groups to unlock Policies instead
NDefines.NCountry.BASE_FREE_POLICIES = 0 -- This now influences the Policy cooldown, so it's 0 years reduction as a base
NDefines.NCountry.MINIMUM_POLICY_TIME = 1 -- Policy rework, reduced a lot
NDefines.NCountry.PS_RAISE_WAR_TAXES = 0 --War taxes reworked to new system, old one scrapped
NDefines.NCountry.EXPAND_INFRASTRUCTURE_DEV_LIMIT = 10 --Lowered from 15, can expand every 10 dev
NDefines.NCountry.COLONIAL_CLAIM_BONUS = 0 --No bonus from tordesillas if you somehow managed to get it
NDefines.NCountry.COLONIAL_CLAIM_VIOLATION = 20 --Rewarded for violating tordesillas in case AI was coded to care about this value
NDefines.NCountry.COLONY_VIOLAION_PAPAL_INFLUENCE_COST  = 10 --Above
NDefines.NCountry.ADVISOR_CUT_OFF_AGE = 18 -- So you aren't always getting old dudes on death row
NDefines.NCountry.PROVINCE_DISCOVERY_YEARS_TECHNOLOGY = 999 --This messes with Teleporters so its off
NDefines.NCountry.PROVINCE_DISCOVERY_YEARS_RELIGION = 999 -- This messes with teleporters so its off
NDefines.NCountry.MAXIMUM_ADVISOR_SKILL = 10 -- This is to make more use of money in the late game
NDefines.NCountry.SCRIPTED_ADVISOR_DISCOUNT = 0.75 -- Part of a nerf to make stacking advisor cost reduction difficult
NDefines.NCountry.ADVISOR_COST_INCREASE_PER_YEAR = 0.0075 --increased from 0.005 to make Advisors more expensive over time
NDefines.NCountry.MINIMUM_ADVISOR_DURATION_CHANCE_VALUE = 40 --This has been increased so Advisors are less likely to die
--females are not immune to the death machine
NDefines.NCountry.FEMALE_ADVISOR_CHANCE = 50 --also modifies generals
NDefines.NCountry.ALLOW_FEMALE_GENERALS = 1
NDefines.NCountry.IDEA_TO_TECH = 0 --no tech reduction from ideas
NDefines.NCountry.BASE_TARIFF = 0.2 --Base colonial income which goes to tariffs
NDefines.NCountry.TARIFF_INCREASE_STEP = 0.1 --Income increase from raising tariffs (was 0.05)
NDefines.NCountry.TARIFF_LIBERTY_INCREASE = 0.25 --Liberty desire increase from raising tariffs (was 1)
NDefines.NCountry.TARIFF_DECREASE_STEP = -0.1 --Income decrease from lowering tariffs (was 0.05)
NDefines.NCountry.PS_RAISE_TARIFFS = 0 --now free
NDefines.NCountry.PS_LOWER_TARIFFS = 0 --now free
NDefines.NCountry.MAX_CROWN_COLONIES = 1000 --Colonies no longer form in colonial regions, theyre broken rn and i cba to fix them
NDefines.NCountry.DEBT_LIMIT_ADM = -999 -- how far you can go into debt on ADM for actions that allow spending power you don't have.
NDefines.NCountry.DEBT_LIMIT_MIL = -999 -- how far you can go into debt on MIL for actions that allow spending power you don't have.
NDefines.NCountry.OVERSEAS_CLIENT_STATES = 1 --You can now have overseas client states
NDefines.NCountry.WAREXHAUSTION_REDUCTION = 1 -- reducing war exhaustion hits it down by 1 instead of 2 (from vanilla)

--General Diplomacy
NDefines.NDiplomacy.DISHONORABLE_PEACE_MONTHS = 0 -- Disabled to prevent prestige hits when a war is force cancelled via command.
NDefines.NDiplomacy.STABHIT_FOR_BREAKING_ALLIANCE_IN_WAR = 0 --Disabled to prevent stab hits when forced to break alliance
NDefines.NDiplomacy.CONDOTTIERI_MIN_DURATION = 54 --The Base cost for hiring out condoitteri is 3x more costly.
NDefines.NDiplomacy.CELESTIAL_EMPIRE_MANDATE_PER_STABILITY = 0.12 -- Less monthly mandate from stability
NDefines.NDiplomacy.CELESTIAL_EMPIRE_MANDATE_PER_STATE_WITH_PROSPERITY = 0.05 --Gain more mandate from prosperity
NDefines.NDiplomacy.CELESTIAL_EMPIRE_MANDATE_PER_HUNDRED_TRIBUTARY_DEV = 0.25 --Gain more mandate from tributaries
NDefines.NDiplomacy.CELESTIAL_EMPIRE_MANDATE_PER_5_LOANS = 0.0 -- This has been reworked per loan as opposed to every 5.
NDefines.NDiplomacy.CELESTIAL_EMPIRE_MANDATE_PER_HUNDRED_DEVASTATION = -7.5 -- Devastation hurts mandate less
NDefines.NDiplomacy.CELESTIAL_EMPIRE_REFORM_COST = 100 -- Passing reforms costs more Mandate
NDefines.NDiplomacy.CELESTIAL_EMPIRE_REFORM_STABILITY_COST = 3 --Passing reforms hits stability more
NDefines.NDiplomacy.CELESTIAL_EMPIRE_REFORM_MIN_VALUE = 100 --Passing reforms required more Mandate
NDefines.NDiplomacy.MONTHS_BEFORE_TOTAL_OCCUPATION = 18 -- Stops stupid OPMs refusing peace even though they're fully occupied
NDefines.NDiplomacy.WARNING_YEARS = 10 -- Warnings are now only valid for 10 years
NDefines.NDiplomacy.GUARANTEE_YEARS = 10 -- Guarantees are now only valid for 10 years
NDefines.NDiplomacy.AE_PROVINCE_CAP = 50 -- AE from taking provinces is now scaled up to 50 development also affects warscore cost
NDefines.NDiplomacy.GREAT_POWER_SUBJECT_CONTRIBUTION = 1.0 --Subjects contribute 100% to GP score now
NDefines.NDiplomacy.FORCE_BREAK_ALLIANCE_TRUCE_YEARS = 5 -- Lowered Break alliance to 5 years truce
NDefines.NDiplomacy.SCALED_TRUCE_YEARS = 5	-- Additional Scaled truce length based on warscore
NDefines.NDiplomacy.THREATEN_WAR_TRUCE_YEARS = 3 -- Lowered, length of truce from threatening war
NDefines.NDiplomacy.CHANGE_RIVAL_YEARS = 10 --Can change rivals every 10 years
NDefines.NDiplomacy.OFFENSIVE_WAR_COOLDOWN = 1 -- Lowered, can call allies to offensive wars every 1 years
NDefines.NDiplomacy.ANNUL_TREATIES_YEARS = 5 -- Lowered, Annul treaties is shorter
NDefines.NDiplomacy.COALITION_YEARS = 15 -- Lowered, Coalitions can expire earlier
NDefines.NDiplomacy.FORCE_END_RIVALRY_YEARS = 10 -- Annul rivals is shorter
NDefines.NDiplomacy.UNCONDITIONAL_SURRENDER_MIN_MONTHS = 6 --Lowered, can uncon in 6 months
NDefines.NDiplomacy.MIN_FAVOURS_FOR_ADDING_TRUST = 110 --AI will not use trade favours for trust
NDefines.NDiplomacy.UNCONDITIONAL_SURRENDER_MONTHS = -1 --Disabled, uncon wont incur call for peace
NDefines.NDiplomacy.DISHONOR_CALL_TRUST_CALLER = 0 --no longer lose trust when  decline cta (mostly for ai)
NDefines.NDiplomacy.DISHONOR_CALL_TRUST = 0 --no longer lose trust when decline cta (mostly for ai)

--Espionage Tweaks, Spy networks harder to manage (but with great bonuses)
NDefines.NDiplomacy.BUILD_SPY_DISCOVERED_PENALTY = -1 --Lowered so it only slows down spy network instead
NDefines.NDiplomacy.BASE_SPY_DISCOVERY_CHANCE = 0.5 --Chance of spies being discovered in a country doubled so its harder to establish
NDefines.NDiplomacy.COUNTERESPIONAGE_DISCOVER_CHANCE = 0.1 --Base Counter-espionage chance nerfed from 33% to 10%
NDefines.NDiplomacy.SPY_DISCOVERY_COOLDOWN_MONTHS = 18 --Slightly Increased because it dosent stop spy networks entirely now
NDefines.NDiplomacy.BUILD_SPY_NETWORK_SPEED = 1 --Base spy network speed lowered from 1.5
NDefines.NDiplomacy.COUNTERESPIONAGE_NETWORK_IMPACT = -0.25 --Lowered from 50% to 25%, counter esiponage will hurt networks less
NDefines.NDiplomacy.SPY_NETWORK_DECAY = 0.2 --Spy network decays much slower
NDefines.NDiplomacy.SPY_NETWORK_SIEGE_EFFECT = 0.33 --Buffed from 20%, up to 33% siege ability from spy network in country
NDefines.NDiplomacy.SPY_NETWORK_AE_EFFECT = -0.5 --Buffed from 10%, up to 50% AE reduction from spy network in country
NDefines.NDiplomacy.SPY_NETWORK_TECH_EFFECT = -0.1 --Buffed from 5%, up to 10% tech reduction per tech from spy network in country
NDefines.NDiplomacy.SPY_NETWORK_TECH_EFFECT_MAX = -0.5 --Buffed from 30%, up to 50% total tech reduction from spy network in country
NDefines.NDiplomacy.FABRICATE_CLAIM_COST_MODIFIER_PER_CLAIM = 0.025 --10x less, makes fabricating multiple claims easier
NDefines.NDiplomacy.JUSTIFY_TRADE_CONFLICT_COST = 70 --Reskinned to a new CB, boosted to 70 since it is strong
NDefines.NDiplomacy.INFILTRATE_ADMINISTRATION_COST = 0 --Removed replaced with new thing
NDefines.NDiplomacy.SABOTAGE_REPUTATION_COST = 0 --Removed and replaced
NDefines.NDiplomacy.STEAL_MAPS_COST = 20 --Reduced from 50, no harm in stealing maps anyway, merely QoL
NDefines.NDiplomacy.SUPPORT_REBELS_COST = 10 --Kept around but basically useless
NDefines.NDiplomacy.SOW_DISCONTENT_COST = 0 --Removed
NDefines.NDiplomacy.AGITATE_FOR_LIBERTY_COST = 0 --Removed and replaced
NDefines.NDiplomacy.SABOTAGE_RECRUITMENT_COST = 0 --Removed and replaced
NDefines.NDiplomacy.SLANDER_MERCHANTS_COST = 0 --Removed and replaced
NDefines.NDiplomacy.CORRUPT_OFFICIALS_COST = 0 -- Removed, replaced with new one for espionage ideas
NDefines.NDiplomacy.JUSTIFY_TRADE_CONFLICT_LIMIT = 0 --No longer required
NDefines.NDiplomacy.JUSTIFY_TRADE_CONFLICT_ACTOR_LIMIT = 0 --No longer required
NDefines.NDiplomacy.DETECTED_SPY_NETWORK_DAMAGE_MIN = 10 -- works to make discovered spy networks less likely to be discovered in future
NDefines.NDiplomacy.DETECTED_SPY_NETWORK_DAMAGE_MAX = 20 --works to make discovered spy networks less likely to be discovered in future
NDefines.NDiplomacy.SPY_NETWORK_DISCOVER_WAR = 10 --spy networks more likely to be discovered while at war

--General Economy
NDefines.NEconomy.LAND_TECH_MERC_MAINTENANCE_IMPACT = 0.01 --Mercs cost inflation instead so this is cheaper
NDefines.NEconomy.COLONIAL_MAINTENANCE_FACTOR = 4 --Halfed, was 8. Colonies are cheaper to maintain (mostly for AI)
NDefines.NEconomy.LAND_TECH_MAINTENANCE_IMPACT = 0.05 --This is increased from 0.02 to make late game scaling harder
NDefines.NEconomy.NAVAL_TECH_MAINTENANCE_IMPACT = 0.05 --This is increased from 0.02 to make late game scaling harder

--General Trade
NDefines.NEconomy.TRADE_COMPANY_STRONG_LIMIT = 0.7 --70% trade power required to receive merchant from trade company (increased from 51%)
NDefines.NEconomy.CARAVAN_POWER_MAX = 10 --reduced a lot from vanilla, so random nations dont tank the entire trade from inland nodes
NDefines.NEconomy.TRADE_NON_CAPITAL_OFFICE = 0 --Collecting outside of home node no longer impacts trade power
NDefines.NEconomy.EMBARGO_BASE_EFFICIENCY = 1 -- Doubled, Embargos are more devastating
NDefines.NEconomy.TRADE_COMPANY_COOLDOWN = 0 --no cooldown on adding or removing provinces  to trade company

--Government
NDefines.NGovernment.CONCENTRATE_DEVELOPMENT_CAPITAL_PROPORTION = 2 --Buffed Concentrate development so its not so bad (no mega cities though)
NDefines.NGovernment.DEVASTATION_PER_DEV_STOLEN = 1 -- Less devastation from concentrating
NDefines.NGovernment.FREE_CONCENTRATE_DEVELOPMENT_CAPITAL_PROPORTION = 3 -- More development to capital
NDefines.NGovernment.GOVERNMENT_REFORM_COST_CENTRALIZE_STATE = 75 --Centralize state now costs 75 reform progress
NDefines.NGovernment.CENTRALIZE_STATE_YEARS = 0 --Centralize state finishes instantly
NDefines.NGovernment.EXPAND_ADMIN_COST = 50 --Increased cause AI cant handle centralize state
NDefines.NGovernment.EXPAND_INFRASTRUCTURE_ADM_COST = 0 --Expand infrastructure is free

--Religion
NDefines.NReligion.MAX_CHRISTIAN_RELIGIOUS_CENTERS = 6 --boosted so protestanism isnt so rare
NDefines.NReligion.REFORM_DESIRE_PER_YEAR = 0.005 --Doubled
NDefines.NReligion.REFORM_DESIRE_PROV_CONVERSION_SPEED_MODIFIER = 2 --doubled
NDefines.NReligion.HARMONY_LOSS_PER_DEV_CONVERTED = 0.5 -- halfed the harmony lost from converting provivnces normally with missionaries
NDefines.NCountry.CONVERSION_COOLDOWN = 60 --halfed from vanilla, iirc it has to do with the cooldown associated with changing religion
NDefines.NCountry.CONVERSION_COOLDOWN_SECONDARY = 60 --above, but for secondary faiths

--Graphics/Map
NDefines.NGraphics.MAX_NUM_YEAR_OF_TRUCE_FOR_MAPMODE = 10 --Lowered to 10
NDefines.NGraphics.MILD_WINTER_VALUE = 0 -- no map change from winter
NDefines.NGraphics.NORMAL_WINTER_VALUE = 0 -- no map change from winter
NDefines.NGraphics.SEVERE_WINTER_VALUE = 0 -- no map change from winter

--Custom setup
NDefines.NNationDesigner.POINTS_AVAILABLE = 2000 --boosted
NDefines.NNationDesigner.IDEAS_MAX_LEVEL = 8 --boosted
NDefines.NGame.MAX_CUSTOM_COUNTRIES = 100 --boosted

--Map setup
NDefines.NGame.START_DATE = "1402.08.20"
NDefines.NGame.END_DATE = "1779.1.2"





--temp stuff


--slacken turned off and moved to estate gui
NDefines.NMilitary.SLACKEN_AP_DROP = 101
NDefines.NMilitary.SLACKEN_MANPOWER_INCREASE = 0


--changed due to the doubled units, may be tweaked later
NDefines.NMilitary.MONTHLY_REINFORCE = 0.2 -- changed

NDefines.NMilitary.BASE_COMBAT_WIDTH = 8
NDefines.NMilitary.MAX_COMBAT_WIDTH = 30




--coordinates for the main menu camera
NDefines.NFrontend.CAMERA_LOOKAT_X = 950.0
NDefines.NFrontend.CAMERA_LOOKAT_Y = 0.0
NDefines.NFrontend.CAMERA_LOOKAT_Z = 1530.0
NDefines.NFrontend.CAMERA_LOOKAT_SETTINGS_X = 950.0
NDefines.NFrontend.CAMERA_LOOKAT_SETTINGS_Y = 0.0
NDefines.NFrontend.CAMERA_LOOKAT_SETTINGS_Z = 1530.0
NDefines.NFrontend.CAMERA_START_X = 950.0
NDefines.NFrontend.CAMERA_START_Y = 1000 --the y-coordinate the camera is zoomed out to
NDefines.NFrontend.CAMERA_START_Z = 1400.0
NDefines.NFrontend.CAMERA_END_X = 950.0
NDefines.NFrontend.CAMERA_END_Y = 1100.0
NDefines.NFrontend.CAMERA_END_Z = 1530.0
NDefines.NFrontend.CAMERA_MIN_DIST_FOR_ROTATE = 1000.0 --Controlls when rotation starts. When camera is close enought it starts (was 800)
NDefines.NFrontend.FRONTEND_POS_X = 950.0
NDefines.NFrontend.FRONTEND_POS_Y = 1000.0
NDefines.NFrontend.FRONTEND_POS_Z = 1530.0
NDefines.NFrontend.FRONTEND_LOOK_X = 950.0
NDefines.NFrontend.FRONTEND_LOOK_Y = 0.0
NDefines.NFrontend.FRONTEND_LOOK_Z = 1530.0
--cordinates for some other stuff like the settings and credits screen
NDefines.NFrontend.SETTINGS_POS_X = 950.0
NDefines.NFrontend.SETTINGS_POS_Y = 750.0
NDefines.NFrontend.SETTINGS_POS_Z = 1530.0
NDefines.NFrontend.SETTINGS_LOOK_X = 950.0
NDefines.NFrontend.SETTINGS_LOOK_Y = 0.0
NDefines.NFrontend.SETTINGS_LOOK_Z = 1530.0
NDefines.NFrontend.CONTENT_POS_X = 950.0
NDefines.NFrontend.CONTENT_POS_Y = 1000.0
NDefines.NFrontend.CONTENT_POS_Z = 1530.0
NDefines.NFrontend.CONTENT_LOOK_X = 950.0
NDefines.NFrontend.CONTENT_LOOK_Y = 0.0
NDefines.NFrontend.CONTENT_LOOK_Z = 1530.0
NDefines.NFrontend.CREDITS_POS_X = 950.0
NDefines.NFrontend.CREDITS_POS_Y = 231.0
NDefines.NFrontend.CREDITS_POS_Z = 1530.0
NDefines.NFrontend.CREDITS_LOOK_X = 950.0
NDefines.NFrontend.CREDITS_LOOK_Y = 231.0
NDefines.NFrontend.CREDITS_LOOK_Z = 1530.0




NDefines.NGraphics.EQUATOR_COORDINATE_Y = 1100 --where the equator is on the map image





--Since the map is much bigger:
NDefines.NMilitary.INFANTRY_SPEED = 1.1 --was 0.7, 57% more speed
NDefines.NMilitary.CAVALRY_SPEED = 1.1 	--was 0.7, 57% more speed
NDefines.NMilitary.ARTILLERY_SPEED = 1.1 --was 0.7, 57% more speed

NDefines.NGame.GREAT_POWER_FRENZY_START = "1403.1.1" --Frenzy start (i suspect frenzy is what makes AI so aggressive post 1700)
NDefines.NGame.GREAT_POWER_FRENZY_WARMUP_MONTHS = 1	--Months for the Great Power Frenzy to reach full potency
NDefines.NGame.GREAT_POWER_FRENZY_QUICKSTART = 1 -- Can Frenzy start early?

NDefines.NAI.FORT_BUDGET_FRACTION = 0.7 --upped from 0.3
NDefines.NAI.AI_FORT_PER_DEV_RATIO = 20 -- How much development the AI wants per fort (dropped from 75)
NDefines.NAI.MAX_BUILDING_COST_INCOME_MONTHS = 25 --Wont build stuff that costs more monthly income * this if there are cheaper buildings
NDefines.NAI.DESIRED_DEFICIT = 0.1 -- AI will try to spend this fraction of their money above their target for long term savings. testing this. Was 0.01
NDefines.NAI.ADVISOR_BUDGET_FRACTION_MERITOCRACY_MAX = 1.1 -- If the AI has meritocracy enabled
NDefines.NAI.ADVISOR_BUDGET_FRACTION_MERITOCRACY_MIN = 0.6 -- If the AI has meritocracy enabled
NDefines.NAI.ADVISOR_BUDGET_THRESHOLD = 1.5 -- The AI will only hire an advisor if it can afford this much maintenance increase (+25%)
NDefines.NAI.STATE_MAINTENANCE_BUDGET_FRACTION = 0.3 -- AI will spend a maximum of this fraction of monthly income on state maintenance

NDefines.NCountry.TECH_TIME_COST = 4 -- TECH_TIME_COST/GAME_YEARS = tech increase per year. currently +0.01%

--effects from development halfed:
NDefines.NCountry.ESTATE_CROWNLAND_FROM_DEV = 0.1 --0.1 crownland per development.



NDefines.NCountry.ESTATE_MIN_DISTRIBUTED_CROWNLAND = 25.01 	-- Minimum of crownland when distributing land at start was 30