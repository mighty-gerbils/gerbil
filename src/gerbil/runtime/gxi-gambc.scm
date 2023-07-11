(##namespace (""))

  ;;(define __gx#default-gerbil-home "/usr/local/lib/gerbil")
  (define _gx#gerbil-libdir #f)

  (##include "~~lib/header.scm")
  (##include "~~gsi/_gsi.scm")

  (define (_gx#find-gerbil-home)
    (or (getenv "GERBIL_HOME" #f)
        (let* ((bin (path-directory (path-expand (car (command-line)))))
               (home (path-expand "../" bin))
               (libg (path-expand "lib/gerbil" home)))
          (if (file-exists? libg)
              (let ((nh (path-normalize home)))
                (set! __gx#default-gerbil-home nh)
                nh)
              #f))
         __gx#default-gerbil-home))

(define (_gx#init)
  (let* ((home
          (path-normalize
           (or (_gx#find-gerbil-home)
               (error "Cannot determine GERBIL_HOME"))))
         (libdir
          (path-expand "lib" home)))
    (set! _gx#gerbil-libdir libdir)
    (let* ((loadpath
            (cond
             ((getenv "GERBIL_LOADPATH" #f)
              => (lambda (ev)
                   (filter (lambda (path) (not (string-empty? path)))
                           (string-split ev #\:))))
             (else '())))
           (userpath
            (path-expand "lib" (getenv "GERBIL_PATH" "~/.gerbil")))
           (loadpath
            (if (file-exists? userpath)
                (cons (path-normalize userpath) loadpath) ; exists, pin it
                (cons userpath loadpath)))) ; maybe later (interactive gxi)
      (&current-module-libpath (cons libdir loadpath)))
    (&current-module-registry (make-hash-table))
    (current-readtable _gx#*readtable*)
    (load-module "gerbil/expander__rt")))


;;; -*- Gerbil -*-

;;; gxi Gambit executable: This is the interpreter as a command
;;; line implementation.  gxi was at one point a C language shim that called out
;;; to gsi. This is the merger of gsi/gxi.  // © drewc

;;; // gxi C shim: this is the gxi interpreter shim, which invokes gsi loading Gerbil
;;; // gxi was originally a shell script, but we've had it with the shebang madness in the
;;; //  various unix variants, so I wrote this.
;;; // © vyzo


(define _gx#gxi-usage #<<usage-end
usage: ^ [options] [module-or-file...]

This is the Gerbil Meta-Scheme interpreter.

Interactive mode (read-eval-print loop)
    ^ [global options]

Batch mode
    ^ [global options] module-or-file...
    Where each module-or-file is one of:
      .                            Adds CWD to module search order
      directory/                   Adds directory to module search order
      foo, foo/bar, ...            Run module or file on local file system
      github.com/gambit/hello      Run module hosted on public Git repository
      github.com/gambit/hello@1.0  Run specific version of module
      file.sld or
      file.scm         Run Scheme script (when the script starts with '#!' or
                       '@;' it receives any remaining command line arguments)
      file.oN          Run dynamically loadable object file produced by gsc
      -e 'expression'  Evaluate the given Scheme expression at this point
      -                Drop into a REPL at this point (continue with ,c)

Global options
    -f         Do not process '$GERBIL_HOME/init.ss' initialization files
    -v, --version        Show version information
    -?, --help  Show this help

usage-end
)

(define (_gx#main-gxi/gxc)
    (define (is-interactive? name args) (null? args))
    (define (exec-interactive-gxi cmdline)
  '())" "-")))
     )
     (define (write-usage-to-port usage program-name port)
      (let loop ((i 0) (j 0))
        (if (##fx< j (##string-length usage))
            (let ((j+1 (##fx+ j 1)))
              (if (##not (##char=? #\^ (##string-ref usage j)))
                  (loop i j+1)
                  (begin
                    (##write-substring usage i j port)
                    (case (##string-ref usage j+1)
                      ((#\R)
                       (##write-string runtime-options-usage port)
                       (loop (##fx+ j+1 1) (##fx+ j+1 1)))
                      (else
                       (##write-string program-name port)
                       (loop j+1 j+1))))))
            (##write-substring usage i j port))))

  (define (exec-gxi cmd args)
    (cond
     ((and (pair? args) (member (car args) '("-?" "--help" "-h" "-help")))
      (write-usage-to-port _gx#gxi-usage cmd ##stdout-port)
      (##exit 0))
     ((and (pair? args) (member (car args) '("-v" "--version" "-version")))
      (displayln (gerbil-version-string))
      (##exit 0))
     (else
     (let ((argv (gxi-argv cmd args)))
       (set! ##command-args (lambda _ argv)))))
    (_gx#init)
    (_gx#load-gxi)
    (##main-gsi/gsc))
  
  
  
  
  (let* ((cmd-name
          (##command-name))
         (cmd-args
          (##command-args)))


    ;(_gx#init)
    ;(_gx#load-gxi)
    ;(exec-interactive-gxi (cons* cmd-name cmd-args))
     (exec-gxi cmd-name cmd-args)
    ))

(##main-set! _gx#main-gxi/gxc)
