# dot files for vim, git, npm, gem, tmux & zsh

require 'logger'

task :default => [:usage]

module DF
  LOGGER = Logger.new(STDOUT)
  LOGGER.level = Logger::DEBUG
  LOGGER.datetime_format = "%H:%M:%S"

  WRK_PATH = File.expand_path(File.dirname(__FILE__))
  HOME_PATH = File.expand_path('~')

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
      LOGGER.warn("Cannot update %s to %s" %  [src, target])
      return false
    end
    LOGGER.info("Updateing src = %s, target = %s" % [src, target])
    File.symlink(src, target)
    return true
  end

  def self.cleanLink(target)
    target = File.expand_path(target, HOME_PATH)
    if (!File.exists?(target) || !File.symlink?(target))
      return false
    end
    LOGGER.info("remove link file %s" % target)
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
  DF::LOGGER.info("Updating git config files")
  DF::linkCfg('.gitconfig', './git/gitconfig')
  DF::linkCfg('.gitignore_global', './git/gitignore_global')

  DF::LOGGER.info("Update tmux config files")
  DF::linkCfg('.tmux.conf', './tmux/tmux.conf')
  DF::linkCfg('.tmuxinator', './tmux/tmuxinator')
end

desc "clean"
task :clean do
  DF::LOGGER.info("Remove git links")
  DF::cleanLink('.gitconfig')
  DF::cleanLink('.gitignore_global')

  DF::LOGGER.info("Remove tmux links")
  DF::cleanLink('.tmux.conf')
  DF::cleanLink('.tmuxinator')
end
