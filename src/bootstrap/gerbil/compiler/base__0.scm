(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1709457369)
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
      (let ((__tmp98497 (list))
            (__tmp98495
             (let ((__tmp98496
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp98496 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp98497
         '(gensyms bindings)
         __tmp98495
         ':init!)))
    (define gxc#symbol-table?
      (let () (declare (not safe)) (make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args98448_
        (apply make-instance gxc#symbol-table::t _$args98448_)))
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
      (lambda (_self98446_)
        (if (let ((__tmp98503
                   (let ()
                     (declare (not safe))
                     (##structure-length _self98446_))))
              (declare (not safe))
              (##fx< '2 __tmp98503))
            (begin
              (let ((__tmp98500
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp98499
                     (let ()
                       (declare (not safe))
                       (##structure-type _self98446_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self98446_
                 __tmp98500
                 '1
                 __tmp98499
                 '#f))
              (let ((__tmp98502
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp98501
                     (let ()
                       (declare (not safe))
                       (##structure-type _self98446_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self98446_
                 __tmp98502
                 '2
                 __tmp98501
                 '#f)))
            (let ((__tmp98498
                   (let ()
                     (declare (not safe))
                     (##vector-length _self98446_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self98446_
                     '2
                     __tmp98498)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_message98315_ _stx98316_ . _details98317_)
        (let ((_ctx98322_
               (let ((_$e98319_ (gxc#current-compile-context)))
                 (if _$e98319_ _$e98319_ 'compile))))
          (apply gx#raise-syntax-error
                 _ctx98322_
                 _message98315_
                 _stx98316_
                 _details98317_))))
    (define gxc#verbose
      (lambda _args98312_
        (if (gxc#current-compile-verbose)
            (let ((__tmp98504 (lambda () (apply displayln _args98312_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp98504))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id98294_)
        (let* ((_str98296_
                (if (let () (declare (not safe)) (symbol? _id98294_))
                    (symbol->string _id98294_)
                    _id98294_))
               (_len98298_ (string-length _str98296_))
               (_res98300_ (make-string _len98298_)))
          (let _lp98303_ ((_i98305_ '0))
            (if (fx< _i98305_ _len98298_)
                (let* ((_char98307_ (string-ref _str98296_ _i98305_))
                       (_xchar98309_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _char98307_))
                            '#\_
                            _char98307_)))
                  (string-set! _res98300_ _i98305_ _xchar98309_)
                  (let ((__tmp98505
                         (let () (declare (not safe)) (fx+ _i98305_ '1))))
                    (declare (not safe))
                    (_lp98303_ __tmp98505)))
                _res98300_)))))))
