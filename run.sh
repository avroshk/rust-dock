docker run -it --rm \
  --name rusty-dock \
  --mount type=bind,source=$(pwd),destination=$(pwd),consistency=cached \
  -w $(pwd) \
  -u $(id -g):$(id -u) \
  rust-dock
