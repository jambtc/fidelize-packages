# Packages
Software packages for blockchain applications


## How to “git clone” including submodules?
`git clone --recurse-submodules -j8 https://github.com/jambtc/packages.git`

Editor's note: -j8 is an optional performance optimization that became available in version 2.8, and fetches up to 8 submodules at a time in parallel



## TODO after 1st clone
copy these files and edit them with appropriate content

- `cp crypt/encrypt.json.example crypt/encrypt.json`
- `cp http-proxy.php .example http-proxy.php`
- `cp gateways/btcpayserver-php-v1/Btcpay/Client/Adapter/proxy.php.example gateways/btcpayserver-php-v1/Btcpay/Client/Adapter/proxy.php`
- `cp gateways/bitpay/Bitpay/Client/Adapter/proxy.php.example gateways/bitpay/Bitpay/Client/Adapter/proxy.php`
- `cp gateways/coingate-php/lib/http-proxy.php.example gateways/coingate-php/lib/http-proxy.php`
- `cp PayPal\PayPal-PHP-SDK\paypal\rest-api-sdk-php\lib\PayPal\Core\http-proxy.php.example PayPal\PayPal-PHP-SDK\paypal\rest-api-sdk-php\lib\PayPal\Core\http-proxy.php`





## How To Add and Update Git Submodules
Git submodules are most of the time used in order to incorporate another versioned project within an existing project.
Submodules can be used for example in order to store third-party libraries used by your main project in order to compile successfully.
In order to keep up with the changes made for those third-party libraries, you choose to include projects as submodules in your main project.


#### Add a Git Submodule
do this only for the first time
```
git submodule add <remote_url>

git commit -m "Added the ... submodule to the project."

git push

git submodule update --init --remote
```

#### PULL latest of all git submodules  
**be carefull. This command clear local changes**
```
git submodule update --recursive --remote
```


#### PUSH a Git Submodule
```
git submodule update --remote --merge
```


#### How to remove Submodule
- Delete the section referring to the submodule from the .gitmodules file
- Stage the changes via `git add .gitmodules`
- Delete the relevant section of the submodule from .git/config
- Run `git rm --cached <path_to_submodule>` (no trailing slash)
- Run
	- Linux: `rm -rf .git/modules/<path_to_submodule>`
	- Windows: `rmdir /s .git\modules\<path_to_submodule>`

- Commit the changes with `git commit -m "Removed ... submodule"`
- Delete the now untracked submodule files
	- Linux: `rm -rf <path_to_submodule>`
	- Windows: `rmdir /s <path_to_submodule>`
- finally run `git push`


#### How to add new file to .gitignore
removes everything from the index
`git rm -r --cached .`

then
```
git add .
git commit -m ".gitignore is now working"
```
