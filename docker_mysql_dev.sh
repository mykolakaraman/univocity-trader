UNIVOCITY_PROJECT_PATH=`pwd`
docker run --name mysql-univocity \
-v ${UNIVOCITY_PROJECT_PATH}/univocity-trader-core/src/main/resources/db/mysql:/docker-entrypoint-initdb.d \
-v ${UNIVOCITY_PROJECT_PATH}/mysql:/var/lib/mysql \
-p 3306:3306  \
-e MYSQL_ALLOW_EMPTY_PASSWORD=yes \
-e MYSQL_DATABASE=trading \
-e MYSQL_USER=univocity-dev \
-e MYSQL_PASSWORD=univocity-dev \
-d mysql:8.0.23
