(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1695292405)
  (begin
    (define gxc#current-compile-symbol-table
      (let () (declare (not safe)) (make-parameter '#f)))
    (define gxc#current-compile-runtime-sections
      (let () (declare (not safe)) (make-parameter '#f)))
    (define gxc#current-compile-runtime-names
      (let () (declare (not safe)) (make-parameter '#f)))
    (define gxc#current-compile-output-dir
      (let () (declare (not safe)) (make-parameter '#f)))
    (define gxc#current-compile-invoke-gsc
      (let () (declare (not safe)) (make-parameter '#f)))
    (define gxc#current-compile-gsc-options
      (let () (declare (not safe)) (make-parameter '#f)))
    (define gxc#current-compile-keep-scm
      (let () (declare (not safe)) (make-parameter '#f)))
    (define gxc#current-compile-verbose
      (let () (declare (not safe)) (make-parameter '#f)))
    (define gxc#current-compile-optimize
      (let () (declare (not safe)) (make-parameter '#f)))
    (define gxc#current-compile-debug
      (let () (declare (not safe)) (make-parameter '#f)))
    (define gxc#current-compile-generate-ssxi
      (let () (declare (not safe)) (make-parameter '#f)))
    (define gxc#current-compile-static
      (let () (declare (not safe)) (make-parameter '#f)))
    (define gxc#current-compile-timestamp
      (let () (declare (not safe)) (make-parameter '#f)))
    (define gxc#current-compile-decls
      (let () (declare (not safe)) (make-parameter '#f)))
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
        (if (let ((__tmp4753
                   (let () (declare (not safe)) (##vector-length _self532_))))
              (declare (not safe))
              (##fx< '2 __tmp4753))
            (begin
              (let ((__tmp4751
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (declare (not safe))
                (##vector-set! _self532_ '1 __tmp4751))
              (let ((__tmp4752
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (declare (not safe))
                (##vector-set! _self532_ '2 __tmp4752)))
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
                    (let () (declare (not safe)) (symbol->string _id386_))
                    _id386_))
               (_len390_
                (let () (declare (not safe)) (string-length _str388_)))
               (_res392_ (let () (declare (not safe)) (make-string _len390_))))
          (let _lp395_ ((_i397_ '0))
            (if (fx< _i397_ _len390_)
                (let* ((_char399_
                        (let ()
                          (declare (not safe))
                          (string-ref _str388_ _i397_)))
                       (_xchar401_
                        (if (let ()
                              (declare (not safe))
                              (string-index
                               gxc#module-path-reserved-chars
                               _char399_))
                            '#\_
                            _char399_)))
                  (let ()
                    (declare (not safe))
                    (string-set! _res392_ _i397_ _xchar401_))
                  (let ((__tmp4754
                         (let () (declare (not safe)) (fx+ _i397_ '1))))
                    (declare (not safe))
                    (_lp395_ __tmp4754)))
                _res392_)))))))
