(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#current-compile-symbol-table (make-parameter '#f))
  (define gxc#current-compile-runtime-sections (make-parameter '#f))
  (define gxc#current-compile-runtime-names (make-parameter '#f))
  (define gxc#current-compile-output-dir (make-parameter '#f))
  (define gxc#current-compile-invoke-gsc (make-parameter '#f))
  (define gxc#current-compile-gsc-options (make-parameter '#f))
  (define gxc#current-compile-keep-scm (make-parameter '#f))
  (define gxc#current-compile-verbose (make-parameter '#f))
  (define gxc#current-compile-optimize (make-parameter '#f))
  (define gxc#current-compile-debug (make-parameter '#f))
  (define gxc#current-compile-generate-ssxi (make-parameter '#f))
  (define gxc#current-compile-static (make-parameter '#f))
  (define gxc#current-compile-timestamp (make-parameter '#f))
  (define gxc#symbol-table::t
    (make-struct-type
     'gxc#symbol-table::t
     '#f
     '2
     'symbol-table
     '()
     ':init!
     '(gensyms bindings)))
  (define gxc#symbol-table? (make-struct-predicate gxc#symbol-table::t))
  (define gxc#make-symbol-table
    (lambda _$args826_
      (apply make-struct-instance gxc#symbol-table::t _$args826_)))
  (define gxc#symbol-table-gensyms
    (make-struct-field-accessor gxc#symbol-table::t '0))
  (define gxc#symbol-table-bindings
    (make-struct-field-accessor gxc#symbol-table::t '1))
  (define gxc#symbol-table-gensyms-set!
    (make-struct-field-mutator gxc#symbol-table::t '0))
  (define gxc#symbol-table-bindings-set!
    (make-struct-field-mutator gxc#symbol-table::t '1))
  (define gxc#symbol-table:::init!
    (lambda (_self824_)
      (if (##fx< '2 (##vector-length _self824_))
          (begin
            (##vector-set! _self824_ '1 (make-hash-table-eq))
            (##vector-set! _self824_ '2 (make-hash-table-eq)))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self824_))))
  (bind-method! gxc#symbol-table::t ':init! gxc#symbol-table:::init! '#f)
  (define gxc#raise-compile-error
    (lambda (_message698_ _stx699_ . _details700_)
      (apply gx#raise-syntax-error
             'compile
             _message698_
             _stx699_
             _details700_)))
  (define gxc#verbose
    (lambda _args696_
      (if (gxc#current-compile-verbose) (apply displayln _args696_) '#!void))))
