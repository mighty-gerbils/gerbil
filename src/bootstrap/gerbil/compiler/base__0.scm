(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1709159707)
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
      (let ((__tmp98240 (list))
            (__tmp98238
             (let ((__tmp98239
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp98239 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp98240
         '(gensyms bindings)
         __tmp98238
         ':init!)))
    (define gxc#symbol-table?
      (let () (declare (not safe)) (make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args98191_
        (apply make-instance gxc#symbol-table::t _$args98191_)))
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
      (lambda (_self98189_)
        (if (let ((__tmp98246
                   (let ()
                     (declare (not safe))
                     (##structure-length _self98189_))))
              (declare (not safe))
              (##fx< '2 __tmp98246))
            (begin
              (let ((__tmp98243
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp98242
                     (let ()
                       (declare (not safe))
                       (##structure-type _self98189_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self98189_
                 __tmp98243
                 '1
                 __tmp98242
                 '#f))
              (let ((__tmp98245
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp98244
                     (let ()
                       (declare (not safe))
                       (##structure-type _self98189_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self98189_
                 __tmp98245
                 '2
                 __tmp98244
                 '#f)))
            (let ((__tmp98241
                   (let ()
                     (declare (not safe))
                     (##vector-length _self98189_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self98189_
                     '2
                     __tmp98241)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_message98058_ _stx98059_ . _details98060_)
        (let ((_ctx98065_
               (let ((_$e98062_ (gxc#current-compile-context)))
                 (if _$e98062_ _$e98062_ 'compile))))
          (apply gx#raise-syntax-error
                 _ctx98065_
                 _message98058_
                 _stx98059_
                 _details98060_))))
    (define gxc#verbose
      (lambda _args98055_
        (if (gxc#current-compile-verbose)
            (let ((__tmp98247 (lambda () (apply displayln _args98055_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp98247))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id98037_)
        (let* ((_str98039_
                (if (let () (declare (not safe)) (symbol? _id98037_))
                    (symbol->string _id98037_)
                    _id98037_))
               (_len98041_ (string-length _str98039_))
               (_res98043_ (make-string _len98041_)))
          (let _lp98046_ ((_i98048_ '0))
            (if (fx< _i98048_ _len98041_)
                (let* ((_char98050_ (string-ref _str98039_ _i98048_))
                       (_xchar98052_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _char98050_))
                            '#\_
                            _char98050_)))
                  (string-set! _res98043_ _i98048_ _xchar98052_)
                  (let ((__tmp98248
                         (let () (declare (not safe)) (fx+ _i98048_ '1))))
                    (declare (not safe))
                    (_lp98046_ __tmp98248)))
                _res98043_)))))))
