(setq inhibit-startup-message t)
(setq geeknote-command "python ~/code/personal/geeknote/geeknote/geeknote.py")

;; Always load newest byte code
(setq load-prefer-newer t)

(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/") t)
    (package-initialize))


(setq x86-lookup-pdf "~/Software/64-ia-32-architectures-software-developer-manual-325462.pdf")

;; (setq package-enable-at-startup nil)
;; (package-initialize)

  (defun save-all ()
    (interactive)
    (save-some-buffers t))
  (add-hook 'focus-out-hook 'save-all)

(setq-default fill-column 80)
(require 'ibuffer)
(scroll-bar-mode 0)
(menu-bar-mode 1)

;;; Smooth Scroll Stuff
(setq scroll-step 1)
(setq scroll-conservatively 10000)
(setq auto-window-vscroll nil)

; use emacs 24's package system and add extra repos
(require 'package)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("org" . "http://orgmode.org/elpa/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))

(package-initialize)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#3F3F3F" "#CC9393" "#7F9F7F" "#F0DFAF" "#8CD0D3" "#DC8CC3" "#93E0E3" "#DCDCCC"])
 '(bmkp-last-as-first-bookmark-file "~/.emacs.d/bookmarks")
 '(c-default-style
   (quote
    ((c-mode . "k&r")
     (c++-mode . "k&r")
     (java-mode . "java")
     (awk-mode . "awk")
     (other . "gnu"))))
 '(column-number-mode t)
 '(custom-enabled-themes (quote (leuven)))
 '(custom-safe-themes
   (quote
    ("196cc00960232cfc7e74f4e95a94a5977cb16fd28ba7282195338f68c84058ec" "3f78849e36a0a457ad71c1bda01001e3e197fe1837cb6eaa829eb37f0a4bdad5" "3d5307e5d6eb221ce17b0c952aa4cf65dbb3fa4a360e12a71e03aab78e0176c5" "26614652a4b3515b4bbbb9828d71e206cc249b67c9142c06239ed3418eff95e2" "c86f868347919095aa44d2a6129dd714cbcf8feaa88ba954f636295b14ceff8f" "4904daa168519536b08ca4655d798ca0fb50d3545e6244cefcf7d0c7b338af7e" "a1289424bbc0e9f9877aa2c9a03c7dfd2835ea51d8781a0bf9e2415101f70a7e" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "f5eb916f6bd4e743206913e6f28051249de8ccfd070eae47b5bde31ee813d55f" default)))
 '(display-battery-mode t)
 '(display-time-mode t)
 '(ede-project-directories (quote ("/home/think/code/work/prime")))
 '(elfeed-feeds
   (quote
    ("https://medium.com/feed/tech-talk" "http://nullprogram.com/feed/" "http://radek.io/rss" "https://www.reddit.com/.rss" "http://news.ycombinator.com/rss" "http://nvd.nist.gov/download/nvd-rss.xml")))
 '(fci-rule-color "#383838")
 '(font-use-system-font t)
 '(fringe-mode 0 nil (fringe))
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(package-selected-packages
   (quote
    (tc emacs-setup bbdb color-theme oddmuse ibuffer-projectile php-mode ibuffer-git project-explorer monokai-theme go-autocomplete go-mode fcitx magit-filenotify magit-gitflow handoff google google-c-style google-translate git-lens git-messenger github-browse-file github-clone github-notifier gitlab ac-etags dash-functional magit x86-lookup nasm-mode elfeed ttrss ujelly-theme zenburn ubuntu-theme github-theme 2048-game stock-ticker smart-mode-line-powerline-theme w3m fish-mode powerline geeknote google-this erlang eww-lnum emacs-eclim wc-mode w3 hackernews screenshot speed-type timesheet which-key wiki-summary workgroups2 auto-complete-c-headers bts cmm-mode col-highlight company-irony-c-headers connection cyberpunk-theme date-field emms-soundcloud restart-emacs sos soundcloud ssh sx worf writeroom-mode xcscope yaoddmuse ztree irony know-your-http-well leuven-theme light-soap-theme live-py-mode monochrome-theme msvc ascii atom-dark-theme atom-one-dark-theme auto-complete badger-theme bongo browse-at-remote company-c-headers dirtree edts eide emms es-lib function-args ac-capf ac-clang achievements ack aes airline-themes alert afternoon-theme ac-c-headers zop-to-char zenburn-theme volatile-highlights undo-tree smex smartrep smartparens smart-mode-line rainbow-mode rainbow-delimiters ov operate-on-number move-text json-mode js2-mode ido-ubiquitous helm-projectile guru-mode grizzl god-mode gitignore-mode gitconfig-mode git-timemachine gist geiser flycheck flx-ido expand-region elisp-slime-nav easy-kill discover-my-major diminish diff-hl company browse-kill-ring beacon anzu ace-window)))
 '(scroll-bar-mode nil)
 '(send-mail-function (quote smtpmail-send-it))
 '(size-indication-mode t)
 '(smtpmail-smtp-server "smtp.gmail.com")
 '(smtpmail-smtp-service 25)
 '(tool-bar-mode nil)
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map
   (quote
    ((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3"))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#FFFFFF" :foreground "#333333" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "unknown" :family "PragmataPro"))))
 '(erc-action-face ((t (:foreground "PaleGreen2" :weight bold))))
 '(erc-current-nick-face ((t (:foreground "Yellow" :weight bold))))
 '(erc-direct-msg-face ((t (:foreground "LemonChiffon"))))
 '(erc-input-face ((t (:foreground "snow2"))))
 '(erc-inverse-face ((t (:background "White" :foreground "Black"))))
 '(erc-nick-default-face ((t (:foreground "SteelBlue2" :weight bold))))
 '(erc-nick-msg-face ((t (:foreground "PaleTurquoise2" :weight bold))))
 '(erc-notice-face ((t (:foreground "SteelBlue1" :weight bold))))
 '(erc-timestamp-face ((t (:foreground "Green"))))
 '(fringe ((((class color) (background dark)) (:background "DarkSlateGray"))))
 '(gnus-group-mail-low-empty ((((class color) (background dark)) (:foreground "aquamarine4"))))
 '(gnus-header-content ((((class color) (background dark)) (:foreground "LightGoldenrod"))))
 '(gnus-header-newsgroups ((((class color) (background dark)) (:foreground "yellow"))))
 '(gnus-header-subject ((((class color) (background dark)) (:foreground "gold"))))
 '(gnus-signature ((t (:foreground "khaki" :slant normal))))
 '(ibuffer-deletion-face ((t (:foreground "Orange"))))
 '(info-menu-star ((((class color)) (:foreground "Orange"))))
 '(info-xref ((((class color) (background dark)) (:foreground "cyan"))))
 '(isearch ((((class color) (background dark)) (:background "PeachPuff" :foreground "DarkGreen"))))
 '(message-cited-text ((((class color) (background dark)) (:foreground "orange"))))
 '(message-header-cc ((t (:foreground "turquoise3" :weight bold))))
 '(message-header-name ((((class color) (background dark)) (:foreground "turquoise"))))
 '(message-header-other ((((class color) (background dark)) (:foreground "#ff8040"))))
 '(message-header-subject ((((class color) (background dark)) (:foreground "orange"))))
 '(message-header-to ((t (:foreground "turquoise1" :weight bold))))
 '(message-header-xheader ((((class color) (background dark)) (:foreground "skyblue1"))))
 '(message-mml ((((class color) (background dark)) (:foreground "khaki"))))
 '(message-separator ((((class color) (background dark)) (:foreground "skyblue3"))))
 '(planner-high-priority-task-face ((t (:foreground "tomato"))))
 '(planner-low-priority-task-face ((t (:foreground "Skyblue"))))
 '(region ((((class color) (background dark)) (:background "DarkGreen")))))
