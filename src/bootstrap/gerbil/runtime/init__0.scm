(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1710699091)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (__current-compiler __compile-top)
        (__current-expander gx#core-expand)
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_+readtable+79693_ __*readtable*))
          (let* ((_core79695_ (gx#import-module ':gerbil/core))
                 (_pre79697_ (gx#make-prelude-context _core79695_)))
            (gx#current-expander-module-prelude _pre79697_)
            (gx#core-bind-root-syntax! ':<core> _pre79697_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port79700_)
             (input-port-readtable-set! _port79700_ _+readtable+79693_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port79702_)
             (output-port-readtable-set!
              _port79702_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port79702_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline79690_) '#!void))
    (define load-scheme
      (lambda (_path79685_)
        (let ((__tmp79703
               (lambda ()
                 (let ((__tmp79704 (lambda _args79688_ '#f)))
                   (declare (not safe))
                   (##load _path79685_ __tmp79704 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters __tmp79703 __scheme-source _path79685_))))
    (define __expand-source
      (lambda (_src79671_)
        (letrec ((_expand79673_
                  (lambda (_src79683_)
                    (let ((__tmp79705
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src79683_)))))
                      (declare (not safe))
                      (__compile-top __tmp79705))))
                 (_no-expand79674_
                  (lambda (_src79679_)
                    (if (__scheme-source)
                        _src79679_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src79679_))
                            (let ((_code79681_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src79679_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code79681_))
                                  (if (let ((__tmp79706
                                             (let ()
                                               (declare (not safe))
                                               (##car _code79681_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp79706))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code79681_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e79676_
                 (let () (declare (not safe)) (_no-expand79674_ _src79671_))))
            (if _$e79676_
                _$e79676_
                (let () (declare (not safe)) (_expand79673_ _src79671_)))))))
    (define __macro-descr
      (lambda (_src79657_ _def-syntax?79658_)
        (letrec ((_fail!79660_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src79657_))))
                 (_make-descr79661_
                  (lambda (_size79665_)
                    (let ((_expander79668_
                           (let ((__tmp79707
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src79657_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp79707
                              __scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander79668_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?79658_
                             _size79665_
                             _expander79668_
                             _src79657_))
                          (let () (declare (not safe)) (_fail!79660_)))))))
          (if _def-syntax?79658_
              (let () (declare (not safe)) (_make-descr79661_ '-1))
              (let ((_code79663_
                     (let () (declare (not safe)) (##source-code _src79657_))))
                (if (and (let () (declare (not safe)) (##pair? _code79663_))
                         (let ((__tmp79711
                                (let ((__tmp79712
                                       (let ((__tmp79713
                                              (let ()
                                                (declare (not safe))
                                                (##car _code79663_))))
                                         (declare (not safe))
                                         (##sourcify __tmp79713 _src79657_))))
                                  (declare (not safe))
                                  (##source-code __tmp79712))))
                           (declare (not safe))
                           (##memq __tmp79711 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src79657_ _src79657_ '-3))
                      (let ((__tmp79708
                             (let ((__tmp79709
                                    (let ((__tmp79710
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code79663_))))
                                      (declare (not safe))
                                      (##sourcify __tmp79710 _src79657_))))
                               (declare (not safe))
                               (##form-size __tmp79709))))
                        (declare (not safe))
                        (_make-descr79661_ __tmp79708)))
                    (let () (declare (not safe)) (_fail!79660_))))))))
    (define __source->syntax
      (lambda (_src79651_)
        (let _recur79653_ ((_e79655_ _src79651_))
          (if (let () (declare (not safe)) (##source? _e79655_))
              (let ((__tmp79721
                     (let ((__tmp79722
                            (let ()
                              (declare (not safe))
                              (##source-code _e79655_))))
                       (declare (not safe))
                       (_recur79653_ __tmp79722)))
                    (__tmp79720
                     (let () (declare (not safe)) (##source-locat _e79655_))))
                (declare (not safe))
                (##structure AST::t __tmp79721 __tmp79720))
              (if (let () (declare (not safe)) (pair? _e79655_))
                  (let ((__tmp79718
                         (let ((__tmp79719
                                (let ()
                                  (declare (not safe))
                                  (##car _e79655_))))
                           (declare (not safe))
                           (_recur79653_ __tmp79719)))
                        (__tmp79716
                         (let ((__tmp79717
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e79655_))))
                           (declare (not safe))
                           (_recur79653_ __tmp79717))))
                    (declare (not safe))
                    (cons __tmp79718 __tmp79716))
                  (if (let () (declare (not safe)) (vector? _e79655_))
                      (vector-map _recur79653_ _e79655_)
                      (if (let () (declare (not safe)) (box? _e79655_))
                          (let ((__tmp79714
                                 (let ((__tmp79715 (unbox _e79655_)))
                                   (declare (not safe))
                                   (_recur79653_ __tmp79715))))
                            (declare (not safe))
                            (box __tmp79714))
                          _e79655_)))))))
    (define __compile-top-source
      (lambda (_stx79649_)
        (let ((__tmp79723
               (let () (declare (not safe)) (__compile-top _stx79649_))))
          (declare (not safe))
          (cons '__noexpand: __tmp79723))))
    (define __compile-top
      (lambda (_stx79647_)
        (let ((__tmp79724 (gx#core-compile-top-syntax _stx79647_)))
          (declare (not safe))
          (__compile __tmp79724))))
    (define __eval-import
      (lambda (_in79628_)
        (letrec* ((_mods79630_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import179631_
                   (lambda (_in79638_ _phi79639_)
                     (if (gx#module-import? _in79638_)
                         (let ((_iphi79641_
                                (fx+ _phi79639_
                                     (gx#module-import-phi _in79638_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi79641_))
                               (let ((__tmp79726
                                      (gx#module-export-context
                                       (gx#module-import-source _in79638_))))
                                 (declare (not safe))
                                 (_eval179632_ __tmp79726))
                               '#!void))
                         (if (gx#module-context? _in79638_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi79639_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval179632_ _in79638_))
                                 '#!void)
                             (if (gx#import-set? _in79638_)
                                 (let ((_iphi79643_
                                        (fx+ _phi79639_
                                             (gx#import-set-phi _in79638_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi79643_))
                                       (let ((__tmp79725
                                              (gx#import-set-source
                                               _in79638_)))
                                         (declare (not safe))
                                         (_eval179632_ __tmp79725))
                                       (if (fxpositive? _iphi79643_)
                                           (for-each
                                            (lambda (_in79645_)
                                              (let ()
                                                (declare (not safe))
                                                (_import179631_
                                                 _in79645_
                                                 _iphi79643_)))
                                            (gx#module-context-import
                                             (gx#import-set-source _in79638_)))
                                           '#!void)))
                                 (let ()
                                   (declare (not safe))
                                   (error '"Unexpected import" _in79638_)))))))
                  (_eval179632_
                   (lambda (_ctx79636_)
                     (if (let ()
                           (declare (not safe))
                           (hash-get _mods79630_ _ctx79636_))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (hash-put! _mods79630_ _ctx79636_ '#t))
                           (__eval-module _ctx79636_))))))
          (if (let () (declare (not safe)) (pair? _in79628_))
              (for-each
               (lambda (_in79634_)
                 (let () (declare (not safe)) (_import179631_ _in79634_ '0)))
               _in79628_)
              (let () (declare (not safe)) (_import179631_ _in79628_ '0))))))
    (define __eval-module
      (lambda (_obj79626_) (gx#core-eval-module _obj79626_)))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules79604_)
        (if __runtime-initialized
            '#!void
            (begin
              (dump-stack-trace? '#t)
              (let* ((_home79606_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir79608_ (path-expand '"lib" _home79606_))
                     (_userpath79610_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath79612_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir79608_ '()))
                          (let ((__tmp79727
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir79608_ '()))))
                            (declare (not safe))
                            (cons _userpath79610_ __tmp79727))))
                     (_loadpath79621_
                      (let ((_$e79614_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e79614_
                            ((lambda (_envvar79617_)
                               (append (filter (lambda (_x79619_)
                                                 (let ((__tmp79728
                                                        (let ()
                                                          (declare (not safe))
                                                          (string-empty?
                                                           _x79619_))))
                                                   (declare (not safe))
                                                   (not __tmp79728)))
                                               (let ()
                                                 (declare (not safe))
                                                 (string-split
                                                  _envvar79617_
                                                  '#\:)))
                                       _loadpath79612_))
                             _$e79614_)
                            _loadpath79612_))))
                (let () (declare (not safe)) (set-load-path! _loadpath79621_)))
              (for-each
               (lambda (_mod79624_)
                 (let ()
                   (declare (not safe))
                   (hash-put! __modules _mod79624_ 'builtin))
                 (let ((__tmp79729 (string-append _mod79624_ '"~0")))
                   (declare (not safe))
                   (hash-put! __modules __tmp79729 'builtin))
                 (let ((__tmp79730 (string-append _mod79624_ '"__0")))
                   (declare (not safe))
                   (hash-put! __modules __tmp79730 'builtin))
                 (let ((__tmp79731 (string-append _mod79624_ '"__rt")))
                   (declare (not safe))
                   (hash-put! __modules __tmp79731 'builtin)))
               _builtin-modules79604_)
              (current-readtable __*readtable*)
              (random-source-randomize! default-random-source)
              (set! __runtime-initialized '#t)))))
    (define __expander-loaded '#f)
    (define __runtime-initialized '#f)
    (define gerbil-load-expander!
      (lambda ()
        (if __runtime-initialized
            '#!void
            (let ()
              (declare (not safe))
              (error '"runtime has not been initialized")))
        (if __expander-loaded
            '#!void
            (begin
              (let () (declare (not safe)) (__load-gxi))
              (set! __expander-loaded '#t)))))))
