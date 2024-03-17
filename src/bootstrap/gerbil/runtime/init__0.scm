(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1710687284)
  (begin
    (define __loading-scheme-source (make-parameter '#f))
    (define __init-gx!
      (lambda ()
        (gx#current-expander-marks '())
        (gx#current-expander-phi '0)
        (gx#current-expander-context (gx#make-top-context))
        (gx#current-expander-module-library-path (current-module-library-path))
        (gx#current-expander-module-registry
         (let () (declare (not safe)) (make-hash-table)))
        (gx#current-expander-module-import gx#core-import-module)
        (gx#current-expander-module-eval gx#core-eval-module)
        (gx#current-expander-compile __compile-top)
        (gx#current-expander-eval ##eval)
        (gx#core-bind-root-syntax! ':<root> (gx#make-prelude-context '#f) '#t)
        (__current-compiler __compile-top)
        (__current-expander gx#core-expand)
        (set! __eval-module gx#core-eval-module)))
    (define __load-gxi
      (lambda ()
        (letrec* ((_+readtable+79771_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core79773_ (gx#import-module ':gerbil/core))
                 (_pre79775_ (gx#make-prelude-context _core79773_)))
            (gx#current-expander-module-prelude _pre79775_)
            (gx#core-bind-root-syntax! ':<core> _pre79775_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port79778_)
             (input-port-readtable-set! _port79778_ _+readtable+79771_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port79780_)
             (output-port-readtable-set!
              _port79780_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port79780_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline79768_) '#!void))
    (define load-scheme
      (lambda (_path79763_)
        (let ((__tmp79782
               (lambda ()
                 (let ((__tmp79783 (lambda _args79766_ '#f)))
                   (declare (not safe))
                   (##load _path79763_ __tmp79783 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp79782
           __loading-scheme-source
           _path79763_))))
    (define load-path
      (lambda ()
        (values (let () (declare (not safe)) (current-module-library-path))
                (let ()
                  (declare (not safe))
                  (gx#current-expander-module-library-path)))))
    (define library-load-path (lambda () (current-module-library-path)))
    (define expander-load-path
      (lambda () (gx#current-expander-module-library-path)))
    (define add-load-path
      (lambda _paths79758_
        (apply add-library-load-path _paths79758_)
        (apply add-expander-load-path _paths79758_)))
    (define add-library-load-path
      (lambda _paths79747_
        (let* ((_current79749_ (current-module-library-path))
               (_paths79751_ (map path-expand _paths79747_))
               (_paths79755_
                (filter (lambda (_x79753_)
                          (let ((__tmp79784 (member _x79753_ _current79749_)))
                            (declare (not safe))
                            (not __tmp79784)))
                        _paths79751_)))
          (current-module-library-path (append _current79749_ _paths79755_)))))
    (define add-expander-load-path
      (lambda _paths79736_
        (let* ((_current79738_ (gx#current-expander-module-library-path))
               (_paths79740_ (map path-expand _paths79736_))
               (_paths79744_
                (filter (lambda (_x79742_)
                          (let ((__tmp79785 (member _x79742_ _current79738_)))
                            (declare (not safe))
                            (not __tmp79785)))
                        _paths79740_)))
          (gx#current-expander-module-library-path
           (append _current79738_ _paths79744_)))))
    (define cons-load-path
      (lambda _paths79734_
        (apply cons-library-load-path _paths79734_)
        (apply cons-expander-load-path _paths79734_)))
    (define cons-library-load-path
      (lambda _paths79729_
        (let ((_current79731_ (current-module-library-path))
              (_paths79732_ (map path-expand _paths79729_)))
          (current-module-library-path (append _paths79732_ _current79731_)))))
    (define cons-expander-load-path
      (lambda _paths79724_
        (let ((_current79726_ (gx#current-expander-module-library-path))
              (_paths79727_ (map path-expand _paths79724_)))
          (gx#current-expander-module-library-path
           (append _paths79727_ _current79726_)))))
    (define with-cons-load-path
      (lambda (_thunk79720_ . _paths79721_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk79720_
                        _paths79721_))
               _paths79721_)))
    (define with-cons-library-load-path
      (lambda (_thunk79713_ . _paths79714_)
        (let ((_current79716_ (current-module-library-path))
              (_paths79717_ (map path-expand _paths79714_)))
          (let ((__tmp79787 (lambda () (_thunk79713_)))
                (__tmp79786 (append _paths79717_ _current79716_)))
            (declare (not safe))
            (call-with-parameters
             __tmp79787
             current-module-library-path
             __tmp79786)))))
    (define with-cons-expander-load-path
      (lambda (_thunk79706_ . _paths79707_)
        (let ((_current79709_ (gx#current-expander-module-library-path))
              (_paths79710_ (map path-expand _paths79707_)))
          (let ((__tmp79789 (lambda () (_thunk79706_)))
                (__tmp79788 (append _paths79710_ _current79709_)))
            (declare (not safe))
            (call-with-parameters
             __tmp79789
             gx#current-expander-module-library-path
             __tmp79788)))))
    (define __expand-source
      (lambda (_src79692_)
        (letrec ((_expand79694_
                  (lambda (_src79704_)
                    (let ((__tmp79790
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src79704_)))))
                      (declare (not safe))
                      (__compile-top __tmp79790))))
                 (_no-expand79695_
                  (lambda (_src79700_)
                    (if (__loading-scheme-source)
                        _src79700_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src79700_))
                            (let ((_code79702_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src79700_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code79702_))
                                  (if (let ((__tmp79791
                                             (let ()
                                               (declare (not safe))
                                               (##car _code79702_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp79791))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code79702_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e79697_
                 (let () (declare (not safe)) (_no-expand79695_ _src79692_))))
            (if _$e79697_
                _$e79697_
                (let () (declare (not safe)) (_expand79694_ _src79692_)))))))
    (define __macro-descr
      (lambda (_src79678_ _def-syntax?79679_)
        (letrec ((_fail!79681_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src79678_))))
                 (_make-descr79682_
                  (lambda (_size79686_)
                    (let ((_expander79689_
                           (let ((__tmp79792
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src79678_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp79792
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander79689_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?79679_
                             _size79686_
                             _expander79689_
                             _src79678_))
                          (let () (declare (not safe)) (_fail!79681_)))))))
          (if _def-syntax?79679_
              (let () (declare (not safe)) (_make-descr79682_ '-1))
              (let ((_code79684_
                     (let () (declare (not safe)) (##source-code _src79678_))))
                (if (and (let () (declare (not safe)) (##pair? _code79684_))
                         (let ((__tmp79796
                                (let ((__tmp79797
                                       (let ((__tmp79798
                                              (let ()
                                                (declare (not safe))
                                                (##car _code79684_))))
                                         (declare (not safe))
                                         (##sourcify __tmp79798 _src79678_))))
                                  (declare (not safe))
                                  (##source-code __tmp79797))))
                           (declare (not safe))
                           (##memq __tmp79796 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src79678_ _src79678_ '-3))
                      (let ((__tmp79793
                             (let ((__tmp79794
                                    (let ((__tmp79795
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code79684_))))
                                      (declare (not safe))
                                      (##sourcify __tmp79795 _src79678_))))
                               (declare (not safe))
                               (##form-size __tmp79794))))
                        (declare (not safe))
                        (_make-descr79682_ __tmp79793)))
                    (let () (declare (not safe)) (_fail!79681_))))))))
    (define __source->syntax
      (lambda (_src79672_)
        (let _recur79674_ ((_e79676_ _src79672_))
          (if (let () (declare (not safe)) (##source? _e79676_))
              (let ((__tmp79806
                     (let ((__tmp79807
                            (let ()
                              (declare (not safe))
                              (##source-code _e79676_))))
                       (declare (not safe))
                       (_recur79674_ __tmp79807)))
                    (__tmp79805
                     (let () (declare (not safe)) (##source-locat _e79676_))))
                (declare (not safe))
                (##structure AST::t __tmp79806 __tmp79805))
              (if (let () (declare (not safe)) (pair? _e79676_))
                  (let ((__tmp79803
                         (let ((__tmp79804
                                (let ()
                                  (declare (not safe))
                                  (##car _e79676_))))
                           (declare (not safe))
                           (_recur79674_ __tmp79804)))
                        (__tmp79801
                         (let ((__tmp79802
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e79676_))))
                           (declare (not safe))
                           (_recur79674_ __tmp79802))))
                    (declare (not safe))
                    (cons __tmp79803 __tmp79801))
                  (if (let () (declare (not safe)) (vector? _e79676_))
                      (vector-map _recur79674_ _e79676_)
                      (if (let () (declare (not safe)) (box? _e79676_))
                          (let ((__tmp79799
                                 (let ((__tmp79800 (unbox _e79676_)))
                                   (declare (not safe))
                                   (_recur79674_ __tmp79800))))
                            (declare (not safe))
                            (box __tmp79799))
                          _e79676_)))))))
    (define __compile-top-source
      (lambda (_stx79670_)
        (let ((__tmp79808
               (let () (declare (not safe)) (__compile-top _stx79670_))))
          (declare (not safe))
          (cons '__noexpand: __tmp79808))))
    (define __compile-top
      (lambda (_stx79668_)
        (let ((__tmp79809 (gx#core-compile-top-syntax _stx79668_)))
          (declare (not safe))
          (__compile __tmp79809))))
    (define __eval-import
      (lambda (_in79649_)
        (letrec* ((_mods79651_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import179652_
                   (lambda (_in79659_ _phi79660_)
                     (if (gx#module-import? _in79659_)
                         (let ((_iphi79662_
                                (fx+ _phi79660_
                                     (gx#module-import-phi _in79659_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi79662_))
                               (let ((__tmp79811
                                      (gx#module-export-context
                                       (gx#module-import-source _in79659_))))
                                 (declare (not safe))
                                 (_eval179653_ __tmp79811))
                               '#!void))
                         (if (gx#module-context? _in79659_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi79660_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval179653_ _in79659_))
                                 '#!void)
                             (if (gx#import-set? _in79659_)
                                 (let ((_iphi79664_
                                        (fx+ _phi79660_
                                             (gx#import-set-phi _in79659_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi79664_))
                                       (let ((__tmp79810
                                              (gx#import-set-source
                                               _in79659_)))
                                         (declare (not safe))
                                         (_eval179653_ __tmp79810))
                                       (if (fxpositive? _iphi79664_)
                                           (for-each
                                            (lambda (_in79666_)
                                              (let ()
                                                (declare (not safe))
                                                (_import179652_
                                                 _in79666_
                                                 _iphi79664_)))
                                            (gx#module-context-import
                                             (gx#import-set-source _in79659_)))
                                           '#!void)))
                                 (let ()
                                   (declare (not safe))
                                   (error '"Unexpected import" _in79659_)))))))
                  (_eval179653_
                   (lambda (_ctx79657_)
                     (if (let ()
                           (declare (not safe))
                           (hash-get _mods79651_ _ctx79657_))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (hash-put! _mods79651_ _ctx79657_ '#t))
                           (__eval-module _ctx79657_))))))
          (if (let () (declare (not safe)) (pair? _in79649_))
              (for-each
               (lambda (_in79655_)
                 (let () (declare (not safe)) (_import179652_ _in79655_ '0)))
               _in79649_)
              (let () (declare (not safe)) (_import179652_ _in79649_ '0))))))
    (define __eval-module
      (lambda (_obj79647_) (gx#core-eval-module _obj79647_)))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules79582_)
        (if __runtime-initialized
            '#!void
            (begin
              (dump-stack-trace? '#t)
              (let* ((_home79584_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir79586_ (path-expand '"lib" _home79584_))
                     (_userpath79588_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath79590_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir79586_ '()))
                          (let ((__tmp79812
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir79586_ '()))))
                            (declare (not safe))
                            (cons _userpath79588_ __tmp79812))))
                     (_loadpath79599_
                      (let ((_$e79592_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e79592_
                            ((lambda (_envvar79595_)
                               (append (filter (lambda (_x79597_)
                                                 (let ((__tmp79813
                                                        (let ()
                                                          (declare (not safe))
                                                          (string-empty?
                                                           _x79597_))))
                                                   (declare (not safe))
                                                   (not __tmp79813)))
                                               (let ()
                                                 (declare (not safe))
                                                 (string-split
                                                  _envvar79595_
                                                  '#\:)))
                                       _loadpath79590_))
                             _$e79592_)
                            _loadpath79590_))))
                (current-module-library-path _loadpath79599_))
              (let* ((_registry-entry79604_
                      (lambda (_m79602_)
                        (let ()
                          (declare (not safe))
                          (cons _m79602_ 'builtin))))
                     (_module-registry79644_
                      (let _lp79606_ ((_rest79608_ _builtin-modules79582_)
                                      (_registry79609_ '()))
                        (let* ((_rest7961079618_ _rest79608_)
                               (_else7961279626_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->hash-table _registry79609_))))
                               (_K7961479632_
                                (lambda (_rest79629_ _mod79630_)
                                  (let ((__tmp79814
                                         (let ((__tmp79818
                                                (let ((__tmp79819
                                                       (string-append
                                                        _mod79630_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry79604_
                                                   __tmp79819)))
                                               (__tmp79815
                                                (let ((__tmp79816
                                                       (let ((__tmp79817
                                                              (string-append
                                                               _mod79630_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry79604_
                                                          __tmp79817))))
                                                  (declare (not safe))
                                                  (cons __tmp79816
                                                        _registry79609_))))
                                           (declare (not safe))
                                           (cons __tmp79818 __tmp79815))))
                                    (declare (not safe))
                                    (_lp79606_ _rest79629_ __tmp79814)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7961079618_))
                              (let ((_hd7961579635_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7961079618_)))
                                    (_tl7961679637_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7961079618_))))
                                (let* ((_mod79640_ _hd7961579635_)
                                       (_rest79642_ _tl7961679637_))
                                  (declare (not safe))
                                  (_K7961479632_ _rest79642_ _mod79640_)))
                              (let ()
                                (declare (not safe))
                                (_else7961279626_)))))))
                (current-module-registry _module-registry79644_))
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
