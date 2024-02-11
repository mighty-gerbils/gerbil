(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1707651233)
  (begin
    (define __loading-scheme-source (make-parameter '#f))
    (define __init-gx!
      (lambda ()
        (gx#current-expander-marks '())
        (gx#current-expander-phi '0)
        (gx#current-expander-context (gx#make-top-context))
        (gx#current-expander-module-library-path (current-module-library-path))
        (gx#current-expander-module-registry
         (let () (declare (not safe)) (make-table)))
        (gx#current-expander-module-import gx#core-import-module)
        (gx#current-expander-module-eval gx#core-eval-module)
        (gx#current-expander-compile __compile-top)
        (gx#current-expander-eval ##eval)
        (gx#core-bind-root-syntax! ':<root> (gx#make-prelude-context '#f) '#t)
        (__current-context __*top*)
        (__current-compiler __compile-top)
        (__current-expander gx#core-expand)
        (set! __eval-module gx#core-eval-module)))
    (define __load-gxi
      (lambda ()
        (letrec* ((_+readtable+119208_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core119210_ (gx#import-module ':gerbil/core))
                 (_pre119212_ (gx#make-prelude-context _core119210_)))
            (gx#current-expander-module-prelude _pre119212_)
            (gx#core-bind-root-syntax! ':<core> _pre119212_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port119215_)
             (input-port-readtable-set! _port119215_ _+readtable+119208_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port119217_)
             (output-port-readtable-set!
              _port119217_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port119217_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline119205_) '#!void))
    (define load-scheme
      (lambda (_path119200_)
        (let ((__tmp123688
               (lambda ()
                 (let ((__tmp123689 (lambda _args119203_ '#f)))
                   (declare (not safe))
                   (##load _path119200_ __tmp123689 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp123688
           __loading-scheme-source
           _path119200_))))
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
      (lambda _paths119195_
        (apply add-library-load-path _paths119195_)
        (apply add-expander-load-path _paths119195_)))
    (define add-library-load-path
      (lambda _paths119184_
        (let* ((_current119186_ (current-module-library-path))
               (_paths119188_ (map path-expand _paths119184_))
               (_paths119192_
                (let ((__tmp123690
                       (lambda (_x119190_)
                         (let ((__tmp123691
                                (member _x119190_ _current119186_)))
                           (declare (not safe))
                           (not __tmp123691)))))
                  (declare (not safe))
                  (filter __tmp123690 _paths119188_))))
          (current-module-library-path
           (append _current119186_ _paths119192_)))))
    (define add-expander-load-path
      (lambda _paths119173_
        (let* ((_current119175_ (gx#current-expander-module-library-path))
               (_paths119177_ (map path-expand _paths119173_))
               (_paths119181_
                (let ((__tmp123692
                       (lambda (_x119179_)
                         (let ((__tmp123693
                                (member _x119179_ _current119175_)))
                           (declare (not safe))
                           (not __tmp123693)))))
                  (declare (not safe))
                  (filter __tmp123692 _paths119177_))))
          (gx#current-expander-module-library-path
           (append _current119175_ _paths119181_)))))
    (define cons-load-path
      (lambda _paths119171_
        (apply cons-library-load-path _paths119171_)
        (apply cons-expander-load-path _paths119171_)))
    (define cons-library-load-path
      (lambda _paths119166_
        (let ((_current119168_ (current-module-library-path))
              (_paths119169_ (map path-expand _paths119166_)))
          (current-module-library-path
           (append _paths119169_ _current119168_)))))
    (define cons-expander-load-path
      (lambda _paths119161_
        (let ((_current119163_ (gx#current-expander-module-library-path))
              (_paths119164_ (map path-expand _paths119161_)))
          (gx#current-expander-module-library-path
           (append _paths119164_ _current119163_)))))
    (define with-cons-load-path
      (lambda (_thunk119157_ . _paths119158_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk119157_
                        _paths119158_))
               _paths119158_)))
    (define with-cons-library-load-path
      (lambda (_thunk119150_ . _paths119151_)
        (let ((_current119153_ (current-module-library-path))
              (_paths119154_ (map path-expand _paths119151_)))
          (let ((__tmp123695 (lambda () (_thunk119150_)))
                (__tmp123694 (append _paths119154_ _current119153_)))
            (declare (not safe))
            (call-with-parameters
             __tmp123695
             current-module-library-path
             __tmp123694)))))
    (define with-cons-expander-load-path
      (lambda (_thunk119143_ . _paths119144_)
        (let ((_current119146_ (gx#current-expander-module-library-path))
              (_paths119147_ (map path-expand _paths119144_)))
          (let ((__tmp123697 (lambda () (_thunk119143_)))
                (__tmp123696 (append _paths119147_ _current119146_)))
            (declare (not safe))
            (call-with-parameters
             __tmp123697
             gx#current-expander-module-library-path
             __tmp123696)))))
    (define __expand-source
      (lambda (_src119129_)
        (letrec ((_expand119131_
                  (lambda (_src119141_)
                    (let ((__tmp123698
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src119141_)))))
                      (declare (not safe))
                      (__compile-top __tmp123698))))
                 (_no-expand119132_
                  (lambda (_src119137_)
                    (if (__loading-scheme-source)
                        _src119137_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src119137_))
                            (let ((_code119139_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src119137_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code119139_))
                                  (if (let ((__tmp123699
                                             (let ()
                                               (declare (not safe))
                                               (##car _code119139_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp123699))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code119139_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e119134_
                 (let ()
                   (declare (not safe))
                   (_no-expand119132_ _src119129_))))
            (if _$e119134_
                _$e119134_
                (let () (declare (not safe)) (_expand119131_ _src119129_)))))))
    (define __macro-descr
      (lambda (_src119115_ _def-syntax?119116_)
        (letrec ((_fail!119118_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src119115_))))
                 (_make-descr119119_
                  (lambda (_size119123_)
                    (let ((_expander119126_
                           (let ((__tmp123700
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src119115_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp123700
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander119126_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?119116_
                             _size119123_
                             _expander119126_
                             _src119115_))
                          (let () (declare (not safe)) (_fail!119118_)))))))
          (if _def-syntax?119116_
              (let () (declare (not safe)) (_make-descr119119_ '-1))
              (let ((_code119121_
                     (let ()
                       (declare (not safe))
                       (##source-code _src119115_))))
                (if (and (let () (declare (not safe)) (##pair? _code119121_))
                         (let ((__tmp123704
                                (let ((__tmp123705
                                       (let ((__tmp123706
                                              (let ()
                                                (declare (not safe))
                                                (##car _code119121_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp123706
                                          _src119115_))))
                                  (declare (not safe))
                                  (##source-code __tmp123705))))
                           (declare (not safe))
                           (##memq __tmp123704 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src119115_ _src119115_ '-3))
                      (let ((__tmp123701
                             (let ((__tmp123702
                                    (let ((__tmp123703
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code119121_))))
                                      (declare (not safe))
                                      (##sourcify __tmp123703 _src119115_))))
                               (declare (not safe))
                               (##form-size __tmp123702))))
                        (declare (not safe))
                        (_make-descr119119_ __tmp123701)))
                    (let () (declare (not safe)) (_fail!119118_))))))))
    (define __source->syntax
      (lambda (_src119109_)
        (let _recur119111_ ((_e119113_ _src119109_))
          (if (let () (declare (not safe)) (##source? _e119113_))
              (let ((__obj123687
                     (let ()
                       (declare (not safe))
                       (##structure AST::t '#f '#f))))
                (class-instance-init!
                 __obj123687
                 (let ((__tmp123713
                        (let ()
                          (declare (not safe))
                          (##source-code _e119113_))))
                   (declare (not safe))
                   (_recur119111_ __tmp123713))
                 (let () (declare (not safe)) (##source-locat _e119113_)))
                __obj123687)
              (if (let () (declare (not safe)) (pair? _e119113_))
                  (let ((__tmp123711
                         (let ((__tmp123712
                                (let ()
                                  (declare (not safe))
                                  (##car _e119113_))))
                           (declare (not safe))
                           (_recur119111_ __tmp123712)))
                        (__tmp123709
                         (let ((__tmp123710
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e119113_))))
                           (declare (not safe))
                           (_recur119111_ __tmp123710))))
                    (declare (not safe))
                    (cons __tmp123711 __tmp123709))
                  (if (let () (declare (not safe)) (vector? _e119113_))
                      (vector-map _recur119111_ _e119113_)
                      (if (let () (declare (not safe)) (box? _e119113_))
                          (let ((__tmp123707
                                 (let ((__tmp123708 (unbox _e119113_)))
                                   (declare (not safe))
                                   (_recur119111_ __tmp123708))))
                            (declare (not safe))
                            (box __tmp123707))
                          _e119113_)))))))
    (define __compile-top-source
      (lambda (_stx119107_)
        (let ((__tmp123714
               (let () (declare (not safe)) (__compile-top _stx119107_))))
          (declare (not safe))
          (cons '__noexpand: __tmp123714))))
    (define __compile-top
      (lambda (_stx119105_)
        (let ((__tmp123715 (gx#core-compile-top-syntax _stx119105_)))
          (declare (not safe))
          (__compile __tmp123715))))
    (define __eval-import
      (lambda (_in119086_)
        (letrec* ((_mods119088_
                   (let () (declare (not safe)) (make-table 'test: eq?)))
                  (_import1119089_
                   (lambda (_in119096_ _phi119097_)
                     (if (gx#module-import? _in119096_)
                         (let ((_iphi119099_
                                (fx+ _phi119097_
                                     (gx#module-import-phi _in119096_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi119099_))
                               (let ((__tmp123717
                                      (gx#module-export-context
                                       (gx#module-import-source _in119096_))))
                                 (declare (not safe))
                                 (_eval1119090_ __tmp123717))
                               '#!void))
                         (if (gx#module-context? _in119096_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi119097_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval1119090_ _in119096_))
                                 '#!void)
                             (if (gx#import-set? _in119096_)
                                 (let ((_iphi119101_
                                        (fx+ _phi119097_
                                             (gx#import-set-phi _in119096_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi119101_))
                                       (let ((__tmp123716
                                              (gx#import-set-source
                                               _in119096_)))
                                         (declare (not safe))
                                         (_eval1119090_ __tmp123716))
                                       (if (fxpositive? _iphi119101_)
                                           (for-each
                                            (lambda (_in119103_)
                                              (let ()
                                                (declare (not safe))
                                                (_import1119089_
                                                 _in119103_
                                                 _iphi119101_)))
                                            (gx#module-context-import
                                             (gx#import-set-source
                                              _in119096_)))
                                           '#!void)))
                                 (error '"Unexpected import" _in119096_))))))
                  (_eval1119090_
                   (lambda (_ctx119094_)
                     (if (let ()
                           (declare (not safe))
                           (table-ref _mods119088_ _ctx119094_ '#f))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (table-set! _mods119088_ _ctx119094_ '#t))
                           (__eval-module _ctx119094_))))))
          (if (let () (declare (not safe)) (pair? _in119086_))
              (for-each
               (lambda (_in119092_)
                 (let () (declare (not safe)) (_import1119089_ _in119092_ '0)))
               _in119086_)
              (let () (declare (not safe)) (_import1119089_ _in119086_ '0))))))
    (define __eval-module
      (lambda (_obj119079_)
        (let* ((_key119081_
                (if (gx#module-context? _obj119079_)
                    (gx#module-context-path _obj119079_)
                    _obj119079_))
               (_$e119083_
                (let ()
                  (declare (not safe))
                  (table-ref __*modules* _key119081_ '#f))))
          (if _$e119083_
              (values _$e119083_)
              (gx#core-eval-module _obj119079_)))))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules119014_)
        (if __runtime-initialized
            '#!void
            (begin
              (let* ((_home119016_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir119018_ (path-expand '"lib" _home119016_))
                     (_userpath119020_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath119022_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir119018_ '()))
                          (let ((__tmp123718
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir119018_ '()))))
                            (declare (not safe))
                            (cons _userpath119020_ __tmp123718))))
                     (_loadpath119031_
                      (let ((_$e119024_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e119024_
                            ((lambda (_envvar119027_)
                               (append (let ((__tmp123720
                                              (lambda (_x119029_)
                                                (let ((__tmp123721
                                                       (let ()
                                                         (declare (not safe))
                                                         (string-empty?
                                                          _x119029_))))
                                                  (declare (not safe))
                                                  (not __tmp123721))))
                                             (__tmp123719
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _envvar119027_
                                                 '#\:))))
                                         (declare (not safe))
                                         (filter __tmp123720 __tmp123719))
                                       _loadpath119022_))
                             _$e119024_)
                            _loadpath119022_))))
                (current-module-library-path _loadpath119031_))
              (let* ((_registry-entry119036_
                      (lambda (_m119034_)
                        (let ()
                          (declare (not safe))
                          (cons _m119034_ 'builtin))))
                     (_module-registry119076_
                      (let _lp119038_ ((_rest119040_ _builtin-modules119014_)
                                       (_registry119041_ '()))
                        (let* ((_rest119042119050_ _rest119040_)
                               (_else119044119058_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (list->table _registry119041_))))
                               (_K119046119064_
                                (lambda (_rest119061_ _mod119062_)
                                  (let ((__tmp123722
                                         (let ((__tmp123726
                                                (let ((__tmp123727
                                                       (string-append
                                                        _mod119062_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry119036_
                                                   __tmp123727)))
                                               (__tmp123723
                                                (let ((__tmp123724
                                                       (let ((__tmp123725
                                                              (string-append
                                                               _mod119062_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry119036_
                                                          __tmp123725))))
                                                  (declare (not safe))
                                                  (cons __tmp123724
                                                        _registry119041_))))
                                           (declare (not safe))
                                           (cons __tmp123726 __tmp123723))))
                                    (declare (not safe))
                                    (_lp119038_ _rest119061_ __tmp123722)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest119042119050_))
                              (let ((_hd119047119067_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest119042119050_)))
                                    (_tl119048119069_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest119042119050_))))
                                (let* ((_mod119072_ _hd119047119067_)
                                       (_rest119074_ _tl119048119069_))
                                  (declare (not safe))
                                  (_K119046119064_ _rest119074_ _mod119072_)))
                              (let ()
                                (declare (not safe))
                                (_else119044119058_)))))))
                (current-module-registry _module-registry119076_))
              (current-readtable __*readtable*)
              (random-source-randomize! default-random-source)
              (set! __runtime-initialized '#t)))))
    (define __expander-loaded '#f)
    (define __runtime-initialized '#f)
    (define gerbil-load-expander!
      (lambda ()
        (if __runtime-initialized
            '#!void
            (error '"runtime has not been initialized"))
        (if __expander-loaded
            '#!void
            (begin
              (let () (declare (not safe)) (__load-gxi))
              (set! __expander-loaded '#t)))))))
