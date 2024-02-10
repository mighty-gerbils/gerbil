(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1707565661)
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
      (let ((__tmp185725
             (let ((__tmp185726
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp185726 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#symbol-table::t
         'symbol-table
         '#f
         '(gensyms bindings)
         __tmp185725
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (make-struct-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args181484_
        (apply make-struct-instance gxc#symbol-table::t _$args181484_)))
    (define gxc#symbol-table-gensyms
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#symbol-table::t 'gensyms)))
    (define gxc#symbol-table-bindings
      (let ()
        (declare (not safe))
        (make-struct-slot-accessor gxc#symbol-table::t 'bindings)))
    (define gxc#symbol-table-gensyms-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#symbol-table::t 'gensyms)))
    (define gxc#symbol-table-bindings-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-mutator gxc#symbol-table::t 'bindings)))
    (define gxc#&symbol-table-gensyms
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#symbol-table::t 'gensyms)))
    (define gxc#&symbol-table-bindings
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-accessor gxc#symbol-table::t 'bindings)))
    (define gxc#&symbol-table-gensyms-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#symbol-table::t 'gensyms)))
    (define gxc#&symbol-table-bindings-set!
      (let ()
        (declare (not safe))
        (make-struct-slot-unchecked-mutator gxc#symbol-table::t 'bindings)))
    (define gxc#symbol-table:::init!
      (lambda (_self181482_)
        (if (let ((__tmp185731
                   (let ()
                     (declare (not safe))
                     (##structure-length _self181482_))))
              (declare (not safe))
              (##fx< '2 __tmp185731))
            (begin
              (let ((__tmp185728
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp185727
                     (let ()
                       (declare (not safe))
                       (##structure-type _self181482_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self181482_
                 __tmp185728
                 '1
                 __tmp185727
                 '#f))
              (let ((__tmp185730
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp185729
                     (let ()
                       (declare (not safe))
                       (##structure-type _self181482_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self181482_
                 __tmp185730
                 '2
                 __tmp185729
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self181482_
                   '2
                   (let ()
                     (declare (not safe))
                     (##vector-length _self181482_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#symbol-table::t ':init! gxc#symbol-table:::init! '#f))
    (define gxc#raise-compile-error
      (lambda (_message181351_ _stx181352_ . _details181353_)
        (let ((_ctx181358_
               (let ((_$e181355_ (gxc#current-compile-context)))
                 (if _$e181355_ _$e181355_ 'compile))))
          (apply gx#raise-syntax-error
                 _ctx181358_
                 _message181351_
                 _stx181352_
                 _details181353_))))
    (define gxc#verbose
      (lambda _args181348_
        (if (gxc#current-compile-verbose)
            (let ((__tmp185732 (lambda () (apply displayln _args181348_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp185732))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id181330_)
        (let* ((_str181332_
                (if (let () (declare (not safe)) (symbol? _id181330_))
                    (symbol->string _id181330_)
                    _id181330_))
               (_len181334_ (string-length _str181332_))
               (_res181336_ (make-string _len181334_)))
          (let _lp181339_ ((_i181341_ '0))
            (if (fx< _i181341_ _len181334_)
                (let* ((_char181343_ (string-ref _str181332_ _i181341_))
                       (_xchar181345_
                        (if (let ()
                              (declare (not safe))
                              (string-index
                               gxc#module-path-reserved-chars
                               _char181343_))
                            '#\_
                            _char181343_)))
                  (string-set! _res181336_ _i181341_ _xchar181345_)
                  (let ((__tmp185733
                         (let () (declare (not safe)) (fx+ _i181341_ '1))))
                    (declare (not safe))
                    (_lp181339_ __tmp185733)))
                _res181336_)))))))
