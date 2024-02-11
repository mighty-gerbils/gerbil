(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1707660403)
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
      (let ((__tmp192330 (list))
            (__tmp192328
             (let ((__tmp192329
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp192329 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp192330
         '(gensyms bindings)
         __tmp192328
         ':init!)))
    (define gxc#symbol-table?
      (let () (declare (not safe)) (make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args187813_
        (apply make-instance gxc#symbol-table::t _$args187813_)))
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
      (lambda (_self187811_)
        (if (let ((__tmp192335
                   (let ()
                     (declare (not safe))
                     (##structure-length _self187811_))))
              (declare (not safe))
              (##fx< '2 __tmp192335))
            (begin
              (let ((__tmp192332
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp192331
                     (let ()
                       (declare (not safe))
                       (##structure-type _self187811_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self187811_
                 __tmp192332
                 '1
                 __tmp192331
                 '#f))
              (let ((__tmp192334
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp192333
                     (let ()
                       (declare (not safe))
                       (##structure-type _self187811_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self187811_
                 __tmp192334
                 '2
                 __tmp192333
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self187811_
                   '2
                   (let ()
                     (declare (not safe))
                     (##vector-length _self187811_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#symbol-table::t ':init! gxc#symbol-table:::init! '#f))
    (define gxc#raise-compile-error
      (lambda (_message187680_ _stx187681_ . _details187682_)
        (let ((_ctx187687_
               (let ((_$e187684_ (gxc#current-compile-context)))
                 (if _$e187684_ _$e187684_ 'compile))))
          (apply gx#raise-syntax-error
                 _ctx187687_
                 _message187680_
                 _stx187681_
                 _details187682_))))
    (define gxc#verbose
      (lambda _args187677_
        (if (gxc#current-compile-verbose)
            (let ((__tmp192336 (lambda () (apply displayln _args187677_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp192336))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id187659_)
        (let* ((_str187661_
                (if (let () (declare (not safe)) (symbol? _id187659_))
                    (symbol->string _id187659_)
                    _id187659_))
               (_len187663_ (string-length _str187661_))
               (_res187665_ (make-string _len187663_)))
          (let _lp187668_ ((_i187670_ '0))
            (if (fx< _i187670_ _len187663_)
                (let* ((_char187672_ (string-ref _str187661_ _i187670_))
                       (_xchar187674_
                        (if (let ()
                              (declare (not safe))
                              (string-index
                               gxc#module-path-reserved-chars
                               _char187672_))
                            '#\_
                            _char187672_)))
                  (string-set! _res187665_ _i187670_ _xchar187674_)
                  (let ((__tmp192337
                         (let () (declare (not safe)) (fx+ _i187670_ '1))))
                    (declare (not safe))
                    (_lp187668_ __tmp192337)))
                _res187665_)))))))
