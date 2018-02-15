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
           
.. image:: https://g.codefresh.io/api/badges/build?repoOwner=weatherlab&repoName=tkdiff&branch=master&pipelineName=tkdiff&accountName=weatherhub&type=cf-1
   :target: https://g.codefresh.io/repositories/weatherlab/tkdiff/builds?filter=trigger:build;branch:master;service:5a85cf756b985f0001bcfb5c~tkdiff
