;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.

;; updating proxy server
(when (not (string= (getenv "EMACS_HTTPS_PROXY") nil)) 
  (message "Emacs https_proxy=%s;http_proxy=%s"
    (getenv "EMACS_HTTPS_PROXY")
    (getenv "EMACS_HTTP_PROXY"))
  (setq url-proxy-services
    '(
      (append ("https") (getenv "EMACS_HTTPS_PROXY"))
      (append ("http")  (getenv "EMACS_HTTP_PROXY"))
    ))
)

(defun dotspacemacs/layers ()
  (setq-default
    dotspacemacs-distribution 'spacemacs
    dotspacemacs-enable-lazy-installation nil
    dotspacemacs-configuration-layer-path '()
    dotspacemacs-configuration-layers
    '(
      spacemacs-helm
      auto-completion
      better-defaults
      emacs-lisp
      (auto-completion :variables auto-completion-enable-sort-by-usage t
                       :disabled-for org markdown)
      (spell-checking :variables spell-checking-enable-by-default nil)
      syntax-checking
      git
      version-control
      gtags
      markdown
      yaml
      org
      c-c++
      javascript
      java
      scala
      python
      (go :variables go-tab-width 2)
      common-lisp
      (chinese :variables chinese-default-input-method 'pinyin)
      (shell :variables shell-default-height 30 shell-default-position 'bottom)
      (colors :variables colors-enable-nyan-cat-progress-bar t)
      speed-reading
      xj-org
      xj-dev
    )
    dotspacemacs-additional-packages '()
    dotspacemacs-excluded-packages '()
    dotspacemacs-delete-orphan-packages t))

(defun dotspacemacs/init ()
  (setq-default
    dotspacemacs-elpa-https nil
    dotspacemacs-elpa-timeout 5
    dotspacemacs-check-for-update t
    dotspacemacs-editing-style 'vim
    dotspacemacs-verbose-loading nil
    dotspacemacs-startup-banner 'official
    dotspacemacs-startup-lists '(recents projects)
    dotspacemacs-startup-recent-list-size 5
    dotspacemacs-scratch-mode 'text-mode
    dotspacemacs-themes '(base16-google-dark)
    dotspacemacs-colorize-cursor-according-to-state t
    dotspacemacs-default-font '("Source Code Pro"
                                :size 13
                                :weight normal
                                :width normal
                                :powerline-scale 1.1)
    dotspacemacs-leader-key "SPC"
    dotspacemacs-emacs-leader-key "M-m"
    dotspacemacs-major-mode-leader-key ","
    dotspacemacs-major-mode-emacs-leader-key "C-M-m"
    dotspacemacs-emacs-command-key "SPC"
    dotspacemacs-distinguish-gui-tab nil
    dotspacemacs-remap-Y-to-y$ nil
    dotspacemacs-ex-substitute-global nil
    dotspacemacs-default-layout-name "Default"
    dotspacemacs-display-default-layout nil
    dotspacemacs-auto-resume-layouts nil
    dotspacemacs-large-file-size 1
    dotspacemacs-auto-save-file-location 'cache
    dotspacemacs-max-rollback-slots 5
    dotspacemacs-helm-resize nil
    dotspacemacs-helm-no-header nil
    dotspacemacs-helm-position 'bottom
    dotspacemacs-enable-paste-transient-state nil
    dotspacemacs-which-key-delay 0.4
    dotspacemacs-which-key-position 'bottom
    dotspacemacs-loading-progress-bar t
    dotspacemacs-fullscreen-at-startup nil
    dotspacemacs-fullscreen-use-non-native nil
    dotspacemacs-maximized-at-startup t
    dotspacemacs-active-transparency 90
    dotspacemacs-inactive-transparency 90
    dotspacemacs-show-transient-state-title t
    dotspacemacs-show-transient-state-color-guide t
    dotspacemacs-mode-line-unicode-symbols t
    dotspacemacs-smooth-scrolling t
    dotspacemacs-line-numbers nil
    dotspacemacs-smartparens-strict-mode nil
    dotspacemacs-smart-closing-parenthesis nil
    dotspacemacs-highlight-delimiters 'all
    dotspacemacs-persistent-server nil
    dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
    dotspacemacs-default-package-repository nil
    dotspacemacs-whitespace-cleanup nil
  ))

(defun dotspacemacs/user-init ())

(defun dotspacemacs/user-config ()
  (global-company-mode t)
  (setq create-lockfiles nil)
  (add-hook 'prog-mode-hook 'linum-mode)
  (with-eval-after-load 'linum (linum-relative-toggle))
)

(setq custom-file (expand-file-name "custom.el" dotspacemacs-directory))
(load custom-file 'no-error 'no-message)

