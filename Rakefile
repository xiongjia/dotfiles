# dot files for vim, git, npm, gem, tmux & zsh

require 'os'

task :default => [:usage]

module Ctx
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
      puts "Cannot update %s to %s" %  [src, target]
      return false
    end
    puts "Updateing src = %s, target = %s" % [src, target]
    File.symlink(src, target)
    return true
  end

  def self.cleanLink(target)
    target = File.expand_path(target, HOME_PATH)
    if (!File.exists?(target) || !File.symlink?(target))
      return false
    end
    puts "remove link file %s" % target
    File.unlink(target)
    return true
  end
end


desc "All Options&Usage"
task :usage do
  Ctx::printOpts()
end

desc "link"
task :link do
  puts "Updating git config files" 
  Ctx::linkCfg('.gitconfig', './git/gitconfig')
  Ctx::linkCfg('.gitignore_global', './git/gitignore_global')

  puts "Update tmux config files"
  Ctx::linkCfg('.tmux.conf', './tmux/tmux.conf')
  Ctx::linkCfg('.tmuxinator', './tmux/tmuxinator')
end

desc "clean"
task :clean do
  puts "Remove git links"
  Ctx::cleanLink('.gitconfig')
  Ctx::cleanLink('.gitignore_global')

  puts "Remove tmux links"
  Ctx::cleanLink('.tmux.conf')
  Ctx::cleanLink('.tmuxinator')
end
