# CodeComp3-Provisioning infrastructure

## Step-by-step guide

1. Fork this repository.
2. Add the 2 github secrets(PROJECT_ID and GOOGLE_APPLICATION_CREDENTIALS) to your forked repository, as was done for the repository with bot algorithm
3. Clone this repository
3. Once cloned,Open main.tf file, replace the <team-name> with your codecomp3 team name.
4. Similarly visit .github/workflows/terraform.yml and replace the <team-name> with your codecomp3 team name on line 27
5. Push the code to master branch.
6. On pushing code to master branch you can see your Github Action Running like in below image
 ![Github Action Running](/assets/github-action.PNG)

7. When this Action gets completed you have the infrastructure ready to deploy your codecomp3 bot on.

## Happy Coding :smile:  



