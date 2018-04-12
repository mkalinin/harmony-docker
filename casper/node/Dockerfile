# Docker container spec for building the master branch of EthereumJ.
#
# The build process it potentially longer running but every effort was made to
# produce a very minimalistic container that can be reused many times without
# needing to constantly rebuild.
FROM anapsix/alpine-java:8_jdk_unlimited

WORKDIR /root

# Build Harmony on the fly and delete all build tools afterwards
RUN \
  apk add --update git                                     && \
  git clone --depth 1 -b research/casper https://github.com/ethereum/ethereumj && \
  git clone --depth 1 -b research/casper https://github.com/ether-camp/ethereum-harmony && \
  (cd ./ethereumj && ./gradlew clean install -x test && cd ..)         && \
  (cd ./ethereum-harmony && ./gradlew clean dependencyManagement distTar -x test -PuseMavenLocal && cd ..) && \
  tar -xf ./ethereum-harmony/build/distributions/harmony.ether.camp.tar -C ./ && \
  rm -rf ethereumj ethereum-harmony && \
  rm -rf ./.gradle ./.m2 && \
  apk del git

# Inject config and startup script
ADD ./config ./config
ADD ./start.sh ./start.sh
RUN chmod +x ./start.sh

# Expose ports
EXPOSE 8545
EXPOSE 8546
EXPOSE 30303

ENTRYPOINT ["./start.sh"]
