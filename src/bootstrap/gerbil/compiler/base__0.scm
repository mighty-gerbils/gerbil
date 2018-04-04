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
    (lambda _$args878_
      (apply make-struct-instance gxc#symbol-table::t _$args878_)))
  (define gxc#symbol-table-gensyms
    (make-struct-field-accessor gxc#symbol-table::t '0))
  (define gxc#symbol-table-bindings
    (make-struct-field-accessor gxc#symbol-table::t '1))
  (define gxc#symbol-table-gensyms-set!
    (make-struct-field-mutator gxc#symbol-table::t '0))
  (define gxc#symbol-table-bindings-set!
    (make-struct-field-mutator gxc#symbol-table::t '1))
  (define gxc#symbol-table:::init!
    (lambda (_self876_)
      (struct-instance-init!
       _self876_
       (make-table 'test: eq?)
       (make-table 'test: eq?))))
  (bind-method! gxc#symbol-table::t ':init! gxc#symbol-table:::init! '#f)
  (define gxc#raise-compile-error
    (lambda (_message750_ _stx751_ . _details752_)
      (apply gx#raise-syntax-error
             'compile
             _message750_
             _stx751_
             _details752_)))
  (define gxc#verbose
    (lambda _args748_
      (if (gxc#current-compile-verbose) (apply displayln _args748_) '#!void)))
  (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
  (define gxc#module-id->path-string
    (lambda (_id730_)
      (let* ((_str732_ (if (symbol? _id730_) (symbol->string _id730_) _id730_))
             (_len734_ (string-length _str732_))
             (_res736_ (make-string _len734_)))
        (let _lp739_ ((_i741_ '0))
          (if (fx< _i741_ _len734_)
              (let* ((_char743_ (string-ref _str732_ _i741_))
                     (_xchar745_
                      (if (string-index
                           gxc#module-path-reserved-chars
                           _char743_)
                          '#\_
                          _char743_)))
                (begin
                  (string-set! _res736_ _i741_ _xchar745_)
                  (_lp739_ (fx+ _i741_ '1))))
              _res736_))))))
