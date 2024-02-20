(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1708418155)
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
      (let ((__tmp97249 (list))
            (__tmp97247
             (let ((__tmp97248
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp97248 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp97249
         '(gensyms bindings)
         __tmp97247
         ':init!)))
    (define gxc#symbol-table?
      (let () (declare (not safe)) (make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args97200_
        (apply make-instance gxc#symbol-table::t _$args97200_)))
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
      (lambda (_self97198_)
        (if (let ((__tmp97255
                   (let ()
                     (declare (not safe))
                     (##structure-length _self97198_))))
              (declare (not safe))
              (##fx< '2 __tmp97255))
            (begin
              (let ((__tmp97252
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp97251
                     (let ()
                       (declare (not safe))
                       (##structure-type _self97198_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self97198_
                 __tmp97252
                 '1
                 __tmp97251
                 '#f))
              (let ((__tmp97254
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp97253
                     (let ()
                       (declare (not safe))
                       (##structure-type _self97198_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self97198_
                 __tmp97254
                 '2
                 __tmp97253
                 '#f)))
            (let ((__tmp97250
                   (let ()
                     (declare (not safe))
                     (##vector-length _self97198_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self97198_
                     '2
                     __tmp97250)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_message97067_ _stx97068_ . _details97069_)
        (let ((_ctx97074_
               (let ((_$e97071_ (gxc#current-compile-context)))
                 (if _$e97071_ _$e97071_ 'compile))))
          (apply gx#raise-syntax-error
                 _ctx97074_
                 _message97067_
                 _stx97068_
                 _details97069_))))
    (define gxc#verbose
      (lambda _args97064_
        (if (gxc#current-compile-verbose)
            (let ((__tmp97256 (lambda () (apply displayln _args97064_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp97256))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id97046_)
        (let* ((_str97048_
                (if (let () (declare (not safe)) (symbol? _id97046_))
                    (symbol->string _id97046_)
                    _id97046_))
               (_len97050_ (string-length _str97048_))
               (_res97052_ (make-string _len97050_)))
          (let _lp97055_ ((_i97057_ '0))
            (if (fx< _i97057_ _len97050_)
                (let* ((_char97059_ (string-ref _str97048_ _i97057_))
                       (_xchar97061_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _char97059_))
                            '#\_
                            _char97059_)))
                  (string-set! _res97052_ _i97057_ _xchar97061_)
                  (let ((__tmp97257
                         (let () (declare (not safe)) (fx+ _i97057_ '1))))
                    (declare (not safe))
                    (_lp97055_ __tmp97257)))
                _res97052_)))))))
