

local PlayerData                = {}
local GUI                       = {}
local HasAlreadyEnteredMarker   = false
local LastStation               = nil
local LastPart                  = nil
local LastPartNum               = nil
local LastEntity                = nil
local CurrentAction             = nil
local CurrentActionMsg          = ''
local CurrentActionData         = {}
local IsHandcuffed              = false
local IsDragged                 = false
local CopPed                    = 0

ESX                             = nil
GUI.Time                        = 0


RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  PlayerData.job = job
end)

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

--Notification joueur
function Notify(text)
    SetNotificationTextEntry('STRING')
    AddTextComponentString(text)
    DrawNotification(false, true)
end

--Message text joueur
function Text(text)
		SetTextColour(186, 186, 186, 255)
		SetTextFont(0)
		SetTextScale(0.378, 0.378)
		SetTextWrap(0.0, 1.0)
		SetTextCentre(false)
		SetTextDropshadow(0, 0, 0, 0, 255)
		SetTextEdge(1, 0, 0, 0, 205)
		SetTextEntry("STRING")
		AddTextComponentString(text)
		DrawText(0.017, 0.977)
end

function OpenPersonnelMenu()
	
	ESX.UI.Menu.CloseAll()
	
	ESX.TriggerServerCallback('SP:getUsergroup', function(group)
		playergroup = group
		
		local elements = {}
		table.insert(elements, {label = '➡️ ID Menu',		value = 'menuperso_sp'})			
		
		ESX.UI.Menu.Open(
			'default', GetCurrentResourceName(), 'menu_perso',
			{
				title    = 'Menu Personnel',
				align    = 'top-left',
				elements = elements
			},
			function(data, menu)
		
		if data.current.value == 'dpemo' then
            TriggerEvent('dp:RecieveMenu')
			menu.close()			
		end		
			
		if data.current.value == 'animal' then
            TriggerEvent('eden_animal:OpenPetMenu')
			menu.close()			
		end			
				

		if data.current.value == 'menuperso_lock' then
            TriggerEvent('esx_givecarkeys:keys')
			menu.close()			
		end		
		
	
				local elements = {}	
				
				if data.current.value == 'menuperso_sp' then
	
					local elements = {}
					
					table.insert(elements, {label = '🔍 Show ID',    							value = 'showid'})
					table.insert(elements, {label = '🔎 Clear ID',             				value = 'clearid'})				
					table.insert(elements, {label = '💳 Card ID',							    value = 'id_card_menu'})				
						
					ESX.UI.Menu.Open(
						
						'default', GetCurrentResourceName(), 'menuperso_sp',
						{
							title    = 'Me concernant',
							align    = 'top-left',
							elements = elements
						},
						function(data2, menu2)

							if data2.current.value == 'showid' then
					            ESX.ShowNotification('~b~Look at the top of the screen.')
								TriggerEvent('SP:myid')
							end
							
							if data2.current.value == 'clearid' then 						
								TriggerEvent('SP:clearid')							
							end
							
							
							if data2.current.value == 'id_card_menu' then 
								openMenu()
							end		
						
													
						end,
						function(data2, menu2)
							menu2.close()
						end
					)
				end		

				if data.current.value == 'menuperso_lock' then
	
					local elements = {}
					
					table.insert(elements, {label = '🔑 Give Key',    							value = 'keysgive'})
					table.insert(elements, {label = '🗡️ Take Hostage',             				value = 'takeh'})	
					table.insert(elements, {label = '📱 Calculator',             				value = 'calc'})					
					
					ESX.UI.Menu.Open(
						
						'default', GetCurrentResourceName(), 'menuperso_lock',
						{
							title    = 'Me concernant',
							align    = 'top-left',
							elements = elements
						},
						function(data2, menu2)

	                       	if data.current.value == 'keysgive' then
                                TriggerEvent('esx_givecarkeys:keys')
	                       	end	
							
							if data2.current.value == 'takeh' then 
								TriggerEvent('takeh:openM')							
							end	

							if data2.current.value == 'calc' then 						
								TriggerEvent('calc:calc')
			                    menu2.close()					
							end									
						
													
						end,
						function(data2, menu2)
							menu2.close()
						end
					)
				end						

				if data.current.value == 'menuperso_need' then
	
					local elements = {}
									
					table.insert(elements, {label = '💦 Pee',    							value = 'pipi'})
					table.insert(elements, {label = '💩 Poo',    							value = 'shit'})					
						
					ESX.UI.Menu.Open(
						
						'default', GetCurrentResourceName(), 'menuperso_need',
						{
							title    = 'Me concernant',
							align    = 'top-left',
							elements = elements
						},
						function(data2, menu2)

							if data2.current.value == 'pipi' then 
					            ESX.ShowNotification('~y~You Pee.')							
								TriggerEvent('esx-qalle-needs:pipi')							
							end			

							if data2.current.value == 'shit' then 
					            ESX.ShowNotification('~o~You Poo.')							
								TriggerEvent('esx-qalle-needs:shit')							
							end	
							
													
						end,
						function(data2, menu2)
							menu2.close()
						end
					)
				end				
				
				
			end,
			function(data, menu)
				menu.close()
			end
		)		
		
		
	end)
