;; -*- mode: emacs-lisp -*-
;; packages.el - My private Org config

(message "xj-org packages")
(defconst xj-org-packages
  '(
    (org :location built-in)
  ))


(defun xj-org/post-init-org ()
  ;; org settings
  (add-hook 'org-mode-hook 
    (lambda () (spacemacs/toggle-line-numbers-off)) 'append)
  (setq org-src-fontify-natively t)
  (setq org-ditaa-jar-path xj-org_tool_ditaa)
  (setq org-plantuml-jar-path xj-org_tool_plantuml)
  (setq gnuplot-program xj-org_tool_gnuplot)
  (setq gnuplot-program-version 4.2)
  (setq gnuplot-echo-command-line-flag nil)

  ;; org babel
  (add-hook 'org-babel-after-execute-hook 'org-display-inline-images 'append)
  (setq org-confirm-babel-evaluate nil)
  (org-babel-do-load-languages
    'org-babel-load-languages
    '((emacs-lisp . t)
      (dot . t)
      (ditaa . t)
      (gnuplot . t)
      (plantuml . t)
      (js . t)
      (python . t)
      (ruby . t)
      (shell . t)
      (org . t)
      (latex . t)))

  ;; project - default
  (message "updating org project (default): %s" xj-org_root)
  (setq xj-org_notes (expand-file-name "notes.org.gpg" xj-org_root))
  (setq xj-org_tasks (expand-file-name "tasks.org" xj-org_root))

  (setq org-directory xj-org_root)
  (setq org-default-notes-file xj-org_notes)
  (setq org-agenda-files (list xj-org_tasks))
  (setq org-tag-alist 
    '(
      ("@dev" . ?d) ("@misc" . ?m) ("@work" . ?w) ("@enu" . ?e) 
      ("@game" . ?g) ("@home" . ?h) ("@office" . ?o)))
  (setq org-capture-templates
    '(
      ("t" "TODO" entry (file+headline xj-org_tasks "Tasks")
       "* TODO %?\n %i\n %a")
      ("a" "Archive" entry (file+headline xj-org_notes "Archive")
       "* Entered on %U\n %?\n %i\n %a")
      ("n" "Notes" entry (file+headline xj-org_notes "Index")
       "* Entered on %U\n %?\n %i\n %a")))

  ;; project - abathur
  (message "updating org project abathur: root=%s" xj-org_abathur-root)
  (setq abathur-content (concat xj-org_abathur-root "/content"))
  (setq abathur-output  (concat xj-org_abathur-root "/output")) 
  (setq abathur-postamble 
    (concat 
      "<script type=\"text/javascript\" "
      "   src=\"/assets/js/main_v0.1.js\"> "
      "</script>"))
  (setq org-publish-project-alist 
    `(
      ("abathur-content"
       :base-directory ,abathur-content
       :publishing-directory ,abathur-output
       :base-extension "org"
       :recursive t
       :publishing-function org-html-publish-to-html
       :headline-levels 4
       :auto-preamble t
       :auto-sitemap nil
       :export-creator-info nil 
       :export-author-info nil
       :auto-postamble nil
       :table-of-contents nil
       :section-numbers nil
       :html-head-include-default-style  nil
       :html-head-include-scripts nil
       :html-postamble ,abathur-postamble
       :html-preamble "")
      ("abathur" :components ("abathur-content"))))
)

