(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1708289482)
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
      (let ((__tmp204262 (list))
            (__tmp204260
             (let ((__tmp204261
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp204261 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp204262
         '(gensyms bindings)
         __tmp204260
         ':init!)))
    (define gxc#symbol-table?
      (let () (declare (not safe)) (make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args200146_
        (apply make-instance gxc#symbol-table::t _$args200146_)))
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
      (lambda (_self200144_)
        (if (let ((__tmp204267
                   (let ()
                     (declare (not safe))
                     (##structure-length _self200144_))))
              (declare (not safe))
              (##fx< '2 __tmp204267))
            (begin
              (let ((__tmp204264
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp204263
                     (let ()
                       (declare (not safe))
                       (##structure-type _self200144_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self200144_
                 __tmp204264
                 '1
                 __tmp204263
                 '#f))
              (let ((__tmp204266
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp204265
                     (let ()
                       (declare (not safe))
                       (##structure-type _self200144_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self200144_
                 __tmp204266
                 '2
                 __tmp204265
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self200144_
                   '2
                   (let ()
                     (declare (not safe))
                     (##vector-length _self200144_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#symbol-table::t ':init! gxc#symbol-table:::init! '#f))
    (define gxc#raise-compile-error
      (lambda (_message200013_ _stx200014_ . _details200015_)
        (let ((_ctx200020_
               (let ((_$e200017_ (gxc#current-compile-context)))
                 (if _$e200017_ _$e200017_ 'compile))))
          (apply gx#raise-syntax-error
                 _ctx200020_
                 _message200013_
                 _stx200014_
                 _details200015_))))
    (define gxc#verbose
      (lambda _args200010_
        (if (gxc#current-compile-verbose)
            (let ((__tmp204268 (lambda () (apply displayln _args200010_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp204268))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id199992_)
        (let* ((_str199994_
                (if (let () (declare (not safe)) (symbol? _id199992_))
                    (symbol->string _id199992_)
                    _id199992_))
               (_len199996_ (string-length _str199994_))
               (_res199998_ (make-string _len199996_)))
          (let _lp200001_ ((_i200003_ '0))
            (if (fx< _i200003_ _len199996_)
                (let* ((_char200005_ (string-ref _str199994_ _i200003_))
                       (_xchar200007_
                        (if (let ()
                              (declare (not safe))
                              (string-index
                               gxc#module-path-reserved-chars
                               _char200005_))
                            '#\_
                            _char200005_)))
                  (string-set! _res199998_ _i200003_ _xchar200007_)
                  (let ((__tmp204269
                         (let () (declare (not safe)) (fx+ _i200003_ '1))))
                    (declare (not safe))
                    (_lp200001_ __tmp204269)))
                _res199998_)))))))
