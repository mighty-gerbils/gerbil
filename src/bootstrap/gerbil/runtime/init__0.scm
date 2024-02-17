(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1708203245)
  (begin
    (define __loading-scheme-source (make-parameter '#f))
    (define __init-gx!
      (lambda ()
        (gx#current-expander-marks '())
        (gx#current-expander-phi '0)
        (gx#current-expander-context (gx#make-top-context))
        (gx#current-expander-module-library-path (current-module-library-path))
        (gx#current-expander-module-registry (make-hash-table))
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
        (letrec* ((_+readtable+121605_ __*readtable*))
          (let () (declare (not safe)) (__init-gx!))
          (let* ((_core121607_ (gx#import-module ':gerbil/core))
                 (_pre121609_ (gx#make-prelude-context _core121607_)))
            (gx#current-expander-module-prelude _pre121609_)
            (gx#core-bind-root-syntax! ':<core> _pre121609_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (for-each
           (lambda (_port121612_)
             (input-port-readtable-set! _port121612_ _+readtable+121605_))
           (list ##stdin-port ##console-port))
          (for-each
           (lambda (_port121614_)
             (output-port-readtable-set!
              _port121614_
              (readtable-sharing-allowed?-set
               (output-port-readtable _port121614_)
               '#t)))
           (list ##stdout-port ##console-port)))))
    (define __gxi-init-interactive! (lambda (_cmdline121602_) '#!void))
    (define load-scheme
      (lambda (_path121597_)
        (let ((__tmp125683
               (lambda ()
                 (let ((__tmp125684 (lambda _args121600_ '#f)))
                   (declare (not safe))
                   (##load _path121597_ __tmp125684 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters
           __tmp125683
           __loading-scheme-source
           _path121597_))))
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
      (lambda _paths121592_
        (apply add-library-load-path _paths121592_)
        (apply add-expander-load-path _paths121592_)))
    (define add-library-load-path
      (lambda _paths121581_
        (let* ((_current121583_ (current-module-library-path))
               (_paths121585_ (map path-expand _paths121581_))
               (_paths121589_
                (let ((__tmp125685
                       (lambda (_x121587_)
                         (let ((__tmp125686
                                (member _x121587_ _current121583_)))
                           (declare (not safe))
                           (not __tmp125686)))))
                  (declare (not safe))
                  (filter __tmp125685 _paths121585_))))
          (current-module-library-path
           (append _current121583_ _paths121589_)))))
    (define add-expander-load-path
      (lambda _paths121570_
        (let* ((_current121572_ (gx#current-expander-module-library-path))
               (_paths121574_ (map path-expand _paths121570_))
               (_paths121578_
                (let ((__tmp125687
                       (lambda (_x121576_)
                         (let ((__tmp125688
                                (member _x121576_ _current121572_)))
                           (declare (not safe))
                           (not __tmp125688)))))
                  (declare (not safe))
                  (filter __tmp125687 _paths121574_))))
          (gx#current-expander-module-library-path
           (append _current121572_ _paths121578_)))))
    (define cons-load-path
      (lambda _paths121568_
        (apply cons-library-load-path _paths121568_)
        (apply cons-expander-load-path _paths121568_)))
    (define cons-library-load-path
      (lambda _paths121563_
        (let ((_current121565_ (current-module-library-path))
              (_paths121566_ (map path-expand _paths121563_)))
          (current-module-library-path
           (append _paths121566_ _current121565_)))))
    (define cons-expander-load-path
      (lambda _paths121558_
        (let ((_current121560_ (gx#current-expander-module-library-path))
              (_paths121561_ (map path-expand _paths121558_)))
          (gx#current-expander-module-library-path
           (append _paths121561_ _current121560_)))))
    (define with-cons-load-path
      (lambda (_thunk121554_ . _paths121555_)
        (apply with-cons-library-load-path
               (lambda ()
                 (apply with-cons-expander-load-path
                        _thunk121554_
                        _paths121555_))
               _paths121555_)))
    (define with-cons-library-load-path
      (lambda (_thunk121547_ . _paths121548_)
        (let ((_current121550_ (current-module-library-path))
              (_paths121551_ (map path-expand _paths121548_)))
          (let ((__tmp125690 (lambda () (_thunk121547_)))
                (__tmp125689 (append _paths121551_ _current121550_)))
            (declare (not safe))
            (call-with-parameters
             __tmp125690
             current-module-library-path
             __tmp125689)))))
    (define with-cons-expander-load-path
      (lambda (_thunk121540_ . _paths121541_)
        (let ((_current121543_ (gx#current-expander-module-library-path))
              (_paths121544_ (map path-expand _paths121541_)))
          (let ((__tmp125692 (lambda () (_thunk121540_)))
                (__tmp125691 (append _paths121544_ _current121543_)))
            (declare (not safe))
            (call-with-parameters
             __tmp125692
             gx#current-expander-module-library-path
             __tmp125691)))))
    (define __expand-source
      (lambda (_src121526_)
        (letrec ((_expand121528_
                  (lambda (_src121538_)
                    (let ((__tmp125693
                           (gx#core-expand
                            (let ()
                              (declare (not safe))
                              (__source->syntax _src121538_)))))
                      (declare (not safe))
                      (__compile-top __tmp125693))))
                 (_no-expand121529_
                  (lambda (_src121534_)
                    (if (__loading-scheme-source)
                        _src121534_
                        (if (let ()
                              (declare (not safe))
                              (##source? _src121534_))
                            (let ((_code121536_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _src121534_))))
                              (if (let ()
                                    (declare (not safe))
                                    (pair? _code121536_))
                                  (if (let ((__tmp125694
                                             (let ()
                                               (declare (not safe))
                                               (##car _code121536_))))
                                        (declare (not safe))
                                        (eq? '__noexpand: __tmp125694))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _code121536_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_$e121531_
                 (let ()
                   (declare (not safe))
                   (_no-expand121529_ _src121526_))))
            (if _$e121531_
                _$e121531_
                (let () (declare (not safe)) (_expand121528_ _src121526_)))))))
    (define __macro-descr
      (lambda (_src121512_ _def-syntax?121513_)
        (letrec ((_fail!121515_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _src121512_))))
                 (_make-descr121516_
                  (lambda (_size121520_)
                    (let ((_expander121523_
                           (let ((__tmp125695
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _src121512_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters
                              __tmp125695
                              __loading-scheme-source
                              'macro))))
                      (if (let ()
                            (declare (not safe))
                            (procedure? _expander121523_))
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _def-syntax?121513_
                             _size121520_
                             _expander121523_
                             _src121512_))
                          (let () (declare (not safe)) (_fail!121515_)))))))
          (if _def-syntax?121513_
              (let () (declare (not safe)) (_make-descr121516_ '-1))
              (let ((_code121518_
                     (let ()
                       (declare (not safe))
                       (##source-code _src121512_))))
                (if (and (let () (declare (not safe)) (##pair? _code121518_))
                         (let ((__tmp125699
                                (let ((__tmp125700
                                       (let ((__tmp125701
                                              (let ()
                                                (declare (not safe))
                                                (##car _code121518_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp125701
                                          _src121512_))))
                                  (declare (not safe))
                                  (##source-code __tmp125700))))
                           (declare (not safe))
                           (##memq __tmp125699 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _src121512_ _src121512_ '-3))
                      (let ((__tmp125696
                             (let ((__tmp125697
                                    (let ((__tmp125698
                                           (let ()
                                             (declare (not safe))
                                             (##cadr _code121518_))))
                                      (declare (not safe))
                                      (##sourcify __tmp125698 _src121512_))))
                               (declare (not safe))
                               (##form-size __tmp125697))))
                        (declare (not safe))
                        (_make-descr121516_ __tmp125696)))
                    (let () (declare (not safe)) (_fail!121515_))))))))
    (define __source->syntax
      (lambda (_src121506_)
        (let _recur121508_ ((_e121510_ _src121506_))
          (if (let () (declare (not safe)) (##source? _e121510_))
              (let ((__tmp125709
                     (let ((__tmp125710
                            (let ()
                              (declare (not safe))
                              (##source-code _e121510_))))
                       (declare (not safe))
                       (_recur121508_ __tmp125710)))
                    (__tmp125708
                     (let () (declare (not safe)) (##source-locat _e121510_))))
                (declare (not safe))
                (##structure AST::t __tmp125709 __tmp125708))
              (if (let () (declare (not safe)) (pair? _e121510_))
                  (let ((__tmp125706
                         (let ((__tmp125707
                                (let ()
                                  (declare (not safe))
                                  (##car _e121510_))))
                           (declare (not safe))
                           (_recur121508_ __tmp125707)))
                        (__tmp125704
                         (let ((__tmp125705
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e121510_))))
                           (declare (not safe))
                           (_recur121508_ __tmp125705))))
                    (declare (not safe))
                    (cons __tmp125706 __tmp125704))
                  (if (let () (declare (not safe)) (vector? _e121510_))
                      (vector-map _recur121508_ _e121510_)
                      (if (let () (declare (not safe)) (box? _e121510_))
                          (let ((__tmp125702
                                 (let ((__tmp125703 (unbox _e121510_)))
                                   (declare (not safe))
                                   (_recur121508_ __tmp125703))))
                            (declare (not safe))
                            (box __tmp125702))
                          _e121510_)))))))
    (define __compile-top-source
      (lambda (_stx121504_)
        (let ((__tmp125711
               (let () (declare (not safe)) (__compile-top _stx121504_))))
          (declare (not safe))
          (cons '__noexpand: __tmp125711))))
    (define __compile-top
      (lambda (_stx121502_)
        (let ((__tmp125712 (gx#core-compile-top-syntax _stx121502_)))
          (declare (not safe))
          (__compile __tmp125712))))
    (define __eval-import
      (lambda (_in121483_)
        (letrec* ((_mods121485_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_import1121486_
                   (lambda (_in121493_ _phi121494_)
                     (if (gx#module-import? _in121493_)
                         (let ((_iphi121496_
                                (fx+ _phi121494_
                                     (gx#module-import-phi _in121493_))))
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _iphi121496_))
                               (let ((__tmp125714
                                      (gx#module-export-context
                                       (gx#module-import-source _in121493_))))
                                 (declare (not safe))
                                 (_eval1121487_ __tmp125714))
                               '#!void))
                         (if (gx#module-context? _in121493_)
                             (if (let ()
                                   (declare (not safe))
                                   (fxzero? _phi121494_))
                                 (let ()
                                   (declare (not safe))
                                   (_eval1121487_ _in121493_))
                                 '#!void)
                             (if (gx#import-set? _in121493_)
                                 (let ((_iphi121498_
                                        (fx+ _phi121494_
                                             (gx#import-set-phi _in121493_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (fxzero? _iphi121498_))
                                       (let ((__tmp125713
                                              (gx#import-set-source
                                               _in121493_)))
                                         (declare (not safe))
                                         (_eval1121487_ __tmp125713))
                                       (if (fxpositive? _iphi121498_)
                                           (for-each
                                            (lambda (_in121500_)
                                              (let ()
                                                (declare (not safe))
                                                (_import1121486_
                                                 _in121500_
                                                 _iphi121498_)))
                                            (gx#module-context-import
                                             (gx#import-set-source
                                              _in121493_)))
                                           '#!void)))
                                 (error '"Unexpected import" _in121493_))))))
                  (_eval1121487_
                   (lambda (_ctx121491_)
                     (if (let ()
                           (declare (not safe))
                           (hash-get _mods121485_ _ctx121491_))
                         '#!void
                         (begin
                           (let ()
                             (declare (not safe))
                             (table-set! _mods121485_ _ctx121491_ '#t))
                           (__eval-module _ctx121491_))))))
          (if (let () (declare (not safe)) (pair? _in121483_))
              (for-each
               (lambda (_in121489_)
                 (let () (declare (not safe)) (_import1121486_ _in121489_ '0)))
               _in121483_)
              (let () (declare (not safe)) (_import1121486_ _in121483_ '0))))))
    (define __eval-module
      (lambda (_obj121476_)
        (let* ((_key121478_
                (if (gx#module-context? _obj121476_)
                    (gx#module-context-path _obj121476_)
                    _obj121476_))
               (_$e121480_
                (let ()
                  (declare (not safe))
                  (hash-get __*modules* _key121478_))))
          (if _$e121480_
              (values _$e121480_)
              (gx#core-eval-module _obj121476_)))))
    (define gerbil-runtime-init!
      (lambda (_builtin-modules121411_)
        (if __runtime-initialized
            '#!void
            (begin
              (let* ((_home121413_ (let () (declare (not safe)) (gerbil-home)))
                     (_libdir121415_ (path-expand '"lib" _home121413_))
                     (_userpath121417_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_loadpath121419_
                      (if (getenv '"GERBIL_BUILD_PREFIX" '#f)
                          (let ()
                            (declare (not safe))
                            (cons _libdir121415_ '()))
                          (let ((__tmp125715
                                 (let ()
                                   (declare (not safe))
                                   (cons _libdir121415_ '()))))
                            (declare (not safe))
                            (cons _userpath121417_ __tmp125715))))
                     (_loadpath121428_
                      (let ((_$e121421_ (getenv '"GERBIL_LOADPATH" '#f)))
                        (if _$e121421_
                            ((lambda (_envvar121424_)
                               (append (let ((__tmp125717
                                              (lambda (_x121426_)
                                                (let ((__tmp125718
                                                       (let ()
                                                         (declare (not safe))
                                                         (string-empty?
                                                          _x121426_))))
                                                  (declare (not safe))
                                                  (not __tmp125718))))
                                             (__tmp125716
                                              (let ()
                                                (declare (not safe))
                                                (string-split
                                                 _envvar121424_
                                                 '#\:))))
                                         (declare (not safe))
                                         (filter __tmp125717 __tmp125716))
                                       _loadpath121419_))
                             _$e121421_)
                            _loadpath121419_))))
                (current-module-library-path _loadpath121428_))
              (let* ((_registry-entry121433_
                      (lambda (_m121431_)
                        (let ()
                          (declare (not safe))
                          (cons _m121431_ 'builtin))))
                     (_module-registry121473_
                      (let _lp121435_ ((_rest121437_ _builtin-modules121411_)
                                       (_registry121438_ '()))
                        (let* ((_rest121439121447_ _rest121437_)
                               (_else121441121455_
                                (lambda ()
                                  (list->hash-table _registry121438_)))
                               (_K121443121461_
                                (lambda (_rest121458_ _mod121459_)
                                  (let ((__tmp125719
                                         (let ((__tmp125723
                                                (let ((__tmp125724
                                                       (string-append
                                                        _mod121459_
                                                        '"__0")))
                                                  (declare (not safe))
                                                  (_registry-entry121433_
                                                   __tmp125724)))
                                               (__tmp125720
                                                (let ((__tmp125721
                                                       (let ((__tmp125722
                                                              (string-append
                                                               _mod121459_
                                                               '"__rt")))
                                                         (declare (not safe))
                                                         (_registry-entry121433_
                                                          __tmp125722))))
                                                  (declare (not safe))
                                                  (cons __tmp125721
                                                        _registry121438_))))
                                           (declare (not safe))
                                           (cons __tmp125723 __tmp125720))))
                                    (declare (not safe))
                                    (_lp121435_ _rest121458_ __tmp125719)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest121439121447_))
                              (let ((_hd121444121464_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest121439121447_)))
                                    (_tl121445121466_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest121439121447_))))
                                (let* ((_mod121469_ _hd121444121464_)
                                       (_rest121471_ _tl121445121466_))
                                  (declare (not safe))
                                  (_K121443121461_ _rest121471_ _mod121469_)))
                              (let ()
                                (declare (not safe))
                                (_else121441121455_)))))))
                (current-module-registry _module-registry121473_))
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
