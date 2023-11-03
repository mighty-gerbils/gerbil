;;; -*- Gerbil -*-
;;; (C) vyzo
;;; Command-line option and command argument parsing

(import (only-in :std/error deferror-class Error:::init! exit-on-error? exit-with-error)
        (only-in :std/generic defgeneric)
        (only-in :std/iter for/collect in-iota)
        (only-in :std/misc/hash hash->list/sort)
        (only-in :std/misc/list when/list flatten)
        (only-in :std/misc/string as-string<?)
        (only-in :std/sugar try catch)
        (only-in :std/format format fprintf)
        (only-in :std/misc/list-builder with-list-builder))
(export getopt
        (rename: !getopt? getopt?)
        (rename: !top? getopt-object?)
        getopt-error?
        getopt-parse
        getopt-display-help
        getopt-display-help-topic
        option
        flag
        command
        argument
        optional-argument
        rest-arguments
        call-with-getopt
        getopt-parse->function-arguments
        call-with-getopt-parse
        call-with-processed-command-line
        ->getopt-spec)
(def current-getopt-parser
  (make-parameter #f))

(deferror-class GetOptError (getopt) getopt-error?
  (lambda (self msg args getopt)
    (Error:::init! self msg where: 'getopt irritants: args)
    (set! (@ self getopt) getopt)))
(def (raise-getopt-error msg . args)
  (raise (GetOptError msg args (current-getopt-parser))))
(def getopt-error-e GetOptError-getopt)

(defstruct !getopt (opts cmds args help))
(defstruct !top (key help))
(defstruct (!command !top) (opts args)
  final: #t)
(defstruct (!opt !top) (short long))
(defstruct (!option !opt) (value default)
  final: #t)
(defstruct (!flag !opt) ()
  final: #t)
(defstruct (!arg !top) (value))
(defstruct (!reqarg !arg) ()
  final: #t)
(defstruct (!optarg !arg) (default)
  final: #t)
(defstruct (!rest !arg) ()
  final: #t)

(def (getopt help: (help #f) . args)
  (let lp ((rest args) (opts []) (cmds []) (args []))
    (match rest
      ([hd . rest]
       (cond
        ((!opt? hd)
         (lp rest (cons hd opts) cmds args))
        ((!command? hd)
         (if (null? args)
           (lp rest opts (cons hd cmds) args)
           (error "Illegal command; already have arguments" hd)))
        ((!reqarg? hd)
         (if (null? cmds)
           (if (or (null? args)
                   (and (not (!optarg? (car args)))
                        (not (!rest? (car args)))))
             (lp rest opts cmds (cons hd args))
             (error "Illegal required argument; already have optional or rest arguments" hd))
           (error "Illegal required argument; already have commands" hd)))
        ((or (!optarg? hd)
             (!rest? hd))
         (if (null? cmds)
           (if (or (null? args)
                   (not (!rest? (car args))))
             (lp rest opts cmds (cons hd args))
             (error "Illegal optional argument; already have rest arguments" hd))
           (error "Illegal optional argument; alreday have commands" hd)))
        (else
         (error "Illegal argument; must be a getopt-object" hd))))
      (else
       (make-!getopt (reverse opts) (reverse cmds) (reverse args) help)))))

(def (flag id short (long #f)
           help: (help #f))
  (make-!flag id help short long))

(def (option id short (long #f)
             help: (help #f)
             value: (value-e identity)
             default: (default #f))
  (make-!option id help short long value-e default))

(def (command id help: (help #f) . args)
  (with ((!getopt opts cmds args) (apply getopt args))
    (if (null? cmds)
      (make-!command id help opts args)
      (error "Illegal command; cannot contain subcommands"))))

(def (argument id
               help: (help #f)
               value: (value-e identity))
  (make-!reqarg id help value-e))

(def (optional-argument id
                        help: (help #f)
                        value: (value-e identity)
                        default: (default #f))
  (make-!optarg id help value-e default))

(def (rest-arguments id
                     help: (help #f)
                     value: (value-e identity))
  (make-!rest id help value-e))

(def (getopt-parse gopt args)
  (let (ht (make-hash-table-eq))
    (getopt-parse! ht gopt args)))

(def (getopt-parse! ht gopt rest)
  (parameterize ((current-getopt-parser gopt))
    (with ((!getopt opts cmds args) gopt)
      (getopt-parse-opts! ht opts rest
                          (if (null? cmds)
                            (lambda (rest)
                              (getopt-parse-args! ht args rest))
                            (lambda (rest)
                              (getopt-parse-cmd! ht cmds rest)))))))

(def (getopt-parse-opts! ht opts rest K)
  (def (end rest)
    ;; check for options with default values
    (for-each (match <>
               ((!option key _ _ _ _ default)
                (unless (hash-key? ht key)
                  (hash-put! ht key default)))
               (else (void)))
              opts)
    (K rest))

  (def optht (make-hash-table))
  (for-each (lambda (opt)
              (with ((!opt _ _ short long) opt)
                (when short
                  (hash-put! optht short opt))
                (when long
                  (hash-put! optht long opt))))
            opts)

  (let lp ((rest rest))
    (match rest
      ([hd . rest*]
       (cond
        ((string-empty? hd)
         (lp rest*))
        ((eq? (string-ref hd 0) #\-)
         (cond
          ((equal? "--" hd)             ; end of options
           (end rest*))
          ((hash-get optht hd)
           => (lambda (opt)
                (match opt
                  ((!option key _ _ _ value-e)
                   (match rest*
                     ([val . rest*]
                      (hash-put! ht key (value-e val))
                      (lp rest*))
                     (else
                      (raise-getopt-error "Missing value for option" hd))))
                  ((!flag key)
                   (hash-put! ht key #t)
                   (lp rest*)))))
          (else
           (raise-getopt-error "Unknown option" hd))))
        (else                           ; doesn't look like an option
         (end rest))))
      (else                             ; we run out of arguments
       (end rest)))))

(def (getopt-parse-args! ht args rest)
  (let lp ((args args) (rest rest))
    (match args
      ([arg . args]
       (match arg
         ((!reqarg key _ value-e)
          (match rest
            ([val . rest]
             (hash-put! ht key (value-e val))
             (lp args rest))
            (else
             (raise-getopt-error "Missing argument" key))))
         ((!optarg key _ value-e default)
          (match rest
            ([val . rest]
             (hash-put! ht key (value-e val))
             (lp args rest))
            (else
             (hash-put! ht key default)
             (lp args rest))))
         ((!rest key _ value-e)
          (hash-put! ht key (map value-e rest))
          ht)))
      (else
       (unless (null? rest)
         (raise-getopt-error "Unexpected arguments" rest))
       ht))))

(def (getopt-parse-cmd! ht cmds rest)
  (def cmdht (make-hash-table))
  (for-each (lambda (cmd)
              (with ((!command key) cmd)
                (hash-put! cmdht (symbol->string key) cmd)))
            cmds)

  (match rest
    ([cmd . rest]
     (cond
      ((hash-get cmdht cmd)
       => (lambda (cmd)
            (with ((!command key _ opts args) cmd)
              (parameterize ((current-getopt-parser cmd))
                (getopt-parse-opts! ht opts rest
                                    (lambda (rest)
                                      (getopt-parse-args! ht args rest)
                                      (values key ht)))))))
      (else
       (raise-getopt-error "Unknown command" cmd))))
    (else
     (raise-getopt-error "Missing command"))))

(def (getopt->positional-names gopt)
  (def rest-name #f)
  (def argkey !top-key)
  (def names (with-list-builder (c)
               (for-each (lambda (arg)
                           (cond
                            ((or (!reqarg? arg) (!optarg? arg))
                             (c (argkey arg)))
                            ((!rest? arg) (set! rest-name (argkey arg)))))
                         (!getopt-args gopt))))
  (values names rest-name))

(def (getopt-display-help obj program (port (current-output-port)))
  (cond
   ((!getopt? obj)
    (display-help-getopt obj program port))
   ((!command? obj)
    (display-help-command obj program port))
   ((getopt-error? obj)
    (fprintf port "Error: ~a~n" (error-message obj))
    (unless (null? (error-irritants obj))
      (display "Irritants:" port)
      (for-each (lambda(x) (display " " port) (display x port))
                (error-irritants obj))
      (newline))
    (newline)
    (getopt-display-help (getopt-error-e obj) program port))
   (else
    (error "Unexpected object; expected a getopt, getopt-error, or command" obj))))

(def (getopt-display-help-topic gopt topic program (port (current-output-port)))
  (let lp ((rest (!getopt-cmds gopt)))
    (match rest
      ([cmd . rest]
       (if (eq? topic (!top-key cmd))
         (getopt-display-help cmd program port)
         (lp rest)))
      (else
       (getopt-display-help gopt program port)))))

(def (display-help-getopt obj program port)
  (with ((!getopt opts cmds args help) obj)
    (when help
      (fprintf port "~a: ~a~n~n" program help))
    (if (null? cmds)
      (begin
        (fprintf port "Usage: ~a ~a"
                 program
                 (if (null? opts) "" "[option ...]"))
        (display-args args port)
        (unless (null? opts)
          (fprintf port "~nOptions:~n")
          (display-option-help opts port))
        (unless (null? args)
          (fprintf port "~nArguments:~n")
          (display-arg-help args port)))
      (begin
        (fprintf port "Usage: ~a ~a <command> command-arg ...~n"
                 program
                 (if (null? opts) "" "[option ...]"))
        (unless (null? opts)
          (fprintf port "~nOptions:~n")
          (display-option-help opts port))
        (fprintf port "~nCommands:~n")
        (for-each (match <>
                    ((!command key help)
                     (fprintf port " ~a ~a ~a~n"
                              key
                              (tabs key)
                              (or help "?"))))
                  cmds)))))

(def (display-help-command obj program port)
  (with ((!command key help opts args) obj)
    (fprintf port "Usage: ~a ~a~a"
             program key
             (if (null? opts) "" " [command-option ...]"))
    (display-args args port)
    (fprintf port "       ~a~n" help)
    (unless (null? opts)
      (fprintf port "~nCommand Options:~n")
      (display-option-help opts port))
    (unless (null? args)
      (fprintf port "~nArguments:~n")
      (display-arg-help args port))))

(def (display-args args port)
  (for-each (match <>
              ((!reqarg key)
               (fprintf port " <~a>" key))
              ((!optarg key)
               (fprintf port " [<~a>]" key))
              ((!rest key)
               (fprintf port " <~a> ..." key)))
            args)
  (newline port))

(def (display-option-help opts port)
  (for-each (match <>
              ((!option id help short long _ default)
               (fprintf port " ~a ~a <~a> ~a ~a [default: ~a]~n"
                        (or short "")
                        (or long "")
                        id
                        (tabs (or short "") " " (or long "") " <" (symbol->string id) ">")
                        (or help "?")
                        default))
              ((!flag _ help short long)
               (fprintf port " ~a ~a ~a ~a~n"
                        (or short "")
                        (or long "")
                        (tabs (or short "") " " (or long ""))
                        (or help "?"))))
            opts))

(def (display-arg-help args port)
  (for-each (match <>
              ((!reqarg key help)
               (fprintf port " ~a ~a ~a~n"
                        key (tabs key) (or help "?")))
              ((!optarg key help _ default)
               (fprintf port " ~a ~a ~a [default: ~a]~n"
                        key (tabs key) (or help "?")
                        default))
              ((!rest key help)
               (fprintf port " ~a ~a ~a~n"
                        key (tabs key) (or help "?"))))
            args))

(def (tabs . strs)
  (def tablen 31)
  (def (string-e str)
    (if (symbol? str)
      (symbol->string str)
      str))

  (let* (len (foldl + 0 (map string-length (map string-e strs))))
    (if (fx< len tablen)
      (make-string (fx- tablen len) #\space)
      "")))

(def (call-with-getopt proc args
                       program: program
                       help: (help #f)
                       exit-on-error: (exit? (exit-on-error?))
                       . gopts)
  (def (parse! gopt)
    (try
     (getopt-parse gopt args)
     (catch (e)
       (cond
        ((not exit?) (raise e))
        ((getopt-error? e)
         (getopt-display-help e program (current-error-port))
         (exit 1))
        (else
         (exit-with-error e))))))

  (let* ((gopt (apply getopt help: help gopts))
         (cmds (!getopt-cmds gopt)))
    (if (null? cmds)
      ;; it only has options; add -h/--help
      (let ((help-flag
             (flag 'help "-h" "--help"
               help: "display help"))
            (opts (!getopt-opts gopt)))
        (if (null? opts)
          (set! (!getopt-opts gopt)
            [help-flag])
          (set-cdr! (last-pair opts)
                    [help-flag]))
        (let (opt (parse! gopt))
          (if (hash-get opt 'help)
            (getopt-display-help gopt program)
            (proc opt))))
      ;; it has commands; add help <command>
      (let (help-cmd
            (command 'help  help: "display help; help <command> for command help"
              (optional-argument 'command value: string->symbol)))
        (set-cdr! (last-pair cmds) [help-cmd])
        (let ((values cmd opt) (parse! gopt))
          (if (eq? cmd 'help)
            (getopt-display-help-topic gopt (hash-get opt 'command) program)
            (proc cmd opt)))))))

(def (getopt-parse->positional-arguments! gopt h)
  (defvalues (names rest-name) (getopt->positional-names gopt))
  (def (extract n) (begin0 (hash-get h n) (hash-remove! h n)))
  (def positional (map extract names))
  (def rest (when/list rest-name (extract rest-name)))
  (append positional rest))

(def (getopt-parse->function-arguments gopt h)
  (def positionals (getopt-parse->positional-arguments! gopt h))
  (append positionals
          (foldr (lambda (kv l) (cons* (make-keyword (car kv)) (cdr kv) l)) '()
                 (hash->list/sort h as-string<?))))

(def (call-with-getopt-parse gopt hash fun)
  (apply fun (getopt-parse->function-arguments gopt hash)))

(defgeneric call-with-processed-command-line
  (lambda (processor command-line function)
    (cond
     ((!getopt? processor)
      (call-with-getopt-parse processor (getopt-parse processor command-line) function))
     ((list? processor)
      (call-with-processed-command-line (apply getopt processor) command-line function)))))

(defgeneric ->getopt-spec
  (lambda (spec)
    (cond
     ((list? spec) (flatten spec))
     ((fx>=0? spec) (for/collect ((i (in-iota spec 1))) (argument (format "arg~d" i))))
     ((not spec) (rest-arguments "rest"))
     (else (error "Bad getopt spec")))))
