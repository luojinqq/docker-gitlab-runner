## Docker gitlab runner

## ENV

(http://docs.gitlab.com/ce/ci/api/runners.html)

```bash
curl -i --request POST \
  --url ${GITLAB_CI_URL}/api/v1/runners/register \
  --header 'content-type: application/json' \
  --data '{"token": ""}'
```

$GITLAB_CI_TOKEN