if (!hasInterface) exitWith {"DISABLED"};

private _mode = "DISABLED";
private _vehicle = vehicle player;

if (UKSF_Controller_connected && {!(_vehicle isEqualTo player)}) then {
    if (driver _vehicle isEqualTo player) then {
        if (_vehicle isKindOf "Ship") then {
            _mode = "BOAT_DRIVER";
        } else {
            if (_vehicle isKindOf "Tank") then {
                _mode = "TRACKED_DRIVER";
            } else {
                if (_vehicle isKindOf "Car") then {
                    _mode = "CAR_DRIVER";
                };
            };
        };
    };
};

UKSF_Controller_mode = _mode;
_mode
