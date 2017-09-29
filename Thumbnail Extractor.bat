mkdir %~dp0\thumbnail
for /r %%f in (*.mp4) do 
(
	echo %%f
	ffmpeg -ss 00:00:01 -i %%f -vframes 1 -q:V 2 thumbnail\%%~nf.jpg
)
pause