(put 'line-number-mode 'disabled nil)

;; reduce the frequency of garbage collection by making it happen on                                   
;; each 50MB of allocated data (the default is on every 0.76MB)                                        
(setq gc-cons-threshold 5000000)

;; warn when opening files bigger than 100MB                                                           
(setq large-file-warning-threshold 100000000)

(global-hl-line-mode 1)

(load-library "url-handlers")
(require 'semantic/sb)
(require 'cedet)
(require 'git)
(require 'git-blame)
(require 'eieio)
(require 'eieio-speedbar)
(require 'eieio-opt)
(require 'eieio-base)
(require 'ede/source)
(require 'ede/base)
(require 'ede/auto)
(require 'ede/proj)
(require 'ede/proj-archive)
(require 'ede/proj-aux)
(require 'ede/proj-comp)
(require 'ede/proj-elisp)
(require 'ede/proj-info)
(require 'ede/proj-misc)
(require 'ede/proj-obj)
(require 'ede/proj-prog)
(require 'ede/proj-scheme)
(require 'ede/proj-shared)
(require 'hackernews)
(require 'powerline)
(powerline-default-theme)
(powerline-raw mode-line-mule-info nil 'l)

(require 'emms-setup)
(emms-standard)
(emms-default-players)

(add-to-list 'load-path "~/.emacs.d/lisp/")
(require 'auto-complete-config)

(add-to-list 'ac-dictionary-directories "~/.emacs.d/lisp//ac-dict")
(ac-config-default)

(global-set-key (kbd "C-x M-m") 'shell)
(global-set-key (kbd "<f12>") 'menu-bar-mode)

;; (global-auto-complete-mode t)
;; your cedet.el load path
;; (load-file "/home/think/Softwares/cedet-1.1/common/cedet.el") 

;; Enable EDE (Project Management) features
(global-ede-mode 1)
(ac-config-default)

 (defface egoge-display-time
   '((((type x w32 mac))
      ;; #060525 is the background colour of my default face.
      (:foreground "#060525" :inherit bold))
     (((type tty))
      (:foreground "blue")))
   "Face used to display the time in the mode line.")

 ;; This causes the current time in the mode line to be displayed in
 ;; `egoge-display-time-face' to make it stand out visually.
 (setq display-time-string-forms
       '((propertize (concat " " 24-hours ":" minutes " ")
 		    'face 'egoge-display-time)))

 ;; display-time-mode mail notification
 (defface display-time-mail-face '((t (:background "red")))
     "If display-time-use-mail-icon is non-nil, its background colour is that
      of this face. Should be distinct from mode-line. Note that this does not seem
      to affect display-time-mail-string as claimed.")
 (setq
  display-time-mail-file "/var/mail/info.manikant"
  display-time-use-mail-icon t
  display-time-mail-face 'display-time-mail-face)
 (display-time-mode t)

 (global-set-key (kbd "<f5>") (lambda ()
                               (interactive)
                               (delete-other-windows)
                               (rmail)
                               (display-time-update)))

;; Geeknote
(global-set-key (kbd "C-c g c") 'geeknote-create)
(global-set-key (kbd "C-c g e") 'geeknote-edit)
(global-set-key (kbd "C-c g f") 'geeknote-find)
(global-set-key (kbd "C-c g s") 'geeknote-show)
(global-set-key (kbd "C-c g r") 'geeknote-remove)
(global-set-key (kbd "C-c g m") 'geeknote-move)

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)

(global-set-key (kbd "C-h x") #'x86-lookup)
(global-set-key (kbd "C-x w") 'elfeed)
;; (global-set-key (kbd "C-x g") ’magit-status)
;; (global-set-key (kbd "C-x M-g") ’magit-dispatch-popup)

;; Semantic
(global-semantic-idle-completions-mode t)
(global-semantic-decoration-mode t)
(global-semantic-highlight-func-mode t)
(global-semantic-show-unmatched-syntax-mode t)
(add-to-list 'semantic-default-submodes 'global-semanticdb-minor-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-mru-bookmark-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-idle-scheduler-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-idle-summary-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-stickyfunc-mode)
(semantic-mode 1)

;;quick access hacker news
(defun gweb ()
  (interactive)
  (browse-url "http://127.0.0.1:1234"))

;;change default browser for 'browse-url'  to w3m
(setq browse-url-browser-function 'w3m-goto-url-new-session)

;;change w3m user-agent to android
(setq w3m-user-agent "Mozilla/5.0 (Linux; U; Android 2.3.3; zh-tw; HTC_Pyramid Build/GRI40) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.")

;;quick access hacker news
(defun hn ()
  (interactive)
  (browse-url "http://news.ycombinator.com"))

;;quick access reddit
(defun rd (rd)
  "Opens the REDDIT in w3m-new-session"
  (interactive (list
                (read-string "Enter the reddit (default: hacking): " nil nil "hacking" nil)))
  (browse-url (format "http://m.reddit.com/r/%s" rd))
  )

;;quick access wikipedia
(defun wp (wp)
  "Opens the wikipedia in w3m-new-session"
  (interactive (list
                (read-string "Enter the wikipedia (default: hacking): " nil nil "hacking" nil)))
  (browse-url (format "http://en.wikipedia.org/wiki/%s" wp))
  )

;;when I want to enter the web address all by hand
(defun w3m-open-site (site)
  "Opens site in new w3m session with 'http://' appended"
  (interactive
   (list (read-string "Enter website address(default: w3m-home):" nil nil w3m-home-page nil )))
  (w3m-goto-url-new-session
   (concat "http://" site)))
(defun read-epub (epub-file)
  "Read epub files in emacs"
  (interactive "fname of epub: ")

;; I prefer the following to using 'let' because it makes debugging
;; easier.

      (defvar epub-version "0.10")
      (defvar epub-filebase)
      (defvar epub-extension)
      (defvar epub-oldname)
      (defvar epub-newname)

      (setq epub-filebase (file-name-sans-extension epub-file))
      (setq epub-extension (file-name-extension epub-file))
      (setq epub-oldname epub-file)
      (setq epub-newname (concat epub-filebase ".txt"))

      (if (not (file-exists-p epub-oldname))
          (error (concat epub-file " not found")))
      (if (not (string= "epub" epub-extension))
          (error (concat epub-file " does not have an epub extension")))
      (if (= 1 (shell-command "which ebook-convert"))
          (error "Can't find the ebook-convert utility"))

;; If there is no existing text file with the 'conversion' name, or if
;; there is one and we don't want to reuse it, we do the
;; conversion. Otherwise we reuse the existing text file with no
;; further checking.

      (if (or (not (file-exists-p epub-newname))
              (not (yes-or-no-p (concat "Reuse existing " epub-newname "?"))))
          (progn
            (message "Converting %s, this can take a while" epub-file)

;; shell-quote-argument deals with embedded blanks in the filenames.
;; expand-file-name is needed because ebook-convert expands the tilde
;; incorrectly.

            (shell-command 
                (concat "ebook-convert " 
                        (shell-quote-argument (expand-file-name epub-oldname)) 
" "
                        (shell-quote-argument (expand-file-name epub-newname))))
            (find-file epub-newname)

;; Comment out the next three lines if you don't want to fill
;; paragraphs. This might be the case if things like embedded tables
;; get rendered in a way that paragraph fill will mangle them. This
;; shouldn't be an issue for novels and most texts that are reasonable
;; to read in an emacs buffer.

            (message "Realigning text, this may take some time")
            (mark-whole-buffer)
            (fill-paragraph nil 1)
            (save-buffer)
          )
      )

;; Now open the output file (even though it may already be open), make
;; a single window, and go to the top of the file.

      (find-file epub-newname)
      (delete-other-windows)
      (goto-char (point-min))

;; Put in view mode for easier reading.

      (view-mode)
)
;; Set cursor and mouse-pointer colours
(set-cursor-color "red")
(set-mouse-color "goldenrod")

;; Set emacs background colour
(set-background-color "honeydew")

(when window-system (set-frame-size (selected-frame) 220 60))
;;(setq standard-indent 4)
