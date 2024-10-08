Step 1 Export Variables from Bitbucket Workspace Level
Log in to Bitbucket:

Go to bitbucket.org and log in.
Go to the Workspace Settings:

In the top-left corner, click the workspace name and select the workspace containing your repository.
In the workspace, go to Settings on the left-hand side menu.
Navigate to Workspace Variables:

Go to Pipelines → Workspace Variables. Here you will see all the variables defined at the workspace level.
Export the Variables:

Note down or copy all the environment variables and their values. If any of these variables are sensitive (e.g., AWS keys), ensure they are securely stored, as you will need to set them up in GitHub as Secrets.







Step 2: Convert Bitbucket Pipeline to GitHub Actions
Understand the Current Bitbucket Pipeline:

Open the bitbucket-pipelines.yml file in your Bitbucket repo.
Identify all the steps and any references to variables (especially those using workspace-level variables).
Create a GitHub Actions Workflow File:

In your GitHub repo, create a new folder .github/workflows.
Inside this folder, create a YAML file (e.g., main.yml).
Translate the Bitbucket Pipeline to GitHub Actions:

Convert your Bitbucket pipeline steps to the GitHub Actions format. Here’s a sample to get you started:







Step 3: Set Up Organization-Level Variables in GitHub
Go to Organization Settings:

In GitHub, go to your Organization (from the profile dropdown).
On the left-hand sidebar, click Settings.
Navigate to Secrets and Variables:

Under Security, select Secrets and variables → Actions.
Select New organization secret or New organization variable.
Add Organization Secrets:

Add the sensitive variables (like DTS_AWS_KEY, DTS_AWS_SECRET) as Secrets.
Click New organization secret and fill in the name and value.
Ensure the naming conventions match what you used in your GitHub Actions workflow (e.g., DTS_AWS_KEY).
Add Organization Variables:

If you have non-sensitive variables (like region, account IDs, etc.), add them under Variables.
Click New organization variable, provide a name, and set the value.
Apply to All Repositories:

When adding secrets and variables, ensure they are available to all repositories under the organization if needed.







Step 4 Test the GitHub Actions Pipeline
Trigger the Workflow:

Push a commit to your GitHub repository or trigger the workflow manually through the GitHub UI.
Check the Actions tab in your repository to monitor the status of the pipeline.
Debug Any Issues:

If any errors occur (e.g., missing variables or incorrect setup), go back to the workflow file or the organization-level secrets/variables to adjust them.




