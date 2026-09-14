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
