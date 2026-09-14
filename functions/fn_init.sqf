if (!hasInterface) exitWith {};

UKSF_Controller_mode = "DISABLED";
UKSF_Controller_connected = false;
UKSF_Controller_active = false;

[] spawn {
    waitUntil {!isNull player};

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

    while {true} do {
        [] call UKSF_Controller_fnc_detectController;
        [] call UKSF_Controller_fnc_updateContext;
        uiSleep 0.5;
    };
};
