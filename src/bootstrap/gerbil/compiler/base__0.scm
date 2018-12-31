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
    (lambda _$args876_
      (apply make-struct-instance gxc#symbol-table::t _$args876_)))
  (define gxc#symbol-table-gensyms
    (make-struct-field-accessor gxc#symbol-table::t '0))
  (define gxc#symbol-table-bindings
    (make-struct-field-accessor gxc#symbol-table::t '1))
  (define gxc#symbol-table-gensyms-set!
    (make-struct-field-mutator gxc#symbol-table::t '0))
  (define gxc#symbol-table-bindings-set!
    (make-struct-field-mutator gxc#symbol-table::t '1))
  (define gxc#symbol-table:::init!
    (lambda (_self874_)
      (if (##fx< '2 (##vector-length _self874_))
          (begin
            (##vector-set! _self874_ '1 (make-table 'test: eq?))
            (##vector-set! _self874_ '2 (make-table 'test: eq?)))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self874_))))
  (bind-method! gxc#symbol-table::t ':init! gxc#symbol-table:::init! '#f)
  (define gxc#raise-compile-error
    (lambda (_message748_ _stx749_ . _details750_)
      (apply gx#raise-syntax-error
             'compile
             _message748_
             _stx749_
             _details750_)))
  (define gxc#verbose
    (lambda _args746_
      (if (gxc#current-compile-verbose) (apply displayln _args746_) '#!void)))
  (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
  (define gxc#module-id->path-string
    (lambda (_id728_)
      (let* ((_str730_ (if (symbol? _id728_) (symbol->string _id728_) _id728_))
             (_len732_ (string-length _str730_))
             (_res734_ (make-string _len732_)))
        (let _lp737_ ((_i739_ '0))
          (if (fx< _i739_ _len732_)
              (let* ((_char741_ (string-ref _str730_ _i739_))
                     (_xchar743_
                      (if (string-index
                           gxc#module-path-reserved-chars
                           _char741_)
                          '#\_
                          _char741_)))
                (string-set! _res734_ _i739_ _xchar743_)
                (_lp737_ (fx+ _i739_ '1)))
              _res734_))))))
