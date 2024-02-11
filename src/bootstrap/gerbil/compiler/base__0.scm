(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1707616238)
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
      (let ((__tmp192796
             (let ((__tmp192797
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp192797 '()))))
        (declare (not safe))
        (make-struct-type
         'gxc#symbol-table::t
         'symbol-table
         '#f
         '(gensyms bindings)
         __tmp192796
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (make-struct-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args188281_
        (apply make-struct-instance gxc#symbol-table::t _$args188281_)))
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
      (lambda (_self188279_)
        (if (let ((__tmp192802
                   (let ()
                     (declare (not safe))
                     (##structure-length _self188279_))))
              (declare (not safe))
              (##fx< '2 __tmp192802))
            (begin
              (let ((__tmp192799
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp192798
                     (let ()
                       (declare (not safe))
                       (##structure-type _self188279_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self188279_
                 __tmp192799
                 '1
                 __tmp192798
                 '#f))
              (let ((__tmp192801
                     (let () (declare (not safe)) (make-table 'test: eq?)))
                    (__tmp192800
                     (let ()
                       (declare (not safe))
                       (##structure-type _self188279_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self188279_
                 __tmp192801
                 '2
                 __tmp192800
                 '#f)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self188279_
                   '2
                   (let ()
                     (declare (not safe))
                     (##vector-length _self188279_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#symbol-table::t ':init! gxc#symbol-table:::init! '#f))
    (define gxc#raise-compile-error
      (lambda (_message188148_ _stx188149_ . _details188150_)
        (let ((_ctx188155_
               (let ((_$e188152_ (gxc#current-compile-context)))
                 (if _$e188152_ _$e188152_ 'compile))))
          (apply gx#raise-syntax-error
                 _ctx188155_
                 _message188148_
                 _stx188149_
                 _details188150_))))
    (define gxc#verbose
      (lambda _args188145_
        (if (gxc#current-compile-verbose)
            (let ((__tmp192803 (lambda () (apply displayln _args188145_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp192803))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id188127_)
        (let* ((_str188129_
                (if (let () (declare (not safe)) (symbol? _id188127_))
                    (symbol->string _id188127_)
                    _id188127_))
               (_len188131_ (string-length _str188129_))
               (_res188133_ (make-string _len188131_)))
          (let _lp188136_ ((_i188138_ '0))
            (if (fx< _i188138_ _len188131_)
                (let* ((_char188140_ (string-ref _str188129_ _i188138_))
                       (_xchar188142_
                        (if (let ()
                              (declare (not safe))
                              (string-index
                               gxc#module-path-reserved-chars
                               _char188140_))
                            '#\_
                            _char188140_)))
                  (string-set! _res188133_ _i188138_ _xchar188142_)
                  (let ((__tmp192804
                         (let () (declare (not safe)) (fx+ _i188138_ '1))))
                    (declare (not safe))
                    (_lp188136_ __tmp192804)))
                _res188133_)))))))
