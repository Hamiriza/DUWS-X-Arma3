disableSerialization;

1 cutRsc ["RakuzoDialogPopup", "PLAIN"];


waitUntil {!isNull (uiNamespace getVariable "RakuzoDialogPopup")};

_nameCO = name hq_blu1;
_rankCO = toUpper ((rank hq_blu1) select [0,1]) + toLower((rank hq_blu1) select [1, count(rank hq_blu1) - 1]);

	_display = uiNamespace getVariable "RakuzoDialogPopup";
		_setText = _display displayCtrl 1199;
		_setText ctrlSetStructuredText (parseText format ["<t color='#051379'>General Harris:</t> Soldiers, listen up! Welcome to %1", worldName]);
		_setBG = _display displayCtrl 1297;
		_setBG ctrlSetText "UI\RadioBG.paa";
		_setMugLeft = _display displayCtrl 1298;
		_setMugLeft ctrlSetText "UI\OfficerGeneral.jpg";
		_setMugRight = _display displayCtrl 1299;
		_setMugRight ctrlSetText "\A3\Ui_f\data\GUI\Cfg\UnitInsignia\111thID_ca.paa";

sleep 4;
		_setText ctrlSetStructuredText (parseText format ["<t color='#051379'>General Harris:</t> I am Brigadier General Harris Ford, commanding officer of the 111th Division."]);

sleep 5;
		_setText ctrlSetStructuredText (parseText format ["<t color='#051379'>General Harris:</t> Your mission is clear; seize enemy bases, crush their forces, and claim the island for our flag!"]);

sleep 5;
		_setText ctrlSetStructuredText (parseText format ["<t color='#051379'>General Harris:</t> Report to your commander, %1 %2, codenamed CROSSROAD, for mission specifics", _rankCO, _nameCO]);

sleep 5;
		_setText ctrlSetStructuredText (parseText format ["<t color='#051379'>General Harris:</t> Failure is not an option! Overwhelm the enemy, obliterate their defenses, and leave no room for retreat!"]);

sleep 5;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
		_setText ctrlSetStructuredText (parseText format ["<t color='#051379'>General Harris:</t> Godspeed, Soldiers. Show no mercy and make them regret ever standing against us!"]);

sleep 5;
		1 cutRsc ["Default", "PLAIN"];

