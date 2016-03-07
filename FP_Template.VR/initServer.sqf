/*
    Executed only on server
    See: https://community.bistudio.com/wiki/Functions_Library_(Arma_3)#Initialization_Order
        for details about when the script is exactly executed.
*/

{
    private _curator = _x;
    _curator addCuratorEditableObjects [vehicles,true];
    _curator addCuratorEditableObjects [(allMissionObjects "CAManBase"),false];
    _curator addCuratorEditableObjects [(allMissionObjects "Air"),true];
    _curator addCuratorEditableObjects [(allMissionObjects "Ammo"),false];
    _curator setCuratorWaypointCost 0;
    {_curator setCuratorCoef [_x, 0]} forEach ["place","edit","delete","destroy","group","synchronize"];
} forEach allCurators;

// Delete disconneting players
addMissionEventHandler ["HandleDisconnect", {
    params ["_unit"];
    deleteVehicle _unit;
    false
}];
