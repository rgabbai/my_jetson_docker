How this docker was prepared

base container was build using
jetson-containers build --name=jetson-inference jetson-inference jupyterlab rust

On top of this image  add custom docker build using Dockerfile for:
Ros Hamble 
Yolo (ultralytics)
Realsense


Docker Build: :
cd ~/projects/my-jetson-docker
docker build -t jetson-inference:hamble_rust_yolo_real .
Docker Run:
sudo docker run -it  --rm --network=host  --ipc=host  -v $PWD/my_repos:/repos   --runtime nvidia -privileged jetson-inference:hamble_rust_yolo_real
