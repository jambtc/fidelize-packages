# Packages
List of free and personal software packages





## How To Add and Update Git Submodules
Git submodules are most of the time used in order to incorporate another versioned project within an existing project.
Submodules can be used for example in order to store third-party libraries used by your main project in order to compile successfully.
In order to keep up with the changes made for those third-party libraries, you choose to include projects as submodules in your main project.


#### Add a Git Submodule
```
git submodule add <remote_url>

git commit -m "Added the ... submodule to the project."

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


#### Push/Update a Git Submodule
```
git submodule update --remote --merge
```