end

function openInventaire()
	TriggerEvent('SP:closeAllSubMenu')
	TriggerEvent('SP:closeAllMenu')
	TriggerEvent('SP:closeMenuKey')
	
	TriggerEvent('SP:openMenuInventaire')
end

function openFacture()
	TriggerEvent('SP:closeAllSubMenu')
	TriggerEvent('SP:closeAllMenu')
	TriggerEvent('SP:closeMenuKey')
	
	TriggerEvent('SP:openMenuFactures')
end

function openAccesoire()
	TriggerEvent('SP:closeAllSubMenu')
	TriggerEvent('SP:closeAllMenu')
	TriggerEvent('SP:closeMenuKey')
	
	TriggerEvent('SP:OpenAccessoryMenu')
end

function openMenu()
    ESX.UI.Menu.CloseAll()
    ESX.UI.Menu.Open(
	'default', GetCurrentResourceName(), 'id_card_menu',
	{
		title    = 'ID menu',
		css      = 'menu_perso',		
		elements = {
			{label = '🔎 Look ID Card', value = 'checkID'},
			{label = '👮🏼 Show ID Card', value = 'showID'},
			{label = '🔎 Look Driving License', value = 'checkDriver'},
			{label = '👮🏼 Show Driving License', value = 'showDriver'},
			{label = '🔎 Look Gun License', value = 'checkFirearms'},
			{label = '👮🏼 Show Gun License', value = 'showFirearms'},
		}
	},
	function(data, menu)
		local val = data.current.value
		
		if val == 'checkID' then
			TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(PlayerId()))
		elseif val == 'checkDriver' then
			TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(PlayerId()), 'driver')
		elseif val == 'checkFirearms' then
			TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(PlayerId()), 'weapon')
		else
			local player, distance = ESX.Game.GetClosestPlayer()
			
			if distance ~= -1 and distance <= 3.0 then
				if val == 'showID' then
				TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(player))
				elseif val == 'showDriver' then
			TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(player), 'driver')
				elseif val == 'showFirearms' then
			TriggerServerEvent('jsfour-idcard:open', GetPlayerServerId(PlayerId()), GetPlayerServerId(player), 'weapon')
				end
			else
			  ESX.ShowNotification('No players nearby')
			end
		end
	end,
	function(data, menu)
		menu.close()
                -- retourMenu() -- Nom de la fonction de votre menu principale
	end
)
end



RegisterNetEvent('SP:openMenuPersonnel')
AddEventHandler('SP:openMenuPersonnel', function()
	OpenPersonnelMenu()
end)

RegisterNetEvent('SP:myid')
AddEventHandler('SP:myid', function()

Citizen.CreateThread(function()
    Wait(50)
    while true do
        miid(1.470, 0.525, 1.0,1.0,0.70, "ID: ".. GetPlayerServerId(NetworkGetEntityOwner(GetPlayerPed(-1))) .. '', 255, 255, 255, 255)

        Citizen.Wait(1)
    end
end)



function miid(x,y ,width,height,scale, text, r,g,b,a, outline)
    SetTextFont(6)
    SetTextProportional(0)
    SetTextScale(scale, scale)
	SetTextColour( 255, 255, 255, 255 )
    SetTextDropShadow(0, 0, 0, 0,255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
	SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x - width/1, y - height/2 + 0.015)
end

Citizen.Wait (100)

end)

RegisterNetEvent('SP:clearid')
AddEventHandler('SP:clearid', function()

    Citizen.CreateThread(function()
        Wait(50)
        while true do
            miid(1.470, 0.525, 1.0,1.0,0.70, "ID: ".. GetPlayerServerId(NetworkGetEntityOwner(GetPlayerPed(-1))) .. '', 0, 0, 0, 0)
            Citizen.Wait(1)
        end
    end)
    
    
    
    function miid(x,y ,width,height,scale, text, r,g,b,a, outline)
        SetTextFont(4)
        SetTextProportional(0)
        SetTextScale(scale, scale)
        SetTextColour( 0, 0, 0, 0 )
        SetTextDropShadow(0, 0, 0, 0,255)
        SetTextEdge(1, 0, 0, 0, 0)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        AddTextComponentString(text)
        DrawText(x - width/2, y - height/2 + 0.005)
    end
    
    Citizen.Wait (100)
    
    end)
	