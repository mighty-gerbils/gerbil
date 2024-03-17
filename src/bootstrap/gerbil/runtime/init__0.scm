(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1710694203)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (__current-compiler __compile-top)
        (__current-expander gx#core-expand)
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_+readtable+77053_ __*readtable*))
          (let* ((_core77055_ (gx#import-module ':gerbil/core))
                 (_pre77057_ (gx#make-prelude-context _core77055_)))
            (gx#current-expander-module-prelude _pre77057_)
            (gx#core-bind-root-syntax! ':<core> _pre77057_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port77060_)
             (input-port-readtable-set! _port77060_ _+readtable+77053_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port77062_)
             (output-port-readtable-set!
              _port77062_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port77062_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline77050_) '#!void))
    (define load-scheme
      (lambda (_path77045_)
        (let ((__tmp77063
               (lambda ()
                 (let ((__tmp77064 (lambda _args77048_ '#f)))
                   (declare (not safe))
                   (##load _path77045_ __tmp77064 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters __tmp77063 __scheme-source _path77045_))))
    (define __expand-source
      (lambda (_src77031_)
        (letrec ((_expand77033_
                  (lambda (_src77043_)
                    (let ((__tmp77065
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src77043_)))))
                      (declare (not safe))
                      (__compile-top __tmp77065))))
                 (_no-expand77034_
                  (lambda (_src77039_)
                    (if (__scheme-source)
                        _src77039_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src77039_))
                            (let ((_code77041_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src77039_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code77041_))
                                  (if (let ((__tmp77066
                                             (let ()
                                               (declare (not safe))
                                               (##car _code77041_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp77066))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code77041_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e77036_
                 (let () (declare (not safe)) (_no-expand77034_ _src77031_))))
            (if _$e77036_
                _$e77036_
                (let () (declare (not safe)) (_expand77033_ _src77031_)))))))
    (define __macro-descr
      (lambda (_src77017_ _def-syntax?77018_)
        (letrec ((_fail!77020_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src77017_))))
                 (_make-descr77021_
                  (lambda (_size77025_)
                    (let ((_expander77028_
                           (let ((__tmp77067
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src77017_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp77067
                              __scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander77028_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?77018_
                             _size77025_
                             _expander77028_
                             _src77017_))
                          (let () (declare (not safe)) (_fail!77020_)))))))
          (if _def-syntax?77018_
              (let () (declare (not safe)) (_make-descr77021_ '-1))
              (let ((_code77023_
                     (let () (declare (not safe)) (##source-code _src77017_))))
                (if (and (let () (declare (not safe)) (##pair? _code77023_))
                         (let ((__tmp77068
                                (let ((__tmp77069
                                       (let ((__tmp77070
                                              (let ()
                                                (declare (not safe))
                                                (##car _code77023_))))
                                         (declare (not safe))
                                         (##sourcify __tmp77070 _src77017_))))
                                  (declare (not safe))
                                  (##source-code __tmp77069))))
                           (declare (not safe))
                           (##memq __tmp77068 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src77017_ _src77017_ '-3))
                      (let ((__tmp77071
                             (let ((__tmp77072
                                    (let ((__tmp77073
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code77023_))))
                                      (declare (not safe))
                                      (##sourcify __tmp77073 _src77017_))))
                               (declare (not safe))
                               (##form-size __tmp77072))))
                        (declare (not safe))
                        (_make-descr77021_ __tmp77071)))
                    (let () (declare (not safe)) (_fail!77020_))))))))
    (define __source->syntax
      (lambda (_src77011_)
        (let _recur77013_ ((_e77015_ _src77011_))
          (if (let () (declare (not safe)) (##source? _e77015_))
              (let ((__tmp77075
                     (let ((__tmp77076
                            (let ()
                              (declare (not safe))
                              (##source-code _e77015_))))
                       (declare (not safe))
                       (_recur77013_ __tmp77076)))
                    (__tmp77074
                     (let () (declare (not safe)) (##source-locat _e77015_))))
                (declare (not safe))
                (##structure AST::t __tmp77075 __tmp77074))
              (if (let () (declare (not safe)) (pair? _e77015_))
                  (let ((__tmp77079
                         (let ((__tmp77080
                                (let ()
                                  (declare (not safe))
                                  (##car _e77015_))))
                           (declare (not safe))
                           (_recur77013_ __tmp77080)))
                        (__tmp77077
                         (let ((__tmp77078
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e77015_))))
                           (declare (not safe))
                           (_recur77013_ __tmp77078))))
                    (declare (not safe))
                    (cons __tmp77079 __tmp77077))
                  (if (let () (declare (not safe)) (vector? _e77015_))
                      (vector-map _recur77013_ _e77015_)
                      (if (let () (declare (not safe)) (box? _e77015_))
                          (let ((__tmp77081
                                 (let ((__tmp77082 (unbox _e77015_)))
                                   (declare (not safe))
                                   (_recur77013_ __tmp77082))))
                            (declare (not safe))
                            (box __tmp77081))
                          _e77015_)))))))
    (define __compile-top-source
      (lambda (_stx77009_)
        (let ((__tmp77083
               (let () (declare (not safe)) (__compile-top _stx77009_))))
          (declare (not safe))
          (cons '__noexpand: __tmp77083))))
    (define __compile-top
      (lambda (_stx77007_)
        (let ((__tmp77084 (gx#core-compile-top-syntax _stx77007_)))
          (declare (not safe))
          (__compile __tmp77084))))
    (define __eval-import
      (lambda (_in76988_)
        (letrec* ((_mods76990_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import176991_
                   (lambda (_in76998_ _phi76999_)
                     (if (gx#module-import? _in76998_)
                         (let ((_iphi77001_
                                (fx+ _phi76999_
                                     (gx#module-import-phi _in76998_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi77001_))
                               (let ((__tmp77085
                                      (gx#module-export-context
                                       (gx#module-import-source _in76998_))))
                                 (declare (not safe))
                                 (_eval176992_ __tmp77085))
                               '#!void))
                         (if (gx#module-context? _in76998_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi76999_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval176992_ _in76998_))
                                 '#!void)
                             (if (gx#import-set? _in76998_)
                                 (let ((_iphi77003_
                                        (fx+ _phi76999_
                                             (gx#import-set-phi _in76998_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi77003_))
                                       (let ((__tmp77086
                                              (gx#import-set-source
                                               _in76998_)))
                                         (declare (not safe))
                                         (_eval176992_ __tmp77086))
                                       (if (fxpositive? _iphi77003_)
                                           (for-each
                                            (lambda (_in77005_)
                                              (let ()
                                                (declare (not safe))
                                                (_import176991_
                                                 _in77005_
                                                 _iphi77003_)))
                                            (gx#module-context-import
                                             (gx#import-set-source _in76998_)))
                                           '#!void)))
                                 (let ()
                                   (declare (not safe))
                                   (error '"Unexpected import" _in76998_)))))))
                  (_eval176992_
                   (lambda (_ctx76996_)
                     (if (let ()
                           (declare (not safe))
                           (hash-get _mods76990_ _ctx76996_))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (hash-put! _mods76990_ _ctx76996_ '#t))
                           (__eval-module _ctx76996_))))))
          (if (let () (declare (not safe)) (pair? _in76988_))
              (for-each
               (lambda (_in76994_)
                 (let () (declare (not safe)) (_import176991_ _in76994_ '0)))
               _in76988_)
              (let () (declare (not safe)) (_import176991_ _in76988_ '0))))))
    (define __eval-module
      (lambda (_obj76986_) (gx#core-eval-module _obj76986_)))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules76964_)
        (if __runtime-initialized
            '#!void
            (begin
              (dump-stack-trace? '#t)
              (let* ((_home76966_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir76968_ (path-expand '"lib" _home76966_))
                     (_userpath76970_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath76972_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir76968_ '()))
                          (let ((__tmp77087
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir76968_ '()))))
                            (declare (not safe))
                            (cons _userpath76970_ __tmp77087))))
                     (_loadpath76981_
                      (let ((_$e76974_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e76974_
                            ((lambda (_envvar76977_)
                               (append (filter (lambda (_x76979_)
                                                 (let ((__tmp77088
                                                        (let ()
                                                          (declare (not safe))
                                                          (string-empty?
                                                           _x76979_))))
                                                   (declare (not safe))
                                                   (not __tmp77088)))
                                               (let ()
                                                 (declare (not safe))
                                                 (string-split
                                                  _envvar76977_
                                                  '#\:)))
                                       _loadpath76972_))
                             _$e76974_)
                            _loadpath76972_))))
                (let () (declare (not safe)) (set-load-path! _loadpath76981_)))
              (for-each
               (lambda (_mod76984_)
                 (let ()
                   (declare (not safe))
                   (hash-put! __modules _mod76984_ 'builtin))
                 (let ((__tmp77089 (string-append _mod76984_ '"~0")))
                   (declare (not safe))
                   (hash-put! __modules __tmp77089 'builtin))
                 (let ((__tmp77090 (string-append _mod76984_ '"__0")))
                   (declare (not safe))
                   (hash-put! __modules __tmp77090 'builtin))
                 (let ((__tmp77091 (string-append _mod76984_ '"__rt")))
                   (declare (not safe))
                   (hash-put! __modules __tmp77091 'builtin)))
               _builtin-modules76964_)
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
