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
    (lambda _$args877_
      (apply make-struct-instance gxc#symbol-table::t _$args877_)))
  (define gxc#symbol-table-gensyms
    (make-struct-field-accessor gxc#symbol-table::t '0))
  (define gxc#symbol-table-bindings
    (make-struct-field-accessor gxc#symbol-table::t '1))
  (define gxc#symbol-table-gensyms-set!
    (make-struct-field-mutator gxc#symbol-table::t '0))
  (define gxc#symbol-table-bindings-set!
    (make-struct-field-mutator gxc#symbol-table::t '1))
  (define gxc#symbol-table:::init!
    (lambda (_self875_)
      (if (##fx< '2 (##vector-length _self875_))
          (begin
            (##vector-set! _self875_ '1 (make-hash-table-eq))
            (##vector-set! _self875_ '2 (make-hash-table-eq)))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self875_))))
  (bind-method! gxc#symbol-table::t ':init! gxc#symbol-table:::init! '#f)
  (define gxc#raise-compile-error
    (lambda (_message749_ _stx750_ . _details751_)
      (apply gx#raise-syntax-error
             'compile
             _message749_
             _stx750_
             _details751_)))
  (define gxc#verbose
    (lambda _args747_
      (if (gxc#current-compile-verbose) (apply displayln _args747_) '#!void)))
  (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
  (define gxc#module-id->path-string
    (lambda (_id729_)
      (let* ((_str731_ (if (symbol? _id729_) (symbol->string _id729_) _id729_))
             (_len733_ (string-length _str731_))
             (_res735_ (make-string _len733_)))
        (let _lp738_ ((_i740_ '0))
          (if (fx< _i740_ _len733_)
              (let* ((_char742_ (string-ref _str731_ _i740_))
                     (_xchar744_
                      (if (string-index
                           gxc#module-path-reserved-chars
                           _char742_)
                          '#\_
                          _char742_)))
                (begin
                  (string-set! _res735_ _i740_ _xchar744_)
                  (_lp738_ (fx+ _i740_ '1))))
              _res735_))))))
