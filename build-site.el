;; Set the package installation directory so that packages aren't stored in the
;; ~/.emacs.d/elpa path.
(require 'package)
(setq package-user-dir (expand-file-name "./.packages"))
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))

;; Initialize the package system
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

;; Install dependencies
(package-install 'htmlize)
;; (package-install 'ox-rss)
(add-to-list 'load-path ".")
(require 'sg-ox-rss)

;; Load the publishing system
(require 'ox-publish)

;; Customize the HTML output
(setq org-html-validation-link nil            ;; Don't show validation link
      org-html-head-include-scripts nil       ;; Use our own scripts
      org-html-head-include-default-style nil ;; Use our own styles
      org-html-head "<link rel=\"stylesheet\" href=\"https://cdn.simplecss.org/simple.min.css\" />")

;; Define the publishing project
(setq org-publish-project-alist
      '(("lug@uic"
         :recursive t
         :base-directory "./content"
	 :base-extension "org"
         :publishing-function org-html-publish-to-html
         :publishing-directory "./public"
	 :html-use-infojs nil ;; No JS bloatware, thanks.
         :with-author nil           ;; Don't include author name
         :with-creator t            ;; Include Emacs and Org versions in footer
         :with-toc t                ;; Include a table of contents
         :section-numbers nil       ;; Don't include section numbers
         :time-stamp-file t
	 :makeindex nil
	 :exclude "events.org"
	 :auto-sitemap t
	 :sitemap-title "")
	("lug-static"
	 :base-directory "./content"
	 :base-extension '("png" "xsl")
	 :publishing-directory "./public"
	 :publishing-function org-publish-attachment
	 :recursive t)
	("blog-rss"
	 :base-directory "./content"
	 :base-extension "org"
	 :html-link-use-abs-url t
	 :exclude ".*"
	 :include ("events.org")
	 :table-of-contents nil
	 :rss-stylesheet "./style.xsl"
	 :publishing-function org-rss-publish-to-rss
	 :publishing-directory "./public")))    ;; Don't include time stamp in file

;; Generate the site output
(org-publish-all t)

(message "Build complete!")
