(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1709127356)
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
      (let ((__tmp98238 (list))
            (__tmp98236
             (let ((__tmp98237
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp98237 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp98238
         '(gensyms bindings)
         __tmp98236
         ':init!)))
    (define gxc#symbol-table?
      (let () (declare (not safe)) (make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args98189_
        (apply make-instance gxc#symbol-table::t _$args98189_)))
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
      (lambda (_self98187_)
        (if (let ((__tmp98244
                   (let ()
                     (declare (not safe))
                     (##structure-length _self98187_))))
              (declare (not safe))
              (##fx< '2 __tmp98244))
            (begin
              (let ((__tmp98241
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp98240
                     (let ()
                       (declare (not safe))
                       (##structure-type _self98187_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self98187_
                 __tmp98241
                 '1
                 __tmp98240
                 '#f))
              (let ((__tmp98243
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp98242
                     (let ()
                       (declare (not safe))
                       (##structure-type _self98187_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self98187_
                 __tmp98243
                 '2
                 __tmp98242
                 '#f)))
            (let ((__tmp98239
                   (let ()
                     (declare (not safe))
                     (##vector-length _self98187_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self98187_
                     '2
                     __tmp98239)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_message98056_ _stx98057_ . _details98058_)
        (let ((_ctx98063_
               (let ((_$e98060_ (gxc#current-compile-context)))
                 (if _$e98060_ _$e98060_ 'compile))))
          (apply gx#raise-syntax-error
                 _ctx98063_
                 _message98056_
                 _stx98057_
                 _details98058_))))
    (define gxc#verbose
      (lambda _args98053_
        (if (gxc#current-compile-verbose)
            (let ((__tmp98245 (lambda () (apply displayln _args98053_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp98245))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id98035_)
        (let* ((_str98037_
                (if (let () (declare (not safe)) (symbol? _id98035_))
                    (symbol->string _id98035_)
                    _id98035_))
               (_len98039_ (string-length _str98037_))
               (_res98041_ (make-string _len98039_)))
          (let _lp98044_ ((_i98046_ '0))
            (if (fx< _i98046_ _len98039_)
                (let* ((_char98048_ (string-ref _str98037_ _i98046_))
                       (_xchar98050_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _char98048_))
                            '#\_
                            _char98048_)))
                  (string-set! _res98041_ _i98046_ _xchar98050_)
                  (let ((__tmp98246
                         (let () (declare (not safe)) (fx+ _i98046_ '1))))
                    (declare (not safe))
                    (_lp98044_ __tmp98246)))
                _res98041_)))))))
