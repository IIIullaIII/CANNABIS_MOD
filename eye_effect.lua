--[[
    Minetest HUD eye effect
    Author: Droog71
    Version: 1
    License: GNU Affero General Public License version 3 (AGPLv3)
]]--
--_______________________________________________________________________fumo_________________________________________________

local hud_f_eyes = {}
local eyes_f_active = {}
local effect_f_timers = {}

--initialization
minetest.register_on_joinplayer(function(player)
    local name = player:get_player_name()
    hud_f_eyes[name] = player:hud_add({
        hud_elem_type = "text",
        position = {x = 0.5, y = 0.5},
        offset = {x = 0, y = 0},
        scale = {x = 1, y = 1},
        text = "",
    })
    eyes_f_active[name] = 0
    effect_f_timers[name] = 0
end)

--removes player from list on exit
minetest.register_on_leaveplayer(function(player)
    local name = player:get_player_name()
    hud_f_eyes[name] = nil
    eyes_f_active[name] = nil
    effect_f_timers[name] = nil
end)

--for timed effects
minetest.register_globalstep(function(dtime)  
    for name, active in pairs(eyes_f_active) do
        if active then
            effect_f_timers[name] = effect_f_timers[name] + 1
            if effect_f_timers[name] >= 480 then
                toggle_f_eyes(name, 0)
            end
        end
    end
end)

--toggles effects on or off
function toggle_f_eyes(name, active)
    local player = minetest.get_player_by_name(name)
    if player then
        if active == 1 then
            player:hud_remove(hud_f_eyes[name])
            hud_f_eyes[name] = player:hud_add({
                hud_elem_type = "image",
                position = {x = 0.5, y = 0.5},
                offset = {x = 0, y = 0},
                scale = {x = -100, y = -100},
                text = "cannabis_effect_eye_f.png",
                
            })
            eyes_f_active[name] = true
            effect_f_timers[name] = 0
        elseif active == 0 then
            player:hud_remove(hud_f_eyes[name])
            hud_f_eyes[name] = player:hud_add({
                hud_elem_type = "text",
                position = {x = 0.5, y = 0.5},
                offset = {x = 0, y = 0},
                scale = {x = 3, y = 3},
                text = "",
            })
            eyes_f_active[name] = false
            effect_f_timers[name] = 0
        end
    end
end

--_______________________________________________________________________rossa___________________________________
local hud_r_eyes = {}
local eyes_r_active = {}
local effect_r_timers = {}

--initialization
minetest.register_on_joinplayer(function(player)
    local name = player:get_player_name()
    hud_r_eyes[name] = player:hud_add({
        hud_elem_type = "text",
        position = {x = 0.5, y = 0.5},
        offset = {x = 0, y = 0},
        scale = {x = 1, y = 1},
        text = "",
    })
    eyes_r_active[name] = 0
    effect_r_timers[name] = 0
end)

--removes player from list on exit
minetest.register_on_leaveplayer(function(player)
    local name = player:get_player_name()
    hud_r_eyes[name] = nil
    eyes_r_active[name] = nil
    effect_r_timers[name] = nil
end)

--for timed effects
minetest.register_globalstep(function(dtime)  
    for name, active in pairs(eyes_r_active) do
        if active then
            effect_r_timers[name] = effect_r_timers[name] + 1
            if effect_r_timers[name] >= 480 then
                toggle_r_eyes(name, 0)
            end
        end
    end
end)

--toggles effects on or off
function toggle_r_eyes(name, active)
    local player = minetest.get_player_by_name(name)
    if player then
        if active == 1 then
            player:hud_remove(hud_r_eyes[name])
            hud_r_eyes[name] = player:hud_add({
                hud_elem_type = "image",
                position = {x = 0.5, y = 0.5},
                offset = {x = 0, y = 0},
                scale = {x = -100, y = -100},
                text = "cannabis_effect_eye_r.png",
                
            })
            eyes_r_active[name] = true
            effect_r_timers[name] = 0
        elseif active == 0 then
            player:hud_remove(hud_r_eyes[name])
            hud_r_eyes[name] = player:hud_add({
                hud_elem_type = "text",
                position = {x = 0.5, y = 0.5},
                offset = {x = 0, y = 0},
                scale = {x = 3, y = 3},
                text = "",
            })
            eyes_r_active[name] = false
            effect_r_timers[name] = 0
        end
    end
