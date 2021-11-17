# ghost-demo-cicd

## Clone this Repo
Clone the Repo and make changes inside the content folder. Whenever a PR is done to the main branch a pipeline is triggered in Cloud Build, which builds a new image of Ghost passing the content folder into it. A new revision of this image is deployed to Cloud Run.