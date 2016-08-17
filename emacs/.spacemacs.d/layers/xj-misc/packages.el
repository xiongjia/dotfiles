;;; packages.el - My misc config

(message "xj-misc packages")

(defun chinese/post-init-chinese-pyim ()
  (message "Updating Chinese pyim dictionary")
  (setq default-input-method "chinese-pyim")
  (let ((_default_pyim_dict 
         (expand-file-name "tools/emacs-tools/pyim/pyim-bigdict.pyim" 
           (getenv "_dropbox_root"))))
    (message "Default pyim dict: %s" _default_pyim_dict)
    (setq pyim-dicts 
      `(
        (:name "default"
          :file ,_default_pyim_dict
          :coding utf-8-unix
          :dict-type pinyin-dict))))
)

