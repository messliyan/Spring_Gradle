FROM registry.cn-shanghai.aliyuncs.com/jiabinli/owen:1

MAINTAINER lijiabin@qq.com

EXPOSE 9099

ADD build/libs/Spring_Gradle-*.jar  spring_gradle.jar

ENTRYPOINT ["java", "-jar", "spring_gradle.jar"]

