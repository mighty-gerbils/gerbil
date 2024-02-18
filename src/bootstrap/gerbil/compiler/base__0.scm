(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1708271176)
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
      (let ((__tmp203301 (list))
            (__tmp203299
             (let ((__tmp203300
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp203300 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp203301
         '(gensyms bindings)
         __tmp203299
         ':init!)))
    (define gxc#symbol-table?
      (let () (declare (not safe)) (make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args199185_
        (apply make-instance gxc#symbol-table::t _$args199185_)))
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
      (lambda (_self199183_)
        (if (let ((__tmp203302
                   (let ()
                     (declare (not safe))
                     (##structure-length _self199183_))))
              (declare (not safe))
              (##fx< '2 __tmp203302))
            (begin
              (let ((__tmp203304
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp203303
                     (let ()
                       (declare (not safe))
                       (##structure-type _self199183_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self199183_
                 __tmp203304
                 '1
                 __tmp203303
                 '#f))
              (let ((__tmp203306
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp203305
                     (let ()
                       (declare (not safe))
                       (##structure-type _self199183_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self199183_
                 __tmp203306
                 '2
                 __tmp203305
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self199183_
                   '2
                   (let ()
                     (declare (not safe))
                     (##vector-length _self199183_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#symbol-table::t ':init! gxc#symbol-table:::init! '#f))
    (define gxc#raise-compile-error
      (lambda (_message199052_ _stx199053_ . _details199054_)
        (let ((_ctx199059_
               (let ((_$e199056_ (gxc#current-compile-context)))
                 (if _$e199056_ _$e199056_ 'compile))))
          (apply gx#raise-syntax-error
                 _ctx199059_
                 _message199052_
                 _stx199053_
                 _details199054_))))
    (define gxc#verbose
      (lambda _args199049_
        (if (gxc#current-compile-verbose)
            (let ((__tmp203307 (lambda () (apply displayln _args199049_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp203307))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id199031_)
        (let* ((_str199033_
                (if (let () (declare (not safe)) (symbol? _id199031_))
                    (symbol->string _id199031_)
                    _id199031_))
               (_len199035_ (string-length _str199033_))
               (_res199037_ (make-string _len199035_)))
          (let _lp199040_ ((_i199042_ '0))
            (if (fx< _i199042_ _len199035_)
                (let* ((_char199044_ (string-ref _str199033_ _i199042_))
                       (_xchar199046_
                        (if (let ()
                              (declare (not safe))
                              (string-index
                               gxc#module-path-reserved-chars
                               _char199044_))
                            '#\_
                            _char199044_)))
                  (string-set! _res199037_ _i199042_ _xchar199046_)
                  (let ((__tmp203308
                         (let () (declare (not safe)) (fx+ _i199042_ '1))))
                    (declare (not safe))
                    (_lp199040_ __tmp203308)))
                _res199037_)))))))
