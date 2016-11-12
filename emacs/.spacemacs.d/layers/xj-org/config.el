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
(defvar xj-org_tool_plantuml 
  (expand-file-name "plantuml/plantuml.jar" (getenv "_emacs_tools"))
  "The default plantuml.jar file")

(defvar xj-org_tool_ditaa 
  (expand-file-name "ditaa/ditaa.jar" (getenv "_emacs_tools"))
  "The default ditaa.jar file")

