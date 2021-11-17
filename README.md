# ghost-demo-cicd

## Clone this Repo
Clone the Repo and make changes inside the content folder. Whenever a PR is done to the main branch a pipeline is triggered in Cloud Build, which builds a new image of Ghost passing the content folder into it. A new revision of this image is deployed to Cloud Run.

## Running a docker container locally for development
- First we need to add the network being used in the authorized networks field in Cloud SQL.
- Then, run the command below (change the variables to fit your environment)
```
docker run -d \
-e database__client='mysql' \
-e database__connection__user='user' \
-e database__connection__password='pass' \
-e database__connection__database='ghost' \
-e database__connection__host='host' \
-e url="http://localhost:2368" \
-p 3001:2368 \
--name ghost ghost:3.42 
```
