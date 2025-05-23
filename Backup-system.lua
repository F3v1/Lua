print("---------------------------------------------------------")
print("------------------Backup-system by F3v1------------------")
print("---------------------------------------------------------")
print("")

local lfs = require("lfs")

local function directoryExists(path)
    local attr = lfs.attributes(path)
    return attr and attr.mode == "directory"
end

local function createDirectory(path)
    if not directoryExists(path) then
        os.execute("mkdir \"" .. path .. "\"")  -- Windows
        os.execute("mkdir -p \"" .. path .. "\"")  -- Linux/Mac
    end
end


local function copyFile(src, dest)
    local input = io.open(src, "rb")
    if not input then return false end
    local content = input:read("*all")
    input:close()

    local output = io.open(dest, "wb")
    if not output then return false end
    output:write(content)
    output:close()
    return true
end


local function backupDirectory(sourceDir, backupDir)
    if not directoryExists(sourceDir) then
        print("Source directory does not exist: " .. sourceDir)
        return
    end

    createDirectory(backupDir)

    for file in lfs.dir(sourceDir) do
        if file ~= "." and file ~= ".." then
            local sourceFile = sourceDir .. "/" .. file
            local backupFile = backupDir .. "/" .. file
            local attr = lfs.attributes(sourceFile)
            
            if attr and attr.mode == "file" then
                if copyFile(sourceFile, backupFile) then
                    print("Backed up: " .. file)
                else
                    print("Failed to back up: " .. file)
                end
            end
        end
    end
end

io.write("Enter source directory: ")
local sourcePath = io.read()
io.write("Enter backup directory: ")
local backupPath = io.read()

backupDirectory(sourcePath, backupPath)

print("Backup completed!")
