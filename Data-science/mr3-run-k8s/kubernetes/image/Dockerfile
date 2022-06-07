FROM mr3project/hive3:1.4 

USER 0

RUN find /opt -type d -exec chmod 775 {} \; && chgrp -R 0 /opt

USER 1000
