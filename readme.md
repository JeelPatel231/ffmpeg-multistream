## ffmpeg - multistream

simple docker with a script to stream and encode just once

spin this docker image to some other pc with better processor and internet ( can be a server* or a spare pc )
`* -> make sure to open 1935 port if you are thinking to use it on a server`


and all your pc has to do is stream, the docker image will copy the video over to multiple platforms like twitch, yt, dlive, etc. etc...


### INSTRUCTIONS
1. clone the source using 
` git clone https://github.com/jeelpatel231/ffmpeg-multistream `
2. build docker image using
`docker build -t ffmpeg-multistream .`
3. edit the `stream.env` file in directory as per your stream links, seperated with spaces
4. run the docker image using
`docker run --env-file stream.env -p 1935:1935 ffmpeg-multistream`
5. open OBS Studio or your preffered streaming program
    change server to `rtmp://0.0.0.0/live`
    change stream key to `app`
    save changes 
6. start streaming


### DISCLAIMER
I just started with docker and nor do I know much about ffmpeg encoding and muxing, this project was easy to make but it can be improved further, so pull requests are always welcomed :D
