;;; moonqueen-theme.el --- Fighting evil by moonlight. -*- lexical-binding: t; -*-

;; Author: sailorfe
;; URL: https://codeberg.org/sailorfe/moonqueen.nvim
;; Package-Requires: ((emacs "30.1"))

;;; Commentary:
;; Port of moonqueen.nvim.

;;; Code:

(deftheme moonqueen
  "Fighting evil by moonlight.")

(let (; backgrounds
      (base "#1B1429")
      (surface "#291E3E")
      (overlay "#362853")
                                        ; foregrounds
      (text "#E1D9F2")
      (light "#F1EBFF")
      (faint "#9180B3")
      (muted "#53476B")
                                        ; main
      (mars "#D65C5C")
      (jupiter "#85D65C")
      (venus "#EBB447")
      (mercury "#5CADD6")
      (saturn "#8F7DE8")
      (moon "#DB70B8")
                                        ; contrast highlights
      (low "#171122")
      (med "#2E2442")
      (high "#453762")
                                        ; just for terminal brights
      (rei "#F0A8A8")
      (makoto "#C0F0A8")
      (minako "#FADB9E")
      (ami "#A8D8F0")
      (hotaru "#B1A3F5")
      (usagi "#EC93CE")
      )

  (custom-theme-set-faces
   'moonqueen
   ;; --- core ui -------------------------------------------------
   `(default ((t (:background ,base :foreground ,text))))
   `(cursor ((t (:background ,text))))
   `(region ((t (:background ,high :foreground ,text))))
   `(secondary-selection ((t (:background ,med :foreground ,venus))))
   `(highlight ((t (:background ,overlay :foreground ,moon))))
   `(hl-line ((t (:background ,overlay))))
   `(fringe ((t (:background ,base :foreground ,muted))))
   `(vertical-border ((t (:foreground ,surface))))
   `(window-divider ((t (:foreground ,surface))))
   `(window-divider-first-pixel ((t (:foreground ,surface))))
   `(window-divider-last-pixel ((t (:foreground ,surface))))
   `(minibuffer-prompt ((t (:foreground ,mercury :weight bold))))
   `(shadow ((t (:foreground ,muted))))
   `(link ((t (:foreground ,mercury :underline t))))
   `(link-visited ((t (:foreground ,jupiter :underline t))))
   `(escape-glyph ((t (:foreground ,saturn))))
   `(homoglyph ((t (:foreground ,saturn))))
   `(tooltip ((t (:background ,surface :foreground ,text))))
   `(trailing-whitespace ((t (:background ,overlay))))
   `(nobreak-space ((t (:foreground ,muted :underline t))))
   `(fill-column-indicator ((t (:foreground ,high))))
   `(bookmark-face ((t (:foreground ,saturn))))

   ;; --- errors / warnings / success ------------------------------
   `(error ((t (:foreground ,mars :weight bold))))
   `(warning ((t (:foreground ,venus :weight bold))))
   `(success ((t (:foreground ,jupiter :weight bold))))

   ;; --- mode-line / header / tab lines ---------------------------
   `(mode-line ((t (:background ,surface :foreground ,text))))
   `(mode-line-inactive ((t (:background ,base :foreground ,muted))))
   `(mode-line-active ((t (:background ,surface :foreground ,text))))
   `(mode-line-emphasis ((t (:foreground ,moon :weight bold))))
   `(mode-line-highlight ((t (:foreground ,moon :box (:line-width -1 :color ,moon)))))
   `(mode-line-buffer-id ((t (:foreground ,text :weight bold))))
   `(header-line ((t (:background ,med :foreground ,faint))))
   `(header-line-highlight ((t (:background ,med :foreground ,moon))))
   `(tab-line ((t (:background ,surface :foreground ,muted))))
   `(tab-line-tab ((t (:background ,surface :foreground ,muted))))
   `(tab-line-tab-inactive ((t (:background ,surface :foreground ,muted))))
   `(tab-line-tab-current ((t (:background ,overlay :foreground ,moon :weight bold))))
   `(tab-line-highlight ((t (:background ,overlay :foreground ,moon))))
   `(tab-bar ((t (:background ,surface :foreground ,muted))))
   `(tab-bar-tab ((t (:background ,overlay :foreground ,moon :weight bold))))
   `(tab-bar-tab-inactive ((t (:background ,surface :foreground ,muted))))

   ;; --- line numbers ----------------------------------------------
   `(line-number ((t (:foreground ,muted :background ,base))))
   `(line-number-current-line ((t (:foreground ,text :background ,overlay :weight bold))))
   `(line-number-major-tick ((t (:foreground ,faint :background ,base))))
   `(line-number-minor-tick ((t (:foreground ,muted :background ,base))))

   ;; --- search / isearch --------------------------------------------
   `(isearch ((t (:background ,venus :foreground ,base))))
   `(isearch-fail ((t (:background ,mars :foreground ,light))))
   `(isearch-group-1 ((t (:background ,mercury :foreground ,base))))
   `(isearch-group-2 ((t (:background ,jupiter :foreground ,base))))
   `(lazy-highlight ((t (:background ,med :foreground ,venus))))
   `(query-replace ((t (:background ,venus :foreground ,base))))

   ;; --- show-paren --------------------------------------------------
   `(show-paren-match ((t (:background ,high :weight bold))))
   `(show-paren-match-expression ((t (:background ,overlay))))
   `(show-paren-mismatch ((t (:background ,mars :foreground ,light :weight bold))))

   ;; --- misc syntax ----------------------------------------------
   ;; sh
   `(sh-heredoc ((t (:foreground ,venus :weight bold))))
   `(sh-quoted-exec ((t :foreground ,mars :slant italic)))
   `(sh-escaped-newline ((t :foreground ,faint)))

   ;; --- font-lock (syntax highlighting) -------------------------------
   ;; comment
   `(font-lock-comment-face ((t (:foreground ,faint :slant italic))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,faint :slant italic))))
   `(font-lock-doc-face ((t (:foreground ,faint :slant italic))))
   `(font-lock-doc-markup-face ((t (:foreground ,faint))))

   ;; constant
   `(font-lock-constant-face ((t (:foreground ,venus))))
   `(font-lock-number-face ((t (:foreground ,venus))))

   ;; string
   `(font-lock-string-face ((t (:foreground ,jupiter))))

   ;; identifier
   `(font-lock-variable-name-face ((t (:foreground ,moon))))
   `(font-lock-variable-use-face ((t (:foreground ,moon))))

   ;; function
   `(font-lock-function-name-face ((t (:foreground ,mercury))))
   `(font-lock-function-call-face ((t (:foreground ,mercury))))

   ;; statement
   `(font-lock-keyword-face ((t (:foreground ,saturn :weight bold))))

   ;; preproc
   `(font-lock-preprocessor-face ((t (:foreground ,saturn))))

   ;; type
   `(font-lock-type-face ((t (:foreground ,venus))))

   ;; special
   `(font-lock-builtin-face ((t (:foreground ,mercury))))
   `(font-lock-escape-face ((t (:foreground ,mercury))))
   `(font-lock-regexp-grouping-backslash ((t (:foreground ,mercury :weight bold))))
   `(font-lock-regexp-grouping-construct ((t (:foreground ,mercury :weight bold))))

   ;; misc
   `(font-lock-warning-face ((t (:foreground ,mars :weight bold))))
   `(font-lock-negation-char-face ((t (:foreground ,mercury :weight bold))))
   `(font-lock-property-name-face ((t (:foreground ,text))))
   `(font-lock-property-use-face ((t (:foreground ,text))))
   `(font-lock-operator-face ((t (:foreground ,text))))
   `(font-lock-bracket-face ((t (:foreground ,text))))
   `(font-lock-punctuation-face ((t (:foreground ,text))))
   `(font-lock-delimiter-face ((t (:foreground ,muted))))

   ;; --- diff-mode ------------------------------------------------
   `(diff-header ((t (:background ,surface))))
   `(diff-file-header ((t (:background ,surface :foreground ,text :weight bold))))
   `(diff-hunk-header ((t (:background ,surface :foreground ,muted))))
   `(diff-context ((t (:foreground ,faint))))
   `(diff-added ((t (:foreground ,jupiter))))
   `(diff-removed ((t (:foreground ,mars))))
   `(diff-changed ((t (:foreground ,moon))))
   `(diff-refine-added ((t (:background ,jupiter :foreground ,base))))
   `(diff-refine-removed ((t (:background ,mars :foreground ,light))))
   `(diff-refine-changed ((t (:background ,moon :foreground ,base))))
   `(diff-indicator-added ((t (:foreground ,jupiter))))
   `(diff-indicator-removed ((t (:foreground ,mars))))
   `(diff-indicator-changed ((t (:foreground ,moon))))

   ;; --- diff-hl ----------------------------------------------------
   `(diff-hl-insert ((t (:foreground ,jupiter))))
   `(diff-hl-delete ((t (:foreground ,mars))))
   `(diff-hl-change ((t (:foreground ,moon))))

   ;; --- flyspell ---------------------------------------------------
   `(flyspell-incorrect ((t (:foreground ,mars :underline (:style wave)))))
   `(flyspell-duplicate ((t (:foreground ,venus :underline (:style wave)))))

   ;; --- completions (in-buffer / *Completions*) ---------------------
   `(completions-common-part ((t (:foreground ,moon :weight bold))))
   `(completions-first-difference ((t (:foreground ,saturn :weight bold))))
   `(completions-annotations ((t (:foreground ,muted :slant italic))))
   `(completions-group-title ((t (:foreground ,faint :weight bold))))

   ;; --- widgets / custom-mode ----------------------------------------
   `(widget-field ((t (:background ,overlay :foreground ,text :box (:line-width 1 :color ,muted)))))
   `(widget-single-line-field ((t (:background ,overlay :foreground ,text))))
   `(widget-button ((t (:foreground ,moon :weight bold))))
   `(widget-documentation ((t (:foreground ,faint))))
   `(custom-button ((t (:background ,surface :foreground ,text :box (:line-width 1 :color ,muted)))))
   `(custom-button-mouse ((t (:background ,overlay :foreground ,moon :box (:line-width 1 :color ,moon)))))
   `(custom-button-pressed ((t (:background ,overlay :foreground ,moon :box (:line-width 1 :color ,moon)))))
   `(custom-state ((t (:foreground ,jupiter))))
   `(custom-variable-tag ((t (:foreground ,moon :weight bold))))
   `(custom-group-tag ((t (:foreground ,mercury :weight bold))))

   ;; --- misc buffer / dired -----------------------------------------
   `(match ((t (:background ,med :foreground ,venus))))
   `(next-error ((t (:background ,overlay))))
   `(help-key-binding ((t (:foreground ,moon :background ,surface :box (:line-width 1 :color ,muted)))))
   `(dired-directory ((t (:foreground ,mercury))))
   `(dired-symlink ((t (:foreground ,saturn))))
   `(dired-broken-symlink ((t (:foreground ,mars :underline t))))
   `(dired-marked ((t (:foreground ,moon :weight bold))))
   `(dired-flagged ((t (:foreground ,mars :weight bold))))
   `(dired-header ((t (:foreground ,moon :weight bold))))
   `(dired-ignored ((t (:foreground ,muted))))
   `(dired-mark ((t (:foreground ,moon :weight bold))))
   `(dired-warning ((t (:foreground ,venus :weight bold))))
   `(dired-perm-write ((t (:foreground ,venus))))
   `(dired-set-id ((t (:foreground ,saturn :weight bold))))
   `(dired-special ((t (:foreground ,jupiter))))

   ;; --- diredfl --------------------------------------------------------
   `(diredfl-dir-heading ((t (:foreground ,moon :weight bold))))
   `(diredfl-dir-name ((t (:foreground ,mercury))))
   `(diredfl-dir-priv ((t (:foreground ,mercury))))
   `(diredfl-file-name ((t (:foreground ,text))))
   `(diredfl-file-suffix ((t (:foreground ,faint))))
   `(diredfl-symlink ((t (:foreground ,saturn))))
   `(diredfl-number ((t (:foreground ,venus))))
   `(diredfl-date-time ((t (:foreground ,faint))))
   `(diredfl-deletion ((t (:foreground ,mars :weight bold))))
   `(diredfl-deletion-file-name ((t (:foreground ,mars :strike-through t))))
   `(diredfl-flag-mark ((t (:foreground ,moon :weight bold :background ,overlay))))
   `(diredfl-flag-mark-line ((t (:background ,overlay))))
   `(diredfl-ignored-file-name ((t (:foreground ,muted))))
   `(diredfl-compressed-file-suffix ((t (:foreground ,saturn))))
   `(diredfl-compressed-file-name ((t (:foreground ,text))))
   `(diredfl-executable-flag ((t (:foreground ,jupiter :weight bold))))
   `(diredfl-read-priv ((t (:foreground ,venus))))
   `(diredfl-write-priv ((t (:foreground ,venus))))
   `(diredfl-exec-priv ((t (:foreground ,jupiter))))
   `(diredfl-no-priv ((t (:foreground ,muted))))
   `(diredfl-rare-priv ((t (:foreground ,saturn :weight bold))))
   `(diredfl-link-priv ((t (:foreground ,saturn))))
   `(diredfl-autofile-name ((t (:foreground ,faint :slant italic))))
   `(diredfl-tagged-autofile-name ((t (:foreground ,moon :slant italic))))

   ;; --- flymake --------------------------------------------------------
   `(flymake-error ((t (:underline (:style wave :color ,mars)))))
   `(flymake-warning ((t (:underline (:style wave :color ,venus)))))
   `(flymake-note ((t (:underline (:style wave :color ,mercury)))))
   `(flymake-error-echo ((t (:foreground ,mars))))
   `(flymake-warning-echo ((t (:foreground ,venus))))
   `(flymake-note-echo ((t (:foreground ,mercury))))

   ;; --- flycheck -------------------------------------------------------
   `(flycheck-error ((t (:underline (:style wave :color ,mars)))))
   `(flycheck-warning ((t (:underline (:style wave :color ,venus)))))
   `(flycheck-info ((t (:underline (:style wave :color ,mercury)))))
   `(flycheck-fringe-error ((t (:foreground ,mars :weight bold))))
   `(flycheck-fringe-warning ((t (:foreground ,venus :weight bold))))
   `(flycheck-fringe-info ((t (:foreground ,mercury :weight bold))))
   `(flycheck-error-list-error ((t (:foreground ,mars :weight bold))))
   `(flycheck-error-list-warning ((t (:foreground ,venus :weight bold))))
   `(flycheck-error-list-info ((t (:foreground ,mercury))))

   ;; --- jinkx monsoon ---------------------------------------------------
   `(jinx-misspelled ((t (:foreground ,mars :underline (:style wave :color ,mars)))))
   `(jinx-highlight ((t (:foreground ,base :background ,venus))))

   ;; --- eldoc / help hints & tooltips -----------------------------------
   `(eldoc-highlight-function-argument ((t (:foreground ,moon :weight bold))))
   `(eldoc-box-body ((t (:background ,surface :foreground ,text))))
   `(eldoc-box-border ((t (:background ,muted))))

   ;; --- markdown-mode -------------------------------------------------
   `(markdown-header-face ((t (:foreground ,moon :weight bold))))
   `(markdown-header-face-1 ((t (:foreground ,moon :weight bold))))
   `(markdown-header-face-2 ((t (:foreground ,venus :weight bold))))
   `(markdown-header-face-3 ((t (:foreground ,jupiter :weight bold))))
   `(markdown-header-face-4 ((t (:foreground ,saturn :weight bold))))
   `(markdown-header-face-5 ((t (:foreground ,mercury :weight bold))))
   `(markdown-header-face-6 ((t (:foreground ,mars :weight bold))))
   `(markdown-header-delimiter-face ((t (:foreground ,muted))))
   `(markdown-link-face ((t (:foreground ,mercury :underline t))))
   `(markdown-url-face ((t (:foreground ,mercury :slant italic :underline t))))
   `(markdown-code-face ((t (:foreground ,jupiter))))
   `(markdown-inline-code-face ((t (:foreground ,jupiter))))
   `(markdown-blockquote-face ((t (:foreground ,faint :slant italic))))
   `(markdown-list-face ((t (:foreground ,venus))))
   `(markdown-bold-face ((t (:weight bold))))
   `(markdown-italic-face ((t (:slant italic))))
   `(markdown-strike-through-face ((t (:strike-through t :foreground ,muted))))
   `(markdown-markup-face ((t (:foreground ,muted))))

   ;; --- org-mode basics ------------------------------------------------
   `(org-level-1 ((t (:foreground ,moon :weight bold))))
   `(org-level-2 ((t (:foreground ,venus :weight bold))))
   `(org-level-3 ((t (:foreground ,jupiter :weight bold))))
   `(org-level-4 ((t (:foreground ,saturn :weight bold))))
   `(org-level-5 ((t (:foreground ,mercury :weight bold))))
   `(org-level-6 ((t (:foreground ,mars :weight bold))))
   `(org-document-title ((t (:foreground ,moon :weight bold))))
   `(org-document-info ((t (:foreground ,faint))))
   `(org-block ((t (:background ,surface :foreground ,text))))
   `(org-block-begin-line ((t (:background ,surface :foreground ,muted))))
   `(org-block-end-line ((t (:background ,surface :foreground ,muted))))
   `(org-code ((t (:foreground ,jupiter))))
   `(org-verbatim ((t (:foreground ,saturn))))
   `(org-link ((t (:foreground ,mercury :underline t))))
   `(org-todo ((t (:background ,mars :foreground ,base :weight bold))))
   `(org-done ((t (:background ,jupiter :foreground ,base :weight bold))))
   `(org-headline-todo ((t (:foreground ,mars))))
   `(org-headline-done ((t (:foreground ,jupiter))))
   `(org-date ((t (:foreground ,muted :underline t))))
   `(org-tag ((t (:foreground ,faint))))
   `(org-special-keyword ((t (:foreground ,muted))))
   `(org-quote ((t (:foreground ,faint :slant italic))))
   `(org-macro ((t (:foreground ,venus))))
   `(org-table ((t (:foreground ,mercury))))
   `(org-footnote ((t :foreground ,moon :underline t)))
   ;; custom todo keywords
   `(sailorfe-org-todo-next ((t (:background ,moon :foreground ,base :weight bold))))
   `(sailorfe-org-todo-prog ((t (:background ,saturn :foreground ,base :weight bold))))
   `(sailorfe-org-todo-wait ((t (:background ,mercury :foreground ,base :weight bold))))
   `(sailorfe-org-todo-void ((t (:background ,high :foreground ,base :weight bold :strikethrough t))))

   ;; --- org-agenda -----------------------------------------------------
   `(org-agenda-structure ((t (:foreground ,moon :weight bold))))
   `(org-agenda-date ((t (:foreground ,mercury))))
   `(org-agenda-date-weekend ((t (:foreground ,faint))))
   `(org-agenda-date-today ((t (:foreground ,moon :weight bold :underline t))))
   `(org-agenda-current-time ((t (:foreground ,venus))))
   `(org-agenda-clocking ((t (:background ,med))))
   `(org-agenda-done ((t (:foreground ,jupiter))))
   `(org-agenda-dimmed-todo-face ((t (:foreground ,muted))))
   `(org-agenda-restriction-lock ((t (:background ,overlay))))
   `(org-agenda-filter-tags ((t (:foreground ,saturn))))
   `(org-time-grid ((t (:foreground ,muted))))
   `(org-scheduled ((t (:foreground ,text))))
   `(org-scheduled-today ((t (:foreground ,moon))))
   `(org-scheduled-previously ((t (:foreground ,venus))))
   `(org-upcoming-deadline ((t (:foreground ,venus))))
   `(org-upcoming-distant-deadline ((t (:foreground ,faint))))
   `(org-imminent-deadline ((t (:foreground ,mars :weight bold))))
   `(org-warning ((t (:foreground ,mars :weight bold))))
   `(org-priority ((t (:foreground ,saturn))))
   `(org-column ((t (:background ,surface))))
   `(org-column-title ((t (:background ,surface :foreground ,moon :weight bold))))

   ;; --- magit ------------------------------------------------------------

   ;; sections / headers
   `(magit-section-heading ((t (:foreground ,moon :weight bold))))
   `(magit-section-heading-selection ((t (:background ,overlay :foreground ,moon :weight bold))))
   `(magit-section-highlight ((t (:background ,surface))))

   ;; popup / transient interface
   `(transient-heading ((t (:foreground ,moon :weight bold))))
   `(transient-key ((t (:foreground ,mercury :weight bold))))
   `(transient-argument ((t (:foreground ,jupiter))))
   `(transient-value ((t (:foreground ,venus))))
   `(transient-inactive-argument ((t (:foreground ,muted))))
   `(transient-inactive-value ((t (:foreground ,muted))))

   ;; branch / refs
   `(magit-branch-local ((t (:foreground ,jupiter :weight bold))))
   `(magit-branch-remote ((t (:foreground ,mercury :weight bold))))
   `(magit-branch-current ((t (:foreground ,moon :weight bold))))
   `(magit-branch-upstream ((t (:foreground ,venus))))
   `(magit-head ((t (:foreground ,moon :weight bold))))

   `(magit-tag ((t (:foreground ,saturn :weight bold))))

   ;; commit metadata
   `(magit-log-author ((t (:foreground ,text))))
   `(magit-log-date ((t (:foreground ,muted))))
   `(magit-log-graph ((t (:foreground ,faint))))
   `(magit-hash ((t (:foreground ,muted))))
   `(magit-reflog-commit ((t (:foreground ,jupiter))))
   `(magit-reflog-other ((t (:foreground ,mercury))))

   ;; commit messages
   `(magit-diff-file-heading ((t (:foreground ,moon :weight bold))))
   `(magit-diff-file-heading-highlight ((t (:background ,surface :foreground ,moon :weight bold))))
   `(magit-diff-file-heading-selection ((t (:background ,overlay :foreground ,light :weight bold))))
   `(magit-diff-hunk-heading ((t (:background ,surface :foreground ,mercury))))
   `(magit-diff-hunk-heading-highlight ((t (:background ,overlay :foreground ,moon))))
   `(magit-diff-hunk-heading-selection ((t (:background ,overlay :foreground ,light))))

   ;; diff content
   `(magit-diff-context ((t (:foreground ,faint))))
   `(magit-diff-context-highlight ((t (:background ,surface :foreground ,text))))

   `(magit-diff-added ((t (:foreground ,jupiter))))
   `(magit-diff-added-highlight ((t (:background ,jupiter :foreground ,base))))

   `(magit-diff-removed ((t (:foreground ,mars))))
   `(magit-diff-removed-highlight ((t (:background ,mars :foreground ,light))))

   `(magit-diff-added-highlight ((t (:background ,jupiter :foreground ,base))))
   `(magit-diff-removed-highlight ((t (:background ,mars :foreground ,light))))

   `(magit-diff-whitespace-warning ((t (:background ,venus :foreground ,base))))

   ;; status buffer
   `(magit-diffstat-added ((t (:foreground ,jupiter))))
   `(magit-diffstat-removed ((t (:foreground ,mars))))
   `(magit-diffstat-neutral ((t (:foreground ,muted))))

   `(magit-status-heading ((t (:foreground ,moon :weight bold))))
   `(magit-status-heading-key ((t (:foreground ,mercury))))
   `(magit-status-untracked ((t (:foreground ,saturn))))
   `(magit-status-ignored ((t (:foreground ,muted))))
   `(magit-status-modified ((t (:foreground ,venus))))
   `(magit-status-added ((t (:foreground ,jupiter))))
   `(magit-status-renamed ((t (:foreground ,mercury))))
   `(magit-status-conflict ((t (:foreground ,mars :weight bold))))

   ;; process / errors
   `(magit-process-ok ((t (:foreground ,jupiter :weight bold))))
   `(magit-process-ng ((t (:foreground ,mars :weight bold))))

   ;; blame
   `(magit-blame-heading ((t (:background ,surface :foreground ,text))))
   `(magit-blame-highlight ((t (:background ,overlay))))
   `(magit-blame-date ((t (:foreground ,muted))))
   `(magit-blame-name ((t (:foreground ,moon))))

   ;; --- in-buffer completion popups (corfu) ----------------------------
   `(corfu-default ((t (:background ,surface :foreground ,text))))
   `(corfu-current ((t (:background ,overlay :foreground ,moon :weight bold))))
   `(corfu-bar ((t (:background ,high))))
   `(corfu-border ((t (:background ,muted))))
   `(corfu-annotations ((t (:foreground ,muted :slant italic))))
   `(corfu-deprecated ((t (:foreground ,muted :strike-through t))))

   ;; --- in-buffer completion popups (company) --------------------------
   `(company-tooltip ((t (:background ,surface :foreground ,text))))
   `(company-tooltip-selection ((t (:background ,overlay :foreground ,moon :weight bold))))
   `(company-tooltip-common ((t (:foreground ,moon :weight bold))))
   `(company-tooltip-common-selection ((t (:foreground ,moon :weight bold :underline t))))
   `(company-tooltip-annotation ((t (:foreground ,muted :slant italic))))
   `(company-tooltip-annotation-selection ((t (:foreground ,faint :slant italic))))
   `(company-tooltip-mouse ((t (:background ,overlay))))
   `(company-tooltip-search ((t (:background ,med :foreground ,venus))))
   `(company-tooltip-search-selection ((t (:background ,med :foreground ,venus))))
   `(company-scrollbar-bg ((t (:background ,surface))))
   `(company-scrollbar-fg ((t (:background ,high))))
   `(company-preview ((t (:foreground ,muted))))
   `(company-preview-common ((t (:foreground ,moon :weight bold))))
   `(company-preview-search ((t (:background ,med :foreground ,venus))))

   ;; --- minibuffer completion UI ---------------------------------------
   `(vertico-current ((t (:background ,overlay :foreground ,moon :weight bold))))
   `(vertico-group-title ((t (:foreground ,faint :weight bold))))
   `(vertico-group-separator ((t (:foreground ,muted :strike-through t))))
   `(vertico-multiline ((t (:foreground ,muted))))
   `(orderless-match-face-0 ((t (:foreground ,moon :weight bold))))
   `(orderless-match-face-1 ((t (:foreground ,mercury :weight bold))))
   `(orderless-match-face-2 ((t (:foreground ,jupiter :weight bold))))
   `(orderless-match-face-3 ((t (:foreground ,saturn :weight bold))))

   ;; --- eww -------------------------------------------------------------
   `(eww-form-file ((t (:foreground ,base :background ,faint :box nil))))
   `(eww-form-submit ((t (:foreground ,base :background ,faint :box nil))))
   `(eww-form-text ((t (:foreground ,base :background ,text :box nil))))
   `(eww-form-select ((t (:foreground ,base :background ,saturn :box nil))))
   `(eww-form-checkbox ((t (:foreground ,base :background ,saturn :box nil))))
   `(eww-form-textarea ((t (:foreground ,base :background ,text :box nil))))
   `(eww-invalid-certificate ((t :foreground ,mars :weight bold)))
   `(eww-valid-certificate ((t :foreground ,jupiter :weight bold)))

   ;; --- dashboard -------------------------------------------------------
   `(dashboard-heading ((t (:foreground ,mercury :weight bold))))
   `(dashboard-navigator ((t (:foreground ,moon :weight bold))))
   `(dashboard-items-face ((t (:foreground ,moon :weight bold))))
   `(dashboard-no-items-face ((t (:foreground ,muted :weight bold))))
   `(dashboard-footer-face ((t (:foreground ,faint :slant italic))))
   `(dashboard-text-banner ((t (:foreground ,mercury))))
   `(dashboard-banner-logo-title ((t (:foreground ,text))))
   
   ;; --- vterm -----------------------------------------------------------
   `(vterm-color-black ((t (:foreground ,low :background ,low))))
   `(vterm-color-bright-black ((t (:foreground ,med :background ,med))))
   `(vterm-color-red ((t (:foreground ,mars :background ,mars))))
   `(vterm-color-bright-red ((t (:foreground ,rei :background ,rei))))
   `(vterm-color-green ((t (:foreground ,jupiter :background ,jupiter))))
   `(vterm-color-bright-green ((t (:foreground ,makoto :background ,makoto))))
   `(vterm-color-yellow ((t (:foreground ,venus :background ,venus))))
   `(vterm-color-bright-yellow ((t (:foreground ,minako :background ,minako))))
   `(vterm-color-blue ((t (:foreground ,mercury :background ,mercury))))
   `(vterm-color-bright-blue ((t (:foreground ,ami :background ,ami))))
   `(vterm-color-magenta ((t (:foreground ,saturn :background ,saturn))))
   `(vterm-color-bright-magenta ((t (:foreground ,hotaru :background ,hotaru))))
   `(vterm-color-cyan ((t (:foreground ,moon :background ,moon))))
   `(vterm-color-bright-cyan ((t (:foreground ,usagi :background ,usagi))))
   `(vterm-color-white ((t (:foreground ,text :background ,text))))
   `(vterm-color-bright-white ((t (:foreground ,light :background ,light))))
   `(vterm-color-underline ((t (:foreground ,moon))))
   `(vterm-color-inverse-video ((t (:background ,base :inverse-video t))))))

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'moonqueen)

;;; moonqueen-theme.el ends here
