### 사용 방안

- `git clone repository`
- 아래의 명령어를 이용해 `docker-compose` 설치
```sh
sudo mkdir -p /usr/local/lib/docker/cli-plugins/
sudo curl -SL "https://github.com/docker/compose/releases/latest/download/docker-compose-linux-$(uname -m)" -o /usr/local/lib/docker/cli-plugins/docker-compose
sudo chmod +x /usr/local/lib/docker/cli-plugins/docker-compose

docker compose version
```
- 아래의 명령어를 이용해 `user`, `porudct`, `stress` 폴더의 제공받은 바이너리 파일을 경로 이동
```sh
mv product/product project/product
mv user/user project/user
mv stress/stress project/stress
```
- 아래의 명령어를 이용해 어플리케이션 실행
```sh
cd project
docker-compose up --build
```
- 아래의 명령어를 이용해서 어플리케이션 분석