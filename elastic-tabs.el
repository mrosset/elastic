;;; elastic-tabs.el --- Elastic tabs

;; Copyright (C) 2019 Mike Rosset

;; Author:   Mike Rosset <mike.rosset@gmail.com>
;; Version:  0.0.1-alpha
;; Keywords: tabs, format, elastic
;; URL:      https://github.com/mrosset/elastic

;;; Commentary:

;; Provides elastic tabs support


;;; ###autoload
(defun elastic-tabs-region ()
  (interactive)
  (let ((start (point)))
    (shell-command-on-region (region-beginning)
			     (region-end)
			     (expand-file-name "bin/elastic"
					       (getenv "GOPATH"))
			     nil
			     t)
    (goto-char start)))

(provide 'elastic-tabs)
