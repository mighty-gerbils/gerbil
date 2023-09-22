(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1695337519)
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
    (define gxc#current-compile-decls (make-parameter '#f))
    (define gxc#symbol-table::t
      (let ()
        (declare (not safe))
        (make-struct-type
         'gxc#symbol-table::t
         '#f
         '2
         'symbol-table
         '()
         ':init!
         '(gensyms bindings))))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (make-struct-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args534_
        (apply make-struct-instance gxc#symbol-table::t _$args534_)))
    (define gxc#symbol-table-gensyms
      (let ()
        (declare (not safe))
        (make-struct-field-accessor gxc#symbol-table::t '0)))
    (define gxc#symbol-table-bindings
      (let ()
        (declare (not safe))
        (make-struct-field-accessor gxc#symbol-table::t '1)))
    (define gxc#symbol-table-gensyms-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator gxc#symbol-table::t '0)))
    (define gxc#symbol-table-bindings-set!
      (let ()
        (declare (not safe))
        (make-struct-field-mutator gxc#symbol-table::t '1)))
    (define gxc#symbol-table:::init!
      (lambda (_self532_)
        (if (let ((__tmp5353
                   (let () (declare (not safe)) (##vector-length _self532_))))
              (declare (not safe))
              (##fx< '2 __tmp5353))
            (begin
              (let ((__tmp5351
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (declare (not safe))
                (##vector-set! _self532_ '1 __tmp5351))
              (let ((__tmp5352
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (declare (not safe))
                (##vector-set! _self532_ '2 __tmp5352)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self532_))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#symbol-table::t ':init! gxc#symbol-table:::init! '#f))
    (define gxc#raise-compile-error
      (lambda (_message406_ _stx407_ . _details408_)
        (apply gx#raise-syntax-error
               'compile
               _message406_
               _stx407_
               _details408_)))
    (define gxc#verbose
      (lambda _args404_
        (if (gxc#current-compile-verbose)
            (apply displayln _args404_)
            '#!void)))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id386_)
        (let* ((_str388_
                (if (let () (declare (not safe)) (symbol? _id386_))
                    (symbol->string _id386_)
                    _id386_))
               (_len390_ (string-length _str388_))
               (_res392_ (make-string _len390_)))
          (let _lp395_ ((_i397_ '0))
            (if (fx< _i397_ _len390_)
                (let* ((_char399_ (string-ref _str388_ _i397_))
                       (_xchar401_
                        (if (let ()
                              (declare (not safe))
                              (string-index
                               gxc#module-path-reserved-chars
                               _char399_))
                            '#\_
                            _char399_)))
                  (string-set! _res392_ _i397_ _xchar401_)
                  (let ((__tmp5354
                         (let () (declare (not safe)) (fx+ _i397_ '1))))
                    (declare (not safe))
                    (_lp395_ __tmp5354)))
                _res392_)))))))
