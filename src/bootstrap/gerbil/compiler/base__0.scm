(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1696439806)
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
      (lambda _$args598_
        (apply make-struct-instance gxc#symbol-table::t _$args598_)))
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
    (define gxc#&symbol-table-gensyms
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor gxc#symbol-table::t '0)))
    (define gxc#&symbol-table-bindings
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-accessor gxc#symbol-table::t '1)))
    (define gxc#&symbol-table-gensyms-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator gxc#symbol-table::t '0)))
    (define gxc#&symbol-table-bindings-set!
      (let ()
        (declare (not safe))
        (make-struct-field-unchecked-mutator gxc#symbol-table::t '1)))
    (define gxc#symbol-table:::init!
      (lambda (_self596_)
        (if (let ((__tmp5417
                   (let () (declare (not safe)) (##vector-length _self596_))))
              (declare (not safe))
              (##fx< '2 __tmp5417))
            (begin
              (let ((__tmp5415
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (declare (not safe))
                (##vector-set! _self596_ '1 __tmp5415))
              (let ((__tmp5416
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (declare (not safe))
                (##vector-set! _self596_ '2 __tmp5416)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self596_))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#symbol-table::t ':init! gxc#symbol-table:::init! '#f))
    (define gxc#raise-compile-error
      (lambda (_message470_ _stx471_ . _details472_)
        (apply gx#raise-syntax-error
               'compile
               _message470_
               _stx471_
               _details472_)))
    (define gxc#verbose
      (lambda _args467_
        (if (gxc#current-compile-verbose)
            (with-lock
             gxc#+verbose-mutex+
             (lambda () (apply displayln _args467_)))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id449_)
        (let* ((_str451_
                (if (let () (declare (not safe)) (symbol? _id449_))
                    (symbol->string _id449_)
                    _id449_))
               (_len453_ (string-length _str451_))
               (_res455_ (make-string _len453_)))
          (let _lp458_ ((_i460_ '0))
            (if (fx< _i460_ _len453_)
                (let* ((_char462_ (string-ref _str451_ _i460_))
                       (_xchar464_
                        (if (let ()
                              (declare (not safe))
                              (string-index
                               gxc#module-path-reserved-chars
                               _char462_))
                            '#\_
                            _char462_)))
                  (string-set! _res455_ _i460_ _xchar464_)
                  (let ((__tmp5418
                         (let () (declare (not safe)) (fx+ _i460_ '1))))
                    (declare (not safe))
                    (_lp458_ __tmp5418)))
                _res455_)))))))
