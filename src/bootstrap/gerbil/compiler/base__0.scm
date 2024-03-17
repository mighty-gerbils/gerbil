(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1710699091)
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
      (let ((__tmp99193 (list))
            (__tmp99191
             (let ((__tmp99192
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp99192 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp99193
         '(gensyms bindings)
         __tmp99191
         ':init!)))
    (define gxc#symbol-table?
      (let () (declare (not safe)) (make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args99144_
        (apply make-instance gxc#symbol-table::t _$args99144_)))
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
      (lambda (_self99142_)
        (if (let ((__tmp99199
                   (let ()
                     (declare (not safe))
                     (##structure-length _self99142_))))
              (declare (not safe))
              (##fx< '2 __tmp99199))
            (begin
              (let ((__tmp99196
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp99195
                     (let ()
                       (declare (not safe))
                       (##structure-type _self99142_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self99142_
                 __tmp99196
                 '1
                 __tmp99195
                 '#f))
              (let ((__tmp99198
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp99197
                     (let ()
                       (declare (not safe))
                       (##structure-type _self99142_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self99142_
                 __tmp99198
                 '2
                 __tmp99197
                 '#f)))
            (let ((__tmp99194
                   (let ()
                     (declare (not safe))
                     (##vector-length _self99142_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self99142_
                     '2
                     __tmp99194)))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_message99011_ _stx99012_ . _details99013_)
        (let ((_ctx99018_
               (let ((_$e99015_ (gxc#current-compile-context)))
                 (if _$e99015_ _$e99015_ 'compile))))
          (apply gx#raise-syntax-error
                 _ctx99018_
                 _message99011_
                 _stx99012_
                 _details99013_))))
    (define gxc#verbose
      (lambda _args99008_
        (if (gxc#current-compile-verbose)
            (let ((__tmp99200 (lambda () (apply displayln _args99008_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp99200))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id98990_)
        (let* ((_str98992_
                (if (let () (declare (not safe)) (symbol? _id98990_))
                    (symbol->string _id98990_)
                    _id98990_))
               (_len98994_ (string-length _str98992_))
               (_res98996_ (make-string _len98994_)))
          (let _lp98999_ ((_i99001_ '0))
            (if (fx< _i99001_ _len98994_)
                (let* ((_char99003_ (string-ref _str98992_ _i99001_))
                       (_xchar99005_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _char99003_))
                            '#\_
                            _char99003_)))
                  (string-set! _res98996_ _i99001_ _xchar99005_)
                  (let ((__tmp99201
                         (let () (declare (not safe)) (fx+ _i99001_ '1))))
                    (declare (not safe))
                    (_lp98999_ __tmp99201)))
                _res98996_)))))))
