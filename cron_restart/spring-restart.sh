#< spring-restart.sh >

# 스크립트 실행
ubuntu@ip-172-31-32-111:~/cron-restart$ vi spring-restart.sh

# PID 가져오기 및 jar파일 주소
SPRING_PID=$(pgrep -f v1-0.0.1-SNAPSHOT.jar)
SPRING_PATH="/home/ubuntu/aws-v1/build/libs/v1-0.0.1-SNAPSHOT.jar"
echo "SPRING_PID: $SPRING_PID"
echo "SPRING_PATH: $SPRING_PATH"

# if문
if [ -z "$SPRING_PID" ]; then
  echo "스프링 종료된 상태"
  echo "스프링 재시작 -$(date)" 1>>/home/ubuntu/cron-restart/spring-restart.log
  nohup java -jar $SPRING_PATH 1>log.out 2>err.out &
else
  echo "스프링 시작된 상태"
fi
