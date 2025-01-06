# kate-pre-setup
Pre installation scripts for installing KATE text editor

1. Clone the repository into a local folder.
2. Open command prompt with Administrator privileges.
3. Navigate to the code folder inside command prompt `cd <your folder name>`.
4. Type `start_kate_pre_setup.bat` in command prompt to start the installation of required basic dependencies (not mandatory).
5. Wait for all the installations to complete then close the command prompt once done.
6. Proceed with downloading the latest version of KATE from https://cdn.kde.org/ci-builds/utilities/kate/ using .exe or .msi file.
7. Install KATE and follow the below steps for configuration for behaviour like sublime text - 
    
    Go to Settings -> Configure Kate -> 

    1. Appearance -> Editor font: 12
    Counts: Tick Show word count
    Counts: Tick Show line count
    2. Plugins -> 
        Tick CMake plugin for kate (optional)
        Tick Colored Brackets
        Tick External Tools
        Tick Formatting
        Tick LSP Client
        Tick Open Link
        Tick Project Plugin
        Tick Search & Replace
        Don't untick other default plugins
    3. Open/Save 
        -> Advanced Tab
            Swap file mode: Enabled, Store In Default Directory
            Save swap files every: 2s
            Tick Honor settings in .editorconfig file
    4. Session 
        -> Application Startup Behaviour -> Select 'Load last used session'
        -> Application Startup/Shutdown Behaviour 
            -> Automatically save and restore
                -> Tick Newly-created unsaved files
                -> Files with unsaved changes
        -> Session Elements 
            -> Maximum number of entries in recent file list: 99
            -> Tick Include window configuration
        -> Tick Keep meta-information past sessions
            -> Delete unused meta-information after: 179 days
