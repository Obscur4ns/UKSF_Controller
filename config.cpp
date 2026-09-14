class CfgPatches
{
    class UKSF_Controller
    {
        name = "UKSF Controller";
        author = "UKSF Surplus";
        requiredVersion = 2.14;
        requiredAddons[] = {"A3_Functions_F"};
        units[] = {};
        weapons[] = {};
    };
};

class CfgFunctions
{
    class UKSF_Controller
    {
        tag = "UKSF_Controller";

        class Core
        {
            file = "\UKSF_Controller\functions";

            class init
            {
                postInit = 1;
            };

            class updateContext {};
            class detectController {};
        };
    };
};

class ControllerSchemes
{
    class UKSF_Controller
    {
        name = "UKSF Controller";

        class Gamepad
        {
            class ThumbStickDeadZones
            {
                leftX = 0.15;
                leftY = 0.15;
                rightX = 0.15;
                rightY = 0.15;
            };

            class Actions
            {
                CarForward[] = {0x00050000 + 13, 0, {"Gamma", 1.0, 1.0}};
                CarBack[] = {0x00050000 + 12, 0, {"Gamma", 1.0, 1.0}};
                CarLinearLeft[] = {0x00050000 + 20, 0, {"Gamma", 1.0, 2.0}};
                CarLinearRight[] = {0x00050000 + 16, 0, {"Gamma", 1.0, 2.0}};
                CarHandBrake[] = {0x00050000 + 0};
            };
        };
    };
};
