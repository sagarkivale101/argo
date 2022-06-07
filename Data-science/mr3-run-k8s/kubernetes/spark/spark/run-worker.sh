#!/bin/bash

# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

set +e 
set +x

DIR="$(cd "$(dirname "$0")" && pwd)"
BASE_DIR=$(readlink -f $DIR/..)
source $BASE_DIR/common-setup.sh

function run_worker {
    echo -e "\n# Running ContainerWorker: $@ #\n" >&2

    JAVA=$JAVA_HOME/bin/java
    # alternatively these options can be added to mr3.am.launch.cmd-opts
    JAVA_OPTS="-Djavax.security.auth.useSubjectCredsOnly=false \
-Djava.security.auth.login.config=/opt/mr3-run/conf/jgss.conf \
-Djava.security.krb5.conf=/opt/mr3-run/conf/krb5.conf \
-Dsun.security.jgss.debug=true"

    runShuffleHandlerProcess=${@: -1}
    if [ "$runShuffleHandlerProcess" = "true" ]; then
      export SPARK_CONF_DIR=$BASE_DIR/conf
      SPARK_SHUFFLE_CLASS=org.apache.spark.deploy.ExternalShuffleService
      $JAVA -cp "$BASE_DIR/spark/jars/*" -Dscala.usejavacp=true -Xmx1g $SPARK_SHUFFLE_CLASS &
    else
      common_setup_cleanup 

      $JAVA $JAVA_OPTS $@

      exit_code=$?
      exit $exit_code
    fi
}

run_worker $@
