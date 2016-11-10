;; -*- mode: emacs-lisp -*-
;; config.el - My private Org config

;; org projects - default project 
;; (The default project is saved in Dropbox)
(defvar xj-org_root
  (expand-file-name "org" (getenv "_dropbox_root"))
  "The org project root is ${_dropbox_root}/org")

;; org projects - abathur ( https://github.com/xiongjia/abathur )
(defvar xj-org_abathur-root 
  (expand-file-name "abathur" (getenv "_github_root"))
  "The default abathur-root is ${_github_root}/abathur")

;; org tools
(defvar xj-org_tool_plantuml (getenv "_plantuml_jar")
  "The default plantuml.jar file is ${_plantuml_jar}")

(defvar xj-org_tool_ditaa (getenv "_ditaa_jar")
  "The default ditaa.jar file is ${_ditaa_jar}")

