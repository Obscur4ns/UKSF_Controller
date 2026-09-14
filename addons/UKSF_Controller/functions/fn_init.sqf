if (!hasInterface) exitWith {};

UKSF_Controller_mode = "DISABLED";
UKSF_Controller_connected = false;

[] call UKSF_Controller_fnc_detectController;
[] call UKSF_Controller_fnc_updateContext;

player addEventHandler ["GetInMan", {
    [] call UKSF_Controller_fnc_updateContext;
}];

player addEventHandler ["GetOutMan", {
    [] call UKSF_Controller_fnc_updateContext;
}];

player addEventHandler ["SeatSwitchedMan", {
    [] call UKSF_Controller_fnc_updateContext;
}];

addMissionEventHandler ["PlayerViewChanged", {
    [] call UKSF_Controller_fnc_updateContext;
}];

[] spawn {
    while {true} do {
        [] call UKSF_Controller_fnc_detectController;
        uiSleep 1;
    };
};
