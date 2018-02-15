##############
tkdiff 使用说明
##############

*由北京朗润知天科技有限公司支持*

运行ncview
----------

.. code:: bash

    docker run  --rm \
                 -v /tmp/.X11-unix:/tmp/.X11-unix \
                 -e DISPLAY=unix$DISPLAY \
                 -v `pwd`:/home/tkdiff \
                 weatherlab/tkdiff \
                 file1 file2
           
