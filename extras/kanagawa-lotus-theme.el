;;; package: --- A theme inspired by the colors of the famous painting by Katsushika Hokusa

;;; Commentary: Original theme created by rebelot see: https://github.com/rebelot/kanagawa-lotus.nvim
;;; Code:

(eval-when-compile
  (require 'cl-lib))

(require 'autothemer)

(unless (>= emacs-major-version 24)
  (error "Requires Emacs 24 or later"))


(autothemer-deftheme
        kanagawa-lotus "A theme inspired by the colors of the famous painting by Katsushika Hokusa"

 ((((class color) (min-colors #xFFFFFF))        ; col 1 GUI/24bit
   ((class color) (min-colors #xFF)))           ; col 2 Xterm/256

  ;; Define our color palette

  (lotusInk1            "#545464" "#ffffff")
  (lotusInk2            "#43436c" "#ffffff")
  (oldwhite             "#43436c" "#ffffff")

  (lotusWhite0          "#d5cea3" "#000000")
  (lotusWhite1          "#dcd5ac" "#000000")
  (lotusWhite3          "#f2ecbc" "#080808")
  (lotusWhite4          "#e7dba0" "#121212")
  (lotusWhite5          "#e4d794" "#303030")
  (lotusGray2           "#716e61" "#303030")

  (lotusBlue1           "#c7d7e0" "#4e4e4e")
  (lotusBlue2           "#b5cbd2" "#585858")
  (lotusAqua2           "#5e857a" "#6a9589")
  (lotusAqua            "#597b75" "#8a8980")

  (lotusGreen3          "#b7d0ae" "#585858")
  (lotusYellow4         "#f9d791" "#585858")
  (lotusRed4            "#d9a594" "#585858")
  (lotusCyan            "#d7e3d8" "#585858")

  (lotusGreen2          "#6e915f" "#585858")
  (lotusRed2            "#d7474b" "#585858")
  (lotusYellow3         "#de9800" "#585858")

  (lotusRed3            "#e82424" "#585858")
  (lotusOrange2         "#e98a00" "#585858")

  (lotusTeal3           "#5a7785" "#5a7785")
  (lotusGray3           "#8a8980" "#8a8980")

  (lotusViolet1         "#a09cac" "#8a8980")
  (lotusViolet2         "#766b90" "#8a8980")
  (lotusViolet3         "#c9cbd1" "#8a8980")
  (lotusViolet4         "#624c83" "#8a8980")
  (lotusBlue4           "#4d699b" "#8a8980")
  (lotusTeal1           "#4e8ca2" "#8a8980")
  (lotusTeal2           "#6693bf" "#8a8980")
  (lightBlue            "#A3D4D5" "#8a8980")
  (lotusGreen           "#6f894e" "#8a8980")
  (boatYellow1          "#938056" "#8a8980")
  (lotusYellow2         "#836f4a" "#8a8980")
  (lotusYellow          "#77713f" "#8a8980")
  (lotusPink            "#b35b79" "#8a8980")
  (lotusRed             "#c84053" "#8a8980")
  (lotusRed             "#c84053" "#8a8980")
  (lotusOrange          "#cc6d00" "#8a8980")
  (lotusGray3           "#8a8980" "#8a8980")
  (comet                "#b5cbd2" "#4e4e4e"))

  ;; Customize faces
  (
  (default                                       (:background lotusWhite1 :foreground lotusInk2))
  (border                                        (:background lotusWhite1 :foreground lotusWhite0))
  (button                                        (:foreground lotusAqua))
  (child-frame                                   (:background lotusWhite0 :foreground lotusWhite0))
  (child-frame-border                            (:background lotusWhite0 :foreground lotusWhite0))
  (cursor                                        (:background lightBlue :foreground lotusWhite0 :bold t))
  (error                                         (:foreground lotusRed3))
  (fringe                                        (:foreground lotusWhite5))
  (glyph-face                                    (:background lotusGray2))
  (glyphless-char                                (:foreground lotusGray2))
  (header-line                                   (:background lotusWhite0))
  (highlight                                     (:background comet :foreground lotusViolet2))
  (hl-line                                       (:background lotusWhite4))
  (homoglyph                                     (:foreground lightBlue))
  (internal-border                               (:background lotusWhite1))
  (line-number                                   (:foreground lotusGray2))
  (line-number-current-line                      (:foreground lotusTeal1 :background lotusWhite4 :bold t))
  (lv-separator                                  (:foreground lotusBlue2 :background lotusWhite4))
  (match                                         (:background lotusYellow :foreground lotusWhite0))
  (menu                                          (:background lotusWhite0 :foreground lotusInk2))
  (mode-line                                     (:background lotusWhite0))
  (mode-line-inactive                            (:background nil :foreground lotusGray2 :bold nil))
  (mode-line-active                              (:background lotusWhite0 :foreground oldwhite :bold nil))
  (mode-line-highlight                           (:foreground lotusYellow2))
  (mode-line-buffer-id                           (:foreground lotusAqua :bold t))
  (numbers                                       (:background lotusPink))
  (region                                        (:background lotusBlue2))
  (separator-line                                (:background lotusWhite0))
  (shadow                                        (:background lotusWhite0))
  (success                                       (:foreground lotusAqua))
  (vertical-border                               (:foreground lotusGray2))
  (warning                                       (:foreground lotusOrange2))
  (window-border                                 (:background lotusWhite1))
  (window-divider                                (:foreground lotusWhite4))
  (hi-yellow                                     (:background lotusYellow :foreground lotusWhite1))

  ;; Font lock
  (font-lock-type-face                           (:foreground lotusAqua))
  (font-lock-regexp-grouping-backslash           (:foreground lotusYellow2))
  (font-lock-keyword-face                        (:foreground lotusViolet4 :weight 'semi-bold))
  (font-lock-warning-face                        (:foreground lotusOrange2))
  (font-lock-string-face                         (:foreground lotusGreen :italic t))
  (font-lock-builtin-face                        (:foreground lotusTeal2))
  (font-lock-reference-face                      (:foreground lotusRed))
  (font-lock-constant-face                       (:foreground lotusYellow))
  (font-lock-function-name-face                  (:foreground lotusBlue4))
  (font-lock-variable-name-face                  (:foreground lotusRed))
  (font-lock-negation-char-face                  (:foreground lotusRed))
  (font-lock-comment-face                        (:foreground lotusGray3 :italic t))
  (font-lock-comment-delimiter-face              (:foreground lotusGray3 :italic t))
  (font-lock-doc-face                            (:foreground lotusGreen))
  (font-lock-doc-markup-face                     (:foreground lotusGreen))
  (font-lock-preprocessor-face                   (:foreground lotusYellow2))
  (elisp-shorthand-font-lock-face                (:foreground lotusInk2))

  (info-xref                                     (:foreground lotusYellow))
  (minibuffer-prompt-end                         (:foreground lotusRed2 :background lotusRed4))
  (minibuffer-prompt                             (:foreground lotusYellow :background lotusYellow4))
  (epa-mark                                      (:foreground lotusRed))
  (dired-mark                                    (:foreground lotusRed))
  (diredfl-file-name                             (:foreground lotusInk2))
  (trailing-whitespace                           (:background comet))
  (mode-line                                     (:background lotusWhite0 :foreground lotusInk2 :bold t))

  ;; Battery colors
  (doom-modeline-battery-critical                (:foreground lotusRed))
  (doom-modeline-battery-warning                 (:foreground lotusGreen))
  (doom-modeline-battery-charging                (:foreground lotusGray3))
  (doom-modeline-battery-error                   (:foreground lotusRed))
  (doom-modeline-battery-normal                  (:foreground lotusViolet2))
  (doom-modeline-battery-full                    (:foreground lotusAqua))
  
  ;; Doom visual state
  (doom-modeline-evil-motion-state               (:foreground lightBlue))
  (doom-modeline-evil-emacs-state                (:foreground lotusBlue4))
  (doom-modeline-evil-insert-state               (:foreground lotusRed))
  (doom-modeline-evil-normal-state               (:foreground lightBlue))
  (doom-modeline-evil-visual-state               (:foreground lotusGreen))
  (doom-modeline-evil-replace-state              (:foreground lotusOrange2))
  (doom-modeline-evil-operator-state             (:foreground lotusBlue4))

  (doom-modeline-project-dir                     (:bold t :foreground lotusAqua))
  (doom-modeline-buffer-path                     (:inherit 'bold :foreground lotusAqua))
  (doom-modeline-buffer-file                     (:inherit 'bold :foreground lotusViolet4))
  (doom-modeline-buffer-modified                 (:inherit 'bold :foreground lotusYellow))
  (doom-modeline-error                           (:background lotusRed))
  (doom-modeline-buffer-major-mode               (:foreground lotusAqua :bold t))
  (doom-modeline-info                            (:bold t :foreground lightBlue))
  (doom-modeline-project-dir                     (:bold t :foreground lotusOrange))
  (doom-modeline-bar                             (:bold t :background lotusViolet2))
  (doom-modeline-panel                           (:inherit 'bold :background lotusYellow2 :foreground lotusWhite4))
  (doom-themes-visual-bell                       (:background lotusRed2))

  ;; elfeed
  (elfeed-search-feed-face                       (:foreground lotusViolet2))
  (elfeed-search-tag-face                        (:foreground lotusAqua))

  ;; message colors
  (message-header-name                           (:foreground lotusGray2))
  (message-header-other                          (:foreground lotusOrange))
  (message-header-subject                        (:foreground lotusYellow))
  (message-header-to                             (:foreground oldwhite))
  (message-header-cc                             (:foreground lotusAqua))
  (message-header-xheader                        (:foreground oldwhite))
  (custom-link                                   (:foreground lotusBlue4))
  (link                                          (:foreground lotusBlue4))

  ;; org-mode
  (org-drawer                                    (:foreground lotusTeal1))
  (org-table                                     (:foreground lotusViolet2))
  (org-link                                      (:underline (:color lotusBlue4) :foreground lotusBlue4))
  (org-done                                      (:foreground lotusTeal3))
  (org-code                                      (:background lotusWhite0))
  (org-meta-line                                 (:background lotusGreen3 :foreground lotusGreen))
  (org-block                                     (:background lotusWhite0 :foreground lotusGray2))
  (org-block-begin-line                          (:background lotusCyan :foreground lotusTeal2))
  (org-block-end-line                            (:background lotusRed4 :foreground lotusRed))
  (org-headline-done                             (:foreground lotusTeal3 :strike-through t))
  (org-todo                                      (:foreground lotusOrange :bold t))
  (org-headline-todo                             (:foreground lotusWhite4))
  (org-upcoming-deadline                         (:foreground lotusRed))
  (org-footnote                                  (:foreground lotusAqua))
  (org-indent                                    (:background lotusWhite1 :foreground lotusWhite1))
  (org-hide                                      (:background lotusWhite1 :foreground lotusWhite1))
  (org-date                                      (:foreground lotusAqua2))
  (org-ellipsis                                  (:foreground lotusBlue2 :bold t))
  (org-level-1                                   (:foreground lotusRed :height 1.3 :bold t))
  (org-level-2                                   (:foreground lotusTeal1 :height 1.15 :bold t))
  (org-level-3                                   (:foreground lotusYellow2 :height 1.05))
  (org-level-4                                   (:foreground lotusInk2))
  (org-level-5                                   (:foreground lotusInk2))
  (org-level-6                                   (:foreground lotusYellow))
  (org-level-7                                   (:foreground lotusOrange))
  (org-level-8                                   (:foreground lotusGreen))
  (org-agenda-date-weekend                       (:foreground lotusViolet2))

  ;; which-key
  (which-key-key-face                            (:inherit 'font-lock-variable-name-face))
  (which-func                                    (:inherit 'font-lock-function-name-face :bold t))
  (which-key-group-description-face              (:foreground lotusRed))
  (which-key-command-description-face            (:foreground lotusBlue4))
  (which-key-local-map-description-face          (:foreground lotusYellow))
  (which-key-posframe                            (:background lotusBlue1))
  (which-key-posframe-border                     (:background lotusBlue1))

  ;; swiper
  (swiper-line-face                              (:foreground lotusYellow))
  (swiper-background-match-face-1                (:background lotusOrange :foreground lotusWhite0))
  (swiper-background-match-face-2                (:background lotusBlue4 :foreground lotusWhite0))
  (swiper-background-match-face-3                (:background lotusYellow2 :foreground lotusWhite0))
  (swiper-background-match-face-4                (:background lotusRed :foreground lotusWhite0))
  (swiper-match-face-1                           (:inherit 'swiper-background-match-face-1))
  (swiper-match-face-2                           (:inherit 'swiper-background-match-face-2))
  (swiper-match-face-3                           (:inherit 'swiper-background-match-face-3))
  (swiper-match-face-4                           (:inherit 'swiper-background-match-face-4))

  (counsel-outline-default                       (:foreground lotusYellow))
  (info-header-xref                              (:foreground lotusYellow))
  (xref-file-header                              (:foreground lotusYellow))
  (xref-match                                    (:foreground lotusYellow))

  ;; rainbow delimiters
  (rainbow-delimiters-mismatched-face            (:foreground lotusRed))
  (rainbow-delimiters-unmatched-face             (:foreground lotusAqua))
  (rainbow-delimiters-base-error-face            (:foreground lotusRed))
  (rainbow-delimiters-base-face                  (:foreground lotusGray2))

  (rainbow-delimiters-depth-1-face               (:foreground lotusTeal1))
  (rainbow-delimiters-depth-2-face               (:foreground lotusTeal3))
  (rainbow-delimiters-depth-3-face               (:foreground lotusViolet2))
  (rainbow-delimiters-depth-4-face               (:foreground lotusGreen))
  (rainbow-delimiters-depth-5-face               (:foreground lotusAqua))
  (rainbow-delimiters-depth-6-face               (:foreground lotusYellow))
  (rainbow-delimiters-depth-7-face               (:foreground lotusRed))
  (rainbow-delimiters-depth-8-face               (:foreground lightBlue))
  (rainbow-delimiters-depth-9-face               (:foreground lotusTeal1))

  ;; show-paren
  (show-paren-match                              (:background lotusAqua2 :foreground lotusWhite0 :bold t))
  (show-paren-match-expression                   (:background lotusAqua2 :foreground lotusWhite0 :bold t))
  (show-paren-mismatch                           (:background lotusRed :foreground oldwhite))
  (tooltip                                       (:foreground lotusWhite0 :background lotusYellow :bold t))
  
  ;; company-box
  (company-tooltip                               (:background lotusWhite4))
  (company-tooltip-common                        (:foreground lotusYellow3))
  (company-tooltip-quick-access                  (:foreground lotusTeal1))
  (company-tooltip-scrollbar-thumb               (:background lotusRed2))
  (company-tooltip-scrollbar-track               (:background lotusWhite4))
  (company-tooltip-search                        (:background lotusYellow :foreground lotusWhite0 :distant-foreground lotusInk2))
  (company-tooltip-selection                     (:background lotusRed :foreground lotusRed4 :bold t))
  (company-tooltip-mouse                         (:background lotusWhite4 :foreground lotusWhite0 :distant-foreground lotusInk2))
  (company-tooltip-annotation                    (:foreground lotusRed :distant-foreground lotusWhite3))
  (company-scrollbar-bg                          (:inherit 'tooltip))
  (company-scrollbar-fg                          (:background lotusRed))
  (company-preview                               (:foreground lotusYellow))
  (company-preview-common                        (:foreground lotusRed :bold t))
  (company-preview-search                        (:inherit 'company-tooltip-search))
  (company-template-field                        (:inherit 'match))

  ;; flycheck
  (flycheck-posframe-background-face             (:background lotusWhite0))
  (flycheck-posframe-face                        (:background lotusWhite0))
  (flycheck-posframe-info-face                   (:background lotusWhite0 :foreground lotusGreen2))
  (flycheck-posframe-warning-face                (:background lotusWhite0 :foreground lightBlue))
  (flycheck-posframe-error-face                  (:background lotusWhite0 :foreground lotusRed3))
  (flycheck-fringe-warning                       (:foreground lightBlue))
  (flycheck-fringe-error                         (:foreground lotusRed3))
  (flycheck-fringe-info                          (:foreground lotusGreen2))
  (flycheck-error-list-warning                   (:foreground lotusOrange2 :bold t))
  (flycheck-error-list-error                     (:foreground lotusRed3 :bold t))
  (flycheck-error-list-info                      (:foreground lotusAqua2 :bold t))
  (flycheck-inline-error                         (:foreground lotusRed3 :background lotusRed4 :italic t :bold t :height 138))
  (flycheck-inline-info                          (:foreground lightBlue :background lotusCyan :italic t  :bold t :height 138))
  (flycheck-inline-warning                       (:foreground lotusYellow4 :background lotusYellow :italic t :bold t :height 138))

  ;; indent dots
  (highlight-indent-guides-character-face        (:foreground lotusWhite5))
  (highlight-indent-guides-stack-character-face  (:foreground lotusWhite5))
  (highlight-indent-guides-stack-odd-face        (:foreground lotusWhite5))
  (highlight-indent-guides-stack-even-face       (:foreground comet))
  (highlight-indent-guides-stack-character-face  (:foreground lotusWhite5))
  (highlight-indent-guides-even-face             (:foreground lotusWhite4))
  (highlight-indent-guides-odd-face              (:foreground comet))

  (highlight-operators-face                      (:foreground lotusYellow2))
  (highlight-quoted-symbol                       (:foreground lotusGreen))
  (highlight-numbers-face                        (:foreground lotusPink))
  (highlight-symbol-face                         (:background lotusBlue1 :foreground lightBlue))
  
  ;; ivy
  (ivy-current-match                             (:background lotusBlue4 :foreground lotusWhite0 :bold t))
  (ivy-action                                    (:background nil :foreground lotusInk2))
  (ivy-grep-line-number                          (:background nil :foreground lotusGreen))
  (ivy-minibuffer-match-face-1                   (:background nil :foreground lotusRed))
  (ivy-minibuffer-match-face-2                   (:background nil :foreground lotusGreen))
  (ivy-minibuffer-match-highlight                (:foreground lightBlue))
  (ivy-grep-info                                 (:foreground lightBlue))
  (ivy-grep-line-number                          (:foreground lotusTeal1))
  (ivy-confirm-face                              (:foreground lotusAqua))

  ;; posframe's
  (ivy-posframe                                  (:background lotusWhite4))
  (ivy-posframe-border                           (:background lotusWhite5))
  
  ;;treemacs
  (treemacs-directory-collapsed-face             (:foreground lotusInk2))
  (treemacs-directory-face                       (:foreground lotusInk2))
  (treemacs-file-face                            (:foreground lotusInk2))

  (treemacs-git-added-face                       (:foreground lotusOrange))
  (treemacs-git-renamed-face                     (:foreground lotusInk2))
  (treemacs-git-ignored-face                     (:foreground lotusGray2))
  (treemacs-git-unmodified-face                  (:foreground lotusInk2))
  (treemacs-git-renamed-face                     (:foreground lotusInk2))
  (treemacs-git-modified-face                    (:foreground lotusGreen))
   
  ;; lsp and lsp-ui
  (lsp-headerline-breadcrumb-path-error-face     (:underline (:color lotusGreen :style 'wave) :foreground lotusGray2 :background lotusWhite0))
  (lsp-headerline-breadcrumb-path-face           (:background lotusWhite0))
  (lsp-headerline-breadcrumb-path-hint-face      (:background lotusWhite0))
  (lsp-headerline-breadcrumb-path-info-face      (:background lotusWhite0))
  (lsp-headerline-breadcrumb-separator-face      (:background lotusWhite0))
  (lsp-headerline-breadcrumb-symbols-face        (:background lotusWhite0))
  (lsp-headerline-breadcrumb-project-prefix-face (:background lotusWhite0))
  (lsp-headerline-breadcrumb-symbols-error-face  (:foreground lotusRed))

  (lsp-ui-doc-background                         (:background lotusWhite0 :foreground lotusRed))
  (lsp-ui-doc-header                             (:background lotusWhite0 :foreground lotusRed))
  (lsp-ui-doc-border                             (:background nil :foreground nil))
  (lsp-ui-peek-filename                          (:foreground lightBlue))
  (lsp-ui-sideline-code-action                   (:foreground lotusYellow))
  (lsp-ui-sideline-current-symbol                (:foreground lotusTeal2))
  (lsp-ui-sideline-symbol                        (:foreground lotusTeal3))

  ;; dashboard
  (dashboard-heading                             (:foreground lotusTeal1 :bold t))
  (dashboard-items-face                          (:bold nil :foreground lotusInk2))
  (dashboard-banner-logo-title                   (:bold t :height 200))
  (dashboard-no-items-face                       (:foreground lotusGray2))

  ;; all-the-icons
  (all-the-icons-dgreen                          (:foreground lotusAqua))
  (all-the-icons-green                           (:foreground lotusAqua))
  (all-the-icons-dpurple                         (:foreground lotusTeal1))
  (all-the-icons-purple                          (:foreground lotusTeal1))

  ;; evil
  (evil-ex-lazy-highlight                        (:foreground lotusGreen3 :background lotusGreen2 :bold t))
  (evil-ex-substitute-matches                    (:foreground lotusRed4 :background lotusRed2 :bold t))
  (evil-ex-substitute-replacement                (:foreground lotusOrange :strike-through nil :inherit 'evil-ex-substitute-matches))
  (evil-search-highlight-persist-highlight-face  (:background lotusYellow))

  ;; term
  (term                                          (:background lotusWhite0 :foreground lotusInk2))
  (term-color-blue                               (:background lotusBlue4 :foreground lotusBlue4))
  (term-color-bright-blue                        (:inherit 'term-color-blue))
  (term-color-green                              (:background lotusAqua :foreground lotusAqua))
  (term-color-bright-green                       (:inherit 'term-color-green))
  (term-color-black                              (:background lotusWhite0 :foreground lotusInk2))
  (term-color-bright-black                       (:background lotusWhite1 :foreground lotusWhite1))
  (term-color-white                              (:background lotusInk2 :foreground lotusInk2))
  (term-color-bright-white                       (:background oldwhite :foreground oldwhite))
  (term-color-red                                (:background lotusRed :foreground lotusRed))
  (term-color-bright-red                         (:background lotusGreen :foreground lotusGreen))
  (term-color-yellow                             (:background lotusYellow :foreground lotusYellow))
  (term-color-bright-yellow                      (:background lotusYellow :foreground lotusYellow))
  (term-color-cyan                               (:background lotusTeal2 :foreground lotusTeal2))
  (term-color-bright-cyan                        (:background lotusTeal2 :foreground lotusTeal2))
  (term-color-magenta                            (:background lotusTeal1 :foreground lotusTeal1))
  (term-color-bright-magenta                     (:background lotusTeal1 :foreground lotusTeal1))

  ;; popup
  (popup-face                                    (:inherit 'tooltip))
  (popup-selection-face                          (:inherit 'tooltip))
  (popup-tip-face                                (:inherit 'tooltip))

  ;; anzu
  (anzu-match-1                                  (:foreground lotusAqua :background lotusWhite4))
  (anzu-match-2                                  (:foreground lotusYellow :background lotusWhite4))
  (anzu-match-3                                  (:foreground lightBlue :background lotusWhite4))

  (anzu-mode-line                                (:foreground lotusWhite0 :background lotusTeal1))
  (anzu-mode-no-match                            (:foreground lotusInk2 :background lotusRed))
  (anzu-replace-to                               (:foreground lotusTeal2 :background lotusCyan))
  (anzu-replace-highlight                        (:foreground lotusRed :background lotusRed4 :strike-through t))

  ;; ace
  (ace-jump-face-background                      (:foreground lotusBlue2))
  (ace-jump-face-foreground                      (:foreground lotusRed :background lotusWhite0 :bold t))
  
  ;; vertico
  (vertico-multiline                             (:background lotusRed3))
  (vertico-group-title                           (:background lotusCyan :foreground lightBlue :bold t))
  (vertico-group-separator                       (:background lotusCyan :foreground lightBlue :strike-through t))
  (vertico-current                               (:foreground lotusYellow :bold t :italic t :background lotusBlue1))

  (vertico-posframe-border                       (:background lotusWhite5))
  (vertico-posframe                              (:background lotusWhite4))
  (orderless-match-face-0                        (:foreground lotusBlue4 :bold t))
  
  (comint-highlight-prompt                       (:background lotusTeal1 :foreground lotusWhite3))
  (completions-annotations                       (:background nil :foreground lotusTeal3 :italic t))
  
  ;; hydra
  (hydra-face-amaranth                           (:foreground lotusRed2))
  (hydra-face-blue                               (:foreground lotusTeal2))
  (hydra-face-pink                               (:foreground lotusPink))
  (hydra-face-red                                (:foreground lotusRed))
  (hydra-face-teal                               (:foreground lightBlue))

  ;; centaur-tabs
  (centaur-tabs-active-bar-face                  (:background lotusTeal2 :foreground lotusInk2))
  (centaur-tabs-selected                         (:background lotusWhite1 :foreground lotusInk2 :bold t))
  (centaur-tabs-selected-modified                (:background lotusWhite1 :foreground lotusInk2))
  (centaur-tabs-modified-marker-selected         (:background lotusWhite1 :foreground lotusYellow3))
  (centaur-tabs-close-selected                   (:inherit 'centaur-tabs-selected))
  (tab-line                                      (:background lotusWhite0))

  (centaur-tabs-unselected                       (:background lotusWhite0 :foreground lotusGray2))
  (centaur-tabs-default                          (:background lotusWhite0 :foreground lotusGray2))
  (centaur-tabs-unselected-modified              (:background lotusWhite0 :foreground lotusRed))
  (centaur-tabs-modified-marker-unselected       (:background lotusWhite0 :foreground lotusGray2))
  (centaur-tabs-close-unselected                 (:background lotusWhite0 :foreground lotusGray2))

  (centaur-tabs-close-mouse-face                 (:background nil :foreground lotusRed))
  (centaur-tabs-default                          (:background lotusOrange2 ))
  (centaur-tabs-name-mouse-face                  (:foreground lotusTeal2 :bold t))

  (git-gutter:added                              (:foreground lotusGreen2))
  (git-gutter:deleted                            (:foreground lotusRed))
  (git-gutter:modified                           (:foreground lotusTeal2))

  (diff-hl-margin-change                         (:foreground lotusTeal2 :background lotusCyan))
  (diff-hl-margin-delete                         (:foreground lotusRed :background lotusRed4))
  (diff-hl-margin-insert                         (:foreground comet :background lotusCyan))

  (bm-fringe-face                                (:background lotusRed :foreground lotusWhite5))
  (bm-fringe-persistent-face                     (:background lotusRed :foreground lotusWhite5))

  (ansi-color-green                              (:foreground lotusGreen))
  (ansi-color-black                              (:background lotusWhite0))
  (ansi-color-cyan                               (:foreground lotusAqua))
  (ansi-color-magenta                            (:foreground lotusPink))
  (ansi-color-blue                               (:foreground lotusBlue4))
  (ansi-color-red                                (:foreground lotusRed))
  (ansi-color-white                              (:foreground lotusInk2))
  (ansi-color-yellow                             (:foreground lotusYellow3))
  (ansi-color-bright-white                       (:foreground oldwhite))
  (ansi-color-bright-white                       (:foreground oldwhite))

  (tree-sitter-hl-face:doc                 (:foreground lotusGreen))

  (tree-sitter-hl-face:attribute                 (:foreground lotusOrange))
  (tree-sitter-hl-face:escape                    (:foreground lotusRed))
  (tree-sitter-hl-face:constructor               (:foreground lotusRed :weight 'semi-bold))
  
  (tree-sitter-hl-face:constant                  (:foreground lotusOrange))
  (tree-sitter-hl-face:constant.builtin          (:foreground lotusYellow :weight 'semi-bold))

  (tree-sitter-hl-face:embedded                  (:foreground lotusYellow2))
  
  (tree-sitter-hl-face:function                  (:foreground lotusBlue4))
  (tree-sitter-hl-face:function.builtin          (:foreground lotusRed :italic t))
  (tree-sitter-hl-face:function.call             (:foreground lotusTeal1))
  (tree-sitter-hl-face:function.macro            (:foreground lotusRed3))
  (tree-sitter-hl-face:function.special          (:foreground lotusPink))
  (tree-sitter-hl-face:function.label            (:foreground lotusOrange))
 
  (tree-sitter-hl-face:method                    (:foreground lotusInk1 :bold t))
  (tree-sitter-hl-face:method.call               (:foreground lotusInk1 :bold t))

  (tree-sitter-hl-face:property                  (:foreground lotusYellow))
  (tree-sitter-hl-face:property.definition       (:foreground oldwhite :italic t))
  
  (tree-sitter-hl-face:tag                       (:foreground lotusRed))

  (tree-sitter-hl-face:type                      (:foreground lotusAqua :weight 'semi-bold))
  (tree-sitter-hl-face:type.argument             (:foreground lotusOrange))
  (tree-sitter-hl-face:type.builtin              (:foreground lotusRed2))
  (tree-sitter-hl-face:type.parameter            (:foreground lotusOrange))
  (tree-sitter-hl-face:type.super                (:foreground lotusRed))

  (tree-sitter-hl-face:variable                  (:foreground lotusTeal2 :italic t))
  (tree-sitter-hl-face:variable.builtin          (:foreground lotusRed))
  (tree-sitter-hl-face:variable.parameter        (:foreground lotusTeal1 :italic t))
  (tree-sitter-hl-face:variable.special          (:foreground lotusOrange))
  (tree-sitter-hl-face:variable.synthesized      (:foreground lightBlue))

  (tree-sitter-hl-face:number                    (:foreground lotusPink))
  (tree-sitter-hl-face:operator                  (:foreground lotusPink :bold t))
  
  (tree-sitter-hl-face:punctuation               (:foreground lightBlue))
  (tree-sitter-hl-face:punctuation.bracket       (:foreground lotusTeal1 :bold t))
  (tree-sitter-hl-face:punctuation.delimiter     (:foreground lotusTeal1 :bold t))
  (tree-sitter-hl-face:punctuation.special       (:foreground lotusRed))

  (tree-sitter-hl-face:case-pattern              (:foreground lotusRed))
  (tree-sitter-hl-face:variable.synthesized      (:foreground lotusRed))
  (tree-sitter-hl-face:keyword.compiler          (:foreground lotusRed :bold t :italic t))

  (focus-unfocused (:foreground lotusGray2))
 ))

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'kanagawa-lotut)
;;; kanagawa-lotus-theme.el ends here
