(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1708337966)
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
      (let ((__tmp202082 (list))
            (__tmp202080
             (let ((__tmp202081
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp202081 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp202082
         '(gensyms bindings)
         __tmp202080
         ':init!)))
    (define gxc#symbol-table?
      (let () (declare (not safe)) (make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args198047_
        (apply make-instance gxc#symbol-table::t _$args198047_)))
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
      (lambda (_self198045_)
        (if (let ((__tmp202088
                   (let ()
                     (declare (not safe))
                     (##structure-length _self198045_))))
              (declare (not safe))
              (##fx< '2 __tmp202088))
            (begin
              (let ((__tmp202085
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp202084
                     (let ()
                       (declare (not safe))
                       (##structure-type _self198045_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self198045_
                 __tmp202085
                 '1
                 __tmp202084
                 '#f))
              (let ((__tmp202087
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp202086
                     (let ()
                       (declare (not safe))
                       (##structure-type _self198045_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self198045_
                 __tmp202087
                 '2
                 __tmp202086
                 '#f)))
            (let ((__tmp202083
                   (let ()
                     (declare (not safe))
                     (##vector-length _self198045_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self198045_
                     '2
                     __tmp202083)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_message197914_ _stx197915_ . _details197916_)
        (let ((_ctx197921_
               (let ((_$e197918_ (gxc#current-compile-context)))
                 (if _$e197918_ _$e197918_ 'compile))))
          (apply gx#raise-syntax-error
                 _ctx197921_
                 _message197914_
                 _stx197915_
                 _details197916_))))
    (define gxc#verbose
      (lambda _args197911_
        (if (gxc#current-compile-verbose)
            (let ((__tmp202089 (lambda () (apply displayln _args197911_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp202089))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id197893_)
        (let* ((_str197895_
                (if (let () (declare (not safe)) (symbol? _id197893_))
                    (symbol->string _id197893_)
                    _id197893_))
               (_len197897_ (string-length _str197895_))
               (_res197899_ (make-string _len197897_)))
          (let _lp197902_ ((_i197904_ '0))
            (if (fx< _i197904_ _len197897_)
                (let* ((_char197906_ (string-ref _str197895_ _i197904_))
                       (_xchar197908_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _char197906_))
                            '#\_
                            _char197906_)))
                  (string-set! _res197899_ _i197904_ _xchar197908_)
                  (let ((__tmp202090
                         (let () (declare (not safe)) (fx+ _i197904_ '1))))
                    (declare (not safe))
                    (_lp197902_ __tmp202090)))
                _res197899_)))))))
