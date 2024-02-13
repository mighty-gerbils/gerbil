(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1707840762)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj291764
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj291764)
               __obj291764)))))
    (define gxc#optimize!
      (lambda (_ctx286889_)
        (let ((__tmp291768
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx286889_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi))
                 (let ((__tmp291770
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp291769
                        (##structure-ref
                         _ctx286889_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (table-set! __tmp291770 __tmp291769 '#t))
                 (let ((_code286892_
                        (let ((__tmp291771
                               (##structure-ref
                                _ctx286889_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp291771))))
                   (##structure-set!
                    _ctx286889_
                    _code286892_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp291767
               (let () (declare (not safe)) (make-table 'test: eq?)))
              (__tmp291766
               (let () (declare (not safe)) (make-table 'test: eq?))))
          (declare (not safe))
          (call-with-parameters
           __tmp291768
           gxc#current-compile-mutators
           __tmp291767
           gxc#current-compile-local-type
           __tmp291766))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda ()
        (let ()
          (declare (not safe))
          (gxc#optimizer-import-ssxi-by-id 'gerbil/builtin))
        (let ((__tmp291772
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp291772 'gerbil/builtin '#t))))
    (define gxc#optimizer-load-ssxi-deps
      (lambda (_ctx286833_)
        (letrec* ((_deps286835_
                   (let* ((_imports286879_
                           (##structure-ref
                            _ctx286833_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e286881_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx286833_))))
                     (if _$e286881_
                         ((lambda (_g286883286885_)
                            (let ()
                              (declare (not safe))
                              (cons _g286883286885_ _imports286879_)))
                          _$e286881_)
                         _imports286879_))))
          (let _lp286837_ ((_rest286839_ _deps286835_))
            (let* ((_rest286840286848_ _rest286839_)
                   (_else286842286856_ (lambda () '#!void))
                   (_K286844286867_
                    (lambda (_rest286859_ _hd286860_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd286860_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp291786
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp291785
                                       (##structure-ref
                                        _hd286860_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (table-ref __tmp291786 __tmp291785 '#f))
                                '#!void
                                (begin
                                  (let ((_$e286862_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd286860_))))
                                    (if _$e286862_
                                        ((lambda (_pre286865_)
                                           (let ((__tmp291783
                                                  (let ((__tmp291784
                                                         (##structure-ref
                                                          _hd286860_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre286865_
                                                          __tmp291784))))
                                             (declare (not safe))
                                             (_lp286837_ __tmp291783)))
                                         _$e286862_)
                                        (let ((__tmp291782
                                               (##structure-ref
                                                _hd286860_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp286837_ __tmp291782))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd286860_))))
                            (let ()
                              (declare (not safe))
                              (_lp286837_ _rest286859_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd286860_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp291781
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp291780
                                           (##structure-ref
                                            _hd286860_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (table-ref __tmp291781 __tmp291780 '#f))
                                    '#!void
                                    (begin
                                      (let ((__tmp291779
                                             (##structure-ref
                                              _hd286860_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp286837_ __tmp291779))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd286860_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp286837_ _rest286859_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd286860_
                                     'gx#module-import::t))
                                  (let ((__tmp291777
                                         (let ((__tmp291778
                                                (##direct-structure-ref
                                                 _hd286860_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp291778 _rest286859_))))
                                    (declare (not safe))
                                    (_lp286837_ __tmp291777))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd286860_
                                         'gx#module-export::t))
                                      (let ((__tmp291775
                                             (let ((__tmp291776
                                                    (##direct-structure-ref
                                                     _hd286860_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp291776
                                                     _rest286859_))))
                                        (declare (not safe))
                                        (_lp286837_ __tmp291775))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd286860_
                                             'gx#import-set::t))
                                          (let ((__tmp291773
                                                 (let ((__tmp291774
                                                        (##direct-structure-ref
                                                         _hd286860_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp291774
                                                         _rest286859_))))
                                            (declare (not safe))
                                            (_lp286837_ __tmp291773))
                                          (error '"Unexpected module import"
                                                 _hd286860_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest286840286848_))
                  (let ((_hd286845286870_
                         (let ()
                           (declare (not safe))
                           (##car _rest286840286848_)))
                        (_tl286846286872_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest286840286848_))))
                    (let* ((_hd286875_ _hd286845286870_)
                           (_rest286877_ _tl286846286872_))
                      (declare (not safe))
                      (_K286844286867_ _rest286877_ _hd286875_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx286813_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx286813_
                    'gx#module-context::t))
                 (let ((__tmp291787
                        (##structure-ref
                         _ctx286813_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp291787)))
            '#!void
            (let* ((_ht286815_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id286817_
                    (##structure-ref
                     _ctx286813_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod286819_
                    (let ()
                      (declare (not safe))
                      (table-ref _ht286815_ _id286817_ '#f))))
              (let ((_$e286822_ _mod286819_))
                (if _$e286822_
                    _$e286822_
                    (let* ((_mod286825_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx286813_)))
                           (_val286830_
                            (let ((_$e286827_ _mod286825_))
                              (if _$e286827_ _$e286827_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (table-set! _ht286815_ _id286817_ _val286830_))
                      _val286830_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx286811_)
        (if (##structure-ref _ctx286811_ '1 gx#expander-context::t '#f)
            (let ((__tmp291788
                   (##structure-ref
                    _ctx286811_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp291788))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id286788_)
        (letrec ((_catch-e286790_
                  (lambda (_exn286809_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id286788_))
                          (display-exception _exn286809_))
                        '#!void)
                    '#f))
                 (_import-e286791_
                  (lambda ()
                    (let* ((_str-id286794_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id286788_))
                             '".ssxi"))
                           (_artefact-path286802_
                            (let ((_odir286795286797_
                                   (gxc#current-compile-output-dir)))
                              (if _odir286795286797_
                                  (let ((_odir286800_ _odir286795286797_))
                                    (path-expand
                                     (string-append _str-id286794_ '".ss")
                                     _odir286800_))
                                  '#f)))
                           (_library-path286804_
                            (string->symbol
                             (string-append '":" _str-id286794_ '".ss")))
                           (_ssxi-path286806_
                            (if (and _artefact-path286802_
                                     (file-exists? _artefact-path286802_))
                                _artefact-path286802_
                                _library-path286804_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path286806_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path286806_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e286790_ _import-e286791_)))))
    (define gxc#optimize-source
      (lambda (_stx286779_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx286779_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx286779_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx286779_))
        (let* ((_stx286781_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx286779_)))
               (_stx286783_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx286781_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx286783_))
          (let ((_stx286786_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx286783_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx286786_)))))
    (define gxc#&generate-ssxi
      (make-promise
       (lambda ()
         (let ((_tbl286776_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp291789 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-copy! _tbl286776_ __tmp291789))
           (let ()
             (declare (not safe))
             (table-set! _tbl286776_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl286776_
              '%#begin-syntax
              gxc#generate-ssxi-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl286776_ '%#module gxc#generate-ssxi-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl286776_
              '%#define-values
              gxc#generate-ssxi-define-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl286776_ '%#call gxc#generate-ssxi-call%))
           _tbl286776_))))
    (define gxc#apply-generate-ssxi
      (lambda (_stx286759_ . _args286761_)
        (let ((__tmp291791
               (lambda ()
                 (declare (not safe))
                 (if (null? _args286761_)
                     (gxc#compile-e__0 _stx286759_)
                     (let ((_arg1286766_ (car _args286761_))
                           (_rest286768_ (cdr _args286761_)))
                       (if (null? _rest286768_)
                           (gxc#compile-e__1 _stx286759_ _arg1286766_)
                           (let ((_arg2286771_ (car _rest286768_))
                                 (_rest286773_ (cdr _rest286768_)))
                             (if (null? _rest286773_)
                                 (gxc#compile-e__2
                                  _stx286759_
                                  _arg1286766_
                                  _arg2286771_)
                                 (apply gxc#compile-e
                                        _stx286759_
                                        _arg1286766_
                                        _arg2286771_
                                        _rest286773_))))))))
              (__tmp291790 (force gxc#&generate-ssxi)))
          (declare (not safe))
          (call-with-parameters
           __tmp291791
           gxc#current-compile-methods
           __tmp291790))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_stx286720_)
        (let* ((_g286722286732_
                (lambda (_g286723286729_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g286723286729_))))
               (_g286721286756_
                (lambda (_g286723286735_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g286723286735_))
                      (let ((_e286727286737_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g286723286735_))))
                        (let ((_hd286726286740_
                               (let ()
                                 (declare (not safe))
                                 (##car _e286727286737_)))
                              (_tl286725286742_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e286727286737_))))
                          ((lambda (_L286745_)
                             (let ((__tmp291794
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _stx286720_))))
                                   (__tmp291792
                                    (let ((__tmp291793
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp291793 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp291794
                                gx#current-expander-phi
                                __tmp291792)))
                           _tl286725286742_)))
                      (let ()
                        (declare (not safe))
                        (_g286722286732_ _g286723286735_))))))
          (declare (not safe))
          (_g286721286756_ _stx286720_))))
    (define gxc#generate-ssxi-module%
      (lambda (_stx286660_)
        (let* ((_g286662286676_
                (lambda (_g286663286673_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g286663286673_))))
               (_g286661286717_
                (lambda (_g286663286679_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g286663286679_))
                      (let ((_e286668286681_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g286663286679_))))
                        (let ((_hd286667286684_
                               (let ()
                                 (declare (not safe))
                                 (##car _e286668286681_)))
                              (_tl286666286686_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e286668286681_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl286666286686_))
                              (let ((_e286671286689_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl286666286686_))))
                                (let ((_hd286670286692_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e286671286689_)))
                                      (_tl286669286694_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e286671286689_))))
                                  ((lambda (_L286697_ _L286698_)
                                     (let* ((_ctx286711_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L286698_)))
                                            (_code286713_
                                             (##structure-ref
                                              _ctx286711_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp291795
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _code286713_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp291795
                                          gx#current-expander-context
                                          _ctx286711_))))
                                   _tl286669286694_
                                   _hd286670286692_)))
                              (let ()
                                (declare (not safe))
                                (_g286662286676_ _g286663286679_)))))
                      (let ()
                        (declare (not safe))
                        (_g286662286676_ _g286663286679_))))))
          (declare (not safe))
          (_g286661286717_ _stx286660_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_stx286470_)
        (letrec ((_generate-e286472_
                  (lambda (_id286649_)
                    (let* ((_sym286651_
                            (if (let ((__tmp291796
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp291796))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id286649_))
                                '#f))
                           (_$e286653_
                            (if _sym286651_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym286651_))
                                '#f)))
                      (if _$e286653_
                          ((lambda (_type286656_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym286651_))
                             (let* ((_typedecl286658_
                                     (let ((__method291765
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type286656_
                                               'typedecl))))
                                       (if __method291765
                                           (__method291765 _type286656_)
                                           (error '"Missing method"
                                                  _type286656_
                                                  'typedecl))))
                                    (__tmp291797
                                     (let ((__tmp291798
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl286658_ '()))))
                                       (declare (not safe))
                                       (cons _sym286651_ __tmp291798))))
                               (declare (not safe))
                               (cons 'declare-type __tmp291797)))
                           _$e286653_)
                          '(begin))))))
          (let* ((___stx291463291464_ _stx286470_)
                 (_g286475286513_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx291463291464_)))))
            (let ((___kont291465291466_
                   (lambda (_L286631_)
                     (let ()
                       (declare (not safe))
                       (_generate-e286472_ _L286631_))))
                  (___kont291467291468_
                   (lambda (_L286566_)
                     (let ((_types286592_
                            (map _generate-e286472_
                                 (let ((__tmp291799
                                        (lambda (_g286584286587_
                                                 _g286585286589_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g286584286587_
                                                  _g286585286589_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp291799 '() _L286566_)))))
                       (declare (not safe))
                       (cons 'begin _types286592_)))))
              (let ((___match291518291519_
                     (lambda (_e286493286518_
                              _hd286492286521_
                              _tl286491286523_
                              _e286496286526_
                              _hd286495286529_
                              _tl286494286531_
                              ___splice291469291470_
                              _target286497286534_
                              _tl286499286536_)
                       (letrec ((_loop286500286539_
                                 (lambda (_hd286498286542_ _id286504286544_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd286498286542_))
                                       (let ((_e286501286547_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd286498286542_))))
                                         (let ((_lp-tl286503286552_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e286501286547_)))
                                               (_lp-hd286502286550_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e286501286547_))))
                                           (let ((__tmp291800
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd286502286550_
                                                          _id286504286544_))))
                                             (declare (not safe))
                                             (_loop286500286539_
                                              _lp-tl286503286552_
                                              __tmp291800))))
                                       (let ((_id286505286555_
                                              (reverse _id286504286544_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl286494286531_))
                                             (let ((_e286508286558_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl286494286531_))))
                                               (let ((_tl286506286563_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e286508286558_)))
                                                     (_hd286507286561_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e286508286558_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl286506286563_))
                                                     (___kont291467291468_
                                                      _id286505286555_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g286475286513_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g286475286513_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop286500286539_ _target286497286534_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx291463291464_))
                    (let ((_e286480286599_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx291463291464_))))
                      (let ((_tl286478286604_
                             (let ()
                               (declare (not safe))
                               (##cdr _e286480286599_)))
                            (_hd286479286602_
                             (let ()
                               (declare (not safe))
                               (##car _e286480286599_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl286478286604_))
                            (let ((_e286483286607_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl286478286604_))))
                              (let ((_tl286481286612_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e286483286607_)))
                                    (_hd286482286610_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e286483286607_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd286482286610_))
                                    (let ((_e286486286615_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd286482286610_))))
                                      (let ((_tl286484286620_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e286486286615_)))
                                            (_hd286485286618_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e286486286615_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl286484286620_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl286481286612_))
                                                (let ((_e286489286623_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl286481286612_))))
                                                  (let ((_tl286487286628_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e286489286623_)))
                                                        (_hd286488286626_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e286489286623_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl286487286628_))
                                                        (___kont291465291466_
                                                         _hd286485286618_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd286482286610_))
                                                            (let ((___splice291469291470_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd286482286610_ '0))))
                      (let ((_tl286499286536_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice291469291470_ '1)))
                            (_target286497286534_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice291469291470_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl286499286536_))
                            (___match291518291519_
                             _e286480286599_
                             _hd286479286602_
                             _tl286478286604_
                             _e286483286607_
                             _hd286482286610_
                             _tl286481286612_
                             ___splice291469291470_
                             _target286497286534_
                             _tl286499286536_)
                            (let () (declare (not safe)) (_g286475286513_)))))
                    (let () (declare (not safe)) (_g286475286513_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd286482286610_))
                                                    (let ((___splice291469291470_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd286482286610_
                                                              '0))))
                                                      (let ((_tl286499286536_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice291469291470_ '1)))
                    (_target286497286534_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice291469291470_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl286499286536_))
                    (___match291518291519_
                     _e286480286599_
                     _hd286479286602_
                     _tl286478286604_
                     _e286483286607_
                     _hd286482286610_
                     _tl286481286612_
                     ___splice291469291470_
                     _target286497286534_
                     _tl286499286536_)
                    (let () (declare (not safe)) (_g286475286513_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g286475286513_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd286482286610_))
                                                (let ((___splice291469291470_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd286482286610_
                                                          '0))))
                                                  (let ((_tl286499286536_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice291469291470_
                                                            '1)))
                                                        (_target286497286534_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice291469291470_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl286499286536_))
                                                        (___match291518291519_
                                                         _e286480286599_
                                                         _hd286479286602_
                                                         _tl286478286604_
                                                         _e286483286607_
                                                         _hd286482286610_
                                                         _tl286481286612_
                                                         ___splice291469291470_
                                                         _target286497286534_
                                                         _tl286499286536_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g286475286513_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g286475286513_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd286482286610_))
                                        (let ((___splice291469291470_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd286482286610_
                                                  '0))))
                                          (let ((_tl286499286536_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice291469291470_
                                                    '1)))
                                                (_target286497286534_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice291469291470_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl286499286536_))
                                                (___match291518291519_
                                                 _e286480286599_
                                                 _hd286479286602_
                                                 _tl286478286604_
                                                 _e286483286607_
                                                 _hd286482286610_
                                                 _tl286481286612_
                                                 ___splice291469291470_
                                                 _target286497286534_
                                                 _tl286499286536_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g286475286513_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g286475286513_))))))
                            (let () (declare (not safe)) (_g286475286513_)))))
                    (let () (declare (not safe)) (_g286475286513_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_stx286024_)
        (let* ((___stx291521291522_ _stx286024_)
               (_g286028286130_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx291521291522_)))))
          (let ((___kont291523291524_
                 (lambda (_L286420_ _L286421_ _L286422_ _L286423_ _L286424_)
                   (let ((__tmp291801
                          (let ((__tmp291808
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L286423_)))
                                (__tmp291802
                                 (let ((__tmp291807
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L286422_)))
                                       (__tmp291803
                                        (let ((__tmp291806
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L286421_)))
                                              (__tmp291804
                                               (let ((__tmp291805
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L286420_))))
                                                 (declare (not safe))
                                                 (cons __tmp291805 '()))))
                                          (declare (not safe))
                                          (cons __tmp291806 __tmp291804))))
                                   (declare (not safe))
                                   (cons __tmp291807 __tmp291803))))
                            (declare (not safe))
                            (cons __tmp291808 __tmp291802))))
                     (declare (not safe))
                     (cons 'declare-method __tmp291801))))
                (___kont291525291526_
                 (lambda (_L286246_ _L286247_ _L286248_ _L286249_)
                   (let ((__tmp291809
                          (let ((__tmp291815
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L286248_)))
                                (__tmp291810
                                 (let ((__tmp291814
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L286247_)))
                                       (__tmp291811
                                        (let ((__tmp291813
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L286246_)))
                                              (__tmp291812
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp291813 __tmp291812))))
                                   (declare (not safe))
                                   (cons __tmp291814 __tmp291811))))
                            (declare (not safe))
                            (cons __tmp291815 __tmp291810))))
                     (declare (not safe))
                     (cons 'declare-method __tmp291809))))
                (___kont291527291528_ (lambda () '(begin))))
            (let ((___match291656291657_
                   (lambda (_e286037286292_
                            _hd286036286295_
                            _tl286035286297_
                            _e286040286300_
                            _hd286039286303_
                            _tl286038286305_
                            _e286043286308_
                            _hd286042286311_
                            _tl286041286313_
                            _e286046286316_
                            _hd286045286319_
                            _tl286044286321_
                            _e286049286324_
                            _hd286048286327_
                            _tl286047286329_
                            _e286052286332_
                            _hd286051286335_
                            _tl286050286337_
                            _e286055286340_
                            _hd286054286343_
                            _tl286053286345_
                            _e286058286348_
                            _hd286057286351_
                            _tl286056286353_
                            _e286061286356_
                            _hd286060286359_
                            _tl286059286361_
                            _e286064286364_
                            _hd286063286367_
                            _tl286062286369_
                            _e286067286372_
                            _hd286066286375_
                            _tl286065286377_
                            _e286070286380_
                            _hd286069286383_
                            _tl286068286385_
                            _e286073286388_
                            _hd286072286391_
                            _tl286071286393_
                            _e286076286396_
                            _hd286075286399_
                            _tl286074286401_
                            _e286079286404_
                            _hd286078286407_
                            _tl286077286409_
                            _e286082286412_
                            _hd286081286415_
                            _tl286080286417_)
                     (let ((_L286420_ _hd286081286415_)
                           (_L286421_ _hd286072286391_)
                           (_L286422_ _hd286063286367_)
                           (_L286423_ _hd286054286343_)
                           (_L286424_ _hd286045286319_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L286424_
                              'bind-method!))
                           (___kont291523291524_
                            _L286420_
                            _L286421_
                            _L286422_
                            _L286423_
                            _L286424_)
                           (___kont291527291528_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx291521291522_))
                  (let ((_e286037286292_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx291521291522_))))
                    (let ((_tl286035286297_
                           (let ()
                             (declare (not safe))
                             (##cdr _e286037286292_)))
                          (_hd286036286295_
                           (let ()
                             (declare (not safe))
                             (##car _e286037286292_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl286035286297_))
                          (let ((_e286040286300_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl286035286297_))))
                            (let ((_tl286038286305_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e286040286300_)))
                                  (_hd286039286303_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e286040286300_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd286039286303_))
                                  (let ((_e286043286308_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd286039286303_))))
                                    (let ((_tl286041286313_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e286043286308_)))
                                          (_hd286042286311_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e286043286308_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd286042286311_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd286042286311_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl286041286313_))
                                                  (let ((_e286046286316_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl286041286313_))))
                                                    (let ((_tl286044286321_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e286046286316_)))
                                                          (_hd286045286319_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e286046286316_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl286044286321_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl286038286305_))
                      (let ((_e286049286324_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl286038286305_))))
                        (let ((_tl286047286329_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e286049286324_)))
                              (_hd286048286327_
                               (let ()
                                 (declare (not safe))
                                 (##car _e286049286324_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd286048286327_))
                              (let ((_e286052286332_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd286048286327_))))
                                (let ((_tl286050286337_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e286052286332_)))
                                      (_hd286051286335_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e286052286332_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd286051286335_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd286051286335_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl286050286337_))
                                              (let ((_e286055286340_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl286050286337_))))
                                                (let ((_tl286053286345_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e286055286340_)))
                                                      (_hd286054286343_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e286055286340_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl286053286345_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl286047286329_))
                                                          (let ((_e286058286348_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl286047286329_))))
                    (let ((_tl286056286353_
                           (let ()
                             (declare (not safe))
                             (##cdr _e286058286348_)))
                          (_hd286057286351_
                           (let ()
                             (declare (not safe))
                             (##car _e286058286348_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd286057286351_))
                          (let ((_e286061286356_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd286057286351_))))
                            (let ((_tl286059286361_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e286061286356_)))
                                  (_hd286060286359_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e286061286356_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd286060286359_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd286060286359_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl286059286361_))
                                          (let ((_e286064286364_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl286059286361_))))
                                            (let ((_tl286062286369_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e286064286364_)))
                                                  (_hd286063286367_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e286064286364_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl286062286369_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl286056286353_))
                                                      (let ((_e286067286372_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl286056286353_))))
                (let ((_tl286065286377_
                       (let () (declare (not safe)) (##cdr _e286067286372_)))
                      (_hd286066286375_
                       (let () (declare (not safe)) (##car _e286067286372_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd286066286375_))
                      (let ((_e286070286380_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd286066286375_))))
                        (let ((_tl286068286385_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e286070286380_)))
                              (_hd286069286383_
                               (let ()
                                 (declare (not safe))
                                 (##car _e286070286380_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd286069286383_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd286069286383_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl286068286385_))
                                      (let ((_e286073286388_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl286068286385_))))
                                        (let ((_tl286071286393_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e286073286388_)))
                                              (_hd286072286391_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e286073286388_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl286071286393_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl286065286377_))
                                                  (let ((_e286076286396_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl286065286377_))))
                                                    (let ((_tl286074286401_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e286076286396_)))
                                                          (_hd286075286399_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e286076286396_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd286075286399_))
                                                          (let ((_e286079286404_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd286075286399_))))
                    (let ((_tl286077286409_
                           (let ()
                             (declare (not safe))
                             (##cdr _e286079286404_)))
                          (_hd286078286407_
                           (let ()
                             (declare (not safe))
                             (##car _e286079286404_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd286078286407_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd286078286407_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl286077286409_))
                                  (let ((_e286082286412_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl286077286409_))))
                                    (let ((_tl286080286417_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e286082286412_)))
                                          (_hd286081286415_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e286082286412_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl286080286417_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl286074286401_))
                                              (___match291656291657_
                                               _e286037286292_
                                               _hd286036286295_
                                               _tl286035286297_
                                               _e286040286300_
                                               _hd286039286303_
                                               _tl286038286305_
                                               _e286043286308_
                                               _hd286042286311_
                                               _tl286041286313_
                                               _e286046286316_
                                               _hd286045286319_
                                               _tl286044286321_
                                               _e286049286324_
                                               _hd286048286327_
                                               _tl286047286329_
                                               _e286052286332_
                                               _hd286051286335_
                                               _tl286050286337_
                                               _e286055286340_
                                               _hd286054286343_
                                               _tl286053286345_
                                               _e286058286348_
                                               _hd286057286351_
                                               _tl286056286353_
                                               _e286061286356_
                                               _hd286060286359_
                                               _tl286059286361_
                                               _e286064286364_
                                               _hd286063286367_
                                               _tl286062286369_
                                               _e286067286372_
                                               _hd286066286375_
                                               _tl286065286377_
                                               _e286070286380_
                                               _hd286069286383_
                                               _tl286068286385_
                                               _e286073286388_
                                               _hd286072286391_
                                               _tl286071286393_
                                               _e286076286396_
                                               _hd286075286399_
                                               _tl286074286401_
                                               _e286079286404_
                                               _hd286078286407_
                                               _tl286077286409_
                                               _e286082286412_
                                               _hd286081286415_
                                               _tl286080286417_)
                                              (___kont291527291528_))
                                          (___kont291527291528_))))
                                  (___kont291527291528_))
                              (___kont291527291528_))
                          (___kont291527291528_))))
                  (___kont291527291528_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl286065286377_))
                                                      (if (let ((__tmp291816
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp291816 'bind-method!))
                  (let ((_L286246_ _hd286072286391_)
                        (_L286247_ _hd286063286367_)
                        (_L286248_ _hd286054286343_)
                        (_L286249_ _hd286045286319_))
                    (___kont291525291526_
                     _L286246_
                     _L286247_
                     _L286248_
                     _L286249_))
                  (___kont291527291528_))
              (___kont291527291528_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont291527291528_))))
                                      (___kont291527291528_))
                                  (___kont291527291528_))
                              (___kont291527291528_))))
                      (___kont291527291528_))))
              (___kont291527291528_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont291527291528_))))
                                          (___kont291527291528_))
                                      (___kont291527291528_))
                                  (___kont291527291528_))))
                          (___kont291527291528_))))
                  (___kont291527291528_))
              (___kont291527291528_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont291527291528_))
                                          (___kont291527291528_))
                                      (___kont291527291528_))))
                              (___kont291527291528_))))
                      (___kont291527291528_))
                  (___kont291527291528_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont291527291528_))
                                              (___kont291527291528_))
                                          (___kont291527291528_))))
                                  (___kont291527291528_))))
                          (___kont291527291528_))))
                  (___kont291527291528_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self286000_)
        (let* ((_self286001286007_ _self286000_)
               (_E286003286011_
                (lambda () (error '"No clause matching" _self286001286007_)))
               (_K286004286016_
                (lambda (_alias-id286014_)
                  (let ((__tmp291817
                         (let ()
                           (declare (not safe))
                           (cons _alias-id286014_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp291817)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self286001286007_ 'gxc#!alias::t))
              (let* ((_e286005286019_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self286001286007_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id286022_ _e286005286019_))
                (declare (not safe))
                (_K286004286016_ _alias-id286022_))
              (let () (declare (not safe)) (_E286003286011_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self285791_)
        (let* ((_self285792285807_ _self285791_)
               (_E285794285811_
                (lambda () (error '"No clause matching" _self285792285807_)))
               (_K285795285825_
                (lambda (_methods285814_
                         _metaclass285815_
                         _final?285816_
                         _struct?285817_
                         _constructor285818_
                         _fields285819_
                         _slots285820_
                         _precendence-list285821_
                         _super285822_
                         _id285823_)
                  (let ((__tmp291818
                         (let ((__tmp291819
                                (let ((__tmp291820
                                       (let ((__tmp291821
                                              (let ((__tmp291822
                                                     (let ((__tmp291823
                                                            (let ((__tmp291824
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp291825
                                  (let ((__tmp291826
                                         (let ((__tmp291827
                                                (let ((__tmp291828
                                                       (if _methods285814_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (table->list
                                                              _methods285814_))
                                                           '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp291828 '()))))
                                           (declare (not safe))
                                           (cons _metaclass285815_
                                                 __tmp291827))))
                                    (declare (not safe))
                                    (cons _final?285816_ __tmp291826))))
                             (declare (not safe))
                             (cons _struct?285817_ __tmp291825))))
                      (declare (not safe))
                      (cons _constructor285818_ __tmp291824))))
               (declare (not safe))
               (cons _fields285819_ __tmp291823))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots285820_
                                                      __tmp291822))))
                                         (declare (not safe))
                                         (cons _precendence-list285821_
                                               __tmp291821))))
                                  (declare (not safe))
                                  (cons _super285822_ __tmp291820))))
                           (declare (not safe))
                           (cons _id285823_ __tmp291819))))
                    (declare (not safe))
                    (cons '@class __tmp291818)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self285792285807_ 'gxc#!class::t))
              (let* ((_e285796285828_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285792285807_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id285831_ _e285796285828_)
                     (_e285797285833_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285792285807_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super285836_ _e285797285833_)
                     (_e285798285838_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285792285807_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list285841_ _e285798285838_)
                     (_e285799285843_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285792285807_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots285846_ _e285799285843_)
                     (_e285800285848_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285792285807_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields285851_ _e285800285848_)
                     (_e285801285853_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285792285807_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor285856_ _e285801285853_)
                     (_e285802285858_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285792285807_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?285861_ _e285802285858_)
                     (_e285803285863_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285792285807_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?285866_ _e285803285863_)
                     (_e285804285868_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285792285807_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_metaclass285871_ _e285804285868_)
                     (_e285805285873_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285792285807_
                         '10
                         gxc#!class::t
                         '#f)))
                     (_methods285876_ _e285805285873_))
                (declare (not safe))
                (_K285795285825_
                 _methods285876_
                 _metaclass285871_
                 _final?285866_
                 _struct?285861_
                 _constructor285856_
                 _fields285851_
                 _slots285846_
                 _precendence-list285841_
                 _super285836_
                 _id285831_))
              (let () (declare (not safe)) (_E285794285811_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self285645_)
        (let* ((_self285646285652_ _self285645_)
               (_E285648285656_
                (lambda () (error '"No clause matching" _self285646285652_)))
               (_K285649285661_
                (lambda (_klass-id285659_)
                  (let ((__tmp291829
                         (let ()
                           (declare (not safe))
                           (cons _klass-id285659_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp291829)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self285646285652_
                 'gxc#!predicate::t))
              (let* ((_e285650285664_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285646285652_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id285667_ _e285650285664_))
                (declare (not safe))
                (_K285649285661_ _klass-id285667_))
              (let () (declare (not safe)) (_E285648285656_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!predicate::t 'typedecl gxc#!predicate::typedecl '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self285499_)
        (let* ((_self285500285506_ _self285499_)
               (_E285502285510_
                (lambda () (error '"No clause matching" _self285500285506_)))
               (_K285503285515_
                (lambda (_klass-id285513_)
                  (let ((__tmp291830
                         (let ()
                           (declare (not safe))
                           (cons _klass-id285513_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp291830)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self285500285506_
                 'gxc#!constructor::t))
              (let* ((_e285504285518_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285500285506_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id285521_ _e285504285518_))
                (declare (not safe))
                (_K285503285515_ _klass-id285521_))
              (let () (declare (not safe)) (_E285502285510_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self285339_)
        (let* ((_self285340285348_ _self285339_)
               (_E285342285352_
                (lambda () (error '"No clause matching" _self285340285348_)))
               (_K285343285359_
                (lambda (_checked?285355_ _slot285356_ _klass-id285357_)
                  (let ((__tmp291831
                         (let ((__tmp291832
                                (let ((__tmp291833
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?285355_ '()))))
                                  (declare (not safe))
                                  (cons _slot285356_ __tmp291833))))
                           (declare (not safe))
                           (cons _klass-id285357_ __tmp291832))))
                    (declare (not safe))
                    (cons '@accessor __tmp291831)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self285340285348_
                 'gxc#!accessor::t))
              (let* ((_e285344285362_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285340285348_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id285365_ _e285344285362_)
                     (_e285345285367_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285340285348_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot285370_ _e285345285367_)
                     (_e285346285372_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285340285348_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?285375_ _e285346285372_))
                (declare (not safe))
                (_K285343285359_
                 _checked?285375_
                 _slot285370_
                 _klass-id285365_))
              (let () (declare (not safe)) (_E285342285352_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self285179_)
        (let* ((_self285180285188_ _self285179_)
               (_E285182285192_
                (lambda () (error '"No clause matching" _self285180285188_)))
               (_K285183285199_
                (lambda (_checked?285195_ _slot285196_ _klass-id285197_)
                  (let ((__tmp291834
                         (let ((__tmp291835
                                (let ((__tmp291836
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?285195_ '()))))
                                  (declare (not safe))
                                  (cons _slot285196_ __tmp291836))))
                           (declare (not safe))
                           (cons _klass-id285197_ __tmp291835))))
                    (declare (not safe))
                    (cons '@mutator __tmp291834)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self285180285188_ 'gxc#!mutator::t))
              (let* ((_e285184285202_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285180285188_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id285205_ _e285184285202_)
                     (_e285185285207_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285180285188_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot285210_ _e285185285207_)
                     (_e285186285212_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285180285188_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?285215_ _e285186285212_))
                (declare (not safe))
                (_K285183285199_
                 _checked?285215_
                 _slot285210_
                 _klass-id285205_))
              (let () (declare (not safe)) (_E285182285192_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self285005_)
        (let* ((_self285006285016_ _self285005_)
               (_E285008285020_
                (lambda () (error '"No clause matching" _self285006285016_)))
               (_K285009285031_
                (lambda (_typedecl285023_
                         _inline285024_
                         _dispatch285025_
                         _arity285026_)
                  (if _inline285024_
                      (let ((_$e285028_ _typedecl285023_))
                        (if _$e285028_
                            _$e285028_
                            (error '"Cannot generate typedecl for inline rules")))
                      (let ((__tmp291837
                             (let ((__tmp291838
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch285025_ '()))))
                               (declare (not safe))
                               (cons _arity285026_ __tmp291838))))
                        (declare (not safe))
                        (cons '@lambda __tmp291837))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self285006285016_ 'gxc#!lambda::t))
              (let* ((_e285010285034_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285006285016_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e285011285037_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285006285016_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity285040_ _e285011285037_)
                     (_e285012285042_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285006285016_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch285045_ _e285012285042_)
                     (_e285013285047_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285006285016_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline285050_ _e285013285047_)
                     (_e285014285052_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self285006285016_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl285055_ _e285014285052_))
                (declare (not safe))
                (_K285009285031_
                 _typedecl285055_
                 _inline285050_
                 _dispatch285045_
                 _arity285040_))
              (let () (declare (not safe)) (_E285008285020_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self284816_)
        (letrec ((_clause-e284818_
                  (lambda (_clause284848_)
                    (let* ((_clause284849284857_ _clause284848_)
                           (_E284851284861_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause284849284857_)))
                           (_K284852284867_
                            (lambda (_dispatch284864_ _arity284865_)
                              (let ((__tmp291839
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch284864_ '()))))
                                (declare (not safe))
                                (cons _arity284865_ __tmp291839)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause284849284857_
                             'gxc#!lambda::t))
                          (let* ((_e284853284870_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause284849284857_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e284854284873_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause284849284857_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity284876_ _e284854284873_)
                                 (_e284855284878_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause284849284857_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch284881_ _e284855284878_))
                            (declare (not safe))
                            (_K284852284867_ _dispatch284881_ _arity284876_))
                          (let () (declare (not safe)) (_E284851284861_)))))))
          (let* ((_self284819284826_ _self284816_)
                 (_E284821284830_
                  (lambda () (error '"No clause matching" _self284819284826_)))
                 (_K284822284837_
                  (lambda (_clauses284833_)
                    (let ((_clauses284835_
                           (map _clause-e284818_ _clauses284833_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses284835_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self284819284826_
                   'gxc#!case-lambda::t))
                (let* ((_e284823284840_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self284819284826_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e284824284843_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self284819284826_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses284846_ _e284824284843_))
                  (declare (not safe))
                  (_K284822284837_ _clauses284846_))
                (let () (declare (not safe)) (_E284821284830_)))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self284659_)
        (let* ((_self284660284668_ _self284659_)
               (_E284662284672_
                (lambda () (error '"No clause matching" _self284660284668_)))
               (_K284663284678_
                (lambda (_dispatch284675_ _table284676_)
                  (let ((__tmp291840
                         (let ((__tmp291841
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch284675_ '()))))
                           (declare (not safe))
                           (cons _table284676_ __tmp291841))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp291840)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self284660284668_
                 'gxc#!kw-lambda::t))
              (let* ((_e284664284681_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284660284668_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e284665284684_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284660284668_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table284687_ _e284665284684_)
                     (_e284666284689_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284660284668_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch284692_ _e284666284689_))
                (declare (not safe))
                (_K284663284678_ _dispatch284692_ _table284687_))
              (let () (declare (not safe)) (_E284662284672_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self284502_)
        (let* ((_self284503284511_ _self284502_)
               (_E284505284515_
                (lambda () (error '"No clause matching" _self284503284511_)))
               (_K284506284521_
                (lambda (_main284518_ _keys284519_)
                  (let ((__tmp291842
                         (let ((__tmp291843
                                (let ()
                                  (declare (not safe))
                                  (cons _main284518_ '()))))
                           (declare (not safe))
                           (cons _keys284519_ __tmp291843))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp291842)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self284503284511_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e284507284524_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284503284511_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e284508284527_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284503284511_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys284530_ _e284508284527_)
                     (_e284509284532_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self284503284511_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main284535_ _e284509284532_))
                (declare (not safe))
                (_K284506284521_ _main284535_ _keys284530_))
              (let () (declare (not safe)) (_E284505284515_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
