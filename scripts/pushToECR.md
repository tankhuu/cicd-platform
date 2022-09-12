# install []()

```
cat << EOF > ~/.docker/config.json
{
	"credHelpers": {
		"public.ecr.aws": "ecr-login",
		"428705180434.dkr.ecr.ap-southeast-2.amazonaws.com": "ecr-login"
	}
}
EOF

docker tag jackiekhuu/jenkins:0.1.0 428705180434.dkr.ecr.ap-southeast-2.amazonaws.com/cicd-platform

docker push 428705180434.dkr.ecr.ap-southeast-2.amazonaws.com/cicd-platform:0.1.0
```