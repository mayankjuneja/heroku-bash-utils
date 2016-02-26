heroku-bash-utils
=================

Installs vim, redis-cli in a dyno and starts a bash session.

(Inspired from https://github.com/naaman/heroku-vim)

## Install

```
$ heroku plugins:install https://github.com/mayankjuneja/heroku-bash-utils
```

## Use

```
heroku bashutils 
```

## Example Output
```
$ heroku bashutils 
Running `mkdir vim
curl https://s3.amazonaws.com/heroku-vim/vim-7.3.tar.gz --location --silent | tar xz -C vim
curl https://s3.amazonaws.com/backups.openredis.com/redis-cli/redis-cli --silent > redis-cli
chmod +x redis-cli
export PATH=$PATH:/app/vim/bin:/app/
bash
` attached to terminal... up, run.4276
~ $
```
