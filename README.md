### 사용 방안

- `git clone repository`
- 아래의 명령어를 이용해 `docker-compose` 설치
```sh
cat << EOF > setup.sh
sudo mkdir -p /usr/local/lib/docker/cli-plugins/
sudo curl -SL "https://github.com/docker/compose/releases/latest/download/docker-compose-linux-$(uname -m)" -o /usr/local/lib/docker/cli-plugins/docker-compose
sudo chmod +x /usr/local/lib/docker/cli-plugins/docker-compose

docker compose version
EOF
chmod +x setup.sh
./setup.sh
```
- 아래의 명령어를 이용해 `user`, `porudct`, `stress` 폴더의 제공받은 바이너리 파일을 경로 이동
```sh
cp product/product project/product
cp user/user project/user
cp stress/stress project/stress
```
- 아래의 명령어를 이용해 어플리케이션 실행
```sh
export AWS_REGION=ap-northeast-2
export AWS_ACCESS_KEY_ID=<AWS_ACCESS_KEY_ID>
export AWS_SECRET_ACCESS_KEY=<AWS_SECRET_ACCESS_KEY>
```
```sh
cd project
docker compose up -d
```
- 아래의 명령어를 이용해서 어플리케이션 분석
