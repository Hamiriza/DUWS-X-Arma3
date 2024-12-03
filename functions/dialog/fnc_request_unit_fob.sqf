_index = lbCurSel 2120;

_skill = (blufor_ai_skill select 0)+0.2;
_skillSF = (blufor_ai_skill select 0)+0.5;
//_spawnpos = [(getpos player select 0)-78, (getpos player select 1)-73.5];
_spawnPos = getpos player;
_spawnPos = [[(_spawnPos select 0), (_spawnPos select 1)],150,200,15,0,0.3,0,[],[]] call BIS_fnc_findSafePos;

///  5 UNITS MAX

if (_index < 2) exitWith {hint localize "STR_DUWS_X_9607znvh"};

_var = "";
if (_index > 10) then {
	_var = "blufor_RQST_UNIT_" + (str (_index - 1)) + "_X"; // Parse the name of the variable as a string
} else {
	_var = "blufor_RQST_UNIT_0" + (str (_index - 1)) + "_X"; // Parse the name of the variable as a string
};	
_unitType = call (compile _var); // Get the vehicle variable

if (commandpointsblu1 >= (_unitType select 2)) then {
	hint "Unit ready !";
	commandpointsblu1 = commandpointsblu1 - (_unitType select 2);
	ctrlSetText [1000, format["%1",commandpointsblu1]];
    _unitRank = switch (_unitType select 0) do {
        // Grouped cases for PRIVATE
        case "B_Soldier_F"; 
        case "B_Soldier_AR_F"; 
        case "B_Soldier_LAT_F"; 
        case "B_Soldier_AT_F"; 
        case "B_soldier_AA_F"; 
        case "B_soldier_M_F": {"PRIVATE"};

        // Grouped cases for CORPORAL
        case "B_Soldier_GL_F"; 
        case "B_HeavyGunner_F"; 
        case "B_Medic_F"; 
        case "B_Engineer_F"; 
        case "B_sniper_F": {"CORPORAL"};

		// Grouped cases for SERGEANT
        case "B_Soldier_TL_F";
        case "B_crew_F";
        case "B_Soldier_SL_F": {"SERGEANT"};

        // Default rank
        default {"PRIVATE"};
    };
	_group = group player ;
	(_unitType select 0) createUnit [_spawnpos, _group, "if (player_fatigue == 0) then {this enablefatigue false};", _skill, _unitRank];
	{
		_x allowDamage false;
	} forEach (units _group);
	sleep 15;
	{
		_x allowDamage true;
	} forEach (units _group);
} else {
	hint localize "STR_DUWS_X_e95mc4lv";
};


//hint format["AI skill: %1",_skill];            
publicVariable "commandpointsblu1";
