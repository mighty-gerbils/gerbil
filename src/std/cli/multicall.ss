;; -*- Gerbil -*-
;;;; Support for building a single multicall binary.

(export #t)

(import
  (only-in :std/cli/getopt getopt getopt-display-help-topic getopt-display-help
           call-with-processed-command-line ->getopt-spec
           command flag option argument optional-argument rest-arguments)
  (only-in :std/cli/print-exit begin-print-exit)
  (only-in :std/cli/shell easy-shell-character?)
  (only-in :std/format format)
  (only-in :std/generic defgeneric)
  (only-in :std/iter for/collect)
  (only-in :std/misc/hash hash->list/sort)
  (only-in :std/misc/list flatten)
  (only-in :std/misc/number nat?)
  (only-in :std/misc/string as-string<?)
  (only-in :std/sort sort)
  (only-in :std/srfi/13 string-filter)
  (only-in :std/sugar defrule with-id))

(def current-program (make-parameter []))
(def entry-points (make-hash-table))

(def (current-program-string (program (current-program)))
  (string-join (reverse (flatten program)) " "))

(defstruct entry-point (name function help getopt) transparent: #t)

(def (entry-points-getopt-spec (h entry-points))
  (for/collect (([name . e] (hash->list/sort h as-string<?)))
    (apply command name help: (entry-point-help e)
           (->getopt-spec (entry-point-getopt e)))))

;; TODO: allow registering a getopt: structure and/or other command information,
;; so we can show detailed help and automatically parse arguments?
;; TODO: also allow a preprocess: function to further process the result of getopt (if specified)
;; or the raw arguments (if no getopt specified).
(def (register-entry-point function
                           id: (id #f) name: (name #f) help: (help #f)
                           getopt: (getopt #f))
  (let (name (make-symbol (or name (string-filter easy-shell-character? (as-string id)))))
    (hash-put! entry-points name (make-entry-point name function help getopt))))

;; TODO: syntax to specify not just help, but getopt, etc.
(defrule (define-entry-point (id . formals) (options ...) body ...)
  (begin (def (id . formals) body ...)
         (register-entry-point id id: 'id options ...)))

(def multicall-default 'help) ;; NB: after v0.19, we can use defmutable

(def (set-default-entry-point! x)
  (set! multicall-default x))

(define-entry-point (help (command #f))
  (help: "Print help about available commands"
   getopt: [(optional-argument 'command help: "subcommand for which to display help")])
  #;(displayln (display-build-manifest (build-manifest/head))) ;; only available in v0.19
  (def gopt (apply getopt (entry-points-getopt-spec)))
  (def program (current-program-string (cdr (current-program))))
  (if command
    (getopt-display-help-topic gopt (make-symbol command) program)
    (getopt-display-help gopt program)))

;; TODO: also handle getopt specifications?
(define-entry-point (meta)
  (help: "Print meta-information for completion purposes"
   getopt: [])
  (displayln (string-join (sort (map as-string (hash-keys entry-points)) string<?) " ")))

;; Only available in v0.19
;; TODO: add a flag for shortening the layer names?
#;
(define-entry-point (version all?: (all? #f) layer: (layer #f))
  (help: "Print software version"
   getopt: [(flag 'all? "-a" "--all" help: "also show versions of previous layers")
            (option 'layer "-l" "--layer" help: "show versions for specified layer")])
  (display-build-manifest (cond (all? build-manifest)
                                (layer (build-manifest/layer layer))
                                (else (build-manifest/head))))
  (newline))

(def (call-entry-point/internal command args)
  (match (hash-get entry-points (make-symbol command))
    (#f (raise (format "Unknown command ~s. Try command help.\n" command)))
    ((entry-point _name fun _help getopt)
     (parameterize ((current-program (cons command (current-program))))
       (call-with-processed-command-line getopt args fun)))))

(def (call-entry-point . args)
  (begin-print-exit
   (match args
     ([] (call-entry-point/internal multicall-default []))
     ([command . args] (call-entry-point/internal command args)))))

(defrules define-multicall-main ()
  ((_ ctx) (with-id ctx (main) (define main call-entry-point)))
  ((d) (d d)))
