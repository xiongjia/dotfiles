# dot files for vim, git, npm, gem, tmux & zsh

require 'logger'

task :default => [:usage]

module DF
  LOGGER = Logger.new(STDOUT)
  LOGGER.level = Logger::DEBUG
  LOGGER.datetime_format = '%M:%S'
  LOGGER.formatter = proc do |severity, datetime, progname, msg|
    "#{datetime}: #{msg}\n"
  end

  WRK_PATH = File.expand_path(File.dirname(__FILE__))
  HOME_PATH = File.expand_path('~')

  def self.log
    return LOGGER 
  end

  def self.printOpts
    puts "Settings:"
    puts "  Working path: %s" % WRK_PATH
    puts "  Home path: %s" % HOME_PATH
    puts "Options:"
    puts "  link - create the symbol links for all dot files"
    puts "  clean - remove all links"
  end

  def self.linkCfg(target, src)
    src = File.expand_path(src, WRK_PATH)
    target = File.expand_path(target, HOME_PATH)
    if (File.exists?(target) || !File.exists?(src))
      log.warn("Cannot update %s to %s" %  [src, target])
      return false
    end
    log.info("Updateing src = %s, target = %s" % [src, target])
    File.symlink(src, target)
    return true
  end

  def self.cleanLink(target)
    target = File.expand_path(target, HOME_PATH)
    if (!File.exists?(target) || !File.symlink?(target))
      return false
    end
    log.info("remove link file %s" % target)
    File.unlink(target)
    return true
  end
end


desc "All Options&Usage"
task :usage do
  DF::printOpts()
end

desc "link"
task :link do
  DF::log.info("Updating git config files")
  DF::linkCfg('.gitconfig', './git/gitconfig')
  DF::linkCfg('.gitignore_global', './git/gitignore_global')

  DF::log.info("Update tmux config files")
  DF::linkCfg('.tmux.conf', './tmux/tmux.conf')
  DF::linkCfg('.tmuxinator', './tmux/tmuxinator')

  DF::log.info("Update vim")
  DF::linkCfg('.vimrc', './vim/vimrc')
  DF::linkCfg('.vim', './vim/vim')

  DF::log.info("Update node")
  DF::linkCfg('.npmrc', './node/npmrc')
end

desc "clean"
task :clean do
  DF::log.info("Remove git links")
  DF::cleanLink('.gitconfig')
  DF::cleanLink('.gitignore_global')

  DF::log.info("Remove tmux links")
  DF::cleanLink('.tmux.conf')
  DF::cleanLink('.tmuxinator')

  DF::log.info("Remove vim links")
  DF::cleanLink('.vimrc')
  DF::cleanLink('.vim')

  DF::log.info("Update node")
  DF::cleanLink('.npmrc')
end
