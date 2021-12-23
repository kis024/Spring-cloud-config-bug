docker run -it --rm --name configserver \
	-p 8888:8888 \
	-e spring.profiles.active=native \
	-e spring.cloud.config.server.native.search-locations='file:/config' \
	-e spring.cloud.config.allowOverride=true \
	-e spring.cloud.config.overrideNone=true \
	-v $PWD/config:/config \
	springcloud/configserver
