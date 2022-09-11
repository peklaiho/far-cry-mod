-- MaxAmmo
MaxAmmo = 
{
	Battery=100,
	Pistol=150,
	SMG=300,
	Assault=300,
	Sniper=30,
	Minigun=100,
	Shotgun=50,
	MortarShells=10,
	Grenades=6,
	HandGrenade=6,
	Rock=6,
	FlashbangGrenade=6,
	GlowStick=6,
	SmokeGrenade=6,
	FlareGrenade=6,
	Rocket=10,
	OICWGrenade=10,
	AG36Grenade=10,
	StickyExplosive=5,
	HealthPack=6,
	VehicleMG=500,
	VehicleRocket=20,
	Stamina=9999999,
}

--aim_recoil_modifier=mulitplier applied to recoil ... 0 = no recoil, 1 = original recoil, >1 more than original recoil
--min_accuracy=the worst the gun ever gets: 1 = good, 0 = bad, (ending)
--max_accuracy=the best the gun ever gets: 1 = good, 0 = bad, (starting)
--reload_time=
--fire_rate= seconds between rounds (pretty good now)
--distance= distance the shot travels
--damage= units of damage at end of first paratime 
--damage_drop_per_meter=begns at beginning of second paratime,
--bullet_per_shot=1,
--min_recoil= The best it gets 
--max_recoil= The worst it gets 
----------------------------------------------------------------------
----------------------------------------------------------------------
----------------------------------------------------------------------

