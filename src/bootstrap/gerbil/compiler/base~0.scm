(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1710715076)
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
      (let ((__tmp99183 (list))
            (__tmp99181
             (let ((__tmp99182
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp99182 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp99183
         '(gensyms bindings)
         __tmp99181
         ':init!)))
    (define gxc#symbol-table?
      (let () (declare (not safe)) (make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args99134_
        (apply make-instance gxc#symbol-table::t _$args99134_)))
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
      (lambda (_self99132_)
        (if (let ((__tmp99189
                   (let ()
                     (declare (not safe))
                     (##structure-length _self99132_))))
              (declare (not safe))
              (##fx< '2 __tmp99189))
            (begin
              (let ((__tmp99186
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp99185
                     (let ()
                       (declare (not safe))
                       (##structure-type _self99132_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self99132_
                 __tmp99186
                 '1
                 __tmp99185
                 '#f))
              (let ((__tmp99188
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp99187
                     (let ()
                       (declare (not safe))
                       (##structure-type _self99132_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self99132_
                 __tmp99188
                 '2
                 __tmp99187
                 '#f)))
            (let ((__tmp99184
                   (let ()
                     (declare (not safe))
                     (##vector-length _self99132_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self99132_
                     '2
                     __tmp99184)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_message99001_ _stx99002_ . _details99003_)
        (let ((_ctx99008_
               (let ((_$e99005_ (gxc#current-compile-context)))
                 (if _$e99005_ _$e99005_ 'compile))))
          (apply gx#raise-syntax-error
                 _ctx99008_
                 _message99001_
                 _stx99002_
                 _details99003_))))
    (define gxc#verbose
      (lambda _args98998_
        (if (gxc#current-compile-verbose)
            (let ((__tmp99190 (lambda () (apply displayln _args98998_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp99190))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id98980_)
        (let* ((_str98982_
                (if (let () (declare (not safe)) (symbol? _id98980_))
                    (symbol->string _id98980_)
                    _id98980_))
               (_len98984_ (string-length _str98982_))
               (_res98986_ (make-string _len98984_)))
          (let _lp98989_ ((_i98991_ '0))
            (if (fx< _i98991_ _len98984_)
                (let* ((_char98993_ (string-ref _str98982_ _i98991_))
                       (_xchar98995_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _char98993_))
                            '#\_
                            _char98993_)))
                  (string-set! _res98986_ _i98991_ _xchar98995_)
                  (let ((__tmp99191
                         (let () (declare (not safe)) (fx+ _i98991_ '1))))
                    (declare (not safe))
                    (_lp98989_ __tmp99191)))
                _res98986_)))))))
