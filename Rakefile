# dot files for vim, git, npm, gem, tmux & zsh

require 'logger'

module DF
  LOGGER = Logger.new(STDOUT)
  LOGGER.level = Logger::DEBUG
  LOGGER.datetime_format = '%M:%S'
  LOGGER.formatter = proc do |severity, datetime, progname, msg|
    "#{datetime}: #{msg}\n"
  end

  WRK_PATH = File.expand_path(File.dirname(__FILE__))
  HOME_PATH = File.expand_path('~')
  ALL_TYPES = [
    "git", "tmux", "vim", "ruby", "python", "java", "misc", "spacemacs", "shell"]
  DFILES = {
    "git" => [
      { "src" => "./git/gitconfig", "target" => ".gitconfig"},
      { "src" => "./git/gitignore_global", "target" => ".gitignore_global"}],
    "tmux" => [
      { "src" => "./tmux/tmux.conf", "target" => ".tmux.conf"},
      { "src" => "./tmux/tmuxinator", "target" => ".tmuxinator"}],
    "vim" => [
      { "src" => "./vim/vim", "target" => ".vim"},
      { "src" => "./vim/vimrc", "target" => ".vimrc"}],
    "node" => [
      { "src" => "./node/npmrc", "target" => ".npmrc"}],
    "ruby" => [
      { "src" => "./ruby/gemrc", "target" => ".gemrc"}],
    "python" => [
      { "src" => "./python/pylintrc", "target" => ".pylintrc"}],
    "java" => [
      { "src" => "./java/m2", "target" => ".m2" },
      { "src" => "./java/gradle", "target" => ".gradle" }],
    "misc" => [
      { "src" => "./misc/ackrc", "target" => ".ackrc" }],
    "spacemacs" => [
      { "src" => "./emacs/.spacemacs.d", "target" => ".spacemacs.d" }],
    "shell" => [
      { "src" => "./shell/zshrc", "target" => ".zshrc" }]
  }

  def self.log
    return LOGGER 
  end

  def self.printOpts
    puts "DotFiles - HOME= #{HOME_PATH}, WrkPath= #{WRK_PATH}"
    puts "Options:"
    puts "  linkAll - Update all dotFiles (#{ALL_TYPES})"
    puts "  cleanAll - remove all dotFiles (#{ALL_TYPES})"
    puts "  link[type] - link one type dot files"
    puts "  clean[type] - clean one type dot files"
  end

  def self.linkCfg(src, target)
    log.info("update src = #{src}, target = #{target}")
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

  def self.link(type)
    log.info("link dot-files, type= #{type}")
    DFILES[type].each do |item|
        self.linkCfg(item["src"], item["target"])
    end
  end

  def self.clean(type)
    log.info("clean dot-files link, type = #{type}")
    DFILES[type].each do |item|
      self.cleanLink(item["target"])
    end
  end
end

task :default => [:usage]

desc "print usage"
task :usage do
  DF::printOpts()
end

desc "link <type>"
task :link, :type do |t, args|
    DF::log.info("update dot-files, type= #{args.type}")
    DF::link(args.type)
end

desc "clean <type>"
task :clean, :type do |t, args|
  DF::log.info("clean dot-files, type= #{args.type}")
  DF::clean(args.type)
end

desc "update all dot-files"
task :linkAll do
  DF::log.info("update all dot-files")
  DF::ALL_TYPES.each do |type|
    DF::link(type)
  end
end

desc "clean all dot-files"
task :cleanAll do
  DF::log.info("clean all dot-files")
  DF::ALL_TYPES.each do |type|
    DF::clean(type)
  end
end

