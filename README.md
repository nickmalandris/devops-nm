# devops-nm

Test project for me to create CI/CD pipelines. Currently testing with a basic fast api application. 

Current CI Workflow:

1. Checkout
2. Install UV for running python
3. Install Ruff for automated linting
4. Create lock file - in case the one committed isnt up to date. I've chosen to .gitignore the lock file
5. Sync all the packages
6. Run the pytests


Extensions:
 - Check if things in the CI job are running in parallel, if not make sure the things that can, do.
 - Run the build of the dockerfile in the CI. 
 - Build a CD workflow
 - Understand what is happening with the artefacts

Ill probably look to deploy the app to Azure App Service