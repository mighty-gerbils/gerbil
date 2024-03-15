(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1710487497)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj156987
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj156987)
               __obj156987)))))
    (define gxc#optimize!
      (lambda (_ctx156680_)
        (let ((__tmp156993
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx156680_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi _ctx156680_))
                 (let ((__tmp156995
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp156994
                        (##structure-ref
                         _ctx156680_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp156995 __tmp156994 '#t))
                 (let ((_code156683_
                        (let ((__tmp156996
                               (##structure-ref
                                _ctx156680_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp156996))))
                   (##structure-set!
                    _ctx156680_
                    _code156683_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp156992 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp156991 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters
           __tmp156993
           gxc#current-compile-mutators
           __tmp156992
           gxc#current-compile-local-type
           __tmp156991))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_ctx156669_)
        (letrec ((_load-it!156671_
                  (lambda (_id156678_)
                    (if (let ((__tmp156998
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp156998 _id156678_))
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi-by-id _id156678_))
                          (let ((__tmp156997
                                 (##structure-ref
                                  (gxc#current-compile-optimizer-info)
                                  '2
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp156997 _id156678_ '#t)))))))
          (let* ((_modid156673_
                  (##structure-ref _ctx156669_ '1 gx#expander-context::t '#f))
                 (_modid-str156675_ (symbol->string _modid156673_)))
            (if (let ()
                  (declare (not safe))
                  (string-prefix? '"gerbil/core" _modid-str156675_))
                (let ()
                  (declare (not safe))
                  (_load-it!156671_ 'gerbil/builtin))
                (for-each
                 _load-it!156671_
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
      (lambda (_ctx156614_)
        (letrec* ((_deps156616_
                   (let* ((_imports156660_
                           (##structure-ref
                            _ctx156614_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e156662_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx156614_))))
                     (if _$e156662_
                         ((lambda (_g156664156666_)
                            (let ()
                              (declare (not safe))
                              (cons _g156664156666_ _imports156660_)))
                          _$e156662_)
                         _imports156660_))))
          (let _lp156618_ ((_rest156620_ _deps156616_))
            (let* ((_rest156621156629_ _rest156620_)
                   (_else156623156637_ (lambda () '#!void))
                   (_K156625156648_
                    (lambda (_rest156640_ _hd156641_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd156641_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp157012
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp157011
                                       (##structure-ref
                                        _hd156641_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp157012 __tmp157011))
                                '#!void
                                (begin
                                  (let ((_$e156643_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd156641_))))
                                    (if _$e156643_
                                        ((lambda (_pre156646_)
                                           (let ((__tmp157009
                                                  (let ((__tmp157010
                                                         (##structure-ref
                                                          _hd156641_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre156646_
                                                          __tmp157010))))
                                             (declare (not safe))
                                             (_lp156618_ __tmp157009)))
                                         _$e156643_)
                                        (let ((__tmp157008
                                               (##structure-ref
                                                _hd156641_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp156618_ __tmp157008))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd156641_))))
                            (let ()
                              (declare (not safe))
                              (_lp156618_ _rest156640_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd156641_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp157007
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp157006
                                           (##structure-ref
                                            _hd156641_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp157007 __tmp157006))
                                    '#!void
                                    (begin
                                      (let ((__tmp157005
                                             (##structure-ref
                                              _hd156641_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp156618_ __tmp157005))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd156641_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp156618_ _rest156640_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd156641_
                                     'gx#module-import::t))
                                  (let ((__tmp157003
                                         (let ((__tmp157004
                                                (##direct-structure-ref
                                                 _hd156641_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp157004 _rest156640_))))
                                    (declare (not safe))
                                    (_lp156618_ __tmp157003))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd156641_
                                         'gx#module-export::t))
                                      (let ((__tmp157001
                                             (let ((__tmp157002
                                                    (##direct-structure-ref
                                                     _hd156641_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp157002
                                                     _rest156640_))))
                                        (declare (not safe))
                                        (_lp156618_ __tmp157001))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd156641_
                                             'gx#import-set::t))
                                          (let ((__tmp156999
                                                 (let ((__tmp157000
                                                        (##direct-structure-ref
                                                         _hd156641_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp157000
                                                         _rest156640_))))
                                            (declare (not safe))
                                            (_lp156618_ __tmp156999))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _hd156641_))))))))))
              (if (let () (declare (not safe)) (##pair? _rest156621156629_))
                  (let ((_hd156626156651_
                         (let ()
                           (declare (not safe))
                           (##car _rest156621156629_)))
                        (_tl156627156653_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest156621156629_))))
                    (let* ((_hd156656_ _hd156626156651_)
                           (_rest156658_ _tl156627156653_))
                      (declare (not safe))
                      (_K156625156648_ _rest156658_ _hd156656_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx156594_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx156594_
                    'gx#module-context::t))
                 (let ((__tmp157013
                        (##structure-ref
                         _ctx156594_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp157013)))
            '#!void
            (let* ((_ht156596_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id156598_
                    (##structure-ref
                     _ctx156594_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod156600_
                    (let ()
                      (declare (not safe))
                      (hash-get _ht156596_ _id156598_))))
              (let ((_$e156603_ _mod156600_))
                (if _$e156603_
                    _$e156603_
                    (let* ((_mod156606_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx156594_)))
                           (_val156611_
                            (let ((_$e156608_ _mod156606_))
                              (if _$e156608_ _$e156608_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (hash-put! _ht156596_ _id156598_ _val156611_))
                      _val156611_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx156592_)
        (if (##structure-ref _ctx156592_ '1 gx#expander-context::t '#f)
            (let ((__tmp157014
                   (##structure-ref
                    _ctx156592_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp157014))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id156569_)
        (letrec ((_catch-e156571_
                  (lambda (_exn156590_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id156569_))
                          (let ()
                            (declare (not safe))
                            (display-exception _exn156590_)))
                        '#!void)
                    '#f))
                 (_import-e156572_
                  (lambda ()
                    (let* ((_str-id156575_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id156569_))
                             '".ssxi"))
                           (_artefact-path156583_
                            (let ((_odir156576156578_
                                   (gxc#current-compile-output-dir)))
                              (if _odir156576156578_
                                  (let ((_odir156581_ _odir156576156578_))
                                    (path-expand
                                     (string-append _str-id156575_ '".ss")
                                     _odir156581_))
                                  '#f)))
                           (_library-path156585_
                            (string->symbol
                             (string-append '":" _str-id156575_ '".ss")))
                           (_ssxi-path156587_
                            (if (and _artefact-path156583_
                                     (file-exists? _artefact-path156583_))
                                _artefact-path156583_
                                _library-path156585_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path156587_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path156587_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e156571_ _import-e156572_)))))
    (define gxc#optimize-source
      (lambda (_stx156560_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx156560_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx156560_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx156560_))
        (let* ((_stx156562_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx156560_)))
               (_stx156564_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx156562_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx156564_))
          (let ((_stx156567_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx156564_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx156567_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp157017 (list gxc#::generate-runtime-empty::t))
            (__tmp157015
             (let ((__tmp157016
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp157016 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp157017
         '()
         __tmp157015
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _$args156557_
        (apply make-instance gxc#::generate-ssxi::t _$args156557_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp157018
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
        (make-promise __tmp157018)))
    (define gxc#apply-generate-ssxi
      (lambda (_stx156549_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_self156552_
                (let ((__obj156989
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj156989))
               (__tmp157019
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self156552_ _stx156549_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp157019
           gxc#current-compile-method
           _self156552_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_self156509_ _stx156510_)
        (let* ((_g156512156522_
                (lambda (_g156513156519_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g156513156519_))))
               (_g156511156546_
                (lambda (_g156513156525_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g156513156525_))
                      (let ((_e156517156527_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g156513156525_))))
                        (let ((_hd156516156530_
                               (let ()
                                 (declare (not safe))
                                 (##car _e156517156527_)))
                              (_tl156515156532_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e156517156527_))))
                          ((lambda (_L156535_)
                             (let ((__tmp157022
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _self156509_
                                         _stx156510_))))
                                   (__tmp157020
                                    (let ((__tmp157021
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp157021 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp157022
                                gx#current-expander-phi
                                __tmp157020)))
                           _tl156515156532_)))
                      (let ()
                        (declare (not safe))
                        (_g156512156522_ _g156513156525_))))))
          (declare (not safe))
          (_g156511156546_ _stx156510_))))
    (define gxc#generate-ssxi-module%
      (lambda (_self156448_ _stx156449_)
        (let* ((_g156451156465_
                (lambda (_g156452156462_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g156452156462_))))
               (_g156450156506_
                (lambda (_g156452156468_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g156452156468_))
                      (let ((_e156457156470_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g156452156468_))))
                        (let ((_hd156456156473_
                               (let ()
                                 (declare (not safe))
                                 (##car _e156457156470_)))
                              (_tl156455156475_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e156457156470_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl156455156475_))
                              (let ((_e156460156478_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl156455156475_))))
                                (let ((_hd156459156481_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e156460156478_)))
                                      (_tl156458156483_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e156460156478_))))
                                  ((lambda (_L156486_ _L156487_)
                                     (let* ((_ctx156500_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L156487_)))
                                            (_code156502_
                                             (##structure-ref
                                              _ctx156500_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp157023
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self156448_
                                                   _code156502_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp157023
                                          gx#current-expander-context
                                          _ctx156500_))))
                                   _tl156458156483_
                                   _hd156459156481_)))
                              (let ()
                                (declare (not safe))
                                (_g156451156465_ _g156452156468_)))))
                      (let ()
                        (declare (not safe))
                        (_g156451156465_ _g156452156468_))))))
          (declare (not safe))
          (_g156450156506_ _stx156449_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_self156257_ _stx156258_)
        (letrec ((_generate-e156260_
                  (lambda (_id156437_)
                    (let* ((_sym156439_
                            (if (let ((__tmp157024
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp157024))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id156437_))
                                '#f))
                           (_$e156441_
                            (if _sym156439_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym156439_))
                                '#f)))
                      (if _$e156441_
                          ((lambda (_type156444_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym156439_))
                             (let* ((_typedecl156446_
                                     (let ((__method156990
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type156444_
                                               'typedecl))))
                                       (if __method156990
                                           (__method156990 _type156444_)
                                           (let ()
                                             (declare (not safe))
                                             (error '"Missing method"
                                                    _type156444_
                                                    'typedecl)))))
                                    (__tmp157025
                                     (let ((__tmp157026
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl156446_ '()))))
                                       (declare (not safe))
                                       (cons _sym156439_ __tmp157026))))
                               (declare (not safe))
                               (cons 'declare-type __tmp157025)))
                           _$e156441_)
                          '(begin))))))
          (let* ((___stx156686156687_ _stx156258_)
                 (_g156263156301_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx156686156687_)))))
            (let ((___kont156688156689_
                   (lambda (_L156419_)
                     (let ()
                       (declare (not safe))
                       (_generate-e156260_ _L156419_))))
                  (___kont156690156691_
                   (lambda (_L156354_)
                     (let ((_types156380_
                            (map _generate-e156260_
                                 (let ((__tmp157027
                                        (lambda (_g156372156375_
                                                 _g156373156377_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g156372156375_
                                                  _g156373156377_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp157027 '() _L156354_)))))
                       (declare (not safe))
                       (cons 'begin _types156380_)))))
              (let ((___match156741156742_
                     (lambda (_e156281156306_
                              _hd156280156309_
                              _tl156279156311_
                              _e156284156314_
                              _hd156283156317_
                              _tl156282156319_
                              ___splice156692156693_
                              _target156285156322_
                              _tl156287156324_)
                       (letrec ((_loop156288156327_
                                 (lambda (_hd156286156330_ _id156292156332_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd156286156330_))
                                       (let ((_e156289156335_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd156286156330_))))
                                         (let ((_lp-tl156291156340_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e156289156335_)))
                                               (_lp-hd156290156338_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e156289156335_))))
                                           (let ((__tmp157028
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd156290156338_
                                                          _id156292156332_))))
                                             (declare (not safe))
                                             (_loop156288156327_
                                              _lp-tl156291156340_
                                              __tmp157028))))
                                       (let ((_id156293156343_
                                              (reverse _id156292156332_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl156282156319_))
                                             (let ((_e156296156346_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl156282156319_))))
                                               (let ((_tl156294156351_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e156296156346_)))
                                                     (_hd156295156349_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e156296156346_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl156294156351_))
                                                     (___kont156690156691_
                                                      _id156293156343_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g156263156301_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g156263156301_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop156288156327_ _target156285156322_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx156686156687_))
                    (let ((_e156268156387_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx156686156687_))))
                      (let ((_tl156266156392_
                             (let ()
                               (declare (not safe))
                               (##cdr _e156268156387_)))
                            (_hd156267156390_
                             (let ()
                               (declare (not safe))
                               (##car _e156268156387_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl156266156392_))
                            (let ((_e156271156395_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl156266156392_))))
                              (let ((_tl156269156400_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e156271156395_)))
                                    (_hd156270156398_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e156271156395_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd156270156398_))
                                    (let ((_e156274156403_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd156270156398_))))
                                      (let ((_tl156272156408_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e156274156403_)))
                                            (_hd156273156406_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e156274156403_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl156272156408_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl156269156400_))
                                                (let ((_e156277156411_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl156269156400_))))
                                                  (let ((_tl156275156416_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e156277156411_)))
                                                        (_hd156276156414_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e156277156411_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl156275156416_))
                                                        (___kont156688156689_
                                                         _hd156273156406_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd156270156398_))
                                                            (let ((___splice156692156693_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd156270156398_ '0))))
                      (let ((_tl156287156324_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice156692156693_ '1)))
                            (_target156285156322_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice156692156693_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl156287156324_))
                            (___match156741156742_
                             _e156268156387_
                             _hd156267156390_
                             _tl156266156392_
                             _e156271156395_
                             _hd156270156398_
                             _tl156269156400_
                             ___splice156692156693_
                             _target156285156322_
                             _tl156287156324_)
                            (let () (declare (not safe)) (_g156263156301_)))))
                    (let () (declare (not safe)) (_g156263156301_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd156270156398_))
                                                    (let ((___splice156692156693_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd156270156398_
                                                              '0))))
                                                      (let ((_tl156287156324_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice156692156693_ '1)))
                    (_target156285156322_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice156692156693_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl156287156324_))
                    (___match156741156742_
                     _e156268156387_
                     _hd156267156390_
                     _tl156266156392_
                     _e156271156395_
                     _hd156270156398_
                     _tl156269156400_
                     ___splice156692156693_
                     _target156285156322_
                     _tl156287156324_)
                    (let () (declare (not safe)) (_g156263156301_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g156263156301_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd156270156398_))
                                                (let ((___splice156692156693_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd156270156398_
                                                          '0))))
                                                  (let ((_tl156287156324_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice156692156693_
                                                            '1)))
                                                        (_target156285156322_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice156692156693_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl156287156324_))
                                                        (___match156741156742_
                                                         _e156268156387_
                                                         _hd156267156390_
                                                         _tl156266156392_
                                                         _e156271156395_
                                                         _hd156270156398_
                                                         _tl156269156400_
                                                         ___splice156692156693_
                                                         _target156285156322_
                                                         _tl156287156324_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g156263156301_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g156263156301_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd156270156398_))
                                        (let ((___splice156692156693_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd156270156398_
                                                  '0))))
                                          (let ((_tl156287156324_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice156692156693_
                                                    '1)))
                                                (_target156285156322_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice156692156693_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl156287156324_))
                                                (___match156741156742_
                                                 _e156268156387_
                                                 _hd156267156390_
                                                 _tl156266156392_
                                                 _e156271156395_
                                                 _hd156270156398_
                                                 _tl156269156400_
                                                 ___splice156692156693_
                                                 _target156285156322_
                                                 _tl156287156324_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g156263156301_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g156263156301_))))))
                            (let () (declare (not safe)) (_g156263156301_)))))
                    (let () (declare (not safe)) (_g156263156301_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_self155810_ _stx155811_)
        (let* ((___stx156744156745_ _stx155811_)
               (_g155815155917_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx156744156745_)))))
          (let ((___kont156746156747_
                 (lambda (_L156207_ _L156208_ _L156209_ _L156210_ _L156211_)
                   (let ((__tmp157029
                          (let ((__tmp157036
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L156210_)))
                                (__tmp157030
                                 (let ((__tmp157035
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L156209_)))
                                       (__tmp157031
                                        (let ((__tmp157034
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L156208_)))
                                              (__tmp157032
                                               (let ((__tmp157033
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L156207_))))
                                                 (declare (not safe))
                                                 (cons __tmp157033 '()))))
                                          (declare (not safe))
                                          (cons __tmp157034 __tmp157032))))
                                   (declare (not safe))
                                   (cons __tmp157035 __tmp157031))))
                            (declare (not safe))
                            (cons __tmp157036 __tmp157030))))
                     (declare (not safe))
                     (cons 'declare-method __tmp157029))))
                (___kont156748156749_
                 (lambda (_L156033_ _L156034_ _L156035_ _L156036_)
                   (let ((__tmp157037
                          (let ((__tmp157043
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L156035_)))
                                (__tmp157038
                                 (let ((__tmp157042
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L156034_)))
                                       (__tmp157039
                                        (let ((__tmp157041
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L156033_)))
                                              (__tmp157040
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp157041 __tmp157040))))
                                   (declare (not safe))
                                   (cons __tmp157042 __tmp157039))))
                            (declare (not safe))
                            (cons __tmp157043 __tmp157038))))
                     (declare (not safe))
                     (cons 'declare-method __tmp157037))))
                (___kont156750156751_ (lambda () '(begin))))
            (let ((___match156879156880_
                   (lambda (_e155824156079_
                            _hd155823156082_
                            _tl155822156084_
                            _e155827156087_
                            _hd155826156090_
                            _tl155825156092_
                            _e155830156095_
                            _hd155829156098_
                            _tl155828156100_
                            _e155833156103_
                            _hd155832156106_
                            _tl155831156108_
                            _e155836156111_
                            _hd155835156114_
                            _tl155834156116_
                            _e155839156119_
                            _hd155838156122_
                            _tl155837156124_
                            _e155842156127_
                            _hd155841156130_
                            _tl155840156132_
                            _e155845156135_
                            _hd155844156138_
                            _tl155843156140_
                            _e155848156143_
                            _hd155847156146_
                            _tl155846156148_
                            _e155851156151_
                            _hd155850156154_
                            _tl155849156156_
                            _e155854156159_
                            _hd155853156162_
                            _tl155852156164_
                            _e155857156167_
                            _hd155856156170_
                            _tl155855156172_
                            _e155860156175_
                            _hd155859156178_
                            _tl155858156180_
                            _e155863156183_
                            _hd155862156186_
                            _tl155861156188_
                            _e155866156191_
                            _hd155865156194_
                            _tl155864156196_
                            _e155869156199_
                            _hd155868156202_
                            _tl155867156204_)
                     (let ((_L156207_ _hd155868156202_)
                           (_L156208_ _hd155859156178_)
                           (_L156209_ _hd155850156154_)
                           (_L156210_ _hd155841156130_)
                           (_L156211_ _hd155832156106_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L156211_
                              'bind-method!))
                           (___kont156746156747_
                            _L156207_
                            _L156208_
                            _L156209_
                            _L156210_
                            _L156211_)
                           (___kont156750156751_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx156744156745_))
                  (let ((_e155824156079_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx156744156745_))))
                    (let ((_tl155822156084_
                           (let ()
                             (declare (not safe))
                             (##cdr _e155824156079_)))
                          (_hd155823156082_
                           (let ()
                             (declare (not safe))
                             (##car _e155824156079_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl155822156084_))
                          (let ((_e155827156087_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl155822156084_))))
                            (let ((_tl155825156092_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e155827156087_)))
                                  (_hd155826156090_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e155827156087_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd155826156090_))
                                  (let ((_e155830156095_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd155826156090_))))
                                    (let ((_tl155828156100_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e155830156095_)))
                                          (_hd155829156098_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e155830156095_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd155829156098_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd155829156098_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl155828156100_))
                                                  (let ((_e155833156103_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl155828156100_))))
                                                    (let ((_tl155831156108_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e155833156103_)))
                                                          (_hd155832156106_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e155833156103_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl155831156108_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl155825156092_))
                      (let ((_e155836156111_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl155825156092_))))
                        (let ((_tl155834156116_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e155836156111_)))
                              (_hd155835156114_
                               (let ()
                                 (declare (not safe))
                                 (##car _e155836156111_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd155835156114_))
                              (let ((_e155839156119_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd155835156114_))))
                                (let ((_tl155837156124_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e155839156119_)))
                                      (_hd155838156122_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e155839156119_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd155838156122_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd155838156122_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl155837156124_))
                                              (let ((_e155842156127_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl155837156124_))))
                                                (let ((_tl155840156132_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e155842156127_)))
                                                      (_hd155841156130_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e155842156127_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl155840156132_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl155834156116_))
                                                          (let ((_e155845156135_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl155834156116_))))
                    (let ((_tl155843156140_
                           (let ()
                             (declare (not safe))
                             (##cdr _e155845156135_)))
                          (_hd155844156138_
                           (let ()
                             (declare (not safe))
                             (##car _e155845156135_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd155844156138_))
                          (let ((_e155848156143_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd155844156138_))))
                            (let ((_tl155846156148_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e155848156143_)))
                                  (_hd155847156146_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e155848156143_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd155847156146_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd155847156146_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl155846156148_))
                                          (let ((_e155851156151_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl155846156148_))))
                                            (let ((_tl155849156156_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e155851156151_)))
                                                  (_hd155850156154_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e155851156151_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl155849156156_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl155843156140_))
                                                      (let ((_e155854156159_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl155843156140_))))
                (let ((_tl155852156164_
                       (let () (declare (not safe)) (##cdr _e155854156159_)))
                      (_hd155853156162_
                       (let () (declare (not safe)) (##car _e155854156159_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd155853156162_))
                      (let ((_e155857156167_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd155853156162_))))
                        (let ((_tl155855156172_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e155857156167_)))
                              (_hd155856156170_
                               (let ()
                                 (declare (not safe))
                                 (##car _e155857156167_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd155856156170_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd155856156170_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl155855156172_))
                                      (let ((_e155860156175_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl155855156172_))))
                                        (let ((_tl155858156180_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e155860156175_)))
                                              (_hd155859156178_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e155860156175_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl155858156180_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl155852156164_))
                                                  (let ((_e155863156183_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl155852156164_))))
                                                    (let ((_tl155861156188_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e155863156183_)))
                                                          (_hd155862156186_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e155863156183_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd155862156186_))
                                                          (let ((_e155866156191_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd155862156186_))))
                    (let ((_tl155864156196_
                           (let ()
                             (declare (not safe))
                             (##cdr _e155866156191_)))
                          (_hd155865156194_
                           (let ()
                             (declare (not safe))
                             (##car _e155866156191_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd155865156194_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd155865156194_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl155864156196_))
                                  (let ((_e155869156199_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl155864156196_))))
                                    (let ((_tl155867156204_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e155869156199_)))
                                          (_hd155868156202_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e155869156199_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl155867156204_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl155861156188_))
                                              (___match156879156880_
                                               _e155824156079_
                                               _hd155823156082_
                                               _tl155822156084_
                                               _e155827156087_
                                               _hd155826156090_
                                               _tl155825156092_
                                               _e155830156095_
                                               _hd155829156098_
                                               _tl155828156100_
                                               _e155833156103_
                                               _hd155832156106_
                                               _tl155831156108_
                                               _e155836156111_
                                               _hd155835156114_
                                               _tl155834156116_
                                               _e155839156119_
                                               _hd155838156122_
                                               _tl155837156124_
                                               _e155842156127_
                                               _hd155841156130_
                                               _tl155840156132_
                                               _e155845156135_
                                               _hd155844156138_
                                               _tl155843156140_
                                               _e155848156143_
                                               _hd155847156146_
                                               _tl155846156148_
                                               _e155851156151_
                                               _hd155850156154_
                                               _tl155849156156_
                                               _e155854156159_
                                               _hd155853156162_
                                               _tl155852156164_
                                               _e155857156167_
                                               _hd155856156170_
                                               _tl155855156172_
                                               _e155860156175_
                                               _hd155859156178_
                                               _tl155858156180_
                                               _e155863156183_
                                               _hd155862156186_
                                               _tl155861156188_
                                               _e155866156191_
                                               _hd155865156194_
                                               _tl155864156196_
                                               _e155869156199_
                                               _hd155868156202_
                                               _tl155867156204_)
                                              (___kont156750156751_))
                                          (___kont156750156751_))))
                                  (___kont156750156751_))
                              (___kont156750156751_))
                          (___kont156750156751_))))
                  (___kont156750156751_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl155852156164_))
                                                      (if (let ((__tmp157044
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp157044 'bind-method!))
                  (let ((_L156033_ _hd155859156178_)
                        (_L156034_ _hd155850156154_)
                        (_L156035_ _hd155841156130_)
                        (_L156036_ _hd155832156106_))
                    (___kont156748156749_
                     _L156033_
                     _L156034_
                     _L156035_
                     _L156036_))
                  (___kont156750156751_))
              (___kont156750156751_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont156750156751_))))
                                      (___kont156750156751_))
                                  (___kont156750156751_))
                              (___kont156750156751_))))
                      (___kont156750156751_))))
              (___kont156750156751_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont156750156751_))))
                                          (___kont156750156751_))
                                      (___kont156750156751_))
                                  (___kont156750156751_))))
                          (___kont156750156751_))))
                  (___kont156750156751_))
              (___kont156750156751_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont156750156751_))
                                          (___kont156750156751_))
                                      (___kont156750156751_))))
                              (___kont156750156751_))))
                      (___kont156750156751_))
                  (___kont156750156751_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont156750156751_))
                                              (___kont156750156751_))
                                          (___kont156750156751_))))
                                  (___kont156750156751_))))
                          (___kont156750156751_))))
                  (___kont156750156751_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self155786_)
        (let* ((_self155787155793_ _self155786_)
               (_E155789155797_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155787155793_))))
               (_K155790155802_
                (lambda (_alias-id155800_)
                  (let ((__tmp157045
                         (let ()
                           (declare (not safe))
                           (cons _alias-id155800_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp157045)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self155787155793_ 'gxc#!alias::t))
              (let* ((_e155791155805_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155787155793_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id155808_ _e155791155805_))
                (declare (not safe))
                (_K155790155802_ _alias-id155808_))
              (let () (declare (not safe)) (_E155789155797_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self155577_)
        (let* ((_self155578155593_ _self155577_)
               (_E155580155597_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155578155593_))))
               (_K155581155611_
                (lambda (_methods155600_
                         _metaclass155601_
                         _final?155602_
                         _struct?155603_
                         _constructor155604_
                         _fields155605_
                         _slots155606_
                         _precendence-list155607_
                         _super155608_
                         _id155609_)
                  (let ((__tmp157046
                         (let ((__tmp157047
                                (let ((__tmp157048
                                       (let ((__tmp157049
                                              (let ((__tmp157050
                                                     (let ((__tmp157051
                                                            (let ((__tmp157052
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp157053
                                  (let ((__tmp157054
                                         (let ((__tmp157055
                                                (let ((__tmp157056
                                                       (if _methods155600_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (hash->list
                                                              _methods155600_))
                                                           '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp157056 '()))))
                                           (declare (not safe))
                                           (cons _metaclass155601_
                                                 __tmp157055))))
                                    (declare (not safe))
                                    (cons _final?155602_ __tmp157054))))
                             (declare (not safe))
                             (cons _struct?155603_ __tmp157053))))
                      (declare (not safe))
                      (cons _constructor155604_ __tmp157052))))
               (declare (not safe))
               (cons _fields155605_ __tmp157051))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots155606_
                                                      __tmp157050))))
                                         (declare (not safe))
                                         (cons _precendence-list155607_
                                               __tmp157049))))
                                  (declare (not safe))
                                  (cons _super155608_ __tmp157048))))
                           (declare (not safe))
                           (cons _id155609_ __tmp157047))))
                    (declare (not safe))
                    (cons '@class __tmp157046)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self155578155593_ 'gxc#!class::t))
              (let* ((_e155582155614_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155578155593_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id155617_ _e155582155614_)
                     (_e155583155619_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155578155593_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super155622_ _e155583155619_)
                     (_e155584155624_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155578155593_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list155627_ _e155584155624_)
                     (_e155585155629_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155578155593_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots155632_ _e155585155629_)
                     (_e155586155634_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155578155593_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields155637_ _e155586155634_)
                     (_e155587155639_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155578155593_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor155642_ _e155587155639_)
                     (_e155588155644_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155578155593_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?155647_ _e155588155644_)
                     (_e155589155649_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155578155593_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?155652_ _e155589155649_)
                     (_e155590155654_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155578155593_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_metaclass155657_ _e155590155654_)
                     (_e155591155659_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155578155593_
                         '10
                         gxc#!class::t
                         '#f)))
                     (_methods155662_ _e155591155659_))
                (declare (not safe))
                (_K155581155611_
                 _methods155662_
                 _metaclass155657_
                 _final?155652_
                 _struct?155647_
                 _constructor155642_
                 _fields155637_
                 _slots155632_
                 _precendence-list155627_
                 _super155622_
                 _id155617_))
              (let () (declare (not safe)) (_E155580155597_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self155431_)
        (let* ((_self155432155438_ _self155431_)
               (_E155434155442_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155432155438_))))
               (_K155435155447_
                (lambda (_klass-id155445_)
                  (let ((__tmp157057
                         (let ()
                           (declare (not safe))
                           (cons _klass-id155445_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp157057)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self155432155438_
                 'gxc#!predicate::t))
              (let* ((_e155436155450_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155432155438_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id155453_ _e155436155450_))
                (declare (not safe))
                (_K155435155447_ _klass-id155453_))
              (let () (declare (not safe)) (_E155434155442_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self155285_)
        (let* ((_self155286155292_ _self155285_)
               (_E155288155296_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155286155292_))))
               (_K155289155301_
                (lambda (_klass-id155299_)
                  (let ((__tmp157058
                         (let ()
                           (declare (not safe))
                           (cons _klass-id155299_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp157058)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self155286155292_
                 'gxc#!constructor::t))
              (let* ((_e155290155304_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155286155292_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id155307_ _e155290155304_))
                (declare (not safe))
                (_K155289155301_ _klass-id155307_))
              (let () (declare (not safe)) (_E155288155296_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self155125_)
        (let* ((_self155126155134_ _self155125_)
               (_E155128155138_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self155126155134_))))
               (_K155129155145_
                (lambda (_checked?155141_ _slot155142_ _klass-id155143_)
                  (let ((__tmp157059
                         (let ((__tmp157060
                                (let ((__tmp157061
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?155141_ '()))))
                                  (declare (not safe))
                                  (cons _slot155142_ __tmp157061))))
                           (declare (not safe))
                           (cons _klass-id155143_ __tmp157060))))
                    (declare (not safe))
                    (cons '@accessor __tmp157059)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self155126155134_
                 'gxc#!accessor::t))
              (let* ((_e155130155148_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155126155134_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id155151_ _e155130155148_)
                     (_e155131155153_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155126155134_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot155156_ _e155131155153_)
                     (_e155132155158_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self155126155134_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?155161_ _e155132155158_))
                (declare (not safe))
                (_K155129155145_
                 _checked?155161_
                 _slot155156_
                 _klass-id155151_))
              (let () (declare (not safe)) (_E155128155138_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self154965_)
        (let* ((_self154966154974_ _self154965_)
               (_E154968154978_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154966154974_))))
               (_K154969154985_
                (lambda (_checked?154981_ _slot154982_ _klass-id154983_)
                  (let ((__tmp157062
                         (let ((__tmp157063
                                (let ((__tmp157064
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?154981_ '()))))
                                  (declare (not safe))
                                  (cons _slot154982_ __tmp157064))))
                           (declare (not safe))
                           (cons _klass-id154983_ __tmp157063))))
                    (declare (not safe))
                    (cons '@mutator __tmp157062)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self154966154974_ 'gxc#!mutator::t))
              (let* ((_e154970154988_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154966154974_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id154991_ _e154970154988_)
                     (_e154971154993_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154966154974_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot154996_ _e154971154993_)
                     (_e154972154998_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154966154974_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?155001_ _e154972154998_))
                (declare (not safe))
                (_K154969154985_
                 _checked?155001_
                 _slot154996_
                 _klass-id154991_))
              (let () (declare (not safe)) (_E154968154978_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self154791_)
        (let* ((_self154792154802_ _self154791_)
               (_E154794154806_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154792154802_))))
               (_K154795154817_
                (lambda (_typedecl154809_
                         _inline154810_
                         _dispatch154811_
                         _arity154812_)
                  (if _inline154810_
                      (let ((_$e154814_ _typedecl154809_))
                        (if _$e154814_
                            _$e154814_
                            (let ()
                              (declare (not safe))
                              (error '"Cannot generate typedecl for inline rules"))))
                      (let ((__tmp157065
                             (let ((__tmp157066
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch154811_ '()))))
                               (declare (not safe))
                               (cons _arity154812_ __tmp157066))))
                        (declare (not safe))
                        (cons '@lambda __tmp157065))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self154792154802_ 'gxc#!lambda::t))
              (let* ((_e154796154820_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154792154802_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e154797154823_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154792154802_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity154826_ _e154797154823_)
                     (_e154798154828_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154792154802_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch154831_ _e154798154828_)
                     (_e154799154833_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154792154802_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline154836_ _e154799154833_)
                     (_e154800154838_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154792154802_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl154841_ _e154800154838_))
                (declare (not safe))
                (_K154795154817_
                 _typedecl154841_
                 _inline154836_
                 _dispatch154831_
                 _arity154826_))
              (let () (declare (not safe)) (_E154794154806_))))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self154602_)
        (letrec ((_clause-e154604_
                  (lambda (_clause154634_)
                    (let* ((_clause154635154643_ _clause154634_)
                           (_E154637154647_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _clause154635154643_))))
                           (_K154638154653_
                            (lambda (_dispatch154650_ _arity154651_)
                              (let ((__tmp157067
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch154650_ '()))))
                                (declare (not safe))
                                (cons _arity154651_ __tmp157067)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause154635154643_
                             'gxc#!lambda::t))
                          (let* ((_e154639154656_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause154635154643_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e154640154659_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause154635154643_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity154662_ _e154640154659_)
                                 (_e154641154664_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause154635154643_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch154667_ _e154641154664_))
                            (declare (not safe))
                            (_K154638154653_ _dispatch154667_ _arity154662_))
                          (let () (declare (not safe)) (_E154637154647_)))))))
          (let* ((_self154605154612_ _self154602_)
                 (_E154607154616_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching" _self154605154612_))))
                 (_K154608154623_
                  (lambda (_clauses154619_)
                    (let ((_clauses154621_
                           (map _clause-e154604_ _clauses154619_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses154621_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self154605154612_
                   'gxc#!case-lambda::t))
                (let* ((_e154609154626_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self154605154612_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e154610154629_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self154605154612_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses154632_ _e154610154629_))
                  (declare (not safe))
                  (_K154608154623_ _clauses154632_))
                (let () (declare (not safe)) (_E154607154616_)))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self154445_)
        (let* ((_self154446154454_ _self154445_)
               (_E154448154458_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154446154454_))))
               (_K154449154464_
                (lambda (_dispatch154461_ _table154462_)
                  (let ((__tmp157068
                         (let ((__tmp157069
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch154461_ '()))))
                           (declare (not safe))
                           (cons _table154462_ __tmp157069))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp157068)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154446154454_
                 'gxc#!kw-lambda::t))
              (let* ((_e154450154467_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154446154454_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e154451154470_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154446154454_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table154473_ _e154451154470_)
                     (_e154452154475_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154446154454_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch154478_ _e154452154475_))
                (declare (not safe))
                (_K154449154464_ _dispatch154478_ _table154473_))
              (let () (declare (not safe)) (_E154448154458_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda::t
       'typedecl
       gxc#!kw-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self154288_)
        (let* ((_self154289154297_ _self154288_)
               (_E154291154301_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _self154289154297_))))
               (_K154292154307_
                (lambda (_main154304_ _keys154305_)
                  (let ((__tmp157070
                         (let ((__tmp157071
                                (let ()
                                  (declare (not safe))
                                  (cons _main154304_ '()))))
                           (declare (not safe))
                           (cons _keys154305_ __tmp157071))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp157070)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self154289154297_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e154293154310_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154289154297_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e154294154313_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154289154297_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys154316_ _e154294154313_)
                     (_e154295154318_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self154289154297_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main154321_ _e154295154318_))
                (declare (not safe))
                (_K154292154307_ _main154321_ _keys154316_))
              (let () (declare (not safe)) (_E154291154301_))))))
    (let ()
      (declare (not safe))
      (bind-method!__%
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
