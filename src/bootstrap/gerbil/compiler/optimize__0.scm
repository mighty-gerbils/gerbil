(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1710237316)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj157051
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj157051)
               __obj157051)))))
    (define gxc#optimize!
      (lambda (_ctx156744_)
        (let ((__tmp157057
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx156744_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi _ctx156744_))
                 (let ((__tmp157059
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp157058
                        (##structure-ref
                         _ctx156744_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp157059 __tmp157058 '#t))
                 (let ((_code156747_
                        (let ((__tmp157060
                               (##structure-ref
                                _ctx156744_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp157060))))
                   (##structure-set!
                    _ctx156744_
                    _code156747_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp157056 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp157055 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters
           __tmp157057
           gxc#current-compile-mutators
           __tmp157056
           gxc#current-compile-local-type
           __tmp157055))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_ctx156733_)
        (letrec ((_load-it!156735_
                  (lambda (_id156742_)
                    (if (let ((__tmp157062
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp157062 _id156742_))
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi-by-id _id156742_))
                          (let ((__tmp157061
                                 (##structure-ref
                                  (gxc#current-compile-optimizer-info)
                                  '2
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp157061 _id156742_ '#t)))))))
          (let* ((_modid156737_
                  (##structure-ref _ctx156733_ '1 gx#expander-context::t '#f))
                 (_modid-str156739_ (symbol->string _modid156737_)))
            (if (let ()
                  (declare (not safe))
                  (string-prefix? '"gerbil/core" _modid-str156739_))
                (let ()
                  (declare (not safe))
                  (_load-it!156735_ 'gerbil/builtin))
                (for-each
                 _load-it!156735_
                 '(gerbil/runtime/gambit
                   gerbil/runtime/util
                   gerbil/runtime/table
                   gerbil/runtime/control
                   gerbil/runtime/system
                   gerbil/runtime/c3
                   gerbil/runtime/mop
                   gerbil/runtime/error
                   gerbil/runtime/interface
                   gerbil/runtime/hash
                   gerbil/runtime/thread
                   gerbil/runtime/syntax
                   gerbil/runtime/eval
                   gerbil/runtime/repl
                   gerbil/runtime/loader
                   gerbil/runtime/init
                   gerbil/runtime
                   gerbil/builtin)))))))
    (define gxc#optimizer-load-ssxi-deps
      (lambda (_ctx156678_)
        (letrec* ((_deps156680_
                   (let* ((_imports156724_
                           (##structure-ref
                            _ctx156678_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e156726_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx156678_))))
                     (if _$e156726_
                         ((lambda (_g156728156730_)
                            (let ()
                              (declare (not safe))
                              (cons _g156728156730_ _imports156724_)))
                          _$e156726_)
                         _imports156724_))))
          (let _lp156682_ ((_rest156684_ _deps156680_))
            (let* ((_rest156685156693_ _rest156684_)
                   (_else156687156701_ (lambda () '#!void))
                   (_K156689156712_
                    (lambda (_rest156704_ _hd156705_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd156705_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp157076
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp157075
                                       (##structure-ref
                                        _hd156705_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp157076 __tmp157075))
                                '#!void
                                (begin
                                  (let ((_$e156707_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd156705_))))
                                    (if _$e156707_
                                        ((lambda (_pre156710_)
                                           (let ((__tmp157073
                                                  (let ((__tmp157074
                                                         (##structure-ref
                                                          _hd156705_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre156710_
                                                          __tmp157074))))
                                             (declare (not safe))
                                             (_lp156682_ __tmp157073)))
                                         _$e156707_)
                                        (let ((__tmp157072
                                               (##structure-ref
                                                _hd156705_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp156682_ __tmp157072))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd156705_))))
                            (let ()
                              (declare (not safe))
                              (_lp156682_ _rest156704_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd156705_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp157071
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp157070
                                           (##structure-ref
                                            _hd156705_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp157071 __tmp157070))
                                    '#!void
                                    (begin
                                      (let ((__tmp157069
                                             (##structure-ref
                                              _hd156705_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp156682_ __tmp157069))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd156705_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp156682_ _rest156704_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd156705_
                                     'gx#module-import::t))
                                  (let ((__tmp157067
                                         (let ((__tmp157068
                                                (##direct-structure-ref
                                                 _hd156705_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp157068 _rest156704_))))
                                    (declare (not safe))
                                    (_lp156682_ __tmp157067))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd156705_
                                         'gx#module-export::t))
                                      (let ((__tmp157065
                                             (let ((__tmp157066
                                                    (##direct-structure-ref
                                                     _hd156705_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp157066
                                                     _rest156704_))))
                                        (declare (not safe))
                                        (_lp156682_ __tmp157065))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd156705_
                                             'gx#import-set::t))
                                          (let ((__tmp157063
                                                 (let ((__tmp157064
                                                        (##direct-structure-ref
                                                         _hd156705_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp157064
                                                         _rest156704_))))
                                            (declare (not safe))
                                            (_lp156682_ __tmp157063))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _hd156705_))))))))))
              (if (let () (declare (not safe)) (##pair? _rest156685156693_))
                  (let ((_hd156690156715_
                         (let ()
                           (declare (not safe))
                           (##car _rest156685156693_)))
                        (_tl156691156717_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest156685156693_))))
                    (let* ((_hd156720_ _hd156690156715_)
                           (_rest156722_ _tl156691156717_))
                      (declare (not safe))
                      (_K156689156712_ _rest156722_ _hd156720_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx156658_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx156658_
                    'gx#module-context::t))
                 (let ((__tmp157077
                        (##structure-ref
                         _ctx156658_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp157077)))
            '#!void
            (let* ((_ht156660_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id156662_
                    (##structure-ref
                     _ctx156658_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod156664_
                    (let ()
                      (declare (not safe))
                      (hash-get _ht156660_ _id156662_))))
              (let ((_$e156667_ _mod156664_))
                (if _$e156667_
                    _$e156667_
                    (let* ((_mod156670_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx156658_)))
                           (_val156675_
                            (let ((_$e156672_ _mod156670_))
                              (if _$e156672_ _$e156672_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (hash-put! _ht156660_ _id156662_ _val156675_))
                      _val156675_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx156656_)
        (if (##structure-ref _ctx156656_ '1 gx#expander-context::t '#f)
            (let ((__tmp157078
                   (##structure-ref
                    _ctx156656_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp157078))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id156633_)
        (letrec ((_catch-e156635_
                  (lambda (_exn156654_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id156633_))
                          (let ()
                            (declare (not safe))
                            (display-exception _exn156654_)))
                        '#!void)
                    '#f))
                 (_import-e156636_
                  (lambda ()
                    (let* ((_str-id156639_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id156633_))
                             '".ssxi"))
                           (_artefact-path156647_
                            (let ((_odir156640156642_
                                   (gxc#current-compile-output-dir)))
                              (if _odir156640156642_
                                  (let ((_odir156645_ _odir156640156642_))
                                    (path-expand
                                     (string-append _str-id156639_ '".ss")
                                     _odir156645_))
                                  '#f)))
                           (_library-path156649_
                            (string->symbol
                             (string-append '":" _str-id156639_ '".ss")))
                           (_ssxi-path156651_
                            (if (and _artefact-path156647_
                                     (file-exists? _artefact-path156647_))
                                _artefact-path156647_
                                _library-path156649_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path156651_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path156651_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e156635_ _import-e156636_)))))
    (define gxc#optimize-source
      (lambda (_stx156624_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx156624_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx156624_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx156624_))
        (let* ((_stx156626_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx156624_)))
               (_stx156628_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx156626_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx156628_))
          (let ((_stx156631_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx156628_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx156631_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp157081 (list gxc#::generate-runtime-empty::t))
            (__tmp157079
             (let ((__tmp157080
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp157080 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp157081
         '()
         __tmp157079
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _$args156621_
        (apply make-instance gxc#::generate-ssxi::t _$args156621_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp157082
             (lambda ()
               (force gxc#::generate-runtime-empty-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-ssxi::t
                  '%#begin
                  gxc#generate-runtime-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-ssxi::t
                  '%#begin-syntax
                  gxc#generate-ssxi-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-ssxi::t
                  '%#module
                  gxc#generate-ssxi-module%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-ssxi::t
                  '%#define-values
                  gxc#generate-ssxi-define-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-ssxi::t
                  '%#call
                  gxc#generate-ssxi-call%))
               (let ()
                 (declare (not safe))
                 (seal-class! gxc#::generate-ssxi::t)))))
        (declare (not safe))
        (make-promise __tmp157082)))
    (define gxc#apply-generate-ssxi
      (lambda (_stx156613_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_self156616_
                (let ((__obj157053
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj157053))
               (__tmp157083
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self156616_ _stx156613_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp157083
           gxc#current-compile-method
           _self156616_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_self156573_ _stx156574_)
        (let* ((_g156576156586_
                (lambda (_g156577156583_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g156577156583_))))
               (_g156575156610_
                (lambda (_g156577156589_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g156577156589_))
                      (let ((_e156581156591_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g156577156589_))))
                        (let ((_hd156580156594_
                               (let ()
                                 (declare (not safe))
                                 (##car _e156581156591_)))
                              (_tl156579156596_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e156581156591_))))
                          ((lambda (_L156599_)
                             (let ((__tmp157086
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _self156573_
                                         _stx156574_))))
                                   (__tmp157084
                                    (let ((__tmp157085
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp157085 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp157086
                                gx#current-expander-phi
                                __tmp157084)))
                           _tl156579156596_)))
                      (let ()
                        (declare (not safe))
                        (_g156576156586_ _g156577156589_))))))
          (declare (not safe))
          (_g156575156610_ _stx156574_))))
    (define gxc#generate-ssxi-module%
      (lambda (_self156512_ _stx156513_)
        (let* ((_g156515156529_
                (lambda (_g156516156526_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g156516156526_))))
               (_g156514156570_
                (lambda (_g156516156532_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g156516156532_))
                      (let ((_e156521156534_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g156516156532_))))
                        (let ((_hd156520156537_
                               (let ()
                                 (declare (not safe))
                                 (##car _e156521156534_)))
                              (_tl156519156539_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e156521156534_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl156519156539_))
                              (let ((_e156524156542_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl156519156539_))))
                                (let ((_hd156523156545_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e156524156542_)))
                                      (_tl156522156547_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e156524156542_))))
                                  ((lambda (_L156550_ _L156551_)
                                     (let* ((_ctx156564_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L156551_)))
                                            (_code156566_
                                             (##structure-ref
                                              _ctx156564_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp157087
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self156512_
                                                   _code156566_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp157087
                                          gx#current-expander-context
                                          _ctx156564_))))
                                   _tl156522156547_
                                   _hd156523156545_)))
                              (let ()
                                (declare (not safe))
                                (_g156515156529_ _g156516156532_)))))
                      (let ()
                        (declare (not safe))
                        (_g156515156529_ _g156516156532_))))))
          (declare (not safe))
          (_g156514156570_ _stx156513_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_self156321_ _stx156322_)
        (letrec ((_generate-e156324_
                  (lambda (_id156501_)
                    (let* ((_sym156503_
                            (if (let ((__tmp157088
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp157088))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id156501_))
                                '#f))
                           (_$e156505_
                            (if _sym156503_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym156503_))
                                '#f)))
                      (if _$e156505_
                          ((lambda (_type156508_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym156503_))
                             (let* ((_typedecl156510_
                                     (let ((__method157054
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type156508_
                                               'typedecl))))
                                       (if __method157054
                                           (__method157054 _type156508_)
                                           (let ()
                                             (declare (not safe))
                                             (error '"Missing method"
                                                    _type156508_
                                                    'typedecl)))))
                                    (__tmp157089
                                     (let ((__tmp157090
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl156510_ '()))))
                                       (declare (not safe))
                                       (cons _sym156503_ __tmp157090))))
                               (declare (not safe))
                               (cons 'declare-type __tmp157089)))
                           _$e156505_)
                          '(begin))))))
          (let* ((___stx156750156751_ _stx156322_)
                 (_g156327156365_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx156750156751_)))))
            (let ((___kont156752156753_
                   (lambda (_L156483_)
                     (let ()
                       (declare (not safe))
                       (_generate-e156324_ _L156483_))))
                  (___kont156754156755_
                   (lambda (_L156418_)
                     (let ((_types156444_
                            (map _generate-e156324_
                                 (let ((__tmp157091
                                        (lambda (_g156436156439_
                                                 _g156437156441_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g156436156439_
                                                  _g156437156441_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp157091 '() _L156418_)))))
                       (declare (not safe))
                       (cons 'begin _types156444_)))))
              (let ((___match156805156806_
                     (lambda (_e156345156370_
                              _hd156344156373_
                              _tl156343156375_
                              _e156348156378_
                              _hd156347156381_
                              _tl156346156383_
                              ___splice156756156757_
                              _target156349156386_
                              _tl156351156388_)
                       (letrec ((_loop156352156391_
                                 (lambda (_hd156350156394_ _id156356156396_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd156350156394_))
                                       (let ((_e156353156399_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd156350156394_))))
                                         (let ((_lp-tl156355156404_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e156353156399_)))
                                               (_lp-hd156354156402_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e156353156399_))))
                                           (let ((__tmp157092
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd156354156402_
                                                          _id156356156396_))))
                                             (declare (not safe))
                                             (_loop156352156391_
                                              _lp-tl156355156404_
                                              __tmp157092))))
                                       (let ((_id156357156407_
                                              (reverse _id156356156396_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl156346156383_))
                                             (let ((_e156360156410_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl156346156383_))))
                                               (let ((_tl156358156415_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e156360156410_)))
                                                     (_hd156359156413_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e156360156410_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl156358156415_))
                                                     (___kont156754156755_
                                                      _id156357156407_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g156327156365_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g156327156365_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop156352156391_ _target156349156386_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx156750156751_))
                    (let ((_e156332156451_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx156750156751_))))
                      (let ((_tl156330156456_
                             (let ()
                               (declare (not safe))
                               (##cdr _e156332156451_)))
                            (_hd156331156454_
                             (let ()
                               (declare (not safe))
                               (##car _e156332156451_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl156330156456_))
                            (let ((_e156335156459_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl156330156456_))))
                              (let ((_tl156333156464_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e156335156459_)))
                                    (_hd156334156462_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e156335156459_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd156334156462_))
                                    (let ((_e156338156467_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd156334156462_))))
                                      (let ((_tl156336156472_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e156338156467_)))
                                            (_hd156337156470_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e156338156467_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl156336156472_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl156333156464_))
                                                (let ((_e156341156475_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl156333156464_))))
                                                  (let ((_tl156339156480_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e156341156475_)))
                                                        (_hd156340156478_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e156341156475_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl156339156480_))
                                                        (___kont156752156753_
                                                         _hd156337156470_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd156334156462_))
                                                            (let ((___splice156756156757_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd156334156462_ '0))))
                      (let ((_tl156351156388_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice156756156757_ '1)))
                            (_target156349156386_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice156756156757_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl156351156388_))
                            (___match156805156806_
                             _e156332156451_
                             _hd156331156454_
                             _tl156330156456_
                             _e156335156459_
                             _hd156334156462_
                             _tl156333156464_
                             ___splice156756156757_
                             _target156349156386_
                             _tl156351156388_)
                            (let () (declare (not safe)) (_g156327156365_)))))
                    (let () (declare (not safe)) (_g156327156365_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd156334156462_))
                                                    (let ((___splice156756156757_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd156334156462_
                                                              '0))))
                                                      (let ((_tl156351156388_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice156756156757_ '1)))
                    (_target156349156386_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice156756156757_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl156351156388_))
                    (___match156805156806_
                     _e156332156451_
                     _hd156331156454_
                     _tl156330156456_
                     _e156335156459_
                     _hd156334156462_
                     _tl156333156464_
                     ___splice156756156757_
                     _target156349156386_
                     _tl156351156388_)
                    (let () (declare (not safe)) (_g156327156365_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g156327156365_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd156334156462_))
                                                (let ((___splice156756156757_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd156334156462_
                                                          '0))))
                                                  (let ((_tl156351156388_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice156756156757_
                                                            '1)))
                                                        (_target156349156386_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice156756156757_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl156351156388_))
                                                        (___match156805156806_
                                                         _e156332156451_
                                                         _hd156331156454_
                                                         _tl156330156456_
                                                         _e156335156459_
                                                         _hd156334156462_
                                                         _tl156333156464_
                                                         ___splice156756156757_
                                                         _target156349156386_
                                                         _tl156351156388_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g156327156365_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g156327156365_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd156334156462_))
                                        (let ((___splice156756156757_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd156334156462_
                                                  '0))))
                                          (let ((_tl156351156388_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice156756156757_
                                                    '1)))
                                                (_target156349156386_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice156756156757_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl156351156388_))
                                                (___match156805156806_
                                                 _e156332156451_
                                                 _hd156331156454_
                                                 _tl156330156456_
                                                 _e156335156459_
                                                 _hd156334156462_
                                                 _tl156333156464_
                                                 ___splice156756156757_
                                                 _target156349156386_
                                                 _tl156351156388_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g156327156365_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g156327156365_))))))
                            (let () (declare (not safe)) (_g156327156365_)))))
                    (let () (declare (not safe)) (_g156327156365_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_self155874_ _stx155875_)
        (let* ((___stx156808156809_ _stx155875_)
               (_g155879155981_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx156808156809_)))))
          (let ((___kont156810156811_
                 (lambda (_L156271_ _L156272_ _L156273_ _L156274_ _L156275_)
                   (let ((__tmp157093
                          (let ((__tmp157100
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L156274_)))
                                (__tmp157094
                                 (let ((__tmp157099
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L156273_)))
                                       (__tmp157095
                                        (let ((__tmp157098
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L156272_)))
                                              (__tmp157096
                                               (let ((__tmp157097
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L156271_))))
                                                 (declare (not safe))
                                                 (cons __tmp157097 '()))))
                                          (declare (not safe))
                                          (cons __tmp157098 __tmp157096))))
                                   (declare (not safe))
                                   (cons __tmp157099 __tmp157095))))
                            (declare (not safe))
                            (cons __tmp157100 __tmp157094))))
                     (declare (not safe))
                     (cons 'declare-method __tmp157093))))
                (___kont156812156813_
                 (lambda (_L156097_ _L156098_ _L156099_ _L156100_)
                   (let ((__tmp157101
                          (let ((__tmp157107
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L156099_)))
                                (__tmp157102
                                 (let ((__tmp157106
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L156098_)))
                                       (__tmp157103
                                        (let ((__tmp157105
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L156097_)))
                                              (__tmp157104
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp157105 __tmp157104))))
                                   (declare (not safe))
                                   (cons __tmp157106 __tmp157103))))
                            (declare (not safe))
                            (cons __tmp157107 __tmp157102))))
                     (declare (not safe))
                     (cons 'declare-method __tmp157101))))
                (___kont156814156815_ (lambda () '(begin))))
            (let ((___match156943156944_
                   (lambda (_e155888156143_
                            _hd155887156146_
                            _tl155886156148_
                            _e155891156151_
                            _hd155890156154_
                            _tl155889156156_
                            _e155894156159_
                            _hd155893156162_
                            _tl155892156164_
                            _e155897156167_
                            _hd155896156170_
                            _tl155895156172_
                            _e155900156175_
                            _hd155899156178_
                            _tl155898156180_
                            _e155903156183_
                            _hd155902156186_
                            _tl155901156188_
                            _e155906156191_
                            _hd155905156194_
                            _tl155904156196_
                            _e155909156199_
                            _hd155908156202_
                            _tl155907156204_
                            _e155912156207_
                            _hd155911156210_
                            _tl155910156212_
                            _e155915156215_
                            _hd155914156218_
                            _tl155913156220_
                            _e155918156223_
                            _hd155917156226_
                            _tl155916156228_
                            _e155921156231_
                            _hd155920156234_
                            _tl155919156236_
                            _e155924156239_
                            _hd155923156242_
                            _tl155922156244_
                            _e155927156247_
                            _hd155926156250_
                            _tl155925156252_
                            _e155930156255_
                            _hd155929156258_
                            _tl155928156260_
                            _e155933156263_
                            _hd155932156266_
                            _tl155931156268_)
                     (let ((_L156271_ _hd155932156266_)
                           (_L156272_ _hd155923156242_)
                           (_L156273_ _hd155914156218_)
                           (_L156274_ _hd155905156194_)
                           (_L156275_ _hd155896156170_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L156275_
                              'bind-method!))
                           (___kont156810156811_
                            _L156271_
                            _L156272_
                            _L156273_
                            _L156274_
                            _L156275_)
                           (___kont156814156815_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx156808156809_))
                  (let ((_e155888156143_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx156808156809_))))
                    (let ((_tl155886156148_
                           (let ()
                             (declare (not safe))
                             (##cdr _e155888156143_)))
                          (_hd155887156146_
                           (let ()
                             (declare (not safe))
                             (##car _e155888156143_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl155886156148_))
                          (let ((_e155891156151_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl155886156148_))))
                            (let ((_tl155889156156_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e155891156151_)))
                                  (_hd155890156154_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e155891156151_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd155890156154_))
                                  (let ((_e155894156159_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd155890156154_))))
                                    (let ((_tl155892156164_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e155894156159_)))
                                          (_hd155893156162_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e155894156159_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd155893156162_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd155893156162_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl155892156164_))
                                                  (let ((_e155897156167_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl155892156164_))))
                                                    (let ((_tl155895156172_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e155897156167_)))
                                                          (_hd155896156170_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e155897156167_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl155895156172_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl155889156156_))
                      (let ((_e155900156175_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl155889156156_))))
                        (let ((_tl155898156180_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e155900156175_)))
                              (_hd155899156178_
                               (let ()
                                 (declare (not safe))
                                 (##car _e155900156175_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd155899156178_))
                              (let ((_e155903156183_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd155899156178_))))
                                (let ((_tl155901156188_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e155903156183_)))
                                      (_hd155902156186_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e155903156183_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd155902156186_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd155902156186_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl155901156188_))
                                              (let ((_e155906156191_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl155901156188_))))
                                                (let ((_tl155904156196_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e155906156191_)))
                                                      (_hd155905156194_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e155906156191_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl155904156196_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl155898156180_))
                                                          (let ((_e155909156199_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl155898156180_))))
                    (let ((_tl155907156204_
                           (let ()
                             (declare (not safe))
                             (##cdr _e155909156199_)))
                          (_hd155908156202_
                           (let ()
                             (declare (not safe))
                             (##car _e155909156199_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd155908156202_))
                          (let ((_e155912156207_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd155908156202_))))
                            (let ((_tl155910156212_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e155912156207_)))
                                  (_hd155911156210_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e155912156207_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd155911156210_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd155911156210_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl155910156212_))
                                          (let ((_e155915156215_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl155910156212_))))
                                            (let ((_tl155913156220_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e155915156215_)))
                                                  (_hd155914156218_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e155915156215_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl155913156220_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl155907156204_))
                                                      (let ((_e155918156223_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl155907156204_))))
                (let ((_tl155916156228_
                       (let () (declare (not safe)) (##cdr _e155918156223_)))
                      (_hd155917156226_
                       (let () (declare (not safe)) (##car _e155918156223_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd155917156226_))
                      (let ((_e155921156231_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd155917156226_))))
                        (let ((_tl155919156236_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e155921156231_)))
                              (_hd155920156234_
                               (let ()
                                 (declare (not safe))
                                 (##car _e155921156231_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd155920156234_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd155920156234_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl155919156236_))
                                      (let ((_e155924156239_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl155919156236_))))
                                        (let ((_tl155922156244_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e155924156239_)))
                                              (_hd155923156242_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e155924156239_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl155922156244_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl155916156228_))
                                                  (let ((_e155927156247_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl155916156228_))))
                                                    (let ((_tl155925156252_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e155927156247_)))
                                                          (_hd155926156250_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e155927156247_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd155926156250_))
                                                          (let ((_e155930156255_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd155926156250_))))
                    (let ((_tl155928156260_
                           (let ()
                             (declare (not safe))
                             (##cdr _e155930156255_)))
                          (_hd155929156258_
                           (let ()
                             (declare (not safe))
                             (##car _e155930156255_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd155929156258_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd155929156258_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl155928156260_))
                                  (let ((_e155933156263_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl155928156260_))))
                                    (let ((_tl155931156268_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e155933156263_)))
                                          (_hd155932156266_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e155933156263_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl155931156268_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl155925156252_))
                                              (___match156943156944_
                                               _e155888156143_
                                               _hd155887156146_
                                               _tl155886156148_
                                               _e155891156151_
                                               _hd155890156154_
                                               _tl155889156156_
                                               _e155894156159_
                                               _hd155893156162_
                                               _tl155892156164_
                                               _e155897156167_
                                               _hd155896156170_
                                               _tl155895156172_
                                               _e155900156175_
                                               _hd155899156178_
                                               _tl155898156180_
                                               _e155903156183_
                                               _hd155902156186_
                                               _tl155901156188_
                                               _e155906156191_
                                               _hd155905156194_
                                               _tl155904156196_
                                               _e155909156199_
                                               _hd155908156202_
                                               _tl155907156204_
                                               _e155912156207_
                                               _hd155911156210_
                                               _tl155910156212_
                                               _e155915156215_
                                               _hd155914156218_
                                               _tl155913156220_
                                               _e155918156223_
                                               _hd155917156226_
                                               _tl155916156228_
                                               _e155921156231_
                                               _hd155920156234_
                                               _tl155919156236_
                                               _e155924156239_
                                               _hd155923156242_
                                               _tl155922156244_
                                               _e155927156247_
                                               _hd155926156250_
                                               _tl155925156252_
                                               _e155930156255_
                                               _hd155929156258_
                                               _tl155928156260_
                                               _e155933156263_
                                               _hd155932156266_
                                               _tl155931156268_)
                                              (___kont156814156815_))
                                          (___kont156814156815_))))
                                  (___kont156814156815_))
                              (___kont156814156815_))
                          (___kont156814156815_))))
                  (___kont156814156815_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl155916156228_))
                                                      (if (let ((__tmp157108
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp157108 'bind-method!))
                  (let ((_L156097_ _hd155923156242_)
                        (_L156098_ _hd155914156218_)
                        (_L156099_ _hd155905156194_)
                        (_L156100_ _hd155896156170_))
                    (___kont156812156813_
                     _L156097_
                     _L156098_
                     _L156099_
                     _L156100_))
                  (___kont156814156815_))
              (___kont156814156815_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont156814156815_))))
                                      (___kont156814156815_))
                                  (___kont156814156815_))
                              (___kont156814156815_))))
                      (___kont156814156815_))))
              (___kont156814156815_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont156814156815_))))
                                          (___kont156814156815_))
                                      (___kont156814156815_))
                                  (___kont156814156815_))))
                          (___kont156814156815_))))
                  (___kont156814156815_))
              (___kont156814156815_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont156814156815_))
                                          (___kont156814156815_))
                                      (___kont156814156815_))))
                              (___kont156814156815_))))
                      (___kont156814156815_))
                  (___kont156814156815_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont156814156815_))
                                              (___kont156814156815_))
                                          (___kont156814156815_))))
                                  (___kont156814156815_))))
                          (___kont156814156815_))))
                  (___kont156814156815_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self155850_)
        (let* ((_self155851155857_ _self155850_)
               (_E155853155861_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155851155857_))))
               (_K155854155866_
                (lambda (_alias-id155864_)
                  (let ((__tmp157109
                         (let ()
                           (declare (not safe))
                           (cons _alias-id155864_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp157109)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self155851155857_ 'gxc#!alias::t))
              (let* ((_e155855155869_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155851155857_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id155872_ _e155855155869_))
                (declare (not safe))
                (_K155854155866_ _alias-id155872_))
              (let () (declare (not safe)) (_E155853155861_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self155641_)
        (let* ((_self155642155657_ _self155641_)
               (_E155644155661_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155642155657_))))
               (_K155645155675_
                (lambda (_methods155664_
                         _metaclass155665_
                         _final?155666_
                         _struct?155667_
                         _constructor155668_
                         _fields155669_
                         _slots155670_
                         _precendence-list155671_
                         _super155672_
                         _id155673_)
                  (let ((__tmp157110
                         (let ((__tmp157111
                                (let ((__tmp157112
                                       (let ((__tmp157113
                                              (let ((__tmp157114
                                                     (let ((__tmp157115
                                                            (let ((__tmp157116
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp157117
                                  (let ((__tmp157118
                                         (let ((__tmp157119
                                                (let ((__tmp157120
                                                       (if _methods155664_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (hash->list
                                                              _methods155664_))
                                                           '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp157120 '()))))
                                           (declare (not safe))
                                           (cons _metaclass155665_
                                                 __tmp157119))))
                                    (declare (not safe))
                                    (cons _final?155666_ __tmp157118))))
                             (declare (not safe))
                             (cons _struct?155667_ __tmp157117))))
                      (declare (not safe))
                      (cons _constructor155668_ __tmp157116))))
               (declare (not safe))
               (cons _fields155669_ __tmp157115))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots155670_
                                                      __tmp157114))))
                                         (declare (not safe))
                                         (cons _precendence-list155671_
                                               __tmp157113))))
                                  (declare (not safe))
                                  (cons _super155672_ __tmp157112))))
                           (declare (not safe))
                           (cons _id155673_ __tmp157111))))
                    (declare (not safe))
                    (cons '@class __tmp157110)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self155642155657_ 'gxc#!class::t))
              (let* ((_e155646155678_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155642155657_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id155681_ _e155646155678_)
                     (_e155647155683_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155642155657_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super155686_ _e155647155683_)
                     (_e155648155688_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155642155657_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list155691_ _e155648155688_)
                     (_e155649155693_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155642155657_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots155696_ _e155649155693_)
                     (_e155650155698_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155642155657_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields155701_ _e155650155698_)
                     (_e155651155703_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155642155657_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor155706_ _e155651155703_)
                     (_e155652155708_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155642155657_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?155711_ _e155652155708_)
                     (_e155653155713_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155642155657_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?155716_ _e155653155713_)
                     (_e155654155718_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155642155657_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_metaclass155721_ _e155654155718_)
                     (_e155655155723_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155642155657_
                         '10
                         gxc#!class::t
                         '#f)))
                     (_methods155726_ _e155655155723_))
                (declare (not safe))
                (_K155645155675_
                 _methods155726_
                 _metaclass155721_
                 _final?155716_
                 _struct?155711_
                 _constructor155706_
                 _fields155701_
                 _slots155696_
                 _precendence-list155691_
                 _super155686_
                 _id155681_))
              (let () (declare (not safe)) (_E155644155661_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self155495_)
        (let* ((_self155496155502_ _self155495_)
               (_E155498155506_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155496155502_))))
               (_K155499155511_
                (lambda (_klass-id155509_)
                  (let ((__tmp157121
                         (let ()
                           (declare (not safe))
                           (cons _klass-id155509_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp157121)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self155496155502_
                 'gxc#!predicate::t))
              (let* ((_e155500155514_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155496155502_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id155517_ _e155500155514_))
                (declare (not safe))
                (_K155499155511_ _klass-id155517_))
              (let () (declare (not safe)) (_E155498155506_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self155349_)
        (let* ((_self155350155356_ _self155349_)
               (_E155352155360_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155350155356_))))
               (_K155353155365_
                (lambda (_klass-id155363_)
                  (let ((__tmp157122
                         (let ()
                           (declare (not safe))
                           (cons _klass-id155363_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp157122)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self155350155356_
                 'gxc#!constructor::t))
              (let* ((_e155354155368_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155350155356_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id155371_ _e155354155368_))
                (declare (not safe))
                (_K155353155365_ _klass-id155371_))
              (let () (declare (not safe)) (_E155352155360_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self155189_)
        (let* ((_self155190155198_ _self155189_)
               (_E155192155202_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155190155198_))))
               (_K155193155209_
                (lambda (_checked?155205_ _slot155206_ _klass-id155207_)
                  (let ((__tmp157123
                         (let ((__tmp157124
                                (let ((__tmp157125
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?155205_ '()))))
                                  (declare (not safe))
                                  (cons _slot155206_ __tmp157125))))
                           (declare (not safe))
                           (cons _klass-id155207_ __tmp157124))))
                    (declare (not safe))
                    (cons '@accessor __tmp157123)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self155190155198_
                 'gxc#!accessor::t))
              (let* ((_e155194155212_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155190155198_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id155215_ _e155194155212_)
                     (_e155195155217_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155190155198_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot155220_ _e155195155217_)
                     (_e155196155222_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155190155198_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?155225_ _e155196155222_))
                (declare (not safe))
                (_K155193155209_
                 _checked?155225_
                 _slot155220_
                 _klass-id155215_))
              (let () (declare (not safe)) (_E155192155202_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self155029_)
        (let* ((_self155030155038_ _self155029_)
               (_E155032155042_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155030155038_))))
               (_K155033155049_
                (lambda (_checked?155045_ _slot155046_ _klass-id155047_)
                  (let ((__tmp157126
                         (let ((__tmp157127
                                (let ((__tmp157128
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?155045_ '()))))
                                  (declare (not safe))
                                  (cons _slot155046_ __tmp157128))))
                           (declare (not safe))
                           (cons _klass-id155047_ __tmp157127))))
                    (declare (not safe))
                    (cons '@mutator __tmp157126)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self155030155038_ 'gxc#!mutator::t))
              (let* ((_e155034155052_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155030155038_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id155055_ _e155034155052_)
                     (_e155035155057_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155030155038_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot155060_ _e155035155057_)
                     (_e155036155062_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155030155038_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?155065_ _e155036155062_))
                (declare (not safe))
                (_K155033155049_
                 _checked?155065_
                 _slot155060_
                 _klass-id155055_))
              (let () (declare (not safe)) (_E155032155042_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self154855_)
        (let* ((_self154856154866_ _self154855_)
               (_E154858154870_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154856154866_))))
               (_K154859154881_
                (lambda (_typedecl154873_
                         _inline154874_
                         _dispatch154875_
                         _arity154876_)
                  (if _inline154874_
                      (let ((_$e154878_ _typedecl154873_))
                        (if _$e154878_
                            _$e154878_
                            (let ()
                              (declare (not safe))
                              (error '"Cannot generate typedecl for inline rules"))))
                      (let ((__tmp157129
                             (let ((__tmp157130
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch154875_ '()))))
                               (declare (not safe))
                               (cons _arity154876_ __tmp157130))))
                        (declare (not safe))
                        (cons '@lambda __tmp157129))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self154856154866_ 'gxc#!lambda::t))
              (let* ((_e154860154884_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154856154866_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e154861154887_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154856154866_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity154890_ _e154861154887_)
                     (_e154862154892_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154856154866_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch154895_ _e154862154892_)
                     (_e154863154897_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154856154866_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline154900_ _e154863154897_)
                     (_e154864154902_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154856154866_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl154905_ _e154864154902_))
                (declare (not safe))
                (_K154859154881_
                 _typedecl154905_
                 _inline154900_
                 _dispatch154895_
                 _arity154890_))
              (let () (declare (not safe)) (_E154858154870_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self154666_)
        (letrec ((_clause-e154668_
                  (lambda (_clause154698_)
                    (let* ((_clause154699154707_ _clause154698_)
                           (_E154701154711_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _clause154699154707_))))
                           (_K154702154717_
                            (lambda (_dispatch154714_ _arity154715_)
                              (let ((__tmp157131
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch154714_ '()))))
                                (declare (not safe))
                                (cons _arity154715_ __tmp157131)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause154699154707_
                             'gxc#!lambda::t))
                          (let* ((_e154703154720_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause154699154707_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e154704154723_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause154699154707_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity154726_ _e154704154723_)
                                 (_e154705154728_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause154699154707_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch154731_ _e154705154728_))
                            (declare (not safe))
                            (_K154702154717_ _dispatch154731_ _arity154726_))
                          (let () (declare (not safe)) (_E154701154711_)))))))
          (let* ((_self154669154676_ _self154666_)
                 (_E154671154680_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching" _self154669154676_))))
                 (_K154672154687_
                  (lambda (_clauses154683_)
                    (let ((_clauses154685_
                           (map _clause-e154668_ _clauses154683_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses154685_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self154669154676_
                   'gxc#!case-lambda::t))
                (let* ((_e154673154690_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self154669154676_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e154674154693_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self154669154676_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses154696_ _e154674154693_))
                  (declare (not safe))
                  (_K154672154687_ _clauses154696_))
                (let () (declare (not safe)) (_E154671154680_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self154509_)
        (let* ((_self154510154518_ _self154509_)
               (_E154512154522_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154510154518_))))
               (_K154513154528_
                (lambda (_dispatch154525_ _table154526_)
                  (let ((__tmp157132
                         (let ((__tmp157133
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch154525_ '()))))
                           (declare (not safe))
                           (cons _table154526_ __tmp157133))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp157132)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154510154518_
                 'gxc#!kw-lambda::t))
              (let* ((_e154514154531_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154510154518_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e154515154534_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154510154518_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table154537_ _e154515154534_)
                     (_e154516154539_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154510154518_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch154542_ _e154516154539_))
                (declare (not safe))
                (_K154513154528_ _dispatch154542_ _table154537_))
              (let () (declare (not safe)) (_E154512154522_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'typedecl
       gxc#!kw-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self154352_)
        (let* ((_self154353154361_ _self154352_)
               (_E154355154365_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154353154361_))))
               (_K154356154371_
                (lambda (_main154368_ _keys154369_)
                  (let ((__tmp157134
                         (let ((__tmp157135
                                (let ()
                                  (declare (not safe))
                                  (cons _main154368_ '()))))
                           (declare (not safe))
                           (cons _keys154369_ __tmp157135))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp157134)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154353154361_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e154357154374_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154353154361_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e154358154377_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154353154361_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys154380_ _e154358154377_)
                     (_e154359154382_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154353154361_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main154385_ _e154359154382_))
                (declare (not safe))
                (_K154356154371_ _main154385_ _keys154380_))
              (let () (declare (not safe)) (_E154355154365_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
