require 'heroku/helpers'
require 'heroku/command'
require 'heroku/command/run'

class Heroku::Command::BashUtils < Heroku::Command::Run

  # bash-utils
  # 
  # Run bash on heroku with vim, redis-cli 
  #  
  def index
    run_attached(cmd)
  end

  protected

  def cmd 
    <<-CMD
mkdir vim
curl https://s3.amazonaws.com/heroku-vim/vim-7.3.tar.gz --location --silent | tar xz -C vim
curl https://s3.amazonaws.com/backups.openredis.com/redis-cli/redis-cli --silent > redis-cli
chmod +x redis-cli
export PATH=$PATH:/app/vim/bin:/app/
bash
    CMD
  end

end
