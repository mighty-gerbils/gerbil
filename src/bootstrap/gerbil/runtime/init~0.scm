(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1710715075)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (__current-compiler __compile-top)
        (__current-expander gx#core-expand)
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_+readtable+79685_ __*readtable*))
          (let* ((_core79687_ (gx#import-module ':gerbil/core))
                 (_pre79689_ (gx#make-prelude-context _core79687_)))
            (gx#current-expander-module-prelude _pre79689_)
            (gx#core-bind-root-syntax! ':<core> _pre79689_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port79692_)
             (input-port-readtable-set! _port79692_ _+readtable+79685_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port79694_)
             (output-port-readtable-set!
              _port79694_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port79694_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline79682_) '#!void))
    (define load-scheme
      (lambda (_path79677_)
        (let ((__tmp79695
               (lambda ()
                 (let ((__tmp79696 (lambda _args79680_ '#f)))
                   (declare (not safe))
                   (##load _path79677_ __tmp79696 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters __tmp79695 __scheme-source _path79677_))))
    (define __expand-source
      (lambda (_src79663_)
        (letrec ((_expand79665_
                  (lambda (_src79675_)
                    (let ((__tmp79697
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src79675_)))))
                      (declare (not safe))
                      (__compile-top __tmp79697))))
                 (_no-expand79666_
                  (lambda (_src79671_)
                    (if (__scheme-source)
                        _src79671_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src79671_))
                            (let ((_code79673_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src79671_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code79673_))
                                  (if (let ((__tmp79698
                                             (let ()
                                               (declare (not safe))
                                               (##car _code79673_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp79698))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code79673_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e79668_
                 (let () (declare (not safe)) (_no-expand79666_ _src79663_))))
            (if _$e79668_
                _$e79668_
                (let () (declare (not safe)) (_expand79665_ _src79663_)))))))
    (define __macro-descr
      (lambda (_src79649_ _def-syntax?79650_)
        (letrec ((_fail!79652_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src79649_))))
                 (_make-descr79653_
                  (lambda (_size79657_)
                    (let ((_expander79660_
                           (let ((__tmp79699
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src79649_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp79699
                              __scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander79660_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?79650_
                             _size79657_
                             _expander79660_
                             _src79649_))
                          (let () (declare (not safe)) (_fail!79652_)))))))
          (if _def-syntax?79650_
              (let () (declare (not safe)) (_make-descr79653_ '-1))
              (let ((_code79655_
                     (let () (declare (not safe)) (##source-code _src79649_))))
                (if (and (let () (declare (not safe)) (##pair? _code79655_))
                         (let ((__tmp79703
                                (let ((__tmp79704
                                       (let ((__tmp79705
                                              (let ()
                                                (declare (not safe))
                                                (##car _code79655_))))
                                         (declare (not safe))
                                         (##sourcify __tmp79705 _src79649_))))
                                  (declare (not safe))
                                  (##source-code __tmp79704))))
                           (declare (not safe))
                           (##memq __tmp79703 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src79649_ _src79649_ '-3))
                      (let ((__tmp79700
                             (let ((__tmp79701
                                    (let ((__tmp79702
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code79655_))))
                                      (declare (not safe))
                                      (##sourcify __tmp79702 _src79649_))))
                               (declare (not safe))
                               (##form-size __tmp79701))))
                        (declare (not safe))
                        (_make-descr79653_ __tmp79700)))
                    (let () (declare (not safe)) (_fail!79652_))))))))
    (define __source->syntax
      (lambda (_src79643_)
        (let _recur79645_ ((_e79647_ _src79643_))
          (if (let () (declare (not safe)) (##source? _e79647_))
              (let ((__tmp79713
                     (let ((__tmp79714
                            (let ()
                              (declare (not safe))
                              (##source-code _e79647_))))
                       (declare (not safe))
                       (_recur79645_ __tmp79714)))
                    (__tmp79712
                     (let () (declare (not safe)) (##source-locat _e79647_))))
                (declare (not safe))
                (##structure AST::t __tmp79713 __tmp79712))
              (if (let () (declare (not safe)) (pair? _e79647_))
                  (let ((__tmp79710
                         (let ((__tmp79711
                                (let ()
                                  (declare (not safe))
                                  (##car _e79647_))))
                           (declare (not safe))
                           (_recur79645_ __tmp79711)))
                        (__tmp79708
                         (let ((__tmp79709
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e79647_))))
                           (declare (not safe))
                           (_recur79645_ __tmp79709))))
                    (declare (not safe))
                    (cons __tmp79710 __tmp79708))
                  (if (let () (declare (not safe)) (vector? _e79647_))
                      (vector-map _recur79645_ _e79647_)
                      (if (let () (declare (not safe)) (box? _e79647_))
                          (let ((__tmp79706
                                 (let ((__tmp79707 (unbox _e79647_)))
                                   (declare (not safe))
                                   (_recur79645_ __tmp79707))))
                            (declare (not safe))
                            (box __tmp79706))
                          _e79647_)))))))
    (define __compile-top-source
      (lambda (_stx79641_)
        (let ((__tmp79715
               (let () (declare (not safe)) (__compile-top _stx79641_))))
          (declare (not safe))
          (cons '__noexpand: __tmp79715))))
    (define __compile-top
      (lambda (_stx79639_)
        (let ((__tmp79716 (gx#core-compile-top-syntax _stx79639_)))
          (declare (not safe))
          (__compile __tmp79716))))
    (define __eval-import
      (lambda (_in79620_)
        (letrec* ((_mods79622_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import179623_
                   (lambda (_in79630_ _phi79631_)
                     (if (gx#module-import? _in79630_)
                         (let ((_iphi79633_
                                (fx+ _phi79631_
                                     (gx#module-import-phi _in79630_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi79633_))
                               (let ((__tmp79718
                                      (gx#module-export-context
                                       (gx#module-import-source _in79630_))))
                                 (declare (not safe))
                                 (_eval179624_ __tmp79718))
                               '#!void))
                         (if (gx#module-context? _in79630_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi79631_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval179624_ _in79630_))
                                 '#!void)
                             (if (gx#import-set? _in79630_)
                                 (let ((_iphi79635_
                                        (fx+ _phi79631_
                                             (gx#import-set-phi _in79630_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi79635_))
                                       (let ((__tmp79717
                                              (gx#import-set-source
                                               _in79630_)))
                                         (declare (not safe))
                                         (_eval179624_ __tmp79717))
                                       (if (fxpositive? _iphi79635_)
                                           (for-each
                                            (lambda (_in79637_)
                                              (let ()
                                                (declare (not safe))
                                                (_import179623_
                                                 _in79637_
                                                 _iphi79635_)))
                                            (gx#module-context-import
                                             (gx#import-set-source _in79630_)))
                                           '#!void)))
                                 (let ()
                                   (declare (not safe))
                                   (error '"Unexpected import" _in79630_)))))))
                  (_eval179624_
                   (lambda (_ctx79628_)
                     (if (let ()
                           (declare (not safe))
                           (hash-get _mods79622_ _ctx79628_))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (hash-put! _mods79622_ _ctx79628_ '#t))
                           (__eval-module _ctx79628_))))))
          (if (let () (declare (not safe)) (pair? _in79620_))
              (for-each
               (lambda (_in79626_)
                 (let () (declare (not safe)) (_import179623_ _in79626_ '0)))
               _in79620_)
              (let () (declare (not safe)) (_import179623_ _in79620_ '0))))))
    (define __eval-module
      (lambda (_obj79618_) (gx#core-eval-module _obj79618_)))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules79596_)
        (if __runtime-initialized
            '#!void
            (begin
              (dump-stack-trace? '#t)
              (let* ((_home79598_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir79600_ (path-expand '"lib" _home79598_))
                     (_userpath79602_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath79604_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir79600_ '()))
                          (let ((__tmp79719
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir79600_ '()))))
                            (declare (not safe))
                            (cons _userpath79602_ __tmp79719))))
                     (_loadpath79613_
                      (let ((_$e79606_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e79606_
                            ((lambda (_envvar79609_)
                               (append (filter (lambda (_x79611_)
                                                 (let ((__tmp79720
                                                        (let ()
                                                          (declare (not safe))
                                                          (string-empty?
                                                           _x79611_))))
                                                   (declare (not safe))
                                                   (not __tmp79720)))
                                               (let ()
                                                 (declare (not safe))
                                                 (string-split
                                                  _envvar79609_
                                                  '#\:)))
                                       _loadpath79604_))
                             _$e79606_)
                            _loadpath79604_))))
                (let () (declare (not safe)) (set-load-path! _loadpath79613_)))
              (for-each
               (lambda (_mod79616_)
                 (let ()
                   (declare (not safe))
                   (hash-put! __modules _mod79616_ 'builtin))
                 (let ((__tmp79721 (string-append _mod79616_ '"~0")))
                   (declare (not safe))
                   (hash-put! __modules __tmp79721 'builtin)))
               _builtin-modules79596_)
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
