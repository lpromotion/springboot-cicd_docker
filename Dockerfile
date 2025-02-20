# OpenJDK 17 기반 (멀티 플랫폼 지원)
FROM eclipse-temurin:17-jdk

# 애플리케이션 실행 디렉토리 설정
WORKDIR /app

# Gradle 빌드 결과물 (JAR 파일) 컨테이너로 복사
COPY build/libs/*.jar app.jar

# 컨테이너 실행 시 JAR 파일 실행
ENTRYPOINT ["java", "-jar", "app.jar"]