WeaponsParams={
----------------------------------------------------------------------
--Falcon (Pistol/small cannon)
----------------------------------------------------------------------
	Falcon={
		Std=
		{
			--SINGLE FIRE-------------------------------------------------
			{
				fire_mode_type = FireMode_Instant,
				damage_type = "normal",
				aim_improvement = 0.03,
				aim_recoil_modifier = 0.5,
				accuracy_decay_on_run = 0.8,
				min_accuracy = 0.75,
				max_accuracy = 0.90,
				reload_time = 1.62,
				fire_rate = 0.5,
				tap_fire_rate=0.2,
				distance = 250,
				damage = 40, 
				damage_drop_per_meter = .1,
				bullet_per_shot = 1,
				min_recoil = 1.0,
				max_recoil = 2.0,
				iImpactForceMul = 100, 
				iImpactForceMulFinal = 40, 	
				iImpactForceMulFinalTorso = 130, 
				hud_icon = "single",
				accuracy_modifier_prone = 0.5,
				accuracy_modifier_crouch = 0.7,		 
				recoil_modifier_standing = 1.0,
			},
		},
		
		--In multiplayer, if this table exist will be merged with the table above for the firemodes in common.
		Mp=
		{
			{
				accuracy_modifier_standing = 0.75,
			},
		},
	},
----------------------------------------------------------------------
--M4 (Assault rifle)
----------------------------------------------------------------------
	M4={
		--standard weapon params
		Std=
		{
			--AUTOMATIC FIRE----------------------------------------------
			{
				fire_mode_type = FireMode_Instant,
				damage_type = "normal",
				aim_improvement=0.04,
				aim_recoil_modifier = 0.6,
				accuracy_decay_on_run=0.5,
				min_accuracy=0.65,
				max_accuracy=0.93,
				reload_time=2.3,
				fire_rate=0.08,
				distance=500,
				damage=50, 
				damage_drop_per_meter=.05,
				bullet_per_shot=1,
				min_recoil=0.3,
				max_recoil=0.6,
				iImpactForceMul = 25, 
				iImpactForceMulFinal = 40,	
				iImpactForceMulFinalTorso = 130, 
				hud_icon="auto",
				accuracy_modifier_prone = 0.5,
				accuracy_modifier_crouch = 0.7,		 
			        recoil_modifier_standing = 1.0,
				
				--view shaking: weapon_viewshake is the frequency of the shake, 
				--		weapon_viewshake_amt is optional: if not present will be used an ammount equal to (weapon_viewshake*0.001)
				weapon_viewshake = 6.0,
				weapon_viewshake_amt = 0.01,
			},
			--SINGLE SHOT-------------------------------------------------
			{
				fire_mode_type = FireMode_Instant,
				damage_type = "normal",
				aim_improvement=0.03,
				aim_recoil_modifier = 0.5,
				accuracy_decay_on_run=0.6,
				min_accuracy=0.65,
				max_accuracy=0.97,
				reload_time=2.3,
				fire_rate=0.25,
				distance=500,
				damage=50, 
				damage_drop_per_meter=.05,
				bullet_per_shot=1,
				min_recoil=0.7,
				max_recoil=1.0,
				iImpactForceMul = 25, 
				iImpactForceMulFinal = 40, 
				iImpactForceMulFinalTorso = 130, 
				hud_icon="single",
				accuracy_modifier_prone = 0.5,
				accuracy_modifier_crouch = 0.7,		 
			        recoil_modifier_standing = 1.0,
			},
		},
		
		--In multiplayer, if this table exist will be merged with the table above for the firemodes in common.
		Mp = 
		{
			--AUTOMATIC FIRE----------------------------------------------
			{
				accuracy_modifier_standing = 0.75,
			},
			--SINGLE SHOT-------------------------------------------------
			{
				accuracy_modifier_standing = 0.75,
			},
		},
	},
----------------------------------------------------------------------
--AG36 (Assault rifle with grenade launcher)
----------------------------------------------------------------------
	AG36={
		Std=
		{
			--AUTOMATIC FIRE----------------------------------------------
			{
				fire_mode_type = FireMode_Instant,
				damage_type = "normal",
				aim_improvement=0.06,
				aim_recoil_modifier = 0.6,
				accuracy_decay_on_run=0.75,
				min_accuracy=0.5,
				max_accuracy=1,
				reload_time=2.6,
				fire_rate=0.08,
				distance=500,
				damage=50, 
				damage_drop_per_meter=.05,
				bullet_per_shot=1,
				min_recoil=0.3,
				max_recoil=0.8,
				iImpactForceMul = 25, 
				iImpactForceMulFinal = 40, 
				iImpactForceMulFinalTorso = 130, 
				hud_icon="auto",
				accuracy_modifier_prone = 0.5,
				accuracy_modifier_crouch = 0.7,		 
			        recoil_modifier_standing = 1.0,
				
				--view shaking: weapon_viewshake is the frequency of the shake, 
				--		weapon_viewshake_amt is optional: if not present will be used an ammount equal to (weapon_viewshake*0.001)
				weapon_viewshake = 6.5,
				weapon_viewshake_amt = 0.01,
			},
			--GRENADE-----------------------------------------------------
			{
				fire_mode_type = FireMode_Projectile,
				damage_type = "normal",
				--accuracy [desn't apply]
				reload_time=2.4,
				fire_rate=1.0,
				-- distance [desn't apply]
				-- damage [desn't apply]
				-- damage_drop_per_meter [doesn't apply]
				bullet_per_shot=1,
				-- min_recoil [doesn't apply]
				-- max_recoil [doesn't apply]
				hud_icon="grenade",
			},
		},
		
		--In multiplayer, if this table exist will be merged with the table above for the firemodes in common.
		Mp=
		{
			--AUTOMATIC FIRE----------------------------------------------
			{	
				damage=45,
				accuracy_modifier_standing = 0.75,
			},
		},
	},
----------------------------------------------------------------------
--OICW (Assault rifle with 20mm secondary fire)
----------------------------------------------------------------------
	OICW={
		Std=
		{
			--AUTOMATIC FIRE----------------------------------------------
			{
				fire_mode_type = FireMode_Instant,
				damage_type = "normal",
				aim_improvement=0.06,	
				aim_recoil_modifier = 0.6,
				accuracy_decay_on_run=0.35,
				min_accuracy=0.5,
				max_accuracy=0.95,
				reload_time=2.4,
				fire_rate=0.08,
				distance=500,
				damage=50, 
				damage_drop_per_meter=.05,
				bullet_per_shot=1,
				min_recoil=0.2,
				max_recoil=0.3,
				iImpactForceMul = 25, 
				iImpactForceMulFinal = 40, 
				iImpactForceMulFinalTorso = 130, 
				hud_icon="auto",
				accuracy_modifier_prone = 0.5,
				accuracy_modifier_crouch = 0.7,		 
			        recoil_modifier_standing = 1.0,
				
				
				--view shaking: weapon_viewshake is the frequency of the shake, 
				--		weapon_viewshake_amt is optional: if not present will be used an ammount equal to (weapon_viewshake*0.001)
				weapon_viewshake = 7.0,
				weapon_viewshake_amt = 0.01,
			},
			--grenade (not 20MM)-----------------------------------------------------
			{
				fire_mode_type = FireMode_Projectile,
				damage_type = "normal",
				accuracy_decay_on_run=0.8,
				min_accuracy=0.65,
				max_accuracy=0.99,
				reload_time=2.5,
				fire_rate=0.8,
				distance=250,
				damage=150, 
				damage_drop_per_meter=.05,	
				bullet_per_shot=1,
				min_recoil=0.5,
				max_recoil=1.2,
				hud_icon="grenade",
			},
		},
		
		--In multiplayer, if this table exist will be merged with the table above for the firemodes in common.
		Mp = 
		{
			--AUTOMATIC FIRE----------------------------------------------
			{
				damage=45,
				accuracy_modifier_standing = 0.75,
				aim_improvement=0.078,
			},
			
			{
				bullets_per_clip=3,
			},
		},
	},
----------------------------------------------------------------------
--MP5 (Sub machine gun)
----------------------------------------------------------------------
	MP5={
		
		--standard weapon params
		Std=
		{
		--AUTOMATIC FIRE----------------------------------------------
			{
				fire_mode_type = FireMode_Instant,
				damage_type = "normal",
				aim_improvement=0.05,
				aim_recoil_modifier = 0.6,
				accuracy_decay_on_run=0.5,
				min_accuracy=0.6,
				max_accuracy=0.92,
				reload_time=2.5,
				fire_rate=0.08,
				distance=250,
				damage=30, 
				damage_drop_per_meter=.1,
				bullet_per_shot=1,
				min_recoil=0.3,
				max_recoil=0.8,
				iImpactForceMul = 25, 
				iImpactForceMulFinal = 15, 	
				iImpactForceMulFinalTorso = 75,
				hud_icon="auto",
				accuracy_modifier_prone = 0.5,
				accuracy_modifier_crouch = 0.7,		 
			        recoil_modifier_standing = 1.0,
				
				--view shaking: weapon_viewshake is the frequency of the shake, 
				--		weapon_viewshake_amt is optional: if not present will be used an ammount equal to (weapon_viewshake*0.001)
				--weapon_viewshake = 2,
				--weapon_viewshake_amt = 0.01,
			},
			--SINGLE SHOT-------------------------------------------------
			{
				fire_mode_type = FireMode_Instant,
				damage_type = "normal",
				aim_improvement=0.05,
				aim_recoil_modifier = 0.5,
				accuracy_decay_on_run=0.8,
				min_accuracy=0.8,
				max_accuracy=0.95,
				reload_time=2.3,
				fire_rate=0.2,
				distance=250,
				damage=30, 
				damage_drop_per_meter=.1,	
				bullet_per_shot=1,
				min_recoil=0.25,
				max_recoil=0.7, 
				iImpactForceMul = 25, 
				iImpactForceMulFinal = 15, 
				iImpactForceMulFinalTorso = 75, 
				hud_icon="single",
				accuracy_modifier_prone = 0.5,
				accuracy_modifier_crouch = 0.7,		 
			        recoil_modifier_standing = 1.0,
			},
		},
		
		--In multiplayer, if this table exist will be merged with the table above for the firemodes in common.
		Mp=
		{
		--AUTOMATIC FIRE----------------------------------------------
			{	
				damage=23, 	
				accuracy_modifier_standing = 0.75,
			},
			--SINGLE SHOT-------------------------------------------------
			{		
				damage=27, 
				accuracy_modifier_standing = 0.75,
			},
		},
	},
----------------------------------------------------------------------
--P90 (Sub machine gun)
----------------------------------------------------------------------
	P90={
		Std=
		{
			--AUTOMATIC FIRE----------------------------------------------
			{
				fire_mode_type = FireMode_Instant,
				damage_type = "normal",
				aim_improvement=0.02,
				aim_recoil_modifier = 0.6,
				accuracy_decay_on_run=0.3,
				min_accuracy=0.75,
				max_accuracy=0.90,
				reload_time=2.3,
				fire_rate=0.05,
				distance=250,
				damage=40, 
				damage_drop_per_meter=.1,
				bullet_per_shot=1,
				min_recoil=0.3,
				max_recoil=0.6,
				iImpactForceMul = 25, 
				iImpactForceMulFinal = 30, 	
				iImpactForceMulFinalTorso = 100, 
				hud_icon="auto",
				accuracy_modifier_prone = 0.5,
				accuracy_modifier_crouch = 0.7,		 
			        recoil_modifier_standing = 1.0,
				
				--view shaking: weapon_viewshake is the frequency of the shake, 
				--		weapon_viewshake_amt is optional: if not present will be used an ammount equal to (weapon_viewshake*0.001)
				weapon_viewshake = 5,
				weapon_viewshake_amt = 0.01,
			},
		},
		
		--In multiplayer, if this table exist will be merged with the table above for the firemodes in common.
		Mp=
		{
			--AUTOMATIC FIRE----------------------------------------------
			{	
				distance=75,
				damage=27, 	
				accuracy_modifier_standing = 0.75,
			},
		},	
	},

----------------------------------------------------------------------
--SniperRifle (Sniper rifle/camping device)
----------------------------------------------------------------------
	SniperRifle={
		Std=
		{
			--SINGLE FIRE-------------------------------------------------
			{
				fire_mode_type = FireMode_Instant,
				allow_hold_breath = 1,
				damage_type = "normal",
				aim_improvement=0.9,
				aim_recoil_modifier = 0.5,
				accuracy_decay_on_run=0.4,
				min_accuracy=0.70,
				max_accuracy=0.75,
				reload_time=2.83,
				fire_rate=1.25,
				distance=1500,
				damage=300, 
				damage_drop_per_meter=.05,
				bullet_per_shot=1,
				min_recoil=2.3,
				max_recoil=2.4,
				iImpactForceMul = 25, 
				iImpactForceMulFinal = 15, 	
				iImpactForceMulFinalTorso = 300, 
				hud_icon="single",
				accuracy_modifier_prone = 0.5,
				accuracy_modifier_crouch = 0.7,		 
			        recoil_modifier_standing = 1.0,
			},
			--AI SINGLE FIRE-------------------------------------------------
			{
				ai_mode = 1,
				fire_mode_type = FireMode_Instant,
				damage_type = "normal",
				aim_improvement=0.9,
				aim_recoil_modifier = 0.5,
				accuracy_decay_on_run=0.1,
				min_accuracy=0.8,
				max_accuracy=0.99,
				reload_time=2.83,
				fire_rate=2.5,
				distance=1500,
				damage=300, 
				damage_drop_per_meter=.05,
				bullet_per_shot=1,
				min_recoil=5.6,
				max_recoil=5.8,
				iImpactForceMul = 25, 
				iImpactForceMulFinal = 15, 	
				iImpactForceMulFinalTorso = 300, 
				hud_icon="single",
			},
		},
		
		--In multiplayer, if this table exist will be merged with the table above for the firemodes in common.
		Mp=
		{
			--SINGLE FIRE----------------------------------------------
			{	
				accuracy_modifier_standing = 0.75,
			},
		},	
	},
----------------------------------------------------------------------
--Shotgun (Semi automatic shotgun)
----------------------------------------------------------------------
	Shotgun={
		Std=
		{
			--SINGLE FIRE-------------------------------------------------
			{
				fire_mode_type = FireMode_Instant,
				damage_type = "normal",
				aim_improvement=0.1,
				aim_recoil_modifier = 0.5,
				accuracy_decay_on_run=1,
				min_accuracy=0.65,
				max_accuracy=0.65,
				reload_time=3,
				fire_rate=0.35,
				distance=150,
				damage=15,
				damage_drop_per_meter=.2,
				bullet_per_shot=20,
				min_recoil=3,
				max_recoil=3,
				iImpactForceMul = 16, 
				iImpactForceMulFinal = 16, 	
				iImpactForceMulFinalTorso = 24, 
				hud_icon="auto",
				mat_effect="pancor_bullet_hit",
				accuracy_modifier_prone = 0.5,
				accuracy_modifier_crouch = 0.7,		 
			        recoil_modifier_standing = 1.0,
			        
			        --view shaking: weapon_viewshake is the frequency of the shake, 
				--		weapon_viewshake_amt is optional: if not present will be used an ammount equal to (weapon_viewshake*0.001)
				weapon_viewshake = 5.0,
				weapon_viewshake_amt = 0.02,
			},
		},
		
		--In multiplayer, if this table exist will be merged with the table above for the firemodes in common.
		Mp=
		{
			--SINGLE FIRE----------------------------------------------
			{	
				min_accuracy=0.7,
				max_accuracy=0.7,
				accuracy_modifier_standing = 0.75,
			},
		},	
	},
----------------------------------------------------------------------
--M249 (Heavy machine gun)
----------------------------------------------------------------------
	M249={
		Std=
		{
			--AUTOMATIC FIRE-------------------------------------------------
			{
				fire_mode_type = FireMode_Instant,
				damage_type = "normal",
				aim_improvement=0.02,
				aim_recoil_modifier = 0.8,
				accuracy_decay_on_run=0.7,
				min_accuracy=0.75,
				max_accuracy=0.85,
				reload_time=4,
				fire_rate=0.08,
				distance=500,
				damage=60, 
				damage_drop_per_meter=.05,
				bullet_per_shot=1,
				min_recoil=0.2,
				max_recoil=0.3,
				iImpactForceMul = 25, 
				iImpactForceMulFinal = 30, 
				iImpactForceMulFinalTorso = 100, 
				hud_icon="auto",
				accuracy_modifier_prone = 0.5,
				accuracy_modifier_crouch = 0.7,		 
			        recoil_modifier_standing = 1.0,
				
				--view shaking: weapon_viewshake is the frequency of the shake, 
				--		weapon_viewshake_amt is optional: if not present will be used an ammount equal to (weapon_viewshake*0.001)
				weapon_viewshake = 8.0,
				weapon_viewshake_amt = 0.01,
			},
		},
		
		--In multiplayer, if this table exist will be merged with the table above for the firemodes in common.
		Mp=
		{
			--AUTOMATIC FIRE----------------------------------------------
			{	
				accuracy_modifier_standing = 0.75,
			},
		},	
	},
----------------------------------------------------------------------
--Shocker (Purse weapon/women's self defence weapon)
----------------------------------------------------------------------
	Shocker={
		Std=
		{
			--SINGLE FIRE-------------------------------------------------
			{
				fire_mode_type = FireMode_Melee,
				damage_type = "normal",
				min_accuracy=1,
				max_accuracy=1,
				reload_time=0.1,
				fire_rate=0.1,
				distance=2.2,
				damage=15,
				--damage_drop_per_meter [doesn't apply]
				min_recoil=0,
				max_recoil=0,
				no_ammo=1,
			},
		},
		
		--In multiplayer, if this table exist will be merged with the table above for the firemodes in common.
		Mp=nil,
	},
----------------------------------------------------------------------
--Machete (Bucher weapon)
----------------------------------------------------------------------
	Machete={
		Std=
		{
			--SINGLE FIRE-------------------------------------------------
			{
				fire_mode_type = FireMode_Melee,
				damage_type = "normal",
				shoot_underwater = 1,
				min_accuracy=1,
				max_accuracy=1,
				reload_time=0.1,
				fire_rate=0.3,
				distance=2,
				damage=100,
				--damage_drop_per_meter [doesn't apply]
				min_recoil=0,
				max_recoil=0,
				no_ammo=1,
				mat_effect="melee_slash",
			},
		},
		
		--In multiplayer, if this table exist will be merged with the table above for the firemodes in common.
		Mp=nil,
	},
----------------------------------------------------------------------
--RL (Rocket Launcher)
----------------------------------------------------------------------
	RL={
		Std=
		{
			--SINGLE FIRE-------------------------------------------------
			{
				fire_mode_type = FireMode_Projectile,
				damage_type = "normal",
				--accuracy [doesn't apply]
				reload_time=5,
				fire_rate=2,
				--distance [doesn't apply]
				--damage [doesn't apply]
				--damage_drop_per_meter [doesn't apply]
				--min_recoil [doesn't apply]
				--max_recoil [doesn't apply]
				hud_icon="rocket",
			},
		},
		
		--In multiplayer, if this table exist will be merged with the table above for the firemodes in common.
		Mp=
		{
			{
				bullets_per_clip=1,
			},
		},
	},
----------------------------------------------------------------------
--COVERRL (Rocket Launcher used by AI)
----------------------------------------------------------------------
	COVERRL={
		Std=
		{
			--SINGLE FIRE-------------------------------------------------
			{
				fire_mode_type = FireMode_Projectile,
				damage_type = "normal",
				--accuracy [doesn't apply]
				reload_time=0.3,
				fire_rate=1.0,
				--distance [doesn't apply]
				--damage [doesn't apply]
				--damage_drop_per_meter [doesn't apply]
				--min_recoil [doesn't apply]
				--max_recoil [doesn't apply]
				--hud_icon="rocket",
			},
		},
		
		--In multiplayer, if this table exist will be merged with the table above for the firemodes in common.
		Mp=nil,
	},
----------------------------------------------------------------------
--MG (Mounted Machine Gun)
----------------------------------------------------------------------
	MG={
		Std=
		{
			{
				fire_mode_type = FireMode_Instant,
				damage_type = "normal",
				aim_improvement=0.3,
				aim_recoil_modifier = 0.5,
				--accuracy_decay_on_run=0.8,
				min_accuracy=0.85,
				max_accuracy=0.95,
				--reload_time=2.3,
				fire_rate=0.042,
				distance=500,
				damage=60, 
				damage_drop_per_meter=.05,
				bullet_per_shot=1,
				min_recoil=0.2,
				max_recoil=0.3,
	      		iImpactForceMul = 25, -- 5 bullets divided by 10
				iImpactForceMulFinal = 40, 	
				iImpactForceMulFinalTorso = 130, 
				hud_icon="auto",
				
				--view shaking: weapon_viewshake is the frequency of the shake, 
				--		weapon_viewshake_amt is optional: if not present will be used an ammount equal to (weapon_viewshake*0.001)
				weapon_viewshake = 10.0,
				weapon_viewshake_amt = 0.01,
			--
			},
		},
		
		--In multiplayer, if this table exist will be merged with the table above for the firemodes in common.
		Mp=
		{
			--AUTOMATIC FIRE----------------------------------------------
			{	
				damage=65, 	
			},
		},
	},
----------------------------------------------------------------------
--Mortar (Mounted Grenade Launcher)
----------------------------------------------------------------------
	Mortar={
		Std=
		{
			{
				fire_mode_type = FireMode_Projectile,
				damage_type = "normal",
				--accuracy_decay_on_run=0.8,
				min_accuracy=0.75,
				max_accuracy=0.95,
				--reload_time=2.3,
				fire_rate=4,
				distance=300,
				damage=3000, 
				damage_drop_per_meter=.1,
				bullet_per_shot=1,
				min_recoil=0,
				max_recoil=0,
				hud_icon="rocket",
			--
			},
		},
		
		--In multiplayer, if this table exist will be merged with the table above for the firemodes in common.
		Mp=nil
	},
----------------------------------------------------------------------
--Mutant Shotgun (used by Mutant Big)
----------------------------------------------------------------------
	MutantShotgun={
		Std=
		{
			--SINGLE FIRE-------------------------------------------------
			{
				fire_mode_type = FireMode_Instant,
				damage_type = "normal",
				aim_improvement=0.1,
				aim_recoil_modifier = 0.5,
				accuracy_decay_on_run=0,
				min_accuracy=0.8,
				max_accuracy=0.8,
				reload_time=0.3,
				fire_rate=2,
				distance=150,
				damage=20,
				damage_drop_per_meter=.2,
				bullet_per_shot=10,
				min_recoil=0.1,
				max_recoil=0.15,
				iImpactForceMul = 300, 
				iImpactForceMulFinal = 300, 	
				iImpactForceMulFinalTorso = 300, 
				hud_icon="single",
			},
		},
		
		--In multiplayer, if this table exist will be merged with the table above for the firemodes in common.
		Mp=nil,
	},
----------------------------------------------------------------------
--Engineer Tool
----------------------------------------------------------------------
	EngineerTool={
		Std=
		{
			--SINGLE FIRE-------------------------------------------------
			{
				fire_mode_type = FireMode_Melee,
				damage_type = "building",
				min_accuracy=1,
				max_accuracy=1,
				reload_time=0.1,
				fire_rate=0.6,
				distance=1.6,		-- used to detect work range
				damage=160,
				min_recoil=0,
				max_recoil=0,
				no_ammo=1,
				mat_effect="building",
			},
		},
		
		--In multiplayer, if this table exist will be merged with the table above for the firemodes in common.
		Mp=nil,
	},
----------------------------------------------------------------------
--Medic Tool
----------------------------------------------------------------------
	MedicTool={
		Std=
		{
			--DISTANCE-------------------------------------------------
			{
				fire_mode_type = FireMode_Projectile,
				damage_type = "normal",
				aim_improvement=0.2,
				accuracy_decay_on_run=0.8,
				min_accuracy=0.75,
				max_accuracy=0.75,
				reload_time=0.5,
				fire_rate=0.5,
				distance=160,
				damage=-75,--50 								-- negative damage to heal
				bullet_per_shot=1,
				min_recoil=0.7,
				max_recoil=1.0,
				iImpactForceMul = 25, 
				iImpactForceMulFinal = 40, 	
				iImpactForceMulFinalTorso = 130, 
				hud_icon="single",
			},
		},
		
		--In multiplayer, if this table exist will be merged with the table above for the firemodes in common.
		Mp=nil,
	},
---------------------------------------------------------------------
-- Wrench = Engineer Tool in melee attack
----------------------------------------------------------------------
	Wrench={
		Std=
		{
			--SINGLE FIRE-------------------------------------------------
			{
				fire_mode_type = FireMode_Melee,
				damage_type = "normal",
				min_accuracy=1,
				max_accuracy=1,
				reload_time=0.1,
				fire_rate=1.0,		-- less than Machete
				distance=1.6,
				damage=50,			-- more than Machete
				--damage_drop_per_meter [doesn't apply]
				min_recoil=0,
				max_recoil=0,
				no_ammo=1,
				mat_effect="melee_slash",
			},
		},
		
		--In multiplayer, if this table exist will be merged with the table above for the firemodes in common.
		Mp=nil,
	},
----------------------------------------------------------------------
--ScoutTool
----------------------------------------------------------------------
	ScoutTool={
		Std=
		{
			--place sticky explosive-----------------------------------------------------
			{
				fire_mode_type = FireMode_Projectile,
				damage_type = "normal",
				accuracy_decay_on_run=0.8,
				min_accuracy=0.65,
				max_accuracy=0.99,
				reload_time=0.5,
				fire_rate=0.5,
				distance=120,
				damage=800, 
				damage_drop_per_meter=.06,	
				bullet_per_shot=1,
				min_recoil=0.5,
				max_recoil=1.2,
				hud_icon="grenade",
			},
		},
		
		--In multiplayer, if this table exist will be merged with the table above for the firemodes in common.
		Mp=nil,
	},
----------------------------------------------------------------------
--VehicleMountedMG (Mounted Machine Gun on vehicle)
----------------------------------------------------------------------
	VehicleMountedMG={
		Std=
		{
			{
				fire_mode_type = FireMode_Instant,
				damage_type = "normal",
				auto_aiming_dist = 0,
				aim_improvement=0.3,
				aim_recoil_modifier = 0.5,
				--accuracy_decay_on_run=0.8,
				min_accuracy=0.85,
				max_accuracy=0.95,
				--reload_time=2.3,
				fire_rate=0.082,
				distance=500,
				damage=60, 
				damage_drop_per_meter=.05,
				bullet_per_shot=1,
				min_recoil=0.0,
				max_recoil=0.0,
				iImpactForceMul = 25, 
				iImpactForceMulFinal = 40, 	
				iImpactForceMulFinalTorso = 130, 
				hud_icon="auto",
				
				--view shaking: weapon_viewshake is the frequency of the shake, 
				--		weapon_viewshake_amt is optional: if not present will be used an ammount equal to (weapon_viewshake*0.001)
				weapon_viewshake = 5.0,
				weapon_viewshake_amt = 0.01,
			--
			},
			{
				fire_mode_type = FireMode_Projectile,
				damage_type = "normal",
				--accuracy [doesn't apply]
				reload_time=0.01,
				fire_rate=3,
				--distance [doesn't apply]
				--damage [doesn't apply]
				--damage_drop_per_meter [doesn't apply]
				--min_recoil [doesn't apply]
				--max_recoil [doesn't apply]
				hud_icon="rocket",
			},
			-- special AI firemode follows
			{
				ai_mode = 1,
				fire_mode_type = FireMode_Instant,
				damage_type = "normal",
				auto_aiming_dist = 0,
				aim_improvement=0.3,
				aim_recoil_modifier = 0.5,
				--accuracy_decay_on_run=0.8,
				min_accuracy=0.85,
				max_accuracy=0.95,
				--reload_time=2.3,
				fire_rate=0.082,
				distance=500,
				damage=60, 
				damage_drop_per_meter=.05,
				bullet_per_shot=1,
				min_recoil=0.0,
				max_recoil=0.0,
				iImpactForceMul = 25, 
				iImpactForceMulFinal = 40, 	
				iImpactForceMulFinalTorso = 130, 
				hud_icon="auto",
			--
			},
		},
		
		--In multiplayer, if this table exist will be merged with the table above for the firemodes in common.
		Mp=
		{
			--AUTOMATIC FIRE----------------------------------------------
			{	
				damage=65, 	
			},
		},
	},
----------------------------------------------------------------------
--VehicleMountedAutoMG (Mounted Machine Gun on vehicle with auto aiming)
----------------------------------------------------------------------
	VehicleMountedAutoMG={
		Std=
		{
			{
				fire_mode_type = FireMode_Instant,
				damage_type = "normal",
				auto_aiming_dist = 25,--filippo: before was 50
				aim_improvement=0.3,
				aim_recoil_modifier = 0.5,
				--accuracy_decay_on_run=0.8,
				min_accuracy=0.85,
				max_accuracy=0.95,
				--reload_time=2.3,
				fire_rate=0.082,
				distance=500,
				damage=60, 
				damage_drop_per_meter=.05,
				bullet_per_shot=1,
				min_recoil=0.0,
				max_recoil=0.0,
				iImpactForceMul = 25, 
				iImpactForceMulFinal = 40, 	
				iImpactForceMulFinalTorso = 130, 
				hud_icon="auto",
							
				--filippo, its the autoaim reticule sprite, if this is not present will be used the classic square reticule.
				autoaim_sprite=System:LoadImage("Textures/hud/crosshair/roundcross.dds"),
				
				--view shaking: weapon_viewshake is the frequency of the shake, 
				--		weapon_viewshake_amt is optional: if not present will be used an ammount equal to (weapon_viewshake*0.001)
				weapon_viewshake = 5.0,
				weapon_viewshake_amt = 0.01,
			},
			-- special AI firemode follows
			{
				ai_mode = 1,
				fire_mode_type = FireMode_Instant,
				damage_type = "normal",
				auto_aiming_dist = 25,--filippo: before was 50
				aim_improvement=0.3,
				aim_recoil_modifier = 0.5,
				--accuracy_decay_on_run=0.8,
				min_accuracy=0.85,
				max_accuracy=0.95,
				--reload_time=2.3,
				fire_rate=0.082,
				distance=500,
				damage=60, 
				damage_drop_per_meter=.05,
				bullet_per_shot=1,
				min_recoil=0.0,
				max_recoil=0.0,
				iImpactForceMul = 25, 
				iImpactForceMulFinal = 40, 	
				iImpactForceMulFinalTorso = 130, 
				hud_icon="auto",
							
				--filippo, its the autoaim reticule sprite, if this is not present will be used the classic square reticule.
				autoaim_sprite=System:LoadImage("Textures/hud/crosshair/roundcross.dds"),
			},
		},
		
		--In multiplayer, if this table exist will be merged with the table above for the firemodes in common.
		Mp=
		{
			--AUTOMATIC FIRE----------------------------------------------
			{	
				damage=65, 	
			},
		},
	},
----------------------------------------------------------------------
--VehicleMountedRocketMG (Mounted Machine Gun with a RocketLauncher firemode on vehicle)
----------------------------------------------------------------------
	VehicleMountedRocketMG={
		Std=
		{
			{
				fire_mode_type = FireMode_Instant,
				damage_type = "normal",
				auto_aiming_dist = 25,--filippo: before was 50
				aim_improvement=0.3,
				aim_recoil_modifier = 0.5,
				--accuracy_decay_on_run=0.8,
				min_accuracy=0.85,
				max_accuracy=0.95,
				--reload_time=2.3,
				fire_rate=0.082,
				distance=500,
				damage=60, 
				damage_drop_per_meter=.05,
				bullet_per_shot=1,
				min_recoil=0.0,
				max_recoil=0.0,
				iImpactForceMul = 25, 
				iImpactForceMulFinal = 40, 
				iImpactForceMulFinalTorso = 130, 
				hud_icon="auto",
				
				--filippo, its the autoaim reticule sprite, if this is not present will be used the classic square reticule.
				autoaim_sprite=System:LoadImage("Textures/hud/crosshair/roundcross.dds"),
				
				--view shaking: weapon_viewshake is the frequency of the shake, 
				--		weapon_viewshake_amt is optional: if not present will be used an ammount equal to (weapon_viewshake*0.001)
				weapon_viewshake = 5.0,
				weapon_viewshake_amt = 0.01,
			--
			},
			{
				fire_mode_type = FireMode_Projectile,
				damage_type = "normal",
				--accuracy [doesn't apply]
				reload_time=0.01,
				fire_rate=3,
				--distance [doesn't apply]
				--damage [doesn't apply]
				--damage_drop_per_meter [doesn't apply]
				--min_recoil [doesn't apply]
				--max_recoil [doesn't apply]
				hud_icon="rocket",
			},
			-- special AI firemode follows
			{
				ai_mode = 1,
				fire_mode_type = FireMode_Instant,
				damage_type = "normal",
				auto_aiming_dist = 25,--filippo: before was 50
				aim_improvement=0.3,
				aim_recoil_modifier = 0.5,
				--accuracy_decay_on_run=0.8,
				min_accuracy=0.85,
				max_accuracy=0.95,
				--reload_time=2.3,
				fire_rate=0.082,
				distance=500,
				damage=60, 
				damage_drop_per_meter=.05,
				bullet_per_shot=1,
				min_recoil=0.0,
				max_recoil=0.0,
				iImpactForceMul = 25, 
				iImpactForceMulFinal = 40, 
				iImpactForceMulFinalTorso = 130, 
				hud_icon="auto",
				
				--filippo, its the autoaim reticule sprite, if this is not present will be used the classic square reticule.
				autoaim_sprite=System:LoadImage("Textures/hud/crosshair/roundcross.dds"),
			--
			},
		},
		
		--In multiplayer, if this table exist will be merged with the table above for the firemodes in common.
		Mp=
		{
			--AUTOMATIC FIRE----------------------------------------------
			{	
				damage=65, 	
			},
		},
	},
----------------------------------------------------------------------
--VehicleMountedRocket (Mounted dumb fire rockets on vehicle)
----------------------------------------------------------------------
	VehicleMountedRocket={
		Std=
		{
			{
				fire_mode_type = FireMode_Projectile,
				damage_type = "normal",
				--accuracy [doesn't apply]
				reload_time=0.01,
				fire_rate=3,
				--distance [doesn't apply]
				--damage [doesn't apply]
				--damage_drop_per_meter [doesn't apply]
				--min_recoil [doesn't apply]
				--max_recoil [doesn't apply]
				hud_icon="rocket",
			},
			-- special AI firemode follows
			{
				ai_mode = 1,
				fire_mode_type = FireMode_Projectile,
				damage_type = "normal",
				--accuracy [doesn't apply]
				reload_time=2,
				fire_rate=3,
				--distance [doesn't apply]
				--damage [doesn't apply]
				--damage_drop_per_meter [doesn't apply]
				--min_recoil [doesn't apply]
				--max_recoil [doesn't apply]
				hud_icon="rocket",
			},
		},
		
		--In multiplayer, if this table exist will be merged with the table above for the firemodes in common.
		Mp=nil,
	},
----------------------------------------------------------------------
-- Special 'invisible' weapon for mutant big
----------------------------------------------------------------------
	MutantMG={
		Std=
		{
			{
				fire_mode_type = FireMode_Instant,
				damage_type = "normal",
				aim_improvement=0.02,
				aim_recoil_modifier = 0.8,
				accuracy_decay_on_run=0.7,
				min_accuracy=0.75,
				max_accuracy=0.85,
				reload_time=4,
				fire_rate=0.08,
				distance=300,
				damage=60, 
				damage_drop_per_meter=.05,
				bullet_per_shot=1,
				min_recoil=0.2,
				max_recoil=0.3,
				iImpactForceMul = 25, 
				iImpactForceMulFinal = 30, 
				iImpactForceMulFinalTorso = 100, 
				hud_icon="auto",
				accuracy_modifier_prone = 0.5,
				accuracy_modifier_crouch = 0.7,		 
	      		recoil_modifier_standing = 1.0,
				
				--view shaking: weapon_viewshake is the frequency of the shake, 
				--		weapon_viewshake_amt is optional: if not present will be used an ammount equal to (weapon_viewshake*0.001)
				weapon_viewshake = 8.0,
				weapon_viewshake_amt = 0.01,
			},
		},
		--In multiplayer, if this table exist will be merged with the table above for the firemodes in common.
		Mp=nil,
	},
}