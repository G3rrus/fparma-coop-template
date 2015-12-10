/*
    Description:
        Temporarly replaces ACE markers so that they are logged in systemChat
        Only happens during briefing
*/

FP_ace_placeMarker = ACE_markers_fnc_placeMarker;
ACE_markers_fnc_placeMarker = {
	if (_this select 1 == 1) then {
		private _mrkName = missionNamespace getVariable ["ACE_markers_currentMarkerConfigName", ""];
		private _grid = mapGridPosition (missionNamespace getVariable ["ACE_markers_currentMarkerPosition", []]);
		private _msg = format ["SERVER: %1 placed a '%2' marker at %3", name player, _mrkName, _grid];
		_msg remoteExecCall ["systemChat", side player];
	};
	_this call FP_ace_placeMarker;
};

// Line markers
FP_ace_placeLineMarker = ACE_maptools_fnc_handleMouseButton;
ACE_maptools_fnc_handleMouseButton = {
	if (ACE_maptools_drawing_isDrawing) then {
		private _clr = ["black", "red", "green", "blue", "yellow", "white"]
			select (["ColorBlack", "ColorRed","ColorGreen","ColorBlue","ColorYellow","ColorWhite"]
			find (ACE_maptools_drawing_tempLineMarker) select 3);
		private _grid = mapGridPosition (ACE_maptools_drawing_tempLineMarker select 1);
		private _msg = format ["SERVER: %1 placed a %2 line at %3", name player, _clr, _grid];
		_msg remoteExecCall ["systemChat", side player];
	};
	_this call FP_ace_placeLineMarker;
};

// Once mission starts, put back the original ace functions
[{
	ACE_markers_fnc_placeMarker = FP_ace_placeMarker;
	FP_ace_placeMarker = nil;
	ACE_maptools_fnc_handleMouseButton = FP_ace_placeLineMarker;
	FP_ace_placeLineMarker = nil;
}, []] call ACE_common_fnc_execNextFrame;
