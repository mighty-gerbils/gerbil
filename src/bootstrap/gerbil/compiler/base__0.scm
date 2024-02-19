(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1708334576)
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
      (let ((__tmp204416 (list))
            (__tmp204414
             (let ((__tmp204415
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp204415 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp204416
         '(gensyms bindings)
         __tmp204414
         ':init!)))
    (define gxc#symbol-table?
      (let () (declare (not safe)) (make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args200300_
        (apply make-instance gxc#symbol-table::t _$args200300_)))
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
      (lambda (_self200298_)
        (if (let ((__tmp204421
                   (let ()
                     (declare (not safe))
                     (##structure-length _self200298_))))
              (declare (not safe))
              (##fx< '2 __tmp204421))
            (begin
              (let ((__tmp204418
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp204417
                     (let ()
                       (declare (not safe))
                       (##structure-type _self200298_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self200298_
                 __tmp204418
                 '1
                 __tmp204417
                 '#f))
              (let ((__tmp204420
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp204419
                     (let ()
                       (declare (not safe))
                       (##structure-type _self200298_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self200298_
                 __tmp204420
                 '2
                 __tmp204419
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self200298_
                   '2
                   (let ()
                     (declare (not safe))
                     (##vector-length _self200298_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#symbol-table::t ':init! gxc#symbol-table:::init! '#f))
    (define gxc#raise-compile-error
      (lambda (_message200167_ _stx200168_ . _details200169_)
        (let ((_ctx200174_
               (let ((_$e200171_ (gxc#current-compile-context)))
                 (if _$e200171_ _$e200171_ 'compile))))
          (apply gx#raise-syntax-error
                 _ctx200174_
                 _message200167_
                 _stx200168_
                 _details200169_))))
    (define gxc#verbose
      (lambda _args200164_
        (if (gxc#current-compile-verbose)
            (let ((__tmp204422 (lambda () (apply displayln _args200164_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp204422))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id200146_)
        (let* ((_str200148_
                (if (let () (declare (not safe)) (symbol? _id200146_))
                    (symbol->string _id200146_)
                    _id200146_))
               (_len200150_ (string-length _str200148_))
               (_res200152_ (make-string _len200150_)))
          (let _lp200155_ ((_i200157_ '0))
            (if (fx< _i200157_ _len200150_)
                (let* ((_char200159_ (string-ref _str200148_ _i200157_))
                       (_xchar200161_
                        (if (let ()
                              (declare (not safe))
                              (string-index
                               gxc#module-path-reserved-chars
                               _char200159_))
                            '#\_
                            _char200159_)))
                  (string-set! _res200152_ _i200157_ _xchar200161_)
                  (let ((__tmp204423
                         (let () (declare (not safe)) (fx+ _i200157_ '1))))
                    (declare (not safe))
                    (_lp200155_ __tmp204423)))
                _res200152_)))))))
