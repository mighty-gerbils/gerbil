(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1709213450)
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
      (let ((__tmp98248 (list))
            (__tmp98246
             (let ((__tmp98247
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp98247 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp98248
         '(gensyms bindings)
         __tmp98246
         ':init!)))
    (define gxc#symbol-table?
      (let () (declare (not safe)) (make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args98199_
        (apply make-instance gxc#symbol-table::t _$args98199_)))
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
      (lambda (_self98197_)
        (if (let ((__tmp98254
                   (let ()
                     (declare (not safe))
                     (##structure-length _self98197_))))
              (declare (not safe))
              (##fx< '2 __tmp98254))
            (begin
              (let ((__tmp98251
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp98250
                     (let ()
                       (declare (not safe))
                       (##structure-type _self98197_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self98197_
                 __tmp98251
                 '1
                 __tmp98250
                 '#f))
              (let ((__tmp98253
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp98252
                     (let ()
                       (declare (not safe))
                       (##structure-type _self98197_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self98197_
                 __tmp98253
                 '2
                 __tmp98252
                 '#f)))
            (let ((__tmp98249
                   (let ()
                     (declare (not safe))
                     (##vector-length _self98197_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self98197_
                     '2
                     __tmp98249)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_message98066_ _stx98067_ . _details98068_)
        (let ((_ctx98073_
               (let ((_$e98070_ (gxc#current-compile-context)))
                 (if _$e98070_ _$e98070_ 'compile))))
          (apply gx#raise-syntax-error
                 _ctx98073_
                 _message98066_
                 _stx98067_
                 _details98068_))))
    (define gxc#verbose
      (lambda _args98063_
        (if (gxc#current-compile-verbose)
            (let ((__tmp98255 (lambda () (apply displayln _args98063_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp98255))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id98045_)
        (let* ((_str98047_
                (if (let () (declare (not safe)) (symbol? _id98045_))
                    (symbol->string _id98045_)
                    _id98045_))
               (_len98049_ (string-length _str98047_))
               (_res98051_ (make-string _len98049_)))
          (let _lp98054_ ((_i98056_ '0))
            (if (fx< _i98056_ _len98049_)
                (let* ((_char98058_ (string-ref _str98047_ _i98056_))
                       (_xchar98060_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _char98058_))
                            '#\_
                            _char98058_)))
                  (string-set! _res98051_ _i98056_ _xchar98060_)
                  (let ((__tmp98256
                         (let () (declare (not safe)) (fx+ _i98056_ '1))))
                    (declare (not safe))
                    (_lp98054_ __tmp98256)))
                _res98051_)))))))
