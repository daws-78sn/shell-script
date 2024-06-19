# shell script

**steps:**

* Create a repo in GitHub
* Clone repo in local laptop
* Start developing
* add the files to temp area
```
    git add <file-name>
```
* commit the changes
    ```
    git commit -m  " why-you-commit"

    if asks who you are run following commands
    git config --global user.email "skreddy2244@gmail.com"
     git config --global user.name "joindevops"

    ```
* Push the changes to github/cental repo
    ```
    git push -u origin main ----> why 'main' branching topics will discuss in CI/CD
    ```
    it will ask token/browser auth (2F auth) 
        create a token from settings--developer settings-- personal access tokens --tokens (classic) --create token classic --select applicables and create
        **token should not be exposed anyone**
**token is:**
# stored in repos folder

**naming convention: use small case with hyphens(-). no spaces**

Create one more file with .sh
.sh is shell script extension




