(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1707846536)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj291662
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj291662)
               __obj291662)))))
    (define gxc#optimize!
      (lambda (_ctx286787_)
        (let ((__tmp291666
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx286787_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi))
                 (let ((__tmp291668
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp291667
                        (##structure-ref
                         _ctx286787_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (table-set! __tmp291668 __tmp291667 '#t))
                 (let ((_code286790_
                        (let ((__tmp291669
                               (##structure-ref
                                _ctx286787_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp291669))))
                   (##structure-set!
                    _ctx286787_
                    _code286790_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp291665
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp291664
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (call-with-parameters
           __tmp291666
           gxc#current-compile-mutators
           __tmp291665
           gxc#current-compile-local-type
           __tmp291664))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda ()
        (let ()
          (declare (not safe))
          (gxc#optimizer-import-ssxi-by-id 'gerbil/builtin))
        (let ((__tmp291670
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp291670 'gerbil/builtin '#t))))
    (define gxc#optimizer-load-ssxi-deps
      (lambda (_ctx286731_)
        (letrec* ((_deps286733_
                   (let* ((_imports286777_
                           (##structure-ref
                            _ctx286731_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e286779_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx286731_))))
                     (if _$e286779_
                         ((lambda (_g286781286783_)
                            (let ()
                              (declare (not safe))
                              (cons _g286781286783_ _imports286777_)))
                          _$e286779_)
                         _imports286777_))))
          (let _lp286735_ ((_rest286737_ _deps286733_))
            (let* ((_rest286738286746_ _rest286737_)
                   (_else286740286754_ (lambda () '#!void))
                   (_K286742286765_
                    (lambda (_rest286757_ _hd286758_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd286758_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp291684
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp291683
                                       (##structure-ref
                                        _hd286758_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (table-ref __tmp291684 __tmp291683 '#f))
                                '#!void
                                (begin
                                  (let ((_$e286760_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd286758_))))
                                    (if _$e286760_
                                        ((lambda (_pre286763_)
                                           (let ((__tmp291681
                                                  (let ((__tmp291682
                                                         (##structure-ref
                                                          _hd286758_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre286763_
                                                          __tmp291682))))
                                             (declare (not safe))
                                             (_lp286735_ __tmp291681)))
                                         _$e286760_)
                                        (let ((__tmp291680
                                               (##structure-ref
                                                _hd286758_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp286735_ __tmp291680))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd286758_))))
                            (let ()
                              (declare (not safe))
                              (_lp286735_ _rest286757_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd286758_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp291679
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp291678
                                           (##structure-ref
                                            _hd286758_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (table-ref __tmp291679 __tmp291678 '#f))
                                    '#!void
                                    (begin
                                      (let ((__tmp291677
                                             (##structure-ref
                                              _hd286758_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp286735_ __tmp291677))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd286758_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp286735_ _rest286757_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd286758_
                                     'gx#module-import::t))
                                  (let ((__tmp291675
                                         (let ((__tmp291676
                                                (##direct-structure-ref
                                                 _hd286758_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp291676 _rest286757_))))
                                    (declare (not safe))
                                    (_lp286735_ __tmp291675))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd286758_
                                         'gx#module-export::t))
                                      (let ((__tmp291673
                                             (let ((__tmp291674
                                                    (##direct-structure-ref
                                                     _hd286758_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp291674
                                                     _rest286757_))))
                                        (declare (not safe))
                                        (_lp286735_ __tmp291673))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd286758_
                                             'gx#import-set::t))
                                          (let ((__tmp291671
                                                 (let ((__tmp291672
                                                        (##direct-structure-ref
                                                         _hd286758_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp291672
                                                         _rest286757_))))
                                            (declare (not safe))
                                            (_lp286735_ __tmp291671))
                                          (error '"Unexpected module import"
                                                 _hd286758_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest286738286746_))
                  (let ((_hd286743286768_
                         (let ()
                           (declare (not safe))
                           (##car _rest286738286746_)))
                        (_tl286744286770_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest286738286746_))))
                    (let* ((_hd286773_ _hd286743286768_)
                           (_rest286775_ _tl286744286770_))
                      (declare (not safe))
                      (_K286742286765_ _rest286775_ _hd286773_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx286711_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx286711_
                    'gx#module-context::t))
                 (let ((__tmp291685
                        (##structure-ref
                         _ctx286711_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp291685)))
            '#!void
            (let* ((_ht286713_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id286715_
                    (##structure-ref
                     _ctx286711_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod286717_
                    (let ()
                      (declare (not safe))
                      (table-ref _ht286713_ _id286715_ '#f))))
              (let ((_$e286720_ _mod286717_))
                (if _$e286720_
                    _$e286720_
                    (let* ((_mod286723_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx286711_)))
                           (_val286728_
                            (let ((_$e286725_ _mod286723_))
                              (if _$e286725_ _$e286725_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (table-set! _ht286713_ _id286715_ _val286728_))
                      _val286728_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx286709_)
        (if (##structure-ref _ctx286709_ '1 gx#expander-context::t '#f)
            (let ((__tmp291686
                   (##structure-ref
                    _ctx286709_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp291686))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id286686_)
        (letrec ((_catch-e286688_
                  (lambda (_exn286707_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id286686_))
                          (display-exception _exn286707_))
                        '#!void)
                    '#f))
                 (_import-e286689_
                  (lambda ()
                    (let* ((_str-id286692_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id286686_))
                             '".ssxi"))
                           (_artefact-path286700_
                            (let ((_odir286693286695_
                                   (gxc#current-compile-output-dir)))
                              (if _odir286693286695_
                                  (let ((_odir286698_ _odir286693286695_))
                                    (path-expand
                                     (string-append _str-id286692_ '".ss")
                                     _odir286698_))
                                  '#f)))
                           (_library-path286702_
                            (string->symbol
                             (string-append '":" _str-id286692_ '".ss")))
                           (_ssxi-path286704_
                            (if (and _artefact-path286700_
                                     (file-exists? _artefact-path286700_))
                                _artefact-path286700_
                                _library-path286702_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path286704_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path286704_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e286688_ _import-e286689_)))))
    (define gxc#optimize-source
      (lambda (_stx286677_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx286677_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx286677_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx286677_))
        (let* ((_stx286679_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx286677_)))
               (_stx286681_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx286679_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx286681_))
          (let ((_stx286684_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx286681_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx286684_)))))
    (define gxc#&generate-ssxi
      (make-promise
       (lambda ()
         (let ((_tbl286674_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp291687 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-copy! _tbl286674_ __tmp291687))
           (let ()
             (declare (not safe))
             (table-set! _tbl286674_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl286674_
              '%#begin-syntax
              gxc#generate-ssxi-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl286674_ '%#module gxc#generate-ssxi-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl286674_
              '%#define-values
              gxc#generate-ssxi-define-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl286674_ '%#call gxc#generate-ssxi-call%))
           _tbl286674_))))
    (define gxc#apply-generate-ssxi
      (lambda (_stx286657_ . _args286659_)
        (let ((__tmp291689
               (lambda ()
                 (declare (not safe))
                 (if (null? _args286659_)
                     (gxc#compile-e__0 _stx286657_)
                     (let ((_arg1286664_ (car _args286659_))
                           (_rest286666_ (cdr _args286659_)))
                       (if (null? _rest286666_)
                           (gxc#compile-e__1 _stx286657_ _arg1286664_)
                           (let ((_arg2286669_ (car _rest286666_))
                                 (_rest286671_ (cdr _rest286666_)))
                             (if (null? _rest286671_)
                                 (gxc#compile-e__2
                                  _stx286657_
                                  _arg1286664_
                                  _arg2286669_)
                                 (apply gxc#compile-e
                                        _stx286657_
                                        _arg1286664_
                                        _arg2286669_
                                        _rest286671_))))))))
              (__tmp291688 (force gxc#&generate-ssxi)))
          (declare (not safe))
          (call-with-parameters
           __tmp291689
           gxc#current-compile-methods
           __tmp291688))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_stx286618_)
        (let* ((_g286620286630_
                (lambda (_g286621286627_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g286621286627_))))
               (_g286619286654_
                (lambda (_g286621286633_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g286621286633_))
                      (let ((_e286625286635_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g286621286633_))))
                        (let ((_hd286624286638_
                               (let ()
                                 (declare (not safe))
                                 (##car _e286625286635_)))
                              (_tl286623286640_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e286625286635_))))
                          ((lambda (_L286643_)
                             (let ((__tmp291692
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _stx286618_))))
                                   (__tmp291690
                                    (let ((__tmp291691
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp291691 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp291692
                                gx#current-expander-phi
                                __tmp291690)))
                           _tl286623286640_)))
                      (let ()
                        (declare (not safe))
                        (_g286620286630_ _g286621286633_))))))
          (declare (not safe))
          (_g286619286654_ _stx286618_))))
    (define gxc#generate-ssxi-module%
      (lambda (_stx286558_)
        (let* ((_g286560286574_
                (lambda (_g286561286571_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g286561286571_))))
               (_g286559286615_
                (lambda (_g286561286577_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g286561286577_))
                      (let ((_e286566286579_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g286561286577_))))
                        (let ((_hd286565286582_
                               (let ()
                                 (declare (not safe))
                                 (##car _e286566286579_)))
                              (_tl286564286584_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e286566286579_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl286564286584_))
                              (let ((_e286569286587_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl286564286584_))))
                                (let ((_hd286568286590_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e286569286587_)))
                                      (_tl286567286592_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e286569286587_))))
                                  ((lambda (_L286595_ _L286596_)
                                     (let* ((_ctx286609_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L286596_)))
                                            (_code286611_
                                             (##structure-ref
                                              _ctx286609_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp291693
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _code286611_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp291693
                                          gx#current-expander-context
                                          _ctx286609_))))
                                   _tl286567286592_
                                   _hd286568286590_)))
                              (let ()
                                (declare (not safe))
                                (_g286560286574_ _g286561286577_)))))
                      (let ()
                        (declare (not safe))
                        (_g286560286574_ _g286561286577_))))))
          (declare (not safe))
          (_g286559286615_ _stx286558_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_stx286368_)
        (letrec ((_generate-e286370_
                  (lambda (_id286547_)
                    (let* ((_sym286549_
                            (if (let ((__tmp291694
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp291694))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id286547_))
                                '#f))
                           (_$e286551_
                            (if _sym286549_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym286549_))
                                '#f)))
                      (if _$e286551_
                          ((lambda (_type286554_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym286549_))
                             (let* ((_typedecl286556_
                                     (let ((__method291663
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type286554_
                                               'typedecl))))
                                       (if __method291663
                                           (__method291663 _type286554_)
                                           (error '"Missing method"
                                                  _type286554_
                                                  'typedecl))))
                                    (__tmp291695
                                     (let ((__tmp291696
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl286556_ '()))))
                                       (declare (not safe))
                                       (cons _sym286549_ __tmp291696))))
                               (declare (not safe))
                               (cons 'declare-type __tmp291695)))
                           _$e286551_)
                          '(begin))))))
          (let* ((___stx291361291362_ _stx286368_)
                 (_g286373286411_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx291361291362_)))))
            (let ((___kont291363291364_
                   (lambda (_L286529_)
                     (let ()
                       (declare (not safe))
                       (_generate-e286370_ _L286529_))))
                  (___kont291365291366_
                   (lambda (_L286464_)
                     (let ((_types286490_
                            (map _generate-e286370_
                                 (let ((__tmp291697
                                        (lambda (_g286482286485_
                                                 _g286483286487_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g286482286485_
                                                  _g286483286487_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp291697 '() _L286464_)))))
                       (declare (not safe))
                       (cons 'begin _types286490_)))))
              (let ((___match291416291417_
                     (lambda (_e286391286416_
                              _hd286390286419_
                              _tl286389286421_
                              _e286394286424_
                              _hd286393286427_
                              _tl286392286429_
                              ___splice291367291368_
                              _target286395286432_
                              _tl286397286434_)
                       (letrec ((_loop286398286437_
                                 (lambda (_hd286396286440_ _id286402286442_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd286396286440_))
                                       (let ((_e286399286445_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd286396286440_))))
                                         (let ((_lp-tl286401286450_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e286399286445_)))
                                               (_lp-hd286400286448_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e286399286445_))))
                                           (let ((__tmp291698
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd286400286448_
                                                          _id286402286442_))))
                                             (declare (not safe))
                                             (_loop286398286437_
                                              _lp-tl286401286450_
                                              __tmp291698))))
                                       (let ((_id286403286453_
                                              (reverse _id286402286442_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl286392286429_))
                                             (let ((_e286406286456_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl286392286429_))))
                                               (let ((_tl286404286461_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e286406286456_)))
                                                     (_hd286405286459_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e286406286456_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl286404286461_))
                                                     (___kont291365291366_
                                                      _id286403286453_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g286373286411_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g286373286411_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop286398286437_ _target286395286432_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx291361291362_))
                    (let ((_e286378286497_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx291361291362_))))
                      (let ((_tl286376286502_
                             (let ()
                               (declare (not safe))
                               (##cdr _e286378286497_)))
                            (_hd286377286500_
                             (let ()
                               (declare (not safe))
                               (##car _e286378286497_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl286376286502_))
                            (let ((_e286381286505_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl286376286502_))))
                              (let ((_tl286379286510_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e286381286505_)))
                                    (_hd286380286508_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e286381286505_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd286380286508_))
                                    (let ((_e286384286513_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd286380286508_))))
                                      (let ((_tl286382286518_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e286384286513_)))
                                            (_hd286383286516_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e286384286513_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl286382286518_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl286379286510_))
                                                (let ((_e286387286521_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl286379286510_))))
                                                  (let ((_tl286385286526_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e286387286521_)))
                                                        (_hd286386286524_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e286387286521_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl286385286526_))
                                                        (___kont291363291364_
                                                         _hd286383286516_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd286380286508_))
                                                            (let ((___splice291367291368_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd286380286508_ '0))))
                      (let ((_tl286397286434_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice291367291368_ '1)))
                            (_target286395286432_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice291367291368_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl286397286434_))
                            (___match291416291417_
                             _e286378286497_
                             _hd286377286500_
                             _tl286376286502_
                             _e286381286505_
                             _hd286380286508_
                             _tl286379286510_
                             ___splice291367291368_
                             _target286395286432_
                             _tl286397286434_)
                            (let () (declare (not safe)) (_g286373286411_)))))
                    (let () (declare (not safe)) (_g286373286411_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd286380286508_))
                                                    (let ((___splice291367291368_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd286380286508_
                                                              '0))))
                                                      (let ((_tl286397286434_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice291367291368_ '1)))
                    (_target286395286432_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice291367291368_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl286397286434_))
                    (___match291416291417_
                     _e286378286497_
                     _hd286377286500_
                     _tl286376286502_
                     _e286381286505_
                     _hd286380286508_
                     _tl286379286510_
                     ___splice291367291368_
                     _target286395286432_
                     _tl286397286434_)
                    (let () (declare (not safe)) (_g286373286411_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g286373286411_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd286380286508_))
                                                (let ((___splice291367291368_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd286380286508_
                                                          '0))))
                                                  (let ((_tl286397286434_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice291367291368_
                                                            '1)))
                                                        (_target286395286432_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice291367291368_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl286397286434_))
                                                        (___match291416291417_
                                                         _e286378286497_
                                                         _hd286377286500_
                                                         _tl286376286502_
                                                         _e286381286505_
                                                         _hd286380286508_
                                                         _tl286379286510_
                                                         ___splice291367291368_
                                                         _target286395286432_
                                                         _tl286397286434_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g286373286411_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g286373286411_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd286380286508_))
                                        (let ((___splice291367291368_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd286380286508_
                                                  '0))))
                                          (let ((_tl286397286434_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice291367291368_
                                                    '1)))
                                                (_target286395286432_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice291367291368_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl286397286434_))
                                                (___match291416291417_
                                                 _e286378286497_
                                                 _hd286377286500_
                                                 _tl286376286502_
                                                 _e286381286505_
                                                 _hd286380286508_
                                                 _tl286379286510_
                                                 ___splice291367291368_
                                                 _target286395286432_
                                                 _tl286397286434_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g286373286411_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g286373286411_))))))
                            (let () (declare (not safe)) (_g286373286411_)))))
                    (let () (declare (not safe)) (_g286373286411_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_stx285922_)
        (let* ((___stx291419291420_ _stx285922_)
               (_g285926286028_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx291419291420_)))))
          (let ((___kont291421291422_
                 (lambda (_L286318_ _L286319_ _L286320_ _L286321_ _L286322_)
                   (let ((__tmp291699
                          (let ((__tmp291706
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L286321_)))
                                (__tmp291700
                                 (let ((__tmp291705
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L286320_)))
                                       (__tmp291701
                                        (let ((__tmp291704
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L286319_)))
                                              (__tmp291702
                                               (let ((__tmp291703
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L286318_))))
                                                 (declare (not safe))
                                                 (cons __tmp291703 '()))))
                                          (declare (not safe))
                                          (cons __tmp291704 __tmp291702))))
                                   (declare (not safe))
                                   (cons __tmp291705 __tmp291701))))
                            (declare (not safe))
                            (cons __tmp291706 __tmp291700))))
                     (declare (not safe))
                     (cons 'declare-method __tmp291699))))
                (___kont291423291424_
                 (lambda (_L286144_ _L286145_ _L286146_ _L286147_)
                   (let ((__tmp291707
                          (let ((__tmp291713
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L286146_)))
                                (__tmp291708
                                 (let ((__tmp291712
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L286145_)))
                                       (__tmp291709
                                        (let ((__tmp291711
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L286144_)))
                                              (__tmp291710
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp291711 __tmp291710))))
                                   (declare (not safe))
                                   (cons __tmp291712 __tmp291709))))
                            (declare (not safe))
                            (cons __tmp291713 __tmp291708))))
                     (declare (not safe))
                     (cons 'declare-method __tmp291707))))
                (___kont291425291426_ (lambda () '(begin))))
            (let ((___match291554291555_
                   (lambda (_e285935286190_
                            _hd285934286193_
                            _tl285933286195_
                            _e285938286198_
                            _hd285937286201_
                            _tl285936286203_
                            _e285941286206_
                            _hd285940286209_
                            _tl285939286211_
                            _e285944286214_
                            _hd285943286217_
                            _tl285942286219_
                            _e285947286222_
                            _hd285946286225_
                            _tl285945286227_
                            _e285950286230_
                            _hd285949286233_
                            _tl285948286235_
                            _e285953286238_
                            _hd285952286241_
                            _tl285951286243_
                            _e285956286246_
                            _hd285955286249_
                            _tl285954286251_
                            _e285959286254_
                            _hd285958286257_
                            _tl285957286259_
                            _e285962286262_
                            _hd285961286265_
                            _tl285960286267_
                            _e285965286270_
                            _hd285964286273_
                            _tl285963286275_
                            _e285968286278_
                            _hd285967286281_
                            _tl285966286283_
                            _e285971286286_
                            _hd285970286289_
                            _tl285969286291_
                            _e285974286294_
                            _hd285973286297_
                            _tl285972286299_
                            _e285977286302_
                            _hd285976286305_
                            _tl285975286307_
                            _e285980286310_
                            _hd285979286313_
                            _tl285978286315_)
                     (let ((_L286318_ _hd285979286313_)
                           (_L286319_ _hd285970286289_)
                           (_L286320_ _hd285961286265_)
                           (_L286321_ _hd285952286241_)
                           (_L286322_ _hd285943286217_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L286322_
                              'bind-method!))
                           (___kont291421291422_
                            _L286318_
                            _L286319_
                            _L286320_
                            _L286321_
                            _L286322_)
                           (___kont291425291426_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx291419291420_))
                  (let ((_e285935286190_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx291419291420_))))
                    (let ((_tl285933286195_
                           (let ()
                             (declare (not safe))
                             (##cdr _e285935286190_)))
                          (_hd285934286193_
                           (let ()
                             (declare (not safe))
                             (##car _e285935286190_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl285933286195_))
                          (let ((_e285938286198_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl285933286195_))))
                            (let ((_tl285936286203_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e285938286198_)))
                                  (_hd285937286201_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e285938286198_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd285937286201_))
                                  (let ((_e285941286206_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd285937286201_))))
                                    (let ((_tl285939286211_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e285941286206_)))
                                          (_hd285940286209_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e285941286206_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd285940286209_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd285940286209_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl285939286211_))
                                                  (let ((_e285944286214_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl285939286211_))))
                                                    (let ((_tl285942286219_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e285944286214_)))
                                                          (_hd285943286217_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e285944286214_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl285942286219_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl285936286203_))
                      (let ((_e285947286222_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl285936286203_))))
                        (let ((_tl285945286227_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e285947286222_)))
                              (_hd285946286225_
                               (let ()
                                 (declare (not safe))
                                 (##car _e285947286222_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd285946286225_))
                              (let ((_e285950286230_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd285946286225_))))
                                (let ((_tl285948286235_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e285950286230_)))
                                      (_hd285949286233_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e285950286230_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd285949286233_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd285949286233_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl285948286235_))
                                              (let ((_e285953286238_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl285948286235_))))
                                                (let ((_tl285951286243_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e285953286238_)))
                                                      (_hd285952286241_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e285953286238_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl285951286243_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl285945286227_))
                                                          (let ((_e285956286246_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl285945286227_))))
                    (let ((_tl285954286251_
                           (let ()
                             (declare (not safe))
                             (##cdr _e285956286246_)))
                          (_hd285955286249_
                           (let ()
                             (declare (not safe))
                             (##car _e285956286246_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd285955286249_))
                          (let ((_e285959286254_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd285955286249_))))
                            (let ((_tl285957286259_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e285959286254_)))
                                  (_hd285958286257_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e285959286254_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd285958286257_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd285958286257_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl285957286259_))
                                          (let ((_e285962286262_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl285957286259_))))
                                            (let ((_tl285960286267_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e285962286262_)))
                                                  (_hd285961286265_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e285962286262_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl285960286267_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl285954286251_))
                                                      (let ((_e285965286270_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl285954286251_))))
                (let ((_tl285963286275_
                       (let () (declare (not safe)) (##cdr _e285965286270_)))
                      (_hd285964286273_
                       (let () (declare (not safe)) (##car _e285965286270_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd285964286273_))
                      (let ((_e285968286278_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd285964286273_))))
                        (let ((_tl285966286283_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e285968286278_)))
                              (_hd285967286281_
                               (let ()
                                 (declare (not safe))
                                 (##car _e285968286278_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd285967286281_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd285967286281_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl285966286283_))
                                      (let ((_e285971286286_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl285966286283_))))
                                        (let ((_tl285969286291_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e285971286286_)))
                                              (_hd285970286289_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e285971286286_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl285969286291_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl285963286275_))
                                                  (let ((_e285974286294_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl285963286275_))))
                                                    (let ((_tl285972286299_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e285974286294_)))
                                                          (_hd285973286297_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e285974286294_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd285973286297_))
                                                          (let ((_e285977286302_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd285973286297_))))
                    (let ((_tl285975286307_
                           (let ()
                             (declare (not safe))
                             (##cdr _e285977286302_)))
                          (_hd285976286305_
                           (let ()
                             (declare (not safe))
                             (##car _e285977286302_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd285976286305_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd285976286305_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl285975286307_))
                                  (let ((_e285980286310_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl285975286307_))))
                                    (let ((_tl285978286315_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e285980286310_)))
                                          (_hd285979286313_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e285980286310_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl285978286315_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl285972286299_))
                                              (___match291554291555_
                                               _e285935286190_
                                               _hd285934286193_
                                               _tl285933286195_
                                               _e285938286198_
                                               _hd285937286201_
                                               _tl285936286203_
                                               _e285941286206_
                                               _hd285940286209_
                                               _tl285939286211_
                                               _e285944286214_
                                               _hd285943286217_
                                               _tl285942286219_
                                               _e285947286222_
                                               _hd285946286225_
                                               _tl285945286227_
                                               _e285950286230_
                                               _hd285949286233_
                                               _tl285948286235_
                                               _e285953286238_
                                               _hd285952286241_
                                               _tl285951286243_
                                               _e285956286246_
                                               _hd285955286249_
                                               _tl285954286251_
                                               _e285959286254_
                                               _hd285958286257_
                                               _tl285957286259_
                                               _e285962286262_
                                               _hd285961286265_
                                               _tl285960286267_
                                               _e285965286270_
                                               _hd285964286273_
                                               _tl285963286275_
                                               _e285968286278_
                                               _hd285967286281_
                                               _tl285966286283_
                                               _e285971286286_
                                               _hd285970286289_
                                               _tl285969286291_
                                               _e285974286294_
                                               _hd285973286297_
                                               _tl285972286299_
                                               _e285977286302_
                                               _hd285976286305_
                                               _tl285975286307_
                                               _e285980286310_
                                               _hd285979286313_
                                               _tl285978286315_)
                                              (___kont291425291426_))
                                          (___kont291425291426_))))
                                  (___kont291425291426_))
                              (___kont291425291426_))
                          (___kont291425291426_))))
                  (___kont291425291426_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl285963286275_))
                                                      (if (let ((__tmp291714
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp291714 'bind-method!))
                  (let ((_L286144_ _hd285970286289_)
                        (_L286145_ _hd285961286265_)
                        (_L286146_ _hd285952286241_)
                        (_L286147_ _hd285943286217_))
                    (___kont291423291424_
                     _L286144_
                     _L286145_
                     _L286146_
                     _L286147_))
                  (___kont291425291426_))
              (___kont291425291426_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont291425291426_))))
                                      (___kont291425291426_))
                                  (___kont291425291426_))
                              (___kont291425291426_))))
                      (___kont291425291426_))))
              (___kont291425291426_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont291425291426_))))
                                          (___kont291425291426_))
                                      (___kont291425291426_))
                                  (___kont291425291426_))))
                          (___kont291425291426_))))
                  (___kont291425291426_))
              (___kont291425291426_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont291425291426_))
                                          (___kont291425291426_))
                                      (___kont291425291426_))))
                              (___kont291425291426_))))
                      (___kont291425291426_))
                  (___kont291425291426_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont291425291426_))
                                              (___kont291425291426_))
                                          (___kont291425291426_))))
                                  (___kont291425291426_))))
                          (___kont291425291426_))))
                  (___kont291425291426_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self285898_)
        (let* ((_self285899285905_ _self285898_)
               (_E285901285909_
                (lambda () (error '"No clause matching" _self285899285905_)))
               (_K285902285914_
                (lambda (_alias-id285912_)
                  (let ((__tmp291715
                         (let ()
                           (declare (not safe))
                           (cons _alias-id285912_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp291715)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self285899285905_ 'gxc#!alias::t))
              (let* ((_e285903285917_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285899285905_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id285920_ _e285903285917_))
                (declare (not safe))
                (_K285902285914_ _alias-id285920_))
              (let () (declare (not safe)) (_E285901285909_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self285689_)
        (let* ((_self285690285705_ _self285689_)
               (_E285692285709_
                (lambda () (error '"No clause matching" _self285690285705_)))
               (_K285693285723_
                (lambda (_methods285712_
                         _metaclass285713_
                         _final?285714_
                         _struct?285715_
                         _constructor285716_
                         _fields285717_
                         _slots285718_
                         _precendence-list285719_
                         _super285720_
                         _id285721_)
                  (let ((__tmp291716
                         (let ((__tmp291717
                                (let ((__tmp291718
                                       (let ((__tmp291719
                                              (let ((__tmp291720
                                                     (let ((__tmp291721
                                                            (let ((__tmp291722
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp291723
                                  (let ((__tmp291724
                                         (let ((__tmp291725
                                                (let ((__tmp291726
                                                       (if _methods285712_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (table->list
                                                              _methods285712_))
                                                           '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp291726 '()))))
                                           (declare (not safe))
                                           (cons _metaclass285713_
                                                 __tmp291725))))
                                    (declare (not safe))
                                    (cons _final?285714_ __tmp291724))))
                             (declare (not safe))
                             (cons _struct?285715_ __tmp291723))))
                      (declare (not safe))
                      (cons _constructor285716_ __tmp291722))))
               (declare (not safe))
               (cons _fields285717_ __tmp291721))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots285718_
                                                      __tmp291720))))
                                         (declare (not safe))
                                         (cons _precendence-list285719_
                                               __tmp291719))))
                                  (declare (not safe))
                                  (cons _super285720_ __tmp291718))))
                           (declare (not safe))
                           (cons _id285721_ __tmp291717))))
                    (declare (not safe))
                    (cons '@class __tmp291716)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self285690285705_ 'gxc#!class::t))
              (let* ((_e285694285726_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285690285705_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id285729_ _e285694285726_)
                     (_e285695285731_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285690285705_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super285734_ _e285695285731_)
                     (_e285696285736_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285690285705_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list285739_ _e285696285736_)
                     (_e285697285741_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285690285705_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots285744_ _e285697285741_)
                     (_e285698285746_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285690285705_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields285749_ _e285698285746_)
                     (_e285699285751_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285690285705_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor285754_ _e285699285751_)
                     (_e285700285756_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285690285705_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?285759_ _e285700285756_)
                     (_e285701285761_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285690285705_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?285764_ _e285701285761_)
                     (_e285702285766_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285690285705_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_metaclass285769_ _e285702285766_)
                     (_e285703285771_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285690285705_
                         '10
                         gxc#!class::t
                         '#f)))
                     (_methods285774_ _e285703285771_))
                (declare (not safe))
                (_K285693285723_
                 _methods285774_
                 _metaclass285769_
                 _final?285764_
                 _struct?285759_
                 _constructor285754_
                 _fields285749_
                 _slots285744_
                 _precendence-list285739_
                 _super285734_
                 _id285729_))
              (let () (declare (not safe)) (_E285692285709_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self285543_)
        (let* ((_self285544285550_ _self285543_)
               (_E285546285554_
                (lambda () (error '"No clause matching" _self285544285550_)))
               (_K285547285559_
                (lambda (_klass-id285557_)
                  (let ((__tmp291727
                         (let ()
                           (declare (not safe))
                           (cons _klass-id285557_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp291727)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self285544285550_
                 'gxc#!predicate::t))
              (let* ((_e285548285562_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285544285550_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id285565_ _e285548285562_))
                (declare (not safe))
                (_K285547285559_ _klass-id285565_))
              (let () (declare (not safe)) (_E285546285554_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!predicate::t 'typedecl gxc#!predicate::typedecl '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self285397_)
        (let* ((_self285398285404_ _self285397_)
               (_E285400285408_
                (lambda () (error '"No clause matching" _self285398285404_)))
               (_K285401285413_
                (lambda (_klass-id285411_)
                  (let ((__tmp291728
                         (let ()
                           (declare (not safe))
                           (cons _klass-id285411_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp291728)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self285398285404_
                 'gxc#!constructor::t))
              (let* ((_e285402285416_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285398285404_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id285419_ _e285402285416_))
                (declare (not safe))
                (_K285401285413_ _klass-id285419_))
              (let () (declare (not safe)) (_E285400285408_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self285237_)
        (let* ((_self285238285246_ _self285237_)
               (_E285240285250_
                (lambda () (error '"No clause matching" _self285238285246_)))
               (_K285241285257_
                (lambda (_checked?285253_ _slot285254_ _klass-id285255_)
                  (let ((__tmp291729
                         (let ((__tmp291730
                                (let ((__tmp291731
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?285253_ '()))))
                                  (declare (not safe))
                                  (cons _slot285254_ __tmp291731))))
                           (declare (not safe))
                           (cons _klass-id285255_ __tmp291730))))
                    (declare (not safe))
                    (cons '@accessor __tmp291729)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self285238285246_
                 'gxc#!accessor::t))
              (let* ((_e285242285260_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285238285246_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id285263_ _e285242285260_)
                     (_e285243285265_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285238285246_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot285268_ _e285243285265_)
                     (_e285244285270_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285238285246_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?285273_ _e285244285270_))
                (declare (not safe))
                (_K285241285257_
                 _checked?285273_
                 _slot285268_
                 _klass-id285263_))
              (let () (declare (not safe)) (_E285240285250_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self285077_)
        (let* ((_self285078285086_ _self285077_)
               (_E285080285090_
                (lambda () (error '"No clause matching" _self285078285086_)))
               (_K285081285097_
                (lambda (_checked?285093_ _slot285094_ _klass-id285095_)
                  (let ((__tmp291732
                         (let ((__tmp291733
                                (let ((__tmp291734
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?285093_ '()))))
                                  (declare (not safe))
                                  (cons _slot285094_ __tmp291734))))
                           (declare (not safe))
                           (cons _klass-id285095_ __tmp291733))))
                    (declare (not safe))
                    (cons '@mutator __tmp291732)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self285078285086_ 'gxc#!mutator::t))
              (let* ((_e285082285100_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285078285086_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id285103_ _e285082285100_)
                     (_e285083285105_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285078285086_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot285108_ _e285083285105_)
                     (_e285084285110_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285078285086_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?285113_ _e285084285110_))
                (declare (not safe))
                (_K285081285097_
                 _checked?285113_
                 _slot285108_
                 _klass-id285103_))
              (let () (declare (not safe)) (_E285080285090_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self284903_)
        (let* ((_self284904284914_ _self284903_)
               (_E284906284918_
                (lambda () (error '"No clause matching" _self284904284914_)))
               (_K284907284929_
                (lambda (_typedecl284921_
                         _inline284922_
                         _dispatch284923_
                         _arity284924_)
                  (if _inline284922_
                      (let ((_$e284926_ _typedecl284921_))
                        (if _$e284926_
                            _$e284926_
                            (error '"Cannot generate typedecl for inline rules")))
                      (let ((__tmp291735
                             (let ((__tmp291736
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch284923_ '()))))
                               (declare (not safe))
                               (cons _arity284924_ __tmp291736))))
                        (declare (not safe))
                        (cons '@lambda __tmp291735))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self284904284914_ 'gxc#!lambda::t))
              (let* ((_e284908284932_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284904284914_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e284909284935_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284904284914_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity284938_ _e284909284935_)
                     (_e284910284940_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284904284914_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch284943_ _e284910284940_)
                     (_e284911284945_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284904284914_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline284948_ _e284911284945_)
                     (_e284912284950_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284904284914_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl284953_ _e284912284950_))
                (declare (not safe))
                (_K284907284929_
                 _typedecl284953_
                 _inline284948_
                 _dispatch284943_
                 _arity284938_))
              (let () (declare (not safe)) (_E284906284918_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self284714_)
        (letrec ((_clause-e284716_
                  (lambda (_clause284746_)
                    (let* ((_clause284747284755_ _clause284746_)
                           (_E284749284759_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause284747284755_)))
                           (_K284750284765_
                            (lambda (_dispatch284762_ _arity284763_)
                              (let ((__tmp291737
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch284762_ '()))))
                                (declare (not safe))
                                (cons _arity284763_ __tmp291737)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause284747284755_
                             'gxc#!lambda::t))
                          (let* ((_e284751284768_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause284747284755_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e284752284771_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause284747284755_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity284774_ _e284752284771_)
                                 (_e284753284776_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause284747284755_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch284779_ _e284753284776_))
                            (declare (not safe))
                            (_K284750284765_ _dispatch284779_ _arity284774_))
                          (let () (declare (not safe)) (_E284749284759_)))))))
          (let* ((_self284717284724_ _self284714_)
                 (_E284719284728_
                  (lambda () (error '"No clause matching" _self284717284724_)))
                 (_K284720284735_
                  (lambda (_clauses284731_)
                    (let ((_clauses284733_
                           (map _clause-e284716_ _clauses284731_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses284733_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self284717284724_
                   'gxc#!case-lambda::t))
                (let* ((_e284721284738_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self284717284724_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e284722284741_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self284717284724_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses284744_ _e284722284741_))
                  (declare (not safe))
                  (_K284720284735_ _clauses284744_))
                (let () (declare (not safe)) (_E284719284728_)))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self284557_)
        (let* ((_self284558284566_ _self284557_)
               (_E284560284570_
                (lambda () (error '"No clause matching" _self284558284566_)))
               (_K284561284576_
                (lambda (_dispatch284573_ _table284574_)
                  (let ((__tmp291738
                         (let ((__tmp291739
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch284573_ '()))))
                           (declare (not safe))
                           (cons _table284574_ __tmp291739))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp291738)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self284558284566_
                 'gxc#!kw-lambda::t))
              (let* ((_e284562284579_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284558284566_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e284563284582_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284558284566_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table284585_ _e284563284582_)
                     (_e284564284587_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284558284566_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch284590_ _e284564284587_))
                (declare (not safe))
                (_K284561284576_ _dispatch284590_ _table284585_))
              (let () (declare (not safe)) (_E284560284570_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self284400_)
        (let* ((_self284401284409_ _self284400_)
               (_E284403284413_
                (lambda () (error '"No clause matching" _self284401284409_)))
               (_K284404284419_
                (lambda (_main284416_ _keys284417_)
                  (let ((__tmp291740
                         (let ((__tmp291741
                                (let ()
                                  (declare (not safe))
                                  (cons _main284416_ '()))))
                           (declare (not safe))
                           (cons _keys284417_ __tmp291741))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp291740)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self284401284409_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e284405284422_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284401284409_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e284406284425_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284401284409_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys284428_ _e284406284425_)
                     (_e284407284430_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284401284409_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main284433_ _e284407284430_))
                (declare (not safe))
                (_K284404284419_ _main284433_ _keys284428_))
              (let () (declare (not safe)) (_E284403284413_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
