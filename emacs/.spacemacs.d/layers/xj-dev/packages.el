;; -*- mode: emacs-lisp -*-
;; packages.el - My dev config

(message "xj-dev packages")
(defconst xj-dev-packages
  '(
    js2-mode
    typescript-mode
    avy))

(defun xj-dev/post-init-js2-mode ()
  ;; updating tern command to 
  ;; `node ${npm_prefix}/node_modules/tern/bin/tern`
  ;; The ${npm_prefix}/bin/tern cannot be launched on Windows
  (when (not (string= (getenv "_node_tern_cli") nil))
    (let ((_node_tern (getenv "_node_tern_cli")))
      (message "updating js tern cmd: %s" _node_tern)
      (setq javascript-disable-tern-port-files nil)
      (setq tern-command (list "node" _node_tern))))

  (message "updating JS2 mode")
  (with-eval-after-load 'js2-mode
    (progn
      (setq-default js-indent-level 2)
      (setq-default js2-basic-offset 2)
      (setq-default css-indent-offset 2)
      (setq-default web-mode-markup-indent-offset 2)
      (setq-default eb-mode-css-indent-offset 2)
      (setq-default eb-mode-code-indent-offset 2)
      (setq-default eb-mode-attr-indent-offset 2)
    ))
)

(defun xj-dev/post-init-avy ()
  (progn
    (global-set-key (kbd "C-s-]") 'avy-goto-char-2)
    (global-set-key (kbd "M-]") 'avy-goto-char-2)))

(defun xj-dev/post-init-typescript-mode ()
  (progn
    (setq-default typescript-indent-level 2)
    (setq-default typescript-basic-offset 2)))

