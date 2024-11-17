;;; package: --- A theme inspired by the colors of the famous painting by Katsushika Hokusa

;;; Commentary: Original theme created by rebelot see: https://github.com/rebelot/kanagawa-dragon.nvim
;;; Code:

(eval-when-compile
  (require 'cl-lib))

(require 'autothemer)

(unless (>= emacs-major-version 24)
  (error "Requires Emacs 24 or later"))


(autothemer-deftheme
        kanagawa-dragon "A theme inspired by the colors of the famous painting by Katsushika Hokusa"

 ((((class color) (min-colors #xFFFFFF))        ; col 1 GUI/24bit
   ((class color) (min-colors #xFF)))           ; col 2 Xterm/256

  ;; Define our color palette
  (fujiWhite            "#DCD7BA" "#ffffff")
  (oldwhite             "#C8C093" "#ffffff")

  (dragonBlack0         "#0d0c0c" "#000000")
  (dragonBlack1         "#12120f" "#000000")
  (dragonBlack3         "#181616" "#080808")
  (dragonBlack4         "#282727" "#121212")
  (dragonBlack5         "#393836" "#303030")
  (sumiInk6             "#54546D" "#303030")

  (waveBlue1            "#223249" "#4e4e4e")
  (waveBlue2            "#2D4F67" "#585858")
  (waveAqua1            "#6A9589" "#6a9589")
  (dragonAqua           "#8ea4a2" "#717C7C")

  (winterGreen          "#2B3328" "#585858")
  (winterYellow         "#49443C" "#585858")
  (winterRed            "#43242B" "#585858")
  (winterBlue           "#252535" "#585858")

  (autumnGreen          "#76946A" "#585858")
  (autumnRed            "#C34043" "#585858")
  (autumnYellow         "#DCA561" "#585858")

  (samuraiRed           "#E82424" "#585858")
  (roninYellow          "#FF9E3B" "#585858")

  (dragonBlue           "#658594" "#658594")
  (dragonAsh            "#737c73" "#717C7C")
  (dragonGray3          "#7a8382" "#717C7C")
  (dragonViolet         "#8992a7" "#717C7C")
  (dragonBlue2          "#8ba4b0" "#717C7C")
  (dragonGray2          "#9e9b93" "#717C7C")
  (dragonTeal           "#949fb5" "#717C7C")
  (lightBlue            "#A3D4D5" "#717C7C")
  (springGreen          "#98BB6C" "#717C7C")
  (boatYellow1          "#938056" "#717C7C")
  (dragonRed            "#c4746e" "#717C7C")
  (dragonYellow         "#c4b28a" "#717C7C")
  (dragonPink           "#a292a3" "#717C7C")
  (dragonRed            "#c4746e" "#717C7C")
  (dragonRed            "#c4746e" "#717C7C")
  (dragonOrange         "#b6927b" "#717C7C")
  (katanaGray           "#717C7C" "#717C7C")
  (comet                "#54536D" "#4e4e4e"))

  ;; Customize faces
 (
  (default                                       (:background dragonBlack1 :foreground fujiWhite))
  (border                                        (:background dragonBlack1 :foreground dragonBlack0))
  (button                                        (:foreground dragonAqua))
  (child-frame                                   (:background dragonBlack0 :foreground dragonBlack0))
  (child-frame-border                            (:background dragonBlack0 :foreground dragonBlack0))
  (cursor                                        (:background lightBlue :foreground dragonBlack0 :bold t))
  (error                                         (:foreground samuraiRed))
  (fringe                                        (:foreground dragonBlack5))
  (glyph-face                                    (:background sumiInk6))
  (glyphless-char                                (:foreground sumiInk6))
  (header-line                                   (:background dragonBlack0))
  (highlight                                     (:background comet :foreground dragonGray3))
  (hl-line                                       (:background dragonBlack4))
  (homoglyph                                     (:foreground lightBlue))
  (internal-border                               (:background dragonBlack1))
  (line-number                                   (:foreground sumiInk6))
  (line-number-current-line                      (:foreground dragonGray2 :background dragonBlack4 :bold t))
  (lv-separator                                  (:foreground waveBlue2 :background dragonBlack4))
  (match                                         (:background dragonYellow :foreground dragonBlack0))
  (menu                                          (:background dragonBlack0 :foreground fujiWhite))
  (mode-line                                     (:background dragonBlack0))
  (mode-line-inactive                            (:background nil :foreground sumiInk6 :bold nil))
  (mode-line-active                              (:background dragonBlack0 :foreground oldwhite :bold nil))
  (mode-line-highlight                           (:foreground dragonRed))
  (mode-line-buffer-id                           (:foreground dragonAqua :bold t))
  (numbers                                       (:background dragonPink))
  (region                                        (:background waveBlue2))
  (separator-line                                (:background dragonBlack0))
  (shadow                                        (:background dragonBlack0))
  (success                                       (:foreground dragonAqua))
  (vertical-border                               (:foreground sumiInk6))
  (warning                                       (:foreground roninYellow))
  (window-border                                 (:background dragonBlack1))
  (window-divider                                (:foreground dragonBlack4))
  (hi-yellow                                     (:background dragonYellow :foreground dragonBlack1))

  ;; Font lock
  (font-lock-type-face                           (:foreground dragonAqua))
  (font-lock-regexp-grouping-backslash           (:foreground dragonRed))
  (font-lock-keyword-face                        (:foreground dragonViolet :weight 'semi-bold))
  (font-lock-warning-face                        (:foreground roninYellow))
  (font-lock-string-face                         (:foreground springGreen :italic t))
  (font-lock-builtin-face                        (:foreground dragonTeal))
  (font-lock-reference-face                      (:foreground dragonRed))
  (font-lock-constant-face                       (:foreground dragonYellow))
  (font-lock-function-name-face                  (:foreground dragonBlue2))
  (font-lock-variable-name-face                  (:foreground dragonRed))
  (font-lock-negation-char-face                  (:foreground dragonRed))
  (font-lock-comment-face                        (:foreground dragonAsh :italic t))
  (font-lock-comment-delimiter-face              (:foreground dragonAsh :italic t))
  (font-lock-doc-face                            (:foreground comet))
  (font-lock-doc-markup-face                     (:foreground comet))
  (font-lock-preprocessor-face                   (:foreground dragonRed))
  (elisp-shorthand-font-lock-face                (:foreground fujiWhite))

  (info-xref                                     (:foreground dragonYellow))
  (minibuffer-prompt-end                         (:foreground autumnRed :background winterRed))
  (minibuffer-prompt                             (:foreground dragonYellow :background winterYellow))
  (epa-mark                                      (:foreground dragonRed))
  (dired-mark                                    (:foreground dragonRed))
  (diredfl-dir-heading                           (:foreground oldwhite))
  (diredfl-file-name                             (:foreground fujiWhite))
  (diredfl-file-suffix                           (:foreground autumnGreen))
  (diredfl-number                                (:foreground dragonViolet))
  (diredfl-date-time                             (:foreground dragonPink))
  (diredfl-dir-name                              (:foreground dragonAqua))
  (diredfl-symlink                               (:foreground autumnYellow))
  (diredfl-read-priv                             (:foreground dragonBlue2))
  (diredfl-write-priv                            (:foreground dragonTeal))
  (diredfl-exec-priv                             (:foreground dragonBlue))
  (diredfl-dir-priv                              (:foreground lightBlue))
  (diredfl-no-priv                               (:foreground dragonBlue))
  (diredfl-rare-priv                             (:foreground waveBlue2))
  (trailing-whitespace                           (:background comet))
  (mode-line                                     (:background dragonBlack0 :foreground fujiWhite :bold t))

  ;; Battery colors
  (doom-modeline-battery-critical                (:foreground dragonRed))
  (doom-modeline-battery-warning                 (:foreground springGreen))
  (doom-modeline-battery-charging                (:foreground dragonAsh))
  (doom-modeline-battery-error                   (:foreground dragonRed))
  (doom-modeline-battery-normal                  (:foreground dragonGray3))
  (doom-modeline-battery-full                    (:foreground dragonAqua))
  
  ;; Doom visual state
  (doom-modeline-evil-motion-state               (:foreground lightBlue))
  (doom-modeline-evil-emacs-state                (:foreground dragonBlue2))
  (doom-modeline-evil-insert-state               (:foreground dragonRed))
  (doom-modeline-evil-normal-state               (:foreground lightBlue))
  (doom-modeline-evil-visual-state               (:foreground springGreen))
  (doom-modeline-evil-replace-state              (:foreground roninYellow))
  (doom-modeline-evil-operator-state             (:foreground dragonBlue2))

  (doom-modeline-project-dir                     (:bold t :foreground dragonAqua))
  (doom-modeline-buffer-path                     (:inherit 'bold :foreground dragonAqua))
  (doom-modeline-buffer-file                     (:inherit 'bold :foreground dragonViolet))
  (doom-modeline-buffer-modified                 (:inherit 'bold :foreground dragonYellow))
  (doom-modeline-error                           (:background dragonRed))
  (doom-modeline-buffer-major-mode               (:foreground dragonAqua :bold t))
  (doom-modeline-info                            (:bold t :foreground lightBlue))
  (doom-modeline-project-dir                     (:bold t :foreground dragonOrange))
  (doom-modeline-bar                             (:bold t :background dragonGray3))
  (doom-modeline-panel                           (:inherit 'bold :background dragonRed :foreground dragonBlack4))
  (doom-themes-visual-bell                       (:background autumnRed))

  ;; elfeed
  (elfeed-search-feed-face                       (:foreground dragonGray3))
  (elfeed-search-tag-face                        (:foreground dragonAqua))

  ;; message colors
  (message-header-name                           (:foreground sumiInk6))
  (message-header-other                          (:foreground dragonOrange))
  (message-header-subject                        (:foreground dragonYellow))
  (message-header-to                             (:foreground oldwhite))
  (message-header-cc                             (:foreground dragonAqua))
  (message-header-xheader                        (:foreground oldwhite))
  (custom-link                                   (:foreground dragonBlue2))
  (link                                          (:foreground dragonBlue2))

  ;; org-mode
  (org-done                                      (:foreground dragonBlue))
  (org-code                                      (:background dragonBlack0))
  (org-meta-line                                 (:background winterGreen :foreground springGreen))
  (org-block                                     (:background dragonBlack0 :foreground sumiInk6))
  (org-block-begin-line                          (:background winterBlue :foreground dragonTeal))
  (org-block-end-line                            (:background winterRed :foreground dragonRed))
  (org-headline-done                             (:foreground dragonBlue :strike-through t))
  (org-todo                                      (:foreground dragonOrange :bold t))
  (org-headline-todo                             (:foreground dragonBlack4))
  (org-upcoming-deadline                         (:foreground dragonRed))
  (org-footnote                                  (:foreground dragonAqua))
  (org-indent                                    (:background dragonBlack1 :foreground dragonBlack1))
  (org-hide                                      (:background dragonBlack1 :foreground dragonBlack1))
  (org-date                                      (:foreground waveBlue2))
  (org-ellipsis                                  (:foreground waveBlue2 :bold t))
  (org-level-1                                   (:foreground dragonRed :height 1.3 :bold t))
  (org-level-2                                   (:foreground dragonGray2 :height 1.15 :bold t))
  (org-level-3                                   (:foreground dragonRed :height 1.05))
  (org-level-4                                   (:foreground fujiWhite))
  (org-level-5                                   (:foreground fujiWhite))
  (org-level-6                                   (:foreground dragonYellow))
  (org-level-7                                   (:foreground dragonOrange))
  (org-level-8                                   (:foreground springGreen))

  ;; which-key
  (which-key-key-face                            (:inherit 'font-lock-variable-name-face))
  (which-func                                    (:inherit 'font-lock-function-name-face :bold t))
  (which-key-group-description-face              (:foreground dragonRed))
  (which-key-command-description-face            (:foreground dragonBlue2))
  (which-key-local-map-description-face          (:foreground dragonYellow))
  (which-key-posframe                            (:background waveBlue1))
  (which-key-posframe-border                     (:background waveBlue1))

  ;; swiper
  (swiper-line-face                              (:foreground dragonYellow))
  (swiper-background-match-face-1                (:background dragonOrange :foreground dragonBlack0))
  (swiper-background-match-face-2                (:background dragonBlue2 :foreground dragonBlack0))
  (swiper-background-match-face-3                (:background dragonRed :foreground dragonBlack0))
  (swiper-background-match-face-4                (:background dragonRed :foreground dragonBlack0))
  (swiper-match-face-1                           (:inherit 'swiper-background-match-face-1))
  (swiper-match-face-2                           (:inherit 'swiper-background-match-face-2))
  (swiper-match-face-3                           (:inherit 'swiper-background-match-face-3))
  (swiper-match-face-4                           (:inherit 'swiper-background-match-face-4))

  (counsel-outline-default                       (:foreground dragonYellow))
  (info-header-xref                              (:foreground dragonYellow))
  (xref-file-header                              (:foreground dragonYellow))
  (xref-match                                    (:foreground dragonYellow))

  ;; rainbow delimiters
  (rainbow-delimiters-mismatched-face            (:foreground dragonRed))
  (rainbow-delimiters-unmatched-face             (:foreground dragonAqua))
  (rainbow-delimiters-base-error-face            (:foreground dragonRed))
  (rainbow-delimiters-base-face                  (:foreground sumiInk6))

  (rainbow-delimiters-depth-1-face               (:foreground dragonGray2))
  (rainbow-delimiters-depth-2-face               (:foreground dragonBlue))
  (rainbow-delimiters-depth-3-face               (:foreground dragonGray3))
  (rainbow-delimiters-depth-4-face               (:foreground springGreen))
  (rainbow-delimiters-depth-5-face               (:foreground dragonAqua))
  (rainbow-delimiters-depth-6-face               (:foreground dragonYellow))
  (rainbow-delimiters-depth-7-face               (:foreground dragonRed))
  (rainbow-delimiters-depth-8-face               (:foreground lightBlue))
  (rainbow-delimiters-depth-9-face               (:foreground dragonGray2))

  ;; show-paren
  (show-paren-match                              (:background waveAqua1 :foreground dragonBlack0 :bold t))
  (show-paren-match-expression                   (:background waveAqua1 :foreground dragonBlack0 :bold t))
  (show-paren-mismatch                           (:background dragonRed :foreground oldwhite))
  (tooltip                                       (:foreground dragonBlack0 :background dragonYellow :bold t))
  
  ;; company-box
  (company-tooltip                               (:background dragonBlack4))
  (company-tooltip-common                        (:foreground autumnYellow))
  (company-tooltip-quick-access                  (:foreground dragonGray2))
  (company-tooltip-scrollbar-thumb               (:background autumnRed))
  (company-tooltip-scrollbar-track               (:background dragonBlack4))
  (company-tooltip-search                        (:background dragonYellow :foreground dragonBlack0 :distant-foreground fujiWhite))
  (company-tooltip-selection                     (:background dragonRed :foreground winterRed :bold t))
  (company-tooltip-mouse                         (:background dragonBlack4 :foreground dragonBlack0 :distant-foreground fujiWhite))
  (company-tooltip-annotation                    (:foreground dragonRed :distant-foreground dragonBlack3))
  (company-scrollbar-bg                          (:inherit 'tooltip))
  (company-scrollbar-fg                          (:background dragonRed))
  (company-preview                               (:foreground dragonYellow))
  (company-preview-common                        (:foreground dragonRed :bold t))
  (company-preview-search                        (:inherit 'company-tooltip-search))
  (company-template-field                        (:inherit 'match))

  ;; flycheck
  (flycheck-posframe-background-face             (:background dragonBlack0))
  (flycheck-posframe-face                        (:background dragonBlack0))
  (flycheck-posframe-info-face                   (:background dragonBlack0 :foreground autumnGreen))
  (flycheck-posframe-warning-face                (:background dragonBlack0 :foreground lightBlue))
  (flycheck-posframe-error-face                  (:background dragonBlack0 :foreground samuraiRed))
  (flycheck-fringe-warning                       (:foreground lightBlue))
  (flycheck-fringe-error                         (:foreground samuraiRed))
  (flycheck-fringe-info                          (:foreground autumnGreen))
  (flycheck-error-list-warning                   (:foreground roninYellow :bold t))
  (flycheck-error-list-error                     (:foreground samuraiRed :bold t))
  (flycheck-error-list-info                      (:foreground waveAqua1 :bold t))
  (flycheck-inline-error                         (:foreground samuraiRed :background winterRed :italic t :bold t :height 138))
  (flycheck-inline-info                          (:foreground lightBlue :background winterBlue :italic t  :bold t :height 138))
  (flycheck-inline-warning                       (:foreground winterYellow :background dragonYellow :italic t :bold t :height 138))

  ;; indent dots
  (highlight-indent-guides-character-face        (:foreground dragonBlack5))
  (highlight-indent-guides-stack-character-face  (:foreground dragonBlack5))
  (highlight-indent-guides-stack-odd-face        (:foreground dragonBlack5))
  (highlight-indent-guides-stack-even-face       (:foreground comet))
  (highlight-indent-guides-stack-character-face  (:foreground dragonBlack5))
  (highlight-indent-guides-even-face             (:foreground dragonBlack4))
  (highlight-indent-guides-odd-face              (:foreground comet))

  (highlight-operators-face                      (:foreground dragonRed))
  (highlight-quoted-symbol                       (:foreground springGreen))
  (highlight-numbers-face                        (:foreground dragonPink))
  (highlight-symbol-face                         (:background waveBlue1 :foreground lightBlue))
  
  ;; ivy
  (ivy-current-match                             (:background dragonBlue2 :foreground dragonBlack0 :bold t))
  (ivy-action                                    (:background nil :foreground fujiWhite))
  (ivy-grep-line-number                          (:background nil :foreground springGreen))
  (ivy-minibuffer-match-face-1                   (:background nil :foreground dragonRed))
  (ivy-minibuffer-match-face-2                   (:background nil :foreground springGreen))
  (ivy-minibuffer-match-highlight                (:foreground lightBlue))
  (ivy-grep-info                                 (:foreground lightBlue))
  (ivy-grep-line-number                          (:foreground dragonGray2))
  (ivy-confirm-face                              (:foreground dragonAqua))

  ;; posframe's
  (ivy-posframe                                  (:background dragonBlack4))
  (ivy-posframe-border                           (:background dragonBlack5))
  
  ;;treemacs
  (treemacs-directory-collapsed-face             (:foreground fujiWhite))
  (treemacs-directory-face                       (:foreground fujiWhite))
  (treemacs-file-face                            (:foreground fujiWhite))

  (treemacs-git-added-face                       (:foreground dragonOrange))
  (treemacs-git-renamed-face                     (:foreground fujiWhite))
  (treemacs-git-ignored-face                     (:foreground sumiInk6))
  (treemacs-git-unmodified-face                  (:foreground fujiWhite))
  (treemacs-git-renamed-face                     (:foreground fujiWhite))
  (treemacs-git-modified-face                    (:foreground springGreen))
   
  ;; lsp and lsp-ui
  (lsp-headerline-breadcrumb-path-error-face     (:underline (:color springGreen :style 'wave) :foreground sumiInk6 :background dragonBlack0))
  (lsp-headerline-breadcrumb-path-face           (:background dragonBlack0))
  (lsp-headerline-breadcrumb-path-hint-face      (:background dragonBlack0))
  (lsp-headerline-breadcrumb-path-info-face      (:background dragonBlack0))
  (lsp-headerline-breadcrumb-separator-face      (:background dragonBlack0))
  (lsp-headerline-breadcrumb-symbols-face        (:background dragonBlack0))
  (lsp-headerline-breadcrumb-project-prefix-face (:background dragonBlack0))
  (lsp-headerline-breadcrumb-symbols-error-face  (:foreground dragonRed))

  (lsp-ui-doc-background                         (:background dragonBlack0 :foreground dragonRed))
  (lsp-ui-doc-header                             (:background dragonBlack0 :foreground dragonRed))
  (lsp-ui-doc-border                             (:background nil :foreground nil))
  (lsp-ui-peek-filename                          (:foreground lightBlue))
  (lsp-ui-sideline-code-action                   (:foreground dragonYellow))
  (lsp-ui-sideline-current-symbol                (:foreground dragonTeal))
  (lsp-ui-sideline-symbol                        (:foreground dragonBlue))

  ;; dashboard
  (dashboard-heading                             (:foreground dragonGray2 :bold t))
  (dashboard-items-face                          (:bold nil :foreground fujiWhite))
  (dashboard-banner-logo-title                   (:bold t :height 200))
  (dashboard-no-items-face                       (:foreground sumiInk6))

  ;; all-the-icons
  (all-the-icons-dgreen                          (:foreground dragonAqua))
  (all-the-icons-green                           (:foreground dragonAqua))
  (all-the-icons-dpurple                         (:foreground dragonGray2))
  (all-the-icons-purple                          (:foreground dragonGray2))

  ;; evil
  (evil-ex-lazy-highlight                        (:foreground winterGreen :background autumnGreen :bold t))
  (evil-ex-substitute-matches                    (:foreground winterRed :background autumnRed :bold t))
  (evil-ex-substitute-replacement                (:foreground dragonOrange :strike-through nil :inherit 'evil-ex-substitute-matches))
  (evil-search-highlight-persist-highlight-face  (:background dragonYellow))

  ;; term
  (term                                          (:background dragonBlack0 :foreground fujiWhite))
  (term-color-blue                               (:background dragonBlue2 :foreground dragonBlue2))
  (term-color-bright-blue                        (:inherit 'term-color-blue))
  (term-color-green                              (:background dragonAqua :foreground dragonAqua))
  (term-color-bright-green                       (:inherit 'term-color-green))
  (term-color-black                              (:background dragonBlack0 :foreground fujiWhite))
  (term-color-bright-black                       (:background dragonBlack1 :foreground dragonBlack1))
  (term-color-white                              (:background fujiWhite :foreground fujiWhite))
  (term-color-bright-white                       (:background oldwhite :foreground oldwhite))
  (term-color-red                                (:background dragonRed :foreground dragonRed))
  (term-color-bright-red                         (:background springGreen :foreground springGreen))
  (term-color-yellow                             (:background dragonYellow :foreground dragonYellow))
  (term-color-bright-yellow                      (:background dragonYellow :foreground dragonYellow))
  (term-color-cyan                               (:background dragonTeal :foreground dragonTeal))
  (term-color-bright-cyan                        (:background dragonTeal :foreground dragonTeal))
  (term-color-magenta                            (:background dragonGray2 :foreground dragonGray2))
  (term-color-bright-magenta                     (:background dragonGray2 :foreground dragonGray2))

  ;; popup
  (popup-face                                    (:inherit 'tooltip))
  (popup-selection-face                          (:inherit 'tooltip))
  (popup-tip-face                                (:inherit 'tooltip))

  ;; anzu
  (anzu-match-1                                  (:foreground dragonAqua :background dragonBlack4))
  (anzu-match-2                                  (:foreground dragonYellow :background dragonBlack4))
  (anzu-match-3                                  (:foreground lightBlue :background dragonBlack4))

  (anzu-mode-line                                (:foreground dragonBlack0 :background dragonGray2))
  (anzu-mode-no-match                            (:foreground fujiWhite :background dragonRed))
  (anzu-replace-to                               (:foreground dragonTeal :background winterBlue))
  (anzu-replace-highlight                        (:foreground dragonRed :background winterRed :strike-through t))

  ;; ace
  (ace-jump-face-background                      (:foreground waveBlue2))
  (ace-jump-face-foreground                      (:foreground dragonRed :background dragonBlack0 :bold t))
  
  ;; vertico
  (vertico-multiline                             (:background samuraiRed))
  (vertico-group-title                           (:background winterBlue :foreground lightBlue :bold t))
  (vertico-group-separator                       (:background winterBlue :foreground lightBlue :strike-through t))
  (vertico-current                               (:foreground dragonYellow :bold t :italic t :background waveBlue1))

  (vertico-posframe-border                       (:background dragonBlack5))
  (vertico-posframe                              (:background dragonBlack4))
  (orderless-match-face-0                        (:foreground dragonBlue2 :bold t))
  
  (comint-highlight-prompt                       (:background dragonGray2 :foreground dragonBlack3))
  (completions-annotations                       (:background nil :foreground dragonBlue :italic t))
  
  ;; hydra
  (hydra-face-amaranth                           (:foreground autumnRed))
  (hydra-face-blue                               (:foreground dragonTeal))
  (hydra-face-pink                               (:foreground dragonPink))
  (hydra-face-red                                (:foreground dragonRed))
  (hydra-face-teal                               (:foreground lightBlue))

  ;; centaur-tabs
  (centaur-tabs-active-bar-face                  (:background dragonTeal :foreground fujiWhite))
  (centaur-tabs-selected                         (:background dragonBlack1 :foreground fujiWhite :bold t))
  (centaur-tabs-selected-modified                (:background dragonBlack1 :foreground fujiWhite))
  (centaur-tabs-modified-marker-selected         (:background dragonBlack1 :foreground autumnYellow))
  (centaur-tabs-close-selected                   (:inherit 'centaur-tabs-selected))
  (tab-line                                      (:background dragonBlack0))

  (centaur-tabs-unselected                       (:background dragonBlack0 :foreground sumiInk6))
  (centaur-tabs-default                          (:background dragonBlack0 :foreground sumiInk6))
  (centaur-tabs-unselected-modified              (:background dragonBlack0 :foreground dragonRed))
  (centaur-tabs-modified-marker-unselected       (:background dragonBlack0 :foreground sumiInk6))
  (centaur-tabs-close-unselected                 (:background dragonBlack0 :foreground sumiInk6))

  (centaur-tabs-close-mouse-face                 (:background nil :foreground dragonRed))
  (centaur-tabs-default                          (:background roninYellow))
  (centaur-tabs-name-mouse-face                  (:foreground dragonTeal :bold t))

  (git-gutter:added                              (:foreground autumnGreen))
  (git-gutter:deleted                            (:foreground dragonRed))
  (git-gutter:modified                           (:foreground dragonTeal))

  (diff-hl-margin-change                         (:foreground dragonTeal :background winterBlue))
  (diff-hl-margin-delete                         (:foreground dragonRed :background winterRed))
  (diff-hl-margin-insert                         (:foreground comet :background winterBlue))

  (bm-fringe-face                                (:background dragonRed :foreground dragonBlack5))
  (bm-fringe-persistent-face                     (:background dragonRed :foreground dragonBlack5))

  (ansi-color-green                              (:foreground springGreen))
  (ansi-color-black                              (:background dragonBlack0))
  (ansi-color-cyan                               (:foreground dragonAqua))
  (ansi-color-magenta                            (:foreground dragonPink))
  (ansi-color-blue                               (:foreground dragonBlue2))
  (ansi-color-red                                (:foreground dragonRed))
  (ansi-color-white                              (:foreground fujiWhite))
  (ansi-color-yellow                             (:foreground autumnYellow))
  (ansi-color-bright-white                       (:foreground oldwhite))
  (ansi-color-bright-white                       (:foreground oldwhite))

  (tree-sitter-hl-face:attribute                 (:foreground dragonOrange))
  (tree-sitter-hl-face:escape                    (:foreground dragonRed))
  (tree-sitter-hl-face:constructor               (:foreground dragonRed :weight 'semi-bold))
  
  (tree-sitter-hl-face:constant                  (:foreground dragonOrange))
  (tree-sitter-hl-face:constant.builtin          (:foreground dragonYellow :weight 'semi-bold))

  (tree-sitter-hl-face:embedded                  (:foreground dragonRed))
  
  (tree-sitter-hl-face:function                  (:foreground dragonBlue2))
  (tree-sitter-hl-face:function.builtin          (:foreground dragonRed :italic t :background winterRed))
  (tree-sitter-hl-face:function.call             (:foreground dragonGray2))
  (tree-sitter-hl-face:function.macro            (:foreground samuraiRed))
  (tree-sitter-hl-face:function.special          (:foreground dragonPink))
  (tree-sitter-hl-face:function.label            (:foreground dragonOrange))
 
  (tree-sitter-hl-face:method                    (:foreground lightBlue))
  (tree-sitter-hl-face:method.call               (:foreground lightBlue))

  (tree-sitter-hl-face:property                  (:foreground dragonYellow))
  (tree-sitter-hl-face:property.definition       (:foreground oldwhite :italic t))
  
  (tree-sitter-hl-face:tag                       (:foreground dragonRed))

  (tree-sitter-hl-face:type                      (:foreground dragonAqua :weight 'semi-bold))
  (tree-sitter-hl-face:type.argument             (:foreground dragonOrange))
  (tree-sitter-hl-face:type.builtin              (:foreground autumnRed))
  (tree-sitter-hl-face:type.parameter            (:foreground dragonOrange))
  (tree-sitter-hl-face:type.super                (:foreground autumnRed :bold t))

  (tree-sitter-hl-face:variable                  (:foreground dragonTeal :italic t))
  (tree-sitter-hl-face:variable.builtin          (:foreground dragonRed))
  (tree-sitter-hl-face:variable.parameter        (:foreground dragonGray2 :italic t))
  (tree-sitter-hl-face:variable.special          (:foreground dragonOrange))
  (tree-sitter-hl-face:variable.synthesized      (:foreground lightBlue))

  (tree-sitter-hl-face:number                    (:foreground dragonPink))
  (tree-sitter-hl-face:operator                  (:foreground dragonPink :bold t))
  
  (tree-sitter-hl-face:punctuation               (:foreground lightBlue))
  (tree-sitter-hl-face:punctuation.bracket       (:foreground dragonGray2 :bold t))
  (tree-sitter-hl-face:punctuation.delimiter     (:foreground dragonGray2 :bold t))
  (tree-sitter-hl-face:punctuation.special       (:foreground dragonRed))

  (tree-sitter-hl-face:case-pattern              (:foreground dragonRed))
  (tree-sitter-hl-face:variable.synthesized      (:foreground dragonRed))
  (tree-sitter-hl-face:keyword.compiler          (:foreground dragonRed :bold t :italic t))

  (focus-unfocused (:foreground sumiInk6))))
 

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'kanagawa-dragon)
;;; kanagawa-dragon-theme.el ends here