end
--_______________________________________________________________________ice____________________________________
local hud_i_eyes = {}
local eyes_i_active = {}
local effect_i_timers = {}

--initialization
minetest.register_on_joinplayer(function(player)
    local name = player:get_player_name()
    hud_i_eyes[name] = player:hud_add({
        hud_elem_type = "text",
        position = {x = 0.5, y = 0.5},
        offset = {x = 0, y = 0},
        scale = {x = 1, y = 1},
        text = "",
    })
    eyes_i_active[name] = 0
    effect_i_timers[name] = 0
end)

--removes player from list on exit
minetest.register_on_leaveplayer(function(player)
    local name = player:get_player_name()
    hud_i_eyes[name] = nil
    eyes_i_active[name] = nil
    effect_i_timers[name] = nil
end)

--for timed effects
minetest.register_globalstep(function(dtime)  
    for name, active in pairs(eyes_i_active) do
        if active then
            effect_i_timers[name] = effect_i_timers[name] + 1
            if effect_i_timers[name] >= 480 then
                toggle_i_eyes(name, 0)
            end
        end
    end
end)

--toggles effects on or off
function toggle_i_eyes(name, active)
    local player = minetest.get_player_by_name(name)
    if player then
        if active == 1 then
            player:hud_remove(hud_i_eyes[name])
            hud_i_eyes[name] = player:hud_add({
                hud_elem_type = "image",
                position = {x = 0.5, y = 0.5},
                offset = {x = 0, y = 0},
                scale = {x = -100, y = -100},
                text = "cannabis_effect_eye_i.png",
                
            })
            eyes_i_active[name] = true
            effect_i_timers[name] = 0
        elseif active == 0 then
            player:hud_remove(hud_i_eyes[name])
            hud_i_eyes[name] = player:hud_add({
                hud_elem_type = "text",
                position = {x = 0.5, y = 0.5},
                offset = {x = 0, y = 0},
                scale = {x = 3, y = 3},
                text = "",
            })
            eyes_i_active[name] = false
            effect_i_timers[name] = 0
        end
    end
end
--________________________________________________________________________verde_________________________________
local hud_v_eyes = {}
local eyes_v_active = {}
local effect_v_timers = {}

--initialization
minetest.register_on_joinplayer(function(player)
    local name = player:get_player_name()
    hud_v_eyes[name] = player:hud_add({
        hud_elem_type = "text",
        position = {x = 0.5, y = 0.5},
        offset = {x = 0, y = 0},
        scale = {x = 1, y = 1},
        text = "",
    })
    eyes_v_active[name] = 0
    effect_v_timers[name] = 0
end)

--removes player from list on exit
minetest.register_on_leaveplayer(function(player)
    local name = player:get_player_name()
    hud_v_eyes[name] = nil
    eyes_v_active[name] = nil
    effect_v_timers[name] = nil
end)

--for timed effects
minetest.register_globalstep(function(dtime)  
    for name, active in pairs(eyes_v_active) do
        if active then
            effect_v_timers[name] = effect_v_timers[name] + 1
            if effect_v_timers[name] >= 480 then
                toggle_v_eyes(name, 0)
            end
        end
    end
end)

--toggles effects on or off
function toggle_v_eyes(name, active)
    local player = minetest.get_player_by_name(name)
    if player then
        if active == 1 then
            player:hud_remove(hud_v_eyes[name])
            hud_v_eyes[name] = player:hud_add({
                hud_elem_type = "image",
                position = {x = 0.5, y = 0.5},
                offset = {x = 0, y = 0},
                scale = {x = -100, y = -100},
                text = "cannabis_effect_eye_v.png",
                
            })
            eyes_v_active[name] = true
            effect_v_timers[name] = 0
        elseif active == 0 then
            player:hud_remove(hud_v_eyes[name])
            hud_v_eyes[name] = player:hud_add({
                hud_elem_type = "text",
                position = {x = 0.5, y = 0.5},
                offset = {x = 0, y = 0},
                scale = {x = 3, y = 3},
                text = "",
            })
            eyes_v_active[name] = false
            effect_v_timers[name] = 0
        end
    end
end
