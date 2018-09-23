(use-package ivy
  :ensure t
  :diminish ivy-mode
  :config (progn (ivy-mode t)
		 (setq ivy-initial-inputs-alist nil)
		 (setq ivy-use-virtual-buffers t)
		 (setq ivy-virtual-abbreviate 'abbreviate)	 
		 (setq enable-recursive-minibuffers nil)
		 (setq ivy-count-format "(%d/%d)")))

(use-package ivy-rich
  :after ivy
  :ensure t
  :config
  (progn
    (ivy-rich-mode)))

;; Use smex to provide ido-like interface for M-x
(use-package smex
  :ensure t
  :init (progn
          (smex-initialize)))

(use-package counsel
  :ensure t)

(use-package swiper
  :ensure t)

(use-package hydra
  :config)

(use-package ivy-hydra
  :ensure t)

(use-package avy
  :ensure t)

(provide 'etude-ivy)