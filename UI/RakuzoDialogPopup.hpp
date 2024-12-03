class RakuzoDialogPopup {
	idd = 2238;
	duration = 1e+6;
	onLoad = "with uiNameSpace do { RakuzoDialogPopup = _this select 0}";

	class controls {
		
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT START (by Hamiriza Firdhan, v1.0)
		////////////////////////////////////////////////////////

		class Rakuzo_Dialog_BackgroundImage : RscPicture
		{
			idc = 1297;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 0.226719 * safezoneW + safezoneX;
			y = 0.731 * safezoneH + safezoneY;
			w = 0.551719 * safezoneW;
			h = 0.11 * safezoneH;
		};
		class Rakuzo_Dialog_MugLeft : RscPicture
		{
			idc = 1298;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 0.233875 * safezoneW + safezoneX;
			y = 0.742 * safezoneH + safezoneY;
			w = 0.0464063 * safezoneW;
			h = 0.088 * safezoneH;
		};
		class Rakuzo_Dialog_MugRight : RscPicture
		{
			idc = 1299;
			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 0.724875 * safezoneW + safezoneX;
			y = 0.742 * safezoneH + safezoneY;
			w = 0.0464063 * safezoneW;
			h = 0.088 * safezoneH;
		};
		class Rakuzo_Dialog_MainText : RscStructuredText
		{
			idc = 1199;
			class Attributes
			{
				font = "RobotoCondensed";
				size = 1.2;
				align = "center";
				shadow = 0;
			};
			x = 0.283438 * safezoneW + safezoneX;
			y = 0.742 * safezoneH + safezoneY;
			w = 0.438281 * safezoneW;
			h = 0.088 * safezoneH;
		};
		////////////////////////////////////////////////////////
		// GUI EDITOR OUTPUT END
		////////////////////////////////////////////////////////

	};
};