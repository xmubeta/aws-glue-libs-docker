#!/bin/bash

docker run -itd -p 8888:8888 -p 4040:4040 -p 18080:18080 \
    -v ~/.aws:/home/glue_user/.aws:ro \
    -v $(pwd)/workspace:/home/glue_user/workspace/jupyter_workspace \
    -v $(pwd)/conf/core-site.xml:/home/glue_user/spark/conf/core-site.xml \
    -v $(pwd)/conf/glue-default.conf:/home/glue_user/spark/conf/glue-default.conf \
    -v $(pwd)/conf/glue-override.conf:/home/glue_user/spark/conf/glue-override.conf \
    --name glue_jupyter amazon/aws-glue-libs:glue_libs_3.0.0_image_01 /home/glue_user/jupyter/jupyter_start.sh
