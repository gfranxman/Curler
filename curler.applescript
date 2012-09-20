set i to the clipboard as string

do shell script "echo '" & i & "' >>/tmp/curler.log"

say "curling"
do shell script "curl -L '" & i & "' > /tmp/curler.html"

--say "opening"
tell application "Finder"
	open "Macintosh HD:tmp:curler.html"
end tell
