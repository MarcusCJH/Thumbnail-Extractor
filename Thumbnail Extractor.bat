mkdir "%cd%"\thumbnail
for /r %%f in (*.mp4) do (

	ffmpeg -ss 00:00:00 -i %%f -vframes 1 -q:V 2 %cd%\thumbnail\%%~nf.jpg
)
pause

