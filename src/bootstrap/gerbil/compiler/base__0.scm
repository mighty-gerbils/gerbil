(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1708165431)
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
    (define gxc#current-compile-context (make-parameter '#f))
    (define gxc#symbol-table::t
      (let ((__tmp202479 (list))
            (__tmp202477
             (let ((__tmp202478
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp202478 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp202479
         '(gensyms bindings)
         __tmp202477
         ':init!)))
    (define gxc#symbol-table?
      (let () (declare (not safe)) (make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args197862_
        (apply make-instance gxc#symbol-table::t _$args197862_)))
    (define gxc#symbol-table-gensyms
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#symbol-table::t 'gensyms)))
    (define gxc#symbol-table-bindings
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#symbol-table::t 'bindings)))
    (define gxc#symbol-table-gensyms-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#symbol-table::t 'gensyms)))
    (define gxc#symbol-table-bindings-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#symbol-table::t 'bindings)))
    (define gxc#&symbol-table-gensyms
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#symbol-table::t 'gensyms)))
    (define gxc#&symbol-table-bindings
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#symbol-table::t 'bindings)))
    (define gxc#&symbol-table-gensyms-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#symbol-table::t 'gensyms)))
    (define gxc#&symbol-table-bindings-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#symbol-table::t 'bindings)))
    (define gxc#symbol-table:::init!
      (lambda (_self197860_)
        (if (let ((__tmp202484
                   (let ()
                     (declare (not safe))
                     (##structure-length _self197860_))))
              (declare (not safe))
              (##fx< '2 __tmp202484))
            (begin
              (let ((__tmp202481
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp202480
                     (let ()
                       (declare (not safe))
                       (##structure-type _self197860_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self197860_
                 __tmp202481
                 '1
                 __tmp202480
                 '#f))
              (let ((__tmp202483
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp202482
                     (let ()
                       (declare (not safe))
                       (##structure-type _self197860_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self197860_
                 __tmp202483
                 '2
                 __tmp202482
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self197860_
                   '2
                   (let ()
                     (declare (not safe))
                     (##vector-length _self197860_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#symbol-table::t ':init! gxc#symbol-table:::init! '#f))
    (define gxc#raise-compile-error
      (lambda (_message197729_ _stx197730_ . _details197731_)
        (let ((_ctx197736_
               (let ((_$e197733_ (gxc#current-compile-context)))
                 (if _$e197733_ _$e197733_ 'compile))))
          (apply gx#raise-syntax-error
                 _ctx197736_
                 _message197729_
                 _stx197730_
                 _details197731_))))
    (define gxc#verbose
      (lambda _args197726_
        (if (gxc#current-compile-verbose)
            (let ((__tmp202485 (lambda () (apply displayln _args197726_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp202485))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id197708_)
        (let* ((_str197710_
                (if (let () (declare (not safe)) (symbol? _id197708_))
                    (symbol->string _id197708_)
                    _id197708_))
               (_len197712_ (string-length _str197710_))
               (_res197714_ (make-string _len197712_)))
          (let _lp197717_ ((_i197719_ '0))
            (if (fx< _i197719_ _len197712_)
                (let* ((_char197721_ (string-ref _str197710_ _i197719_))
                       (_xchar197723_
                        (if (let ()
                              (declare (not safe))
                              (string-index
                               gxc#module-path-reserved-chars
                               _char197721_))
                            '#\_
                            _char197721_)))
                  (string-set! _res197714_ _i197719_ _xchar197723_)
                  (let ((__tmp202486
                         (let () (declare (not safe)) (fx+ _i197719_ '1))))
                    (declare (not safe))
                    (_lp197717_ __tmp202486)))
                _res197714_)))))))
