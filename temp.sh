if [[ $1 == "build" ]]
then
    bazel build -c opt --define MEDIAPIPE_DISABLE_GPU=1 mediapipe/examples/desktop/hand_bbox:hand_bbox
elif [[ $1 == "run" ]]
then
    ./bazel-bin/mediapipe/examples/desktop/hand_bbox/hand_bbox \
        --calculator_graph_config_file=mediapipe/graphs/hand_bbox/hand_bbox_desktop_live.pbtxt
else
    echo "Nope"
fi