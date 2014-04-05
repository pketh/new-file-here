-- creates a blank new file within the current folder.
-- meant to run from the finder toolbar

try
	tell application "Finder" to set currentPath to (folder of front window) as alias
on error -- if no Finder windows use Desktop
	set currentPath to path to desktop folder as alias
end try

set dir to quoted form of POSIX path of currentPath
do shell script "cd " & dir & ";touch untitled.md"