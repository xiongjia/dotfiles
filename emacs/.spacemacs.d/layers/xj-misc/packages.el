;; -*- mode: emacs-lisp -*-
;; packages.el - My misc config

(message "xj-misc packages")
(defconst xj-misc-packages
  '(
    chinese-pyim
    deft))


(defun xj-misc/post-init-deft ()
  (message "Updating deft")
  (let ((_default_deft_root
         (expand-file-name "deft"
          (getenv "_dropbox_root"))))
    (message "Default deft root: %s" _default_deft_root)
    (setq deft-directory _default_deft_root
          deft-current-sort-method 'mtime
          deft-use-filename-as-title nil
          deft-use-filter-string-for-filename t
          deft-org-mode-title-prefix t
          deft-new-file-format "%Y-%m-%d_%H.%M"
          deft-extensions '("org" "org.gpg" "md" "md.gpg" "txt" "txt.gpg")
          deft-file-naming-rules '((noslash . "-")
                                   (nospace . "-")
                                   (case-fn . downcase)))))

(defun xj-misc/post-init-chinese-pyim ()
  (message "Updating Chinese pyim dictionary")
  (setq default-input-method "chinese-pyim")
  (setq pyim-use-tooltip nil)
  (setq pyim-page-length 9)
  (let ((_default_pyim_dict 
         (expand-file-name "pyim/pyim-bigdict.pyim" 
           (getenv "_emacs_tools"))))
    (message "Default pyim dict: %s" _default_pyim_dict)
    (setq pyim-dicts 
      `(
        (:name "default"
          :file ,_default_pyim_dict
          :coding utf-8-unix
          :dict-type pinyin-dict)))))

