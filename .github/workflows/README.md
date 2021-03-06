# README


# Run test
We set [github action test](https://github.com/acearth/mathWork/blob/main/.github/workflows/test.yml) to trigger it.


# Build and push docker image
We assumed to use AWS ECR as remote private registry. Some credentials are required to be set in github secrets. They are:
* AWS_ACCESS_KEY
* AWS_ACCOUNT_NUMBER
* AWS_KEY_ID
* DOCKER_SSH_PRIVATE_KEY
* DOCKER_SSH_PUBLIC_KEY
* RAILS_MASTER_KEY
* SSH_LOGIN

Please setup before action working.
The [build-and-publish](https://github.com/acearth/mathWork/blob/main/.github/workflows/build.yml) action is used to build and publish docker image when PR merged to main branch. Please note: repository owner shall not allowed to directly push to main branch, but currently github don't have a policy to limit it.

# Deploy
According to request, we should create one kubernetes cluster, with pod and load balancer to deploy it. But at the very beginning I handled this project, I already adopted one docker directly deploy method. So I just kept the deploy solution.
The deploy process is [a step of build-and-publish](https://github.com/acearth/mathWork/blob/f235dc4cdee33e89afbf2aa16c996d9757cd257d/.github/workflows/build.yml#L47). Please click the [link](https://github.com/acearth/mathWork/blob/f235dc4cdee33e89afbf2aa16c996d9757cd257d/.github/workflows/build.yml#L47) to confirm it.
Also note, the deploy process is wired and not always working as expected.

