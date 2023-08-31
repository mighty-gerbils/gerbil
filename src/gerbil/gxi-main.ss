;;; -*- Gerbil -*-
;;; © vyzo
;;; gxi main function; included by main.ss

(def (gxi-print-usage!)
  (displayln "Usage: gxi arguments ...")
  (displayln)
  (displayln "Arguments: ")
  (displayln "  -h|--help|help                   display this help message exit")
  (displayln "  -v||--version|version            display the system version and exit")
  (displayln "  -l|--lang module                 set the current interpretation language; must precede any evaluation")
  (displayln "  -e|--eval <expr>                 evaluate an expression")
  (displayln "  :module                          import library module; if it exports a main function, evaluate it with the remaining arguments")
  (displayln "  file                             load file; if it defines a main function, evaluate it with the remaining arguments")
  (displayln "  -                                enter the repl")
  (displayln)
  (displayln "When no arguments other than options are supplied, enters the interactive repl"))

(def (gxi-main . args)
  (def can-set-lang? #t)
  (def end-interactive? #t)

  (let lp ((rest args))
    (match rest
      ([hd . rest]
       (cond
        ((member hd '("-h" "--help"))
         (gxi-print-usage!))
        ((member hd '("-v" "--version"))
         (displayln (gerbil-system-version-string)))
        ((member hd '("-l" "--lang"))
         (if can-set-lang?
           (match rest
             ([lang . rest]
              (if (string-prefix? ":" lang)
                (set-lang! (string->symbol lang))
                (set-lang! lang))
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
           (##repl-debug #f #f #t)
           (begin
             (##repl-debug #f #f #t)
             (lp rest))))
        ((string-prefix? "-" hd)
         (error "uknown option; try -h or --help for options" hd))
        ((string-prefix? ":" hd)
         (set! can-set-lang? #f)
         (set! end-interactive? #f)
         (let (module-id (string->symbol hd))
           (eval `(import ,module-id))
           (let* ((module-ctx (import-module module-id))
                  (module-main (with-catch false (cut find-runtime-symbol module-ctx 'main))))
             (if module-main
               (apply (eval module-main) rest)
               (lp rest)))))
        (else
         (set! can-set-lang? #f)
         (set! end-interactive? #f)
         (##load-module-or-file hd void)
         ;; see if we got a main
         (cond
          ((with-catch false (cut eval 'main))
           => (lambda (main) (apply main rest)))
          (else (lp rest))))))
      (else
       (when end-interactive?
         (init-interactive!)
         (##repl-debug #f #f #t))))))
