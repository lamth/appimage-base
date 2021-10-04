# appimage-base
Build docker base image to run QT's AppImage.

- OS: Ubuntu 
- arch: arm64

## How to use that base image 
Copy your AppImage file to this base image to create the new one.
Example, to build a docker image for my QT project's app **someapp.AppImage**:

```dockerfile
FROM lamth/appimage-base:1.0-ubuntu

COPY someapp.AppImage /app/someapp.AppImage

CMD /app/Attendance.AppImage --no-sandbox
```
- Build it to other image
- Run new image **someapp:0.001-ubuntu**:
```
docker run -dit  --privileged --cap-add=ALL -v /dev:/dev -v /lib/modules:/lib/modules -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=:0  someapp:0.001-ubuntu
```

