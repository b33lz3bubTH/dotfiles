
(setq user-full-name "Sourav"
      user-mail-address "souravsunju@gmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-palenight)

(setq doom-font (font-spec :family "Cascadia Code" :size 15)
	projectile-project-search-path '("~/Documents")
	doom-variable-pitch-font (font-spec :family "Cascadia Code" :size 15)
	doom-big-font (font-spec :family "Cascadia Code" :size 24))

(setq org-directory "~/org/")
(setq display-line-numbers-type t)

