# Packages
List of free and personal software packages




#### Add a Git Submodule
```
git submodule add <remote_url>

git commit -m "Added the submodule to the project."

git push
```

#### Pull latest of all git submodules  
only for the first time
```
git submodule update --init --remote
```
then
```
git submodule update --recursive --remote
```


#### Update a Git Submodule
```
git submodule update --remote --merge
```
