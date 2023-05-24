```bash
#< deploy.sh >
	# ---> crontab에 간접적으로 입력하는 방식
	# (1) deploy.sh --> crontab_new를 생성하고 거기다 명령어를 넣어서,
  # (2) 그것을 crontab으로 실행시켜서, cron실행

#스프링 서버 종료시 재시작
echo "deploy start......"
echo "crontab 등록...... Spring Restart"

# 이전 크론탭 내용 복사
  crontab -l > crontab_new
# 새로운 크론 명령어 >> append
  echo "* * * * * /home/ubuntu/cron-restart/spring-restart.sh" 1>>crontab_new
# 크론탭 실행
  crontab crontab_new
# 크론탭 종료
  rm crontab_new

```
