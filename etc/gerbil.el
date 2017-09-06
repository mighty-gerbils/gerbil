;;; (C) vyzo@hackzen.org
;;; gerbil editing mode
(require 'scheme)
(require 'cmuscheme)

(defun gerbil-mode ()
  (interactive)
  (kill-all-local-variables)
  (gerbil-mode-init)
  (scheme-mode-variables)
  (run-hooks 'scheme-mode-hook)
  (gerbil-init)
  (run-hooks 'gerbil-mode-hook))

(defun gerbil-mode-init ()
  (use-local-map scheme-mode-map)
  (setq major-mode 'gerbil-mode)
  (setq mode-name "Gerbil"))

(defgroup gerbil nil
  "Editing Gerbil code"
  :group 'scheme)

(defcustom gerbil-mode-hook nil
  "hook run when entering `gerbil-mode'.
The hook is run after scheme-mode-hook."
  :type 'hook
  :group 'gerbil)

(defun gerbil-import-file (fname)
  (comint-check-source fname)
  (comint-send-string
   (scheme-proc)
   (concat "(import \"" fname "\")\n")))

(defun gerbil-reload-file (fname)
  (comint-check-source fname)
  (comint-send-string
   (scheme-proc)
   (concat "(reload \"" fname "\")\n")))

(defun gerbil-import-current-buffer ()
  (interactive)
  (gerbil-import-file buffer-file-name))

(defun gerbil-reload-current-buffer ()
  (interactive)
  (gerbil-reload-file buffer-file-name))

(defvar gerbil-compile-optimize t)

(defun gerbil-compile-current-buffer ()
  (interactive)
  (let ((fname buffer-file-name)
        (buf (get-buffer-create "*gerbil-compile*")))
    (with-current-buffer buf
      (goto-char (point-max))
      (insert  "> gxc " (if gerbil-compile-optimize "-O " "") fname "\n"))
    (let ((proc (if gerbil-compile-optimize
                    (start-process "gxc" buf "gxc" "-O" fname)
                  (start-process "gxc" buf "gxc" fname))))
      (set-process-sentinel proc 'gerbil-compile-sentinel)
      (display-buffer buf))))

(defun gerbil-build ()
  (interactive)
  (let* ((dir (file-name-directory buffer-file-name))
         (build (gerbil-find-build-script dir))
         (buf (get-buffer-create "*gerbil-compile*")))
    (with-current-buffer buf
      (goto-char (point-max))
      (insert "> build " build "\n"))
    (let ((proc (start-process "build" buf build)))
      (set-process-sentinel proc 'gerbil-compile-sentinel)
      (display-buffer buf))))

(defun gerbil-find-build-script (dir)
  (let ((files (directory-files dir nil "^build.ss$")))
    (cond
     (files
      (concat dir (car files)))
     ((equal dir "/")
      (error "Cannot locate build script"))
     (t
      (let ((dir (file-name-directory (directory-file-name dir))))
        (gerbil-find-build-script dir))))))

(defvar gerbil-compile-mark-rx
  "^> \\(gxc\\|build\\)")
(defvar gerbil-error-locat-rx
  "\\(\\\"\\(\\\\\\\\\\|\\\\\"\\|[^\\\"\n]\\)+\\\"\\)@\\([0-9]+\\)\\.\\([0-9]+\\)[^0-9]")

(defun gerbil-compile-sentinel (proc evt)
  (let ((buf (process-buffer proc)))
    (when buf
      (cond
       ((equal evt "finished\n")
        (kill-buffer buf))
       ((or (string-prefix-p "exited" evt)
            (string-prefix-p "failed" evt))
        (with-current-buffer buf
          (goto-char (point-max))
          (when (re-search-backward gerbil-compile-mark-rx nil t)
            (let (limit (point))
              (goto-char (point-max))
              (when (re-search-backward gerbil-error-locat-rx limit t)
                (let ((loc (gerbil-extract-locat (buffer-substring (point) (point-max)))))
                  (switch-to-buffer (car loc))
                  (goto-line (cadr loc))
                  (forward-char (- (caddr loc) 1))
                  (mark-sexp)))))))
       (t
        (with-current-buffer buf
          (goto-char (point-max))
          (insert "\nProcess " evt)))))))

(defun gerbil-extract-locat (str)
  (and (string-match gerbil-error-locat-rx str)
       (let* ((name (substring str
                               (match-beginning 1)
                               (match-end 1)))
              (line (substring str
                               (match-beginning 3)
                               (match-end 3)))
              (col (substring str
                              (match-beginning 4)
                              (match-end 4))))
         (list (read name) (read line) (read col)))))

(defun gerbil-put (syms prop v)
  (dolist (x syms)
    (put x prop v)))

(defun gerbil-put-indent (syms v)
  (gerbil-put syms 'scheme-indent-function v))

(defun gerbil-fontlock-add (x)
  (font-lock-add-keywords nil (list x) t))

(defun gerbil-init-keywords ()
  (interactive)
  (gerbil-put '(import export declare include
                or and
                case-lambda
                call/cc call/values
                begin-syntax
                begin-foreign
                cond-expand
                for-each map foldl foldr
                unwind-protect
                )
              'scheme-indent-function 0)

  (gerbil-put '(if when unless
                set!
                begin-annotation begin0
                datum->syntax syntax/loc
                core-match core-wrap
                with-syntax with-syntax*
                ast-rules
                with-ast with-ast*
                apply
                let-values letrec-values letrec*-values
                module
                syntax-parameterize
                rec alet alet*
                let-syntax letrec-syntax
                parameterize parameterize*
                error raise-syntax-error raise-type-error
                catch guard
                match match*
                with with*
                let/cc let/esc
                lambda%
                identifier-rules
                letrec*
                while
                )
              'scheme-indent-function 1)
  (gerbil-put '(syntax-case ast-case core-syntax-case core-ast-case
                 do-while
                 )
              'scheme-indent-function 2)
  (gerbil-put '(def defvalues extern
                 defalias defsyntax defrule defrules defrules*
                  defstruct defclass defmethod
                  definline definline*
                  define-values define-syntaxes
                  defsyntax/parameter
                  ;; defgeneric defasm struct
                  ;; :- :~
                  struct union class interface object
                )
              'scheme-indent-function 'defun)
  (gerbil-put '(let-registers)
              'scheme-indent-function 'scheme-let-indent)
  )

(defun gerbil-init-fontlock ()
  (interactive)
  (gerbil-fontlock-add
   (cons
    (concat
     "(" (regexp-opt '("import" "export" "declare" "include"
                       "module" "extern" "cond-expand" "require" "provide"
                       "if" "apply" "eval" "set!"
                       "when" "unless" "not"
                       "core-syntax-case" "core-ast-case"
                       "syntax-case" "ast-case" "ast-rules"
                       "identifier-rules"
                       "core-match"
                       "with-syntax" "with-syntax*"
                       "with-ast" "with-ast*"
                       "apply" "call/cc" "call/values"
                       "begin-syntax" "begin-annotation" "begin0"
                       "let-values" "letrec-values" "letrec*-values"
                       "letrec*" "rec"
                       "quote" "quasiquote" "unquote" "unquote-splicing"
                       "parameterize" "parameterize*"
                       "quote-syntax"
                       "syntax" "quasisyntax" "unsyntax" "unsyntax-splicing"
                       "syntax/loc"
                       "define-values" "define-alias"
                       "syntax-parameterize"
                       "alet" "alet*"
                       "error" "raise"
                       "cond-expand"
                       "let/cc" "let/esc"
                       "unwind-protect" "finally" "catch"
                       "begin-foreign"
                       "cut"
                       "object"
                       "with" "with*"
                       "match" "match*"
                       "lazy"
                       "sync" "wait"
                       "foldl" "foldr" "andmap" "ormap"
                       "size-of" "type-of"
                       "let-registers"
                       "spawn" "spawn*" "spawn/name" "try" "while"
                       "continue" "yield" "coroutine"
                       "<-" "<<" "->"
                       )
                     t)
     "\\>")
    1))
  (gerbil-fontlock-add
   '("\\(XXX\\|TODO\\)"
     (1 font-lock-warning-face)))
  (gerbil-fontlock-add
   '("\\_<\\(values\\)\\_>"
     (1 font-lock-keyword-face)))
  (gerbil-fontlock-add
   '("\\_<\\(\\sw+:\\)\\_>"
     (1 font-lock-builtin-face)))

  (gerbil-fontlock-add
   '("\\<\\(<>\\|<\\.\\.\\.>\\>\\)"
     (1 font-lock-builtin-face)))

  (gerbil-fontlock-add
   '("\\_<\\([.][.][.]\\)"
     (1 font-lock-builtin-face)))
  (gerbil-fontlock-add
   '("\\_<\\(=>\\)"
     (1 font-lock-builtin-face)))
  (gerbil-fontlock-add
   '("\\(#?[`',]\\)"
     (1 font-lock-keyword-face)))
  (gerbil-fontlock-add
   '("\\(#?,@\\)"
     (1 font-lock-keyword-face)))

  (gerbil-fontlock-add
   '("\\(%#\\w+\\)"
     (1 font-lock-builtin-face)))
  (gerbil-fontlock-add
   '("\\_<\\(:\\sw+\\)\\_>"
     (1 font-lock-variable-name-face)))
  (gerbil-fontlock-add
   '("(\\(@\\)"
     (1 font-lock-variable-name-face)))
  (gerbil-fontlock-add
   '("(\\(def\\)\\s-+(?\\(\\sw+\\)"
     (1 font-lock-keyword-face)
     (2 font-lock-function-name-face)))
  (gerbil-fontlock-add
   '("(\\(def\\)\\s-+\\(\\sw+\\)"
     (1 font-lock-keyword-face)
     (2 font-lock-function-name-face)))
  (gerbil-fontlock-add
   '("(\\(def[*]\\)\\s-+(*\\(\\sw+\\)"
     (1 font-lock-keyword-face)
     (2 font-lock-function-name-face)))
  (gerbil-fontlock-add
   '("(\\(defvalues\\)\\s-+(\\([^()]*\\))"
     (1 font-lock-keyword-face)
     (2 font-lock-function-name-face)))
  (gerbil-fontlock-add
   '("(\\(definline[*]?\\)\\s-+(?\\(\\sw+\\)"
     (1 font-lock-keyword-face)
     (2 font-lock-function-name-face)))
  (gerbil-fontlock-add
   '("(\\(defsyntax\\)\\s-+(?\\(\\sw+\\)"
     (1 font-lock-keyword-face)
     (2 font-lock-variable-name-face)))
  (gerbil-fontlock-add
   '("(\\(defsyntax-\\sw+\\)\\s-+(?\\(\\sw+\\)"
     (1 font-lock-keyword-face)
     (2 font-lock-variable-name-face)))
  (gerbil-fontlock-add
   '("(\\(defrule\\)\\s-+(\\(\\sw+\\)"
     (1 font-lock-keyword-face)
     (2 font-lock-variable-name-face)))
  (gerbil-fontlock-add
   '("(\\(defrules\\|defalias\\|module\\)\\s-+\\(\\sw+\\)"
     (1 font-lock-keyword-face)
     (2 font-lock-variable-name-face)))
  (gerbil-fontlock-add
   '("(\\(defun\\|deflabel\\)\\s-+\\(\\sw+\\)"
     (1 font-lock-keyword-face)
     (2 font-lock-function-name-face)))
  (gerbil-fontlock-add
   '("(\\(defasm\\|deftemplate\\)\\s-+\\(\\sw+\\)"
     (1 font-lock-keyword-face)
     (2 font-lock-variable-name-face)))
  (gerbil-fontlock-add
   '("(\\(deftype\\)\\s-+(?\\(\\sw+\\)"
     (1 font-lock-keyword-face)
     (2 font-lock-type-face)))
  (gerbil-fontlock-add
   '("(\\(def\\sw+-rules\\)\\s-+(?\\(\\sw+\\)"
     (1 font-lock-keyword-face)
     (2 font-lock-variable-name-face)))
  (gerbil-fontlock-add
   '("(\\(defstruct\\|defclass\\|class\\|struct\\|interface\\|union\\)\\s-+(?\\(\\sw+\\)"
     (1 font-lock-keyword-face)
     (2 font-lock-type-face)))
  (gerbil-fontlock-add
   '("(\\(defstruct-type\\|defclass-type\\)\\s-+\\(\\sw+\\)"
     (1 font-lock-keyword-face)
     (2 font-lock-type-face)))
  (gerbil-fontlock-add
   '("(\\(defgeneric\\|defmethod[*]?\\)\\s-+[{(]?\\(\\sw+\\)"
     (1 font-lock-keyword-face)
     (2 font-lock-function-name-face)))
  (gerbil-fontlock-add
   '("(\\(defproto\\)\\s-+\\(\\sw+\\)"
     (1 font-lock-keyword-face)
     (2 font-lock-type-face)))
  (gerbil-fontlock-add
   '("(\\(defregister\\|defvar\\|defconst\\)\\s-+\\(\\sw+\\)"
     (1 font-lock-keyword-face)
     (2 font-lock-variable-name-face)))

  (gerbil-fontlock-add
   '("\\_<\\([?!&]+\\)"
     (1 font-lock-builtin-face)))
  (gerbil-fontlock-add
   '("\\<\\(#[tf]\\|#!\\w+\\)"
     (1 font-lock-builtin-face)))
  (gerbil-fontlock-add
   '("\\([_#]+\\)"
     (1 font-lock-builtin-face)))

  (gerbil-fontlock-add
   '("\\([()]\\)"
     (1 paren-face)))
  (gerbil-fontlock-add
   '("\\([{}]\\|\\[\\|\\]\\)"
     (1 font-lock-variable-name-face)))
  )

(defun gerbil-pretty-lambdas ()
  (interactive)
  (gerbil-fontlock-add
   `("\\(lambda\\)"
     (0 (progn
          (compose-region (match-beginning 1) (match-end 1)
                          ,(make-char 'greek-iso8859-7 107))
          nil)))))

(defun gerbil-init ()
  (interactive)
  (gerbil-init-keywords)
  (gerbil-init-fontlock)
  (when window-system
    (gerbil-pretty-lambdas)))

(provide 'gerbil)
