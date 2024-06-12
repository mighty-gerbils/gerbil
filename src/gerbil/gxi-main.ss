;;; -*- Gerbil -*-
;;; © vyzo
;;; gxi main function; included by main.ss

(def (gxi-print-usage!)
  (displayln "Usage: gxi [options ...] arguments ...")
  (displayln)
  (displayln "Options: ")
  (displayln "  -h|--help|help                   display this help message exit")
  (displayln "  -v||--version|version            display the system version and exit")
  (displayln "  -L|--load module|file            import a module (if begins with :) or load a file")
  (displayln "  -r|--run module                  import a module and run its main function with the remaining arguments")
  (displayln "  -l|--lang module                 set the current interpretation language; must precede any evaluation")
  (displayln "  -e|--eval <expr>                 evaluate an expression")
  (displayln)
  (displayln "Arguments: ")
  (displayln "  -                                enter the repl")
  (displayln "  :module                          import library module; if it exports a main function, apply it with the remaining arguments")
  (displayln "  file                             load file; if it defines a main function, apply it with the remaining arguments")
  (displayln)
  (displayln "When no arguments or options other than --lang are supplied, enters the interactive repl")
  (force-output))

(def (gxi-main . args)
  (def can-set-lang? #t)
  (def end-interactive? #t)

  (defrules enter-repl! ()
    ((_) (##repl-debug #f #f #t)))

  (defrules try-main! ()
    ((_ args E)
     (cond
      ((with-catch false (cut eval 'main))
       => (lambda (main) (apply main args)))
      (else (E args)))))

  (let lp ((rest args))
    (match rest
      ([hd . rest]
       (cond
        ((member hd '("-h" "--help"))
         (gxi-print-usage!))
        ((member hd '("-v" "--version"))
         (displayln (gerbil-system-version-string))
         (force-output))
        ((member hd '("-L" "--load"))
         (match rest
           ([x . rest]
            (if (string-prefix? ":" x)
              (eval `(import ,(string->symbol x)))
              (load x))
            (lp rest))
           (else
            (error "missing argument for file to load"))))
        ((member hd '("-r" "--run"))
         (match rest
           ([x . rest]
            (let (mod (if (string-prefix? ":" x)
                        (string->symbol x)
                        x))
              (eval `(import ,mod))
              (try-main! rest (lambda (args) (error "cannot run module" x args)))))
           (else
            (error "missing argument for module to run"))))
        ((member hd '("-l" "--lang"))
         (if can-set-lang?
           (match rest
             ([lang . rest]
              (if (string-prefix? ":" lang)
                (set-lang! (string->symbol lang))
                (case lang
                  (("gerbil" "polydactyl" "r7rs")
                   (set-lang! (string->symbol lang)))
                  (else
                   (set-lang! lang))))
              (set! can-set-lang? #f)
              (lp rest))
             (else
              (error "improperly placed language option")))
           (error "improperly placed language option; language can only be set before evaluation")))
        ((member hd '("-e" "--eval"))
         (set! can-set-lang? #f)
         (set! end-interactive? #f)
         (match rest
           ([expr . rest]
            (let (expr (call-with-input-string expr read))
              (eval expr)
              (lp rest)))
           (else
            (error "improperly placed eval option"))))
        ((member hd '("-"))
         (set! can-set-lang? #f)
         (set! end-interactive? #f)
         (if (null? rest)
           (enter-repl!)
           (begin
             (enter-repl!)
             (lp rest))))
        ((string-prefix? "-" hd)
         (error "unknown option; try -h or --help for options" hd))
        ((string-prefix? ":" hd)
         (set! can-set-lang? #f)
         (set! end-interactive? #f)
         (let (module-id (string->symbol hd))
           (eval `(import ,module-id))
           (try-main! rest lp)))
        (else
         (set! can-set-lang? #f)
         (set! end-interactive? #f)
         (##load-module-or-file hd void)
         (try-main! rest lp))))
      (else
       (when end-interactive?
         (init-interactive!)
         (enter-repl!))))))
