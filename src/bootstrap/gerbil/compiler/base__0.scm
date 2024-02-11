(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1707646853)
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
      (let ((__tmp192522 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp192522
         '(gensyms bindings)
         '()
         ':init!)))
    (define gxc#symbol-table?
      (let () (declare (not safe)) (make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args188007_
        (apply make-class-instance gxc#symbol-table::t _$args188007_)))
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
      (lambda (_self188005_)
        (if (let ((__tmp192527
                   (let ()
                     (declare (not safe))
                     (##structure-length _self188005_))))
              (declare (not safe))
              (##fx< '2 __tmp192527))
            (begin
              (let ((__tmp192524
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp192523
                     (let ()
                       (declare (not safe))
                       (##structure-type _self188005_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self188005_
                 __tmp192524
                 '1
                 __tmp192523
                 '#f))
              (let ((__tmp192526
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp192525
                     (let ()
                       (declare (not safe))
                       (##structure-type _self188005_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self188005_
                 __tmp192526
                 '2
                 __tmp192525
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self188005_
                   '2
                   (let ()
                     (declare (not safe))
                     (##vector-length _self188005_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#symbol-table::t ':init! gxc#symbol-table:::init! '#f))
    (define gxc#raise-compile-error
      (lambda (_message187874_ _stx187875_ . _details187876_)
        (let ((_ctx187881_
               (let ((_$e187878_ (gxc#current-compile-context)))
                 (if _$e187878_ _$e187878_ 'compile))))
          (apply gx#raise-syntax-error
                 _ctx187881_
                 _message187874_
                 _stx187875_
                 _details187876_))))
    (define gxc#verbose
      (lambda _args187871_
        (if (gxc#current-compile-verbose)
            (let ((__tmp192528 (lambda () (apply displayln _args187871_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp192528))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id187853_)
        (let* ((_str187855_
                (if (let () (declare (not safe)) (symbol? _id187853_))
                    (symbol->string _id187853_)
                    _id187853_))
               (_len187857_ (string-length _str187855_))
               (_res187859_ (make-string _len187857_)))
          (let _lp187862_ ((_i187864_ '0))
            (if (fx< _i187864_ _len187857_)
                (let* ((_char187866_ (string-ref _str187855_ _i187864_))
                       (_xchar187868_
                        (if (let ()
                              (declare (not safe))
                              (string-index
                               gxc#module-path-reserved-chars
                               _char187866_))
                            '#\_
                            _char187866_)))
                  (string-set! _res187859_ _i187864_ _xchar187868_)
                  (let ((__tmp192529
                         (let () (declare (not safe)) (fx+ _i187864_ '1))))
                    (declare (not safe))
                    (_lp187862_ __tmp192529)))
                _res187859_)))))))
