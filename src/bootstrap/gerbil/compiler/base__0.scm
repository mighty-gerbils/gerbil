(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1707346617)
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
    (define gxc#symbol-table::t
      (let ((__tmp185775
             (let ((__tmp185776
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp185776 '()))))
        (declare (not safe))
        (make-struct-type*
         'gxc#symbol-table::t
         'symbol-table
         '#f
         '(gensyms bindings)
         __tmp185775
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (make-struct-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _$args181534_
        (apply make-struct-instance gxc#symbol-table::t _$args181534_)))
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
      (lambda (_self181532_)
        (if (let ((__tmp185779
                   (let ()
                     (declare (not safe))
                     (##vector-length _self181532_))))
              (declare (not safe))
              (##fx< '2 __tmp185779))
            (begin
              (let ((__tmp185777
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (declare (not safe))
                (##vector-set! _self181532_ '1 __tmp185777))
              (let ((__tmp185778
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (declare (not safe))
                (##vector-set! _self181532_ '2 __tmp185778)))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self181532_
                   '2
                   (let ()
                     (declare (not safe))
                     (##vector-length _self181532_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#symbol-table::t ':init! gxc#symbol-table:::init! '#f))
    (define gxc#raise-compile-error
      (lambda (_message181406_ _stx181407_ . _details181408_)
        (apply gx#raise-syntax-error
               'compile
               _message181406_
               _stx181407_
               _details181408_)))
    (define gxc#verbose
      (lambda _args181403_
        (if (gxc#current-compile-verbose)
            (let ((__tmp185780 (lambda () (apply displayln _args181403_))))
              (declare (not safe))
              (with-lock gxc#+verbose-mutex+ __tmp185780))
            '#!void)))
    (define gxc#+verbose-mutex+ (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_id181385_)
        (let* ((_str181387_
                (if (let () (declare (not safe)) (symbol? _id181385_))
                    (symbol->string _id181385_)
                    _id181385_))
               (_len181389_ (string-length _str181387_))
               (_res181391_ (make-string _len181389_)))
          (let _lp181394_ ((_i181396_ '0))
            (if (fx< _i181396_ _len181389_)
                (let* ((_char181398_ (string-ref _str181387_ _i181396_))
                       (_xchar181400_
                        (if (let ()
                              (declare (not safe))
                              (string-index
                               gxc#module-path-reserved-chars
                               _char181398_))
                            '#\_
                            _char181398_)))
                  (string-set! _res181391_ _i181396_ _xchar181400_)
                  (let ((__tmp185781
                         (let () (declare (not safe)) (fx+ _i181396_ '1))))
                    (declare (not safe))
                    (_lp181394_ __tmp185781)))
                _res181391_)))))))
