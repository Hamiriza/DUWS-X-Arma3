// Apply insignia to existing units
{
	if (side _x == west) then {
		[_x, "111thID"] call BIS_fnc_setUnitInsignia;
	}
}

// Event handler for dynamically spawned units
addMissionEventHandler ["EntityCreated", {
    params ["_entity"];
    if ((typeOf _entity isKindOf "SoldierWB") && (side _entity == west)) then {
        [_entity, "111thID"] call BIS_fnc_setUnitInsignia;
    };
}];

// Apply insignia on respawn
{
    _x addEventHandler ["Respawn", {
        params ["_unit"];
        [_unit, "111thID"] call BIS_fnc_setUnitInsignia;
    }];
} forEach allUnits;