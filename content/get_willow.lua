--- Installs the willow package.
--- @file get_willow.lua
--- @date 2024-11-07
--- @version 0.1.0
--- @license MIT
--- @author William Fayers

print("Downloading willow...")

--- Constants
-- The command to download a file.
local GET_COMMAND = "wget"
-- The command to make a directory.
local MAKE_DIRECTORY_COMMAND = "mkdir"
-- The willow repository.
local WILLOW_SOURCE_REPOSITORY = "https://raw.githubusercontent.com/unkokaeru/willow/main/source/"
-- The directory to save the willow files to.
local WILLOW_DIRECTORY = "/packages/willow/"
-- The structure of the willow files.
local WILLOW_FILE_STRUCTURE = {
    config = {name = "config", files = {
        "constants",
        "paths"
    }},
    modules = {name = "modules", files = {
        "command_line_interface",
        "logging",
        "package_manager"
    }},
    utilities = {name = "utilities", files = {
        "print_utilities",
        "network_utilities",
        "print_utilities",
        "string_utilities"
    }},
    main = {name = "main", files = {}}
}
-- The file extension.
local FILE_EXTENSION = ".lua"

--- Downloads a file from the willow repository.
--- @param willow_file string The file to download.
--- @param downloaded_file_name string|nil The name to save the file as, defaults willow file name.
local function download_willow_file(willow_file, downloaded_file_name)
    if not downloaded_file_name then
        downloaded_file_name = willow_file
    end

    shell.run(
        GET_COMMAND,
        WILLOW_SOURCE_REPOSITORY ..
        willow_file .. FILE_EXTENSION,
        WILLOW_DIRECTORY .. downloaded_file_name .. FILE_EXTENSION
    )
    print("Downloaded willow file: " .. WILLOW_DIRECTORY .. downloaded_file_name .. FILE_EXTENSION)
end


--- Downloads all willow files.
local function main()
    -- Create the willow directory.
    print("Creating willow directory: " .. WILLOW_DIRECTORY)
    shell.run(MAKE_DIRECTORY_COMMAND, WILLOW_DIRECTORY)

    -- Download all willow files.
    for _, item in pairs(WILLOW_FILE_STRUCTURE) do
        if #item.files > 0 then
            -- Create the directory.
            print("Creating willow directory: " .. item.name)
            shell.run(MAKE_DIRECTORY_COMMAND, WILLOW_DIRECTORY .. item.name)

            -- Download all files within the directory.
            for _, file in pairs(item.files) do
                print("Downloading willow file: " .. item.name .. "/" .. file)
                download_willow_file(item.name .. "/" .. file)
            end
        else
            print("Downloading willow file: " .. item.name)
            download_willow_file(item.name)
        end
    end
    print("Willow files downloaded.")

    -- Create a willow file to run the package.
    print("Creating Willow file.")
    fs.open("willow.lua", "w")
    local file = fs.open("willow.lua", "a")
    file.writeLine(
        "shell.run(\"" ..
        WILLOW_DIRECTORY .. WILLOW_FILE_STRUCTURE.main.name .. FILE_EXTENSION ..
        "\")"
    )
    file.close()
    print("Willow file created.")

    shell.run("willow.lua")
    return 0
end


return main()