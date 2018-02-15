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
          -v $HOME/ncview/.ncviewrc:/home/ncview/.ncviewrc \
          -v `pwd`:/home/ncview \
          weatherlab/ncview \
          file_to_be_display.nc
           
