(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1708387688)
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
      (let ((__tmp97180 (list))
            (__tmp97178
             (let ((__tmp97179
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp97179 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp97180
         '(gensyms bindings)
         __tmp97178
         ':init!)))
    (define gxc#symbol-table?
      (let () (declare (not safe)) (make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args97131_
        (apply make-instance gxc#symbol-table::t _$args97131_)))
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
      (lambda (_self97129_)
        (if (let ((__tmp97186
                   (let ()
                     (declare (not safe))
                     (##structure-length _self97129_))))
              (declare (not safe))
              (##fx< '2 __tmp97186))
            (begin
              (let ((__tmp97183
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp97182
                     (let ()
                       (declare (not safe))
                       (##structure-type _self97129_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self97129_
                 __tmp97183
                 '1
                 __tmp97182
                 '#f))
              (let ((__tmp97185
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp97184
                     (let ()
                       (declare (not safe))
                       (##structure-type _self97129_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self97129_
                 __tmp97185
                 '2
                 __tmp97184
                 '#f)))
            (let ((__tmp97181
                   (let ()
                     (declare (not safe))
                     (##vector-length _self97129_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self97129_
                     '2
                     __tmp97181)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_message96998_ _stx96999_ . _details97000_)
        (let ((_ctx97005_
               (let ((_$e97002_ (gxc#current-compile-context)))
                 (if _$e97002_ _$e97002_ 'compile))))
          (apply gx#raise-syntax-error
                 _ctx97005_
                 _message96998_
                 _stx96999_
                 _details97000_))))
    (define gxc#verbose
      (lambda _args96995_
        (if (gxc#current-compile-verbose)
            (let ((__tmp97187 (lambda () (apply displayln _args96995_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp97187))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id96977_)
        (let* ((_str96979_
                (if (let () (declare (not safe)) (symbol? _id96977_))
                    (symbol->string _id96977_)
                    _id96977_))
               (_len96981_ (string-length _str96979_))
               (_res96983_ (make-string _len96981_)))
          (let _lp96986_ ((_i96988_ '0))
            (if (fx< _i96988_ _len96981_)
                (let* ((_char96990_ (string-ref _str96979_ _i96988_))
                       (_xchar96992_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _char96990_))
                            '#\_
                            _char96990_)))
                  (string-set! _res96983_ _i96988_ _xchar96992_)
                  (let ((__tmp97188
                         (let () (declare (not safe)) (fx+ _i96988_ '1))))
                    (declare (not safe))
                    (_lp96986_ __tmp97188)))
                _res96983_)))))))
