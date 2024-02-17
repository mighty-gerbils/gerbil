(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1708194438)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info
             (let ((__obj281220
                    (let ()
                      (declare (not safe))
                      (##structure gxc#optimizer-info::t '#f '#f '#f))))
               (gxc#optimizer-info:::init! __obj281220)
               __obj281220)))))
    (define gxc#optimize!
      (lambda (_ctx276846_)
        (let ((__tmp281224
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _ctx276846_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi))
                 (let ((__tmp281226
                        (##structure-ref
                         (gxc#current-compile-optimizer-info)
                         '2
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp281225
                        (##structure-ref
                         _ctx276846_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (table-set! __tmp281226 __tmp281225 '#t))
                 (let ((_code276849_
                        (let ((__tmp281227
                               (##structure-ref
                                _ctx276846_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp281227))))
                   (##structure-set!
                    _ctx276846_
                    _code276849_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp281223 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp281222 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters
           __tmp281224
           gxc#current-compile-mutators
           __tmp281223
           gxc#current-compile-local-type
           __tmp281222))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda ()
        (let ()
          (declare (not safe))
          (gxc#optimizer-import-ssxi-by-id 'gerbil/builtin))
        (let ((__tmp281228
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (table-set! __tmp281228 'gerbil/builtin '#t))))
    (define gxc#optimizer-load-ssxi-deps
      (lambda (_ctx276790_)
        (letrec* ((_deps276792_
                   (let* ((_imports276836_
                           (##structure-ref
                            _ctx276790_
                            '8
                            gx#module-context::t
                            '#f))
                          (_$e276838_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _ctx276790_))))
                     (if _$e276838_
                         ((lambda (_g276840276842_)
                            (let ()
                              (declare (not safe))
                              (cons _g276840276842_ _imports276836_)))
                          _$e276838_)
                         _imports276836_))))
          (let _lp276794_ ((_rest276796_ _deps276792_))
            (let* ((_rest276797276805_ _rest276796_)
                   (_else276799276813_ (lambda () '#!void))
                   (_K276801276824_
                    (lambda (_rest276816_ _hd276817_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _hd276817_
                             'gx#module-context::t))
                          (begin
                            (if (let ((__tmp281230
                                       (##structure-ref
                                        (gxc#current-compile-optimizer-info)
                                        '2
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp281229
                                       (##structure-ref
                                        _hd276817_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp281230 __tmp281229))
                                '#!void
                                (begin
                                  (let ((_$e276819_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _hd276817_))))
                                    (if _$e276819_
                                        ((lambda (_pre276822_)
                                           (let ((__tmp281231
                                                  (let ((__tmp281232
                                                         (##structure-ref
                                                          _hd276817_
                                                          '8
                                                          gx#module-context::t
                                                          '#f)))
                                                    (declare (not safe))
                                                    (cons _pre276822_
                                                          __tmp281232))))
                                             (declare (not safe))
                                             (_lp276794_ __tmp281231)))
                                         _$e276819_)
                                        (let ((__tmp281233
                                               (##structure-ref
                                                _hd276817_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_lp276794_ __tmp281233))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _hd276817_))))
                            (let ()
                              (declare (not safe))
                              (_lp276794_ _rest276816_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _hd276817_
                                 'gx#prelude-context::t))
                              (begin
                                (if (let ((__tmp281235
                                           (##structure-ref
                                            (gxc#current-compile-optimizer-info)
                                            '2
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp281234
                                           (##structure-ref
                                            _hd276817_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp281235 __tmp281234))
                                    '#!void
                                    (begin
                                      (let ((__tmp281236
                                             (##structure-ref
                                              _hd276817_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_lp276794_ __tmp281236))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi _hd276817_))))
                                (let ()
                                  (declare (not safe))
                                  (_lp276794_ _rest276816_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _hd276817_
                                     'gx#module-import::t))
                                  (let ((__tmp281237
                                         (let ((__tmp281238
                                                (##direct-structure-ref
                                                 _hd276817_
                                                 '1
                                                 gx#module-import::t
                                                 '#f)))
                                           (declare (not safe))
                                           (cons __tmp281238 _rest276816_))))
                                    (declare (not safe))
                                    (_lp276794_ __tmp281237))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _hd276817_
                                         'gx#module-export::t))
                                      (let ((__tmp281239
                                             (let ((__tmp281240
                                                    (##direct-structure-ref
                                                     _hd276817_
                                                     '1
                                                     gx#module-export::t
                                                     '#f)))
                                               (declare (not safe))
                                               (cons __tmp281240
                                                     _rest276816_))))
                                        (declare (not safe))
                                        (_lp276794_ __tmp281239))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _hd276817_
                                             'gx#import-set::t))
                                          (let ((__tmp281241
                                                 (let ((__tmp281242
                                                        (##direct-structure-ref
                                                         _hd276817_
                                                         '1
                                                         gx#import-set::t
                                                         '#f)))
                                                   (declare (not safe))
                                                   (cons __tmp281242
                                                         _rest276816_))))
                                            (declare (not safe))
                                            (_lp276794_ __tmp281241))
                                          (error '"Unexpected module import"
                                                 _hd276817_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest276797276805_))
                  (let ((_hd276802276827_
                         (let ()
                           (declare (not safe))
                           (##car _rest276797276805_)))
                        (_tl276803276829_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest276797276805_))))
                    (let* ((_hd276832_ _hd276802276827_)
                           (_rest276834_ _tl276803276829_))
                      (declare (not safe))
                      (_K276801276824_ _rest276834_ _hd276832_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_ctx276770_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _ctx276770_
                    'gx#module-context::t))
                 (let ((__tmp281243
                        (##structure-ref
                         _ctx276770_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp281243)))
            '#!void
            (let* ((_ht276772_
                    (##structure-ref
                     (gxc#current-compile-optimizer-info)
                     '2
                     gxc#optimizer-info::t
                     '#f))
                   (_id276774_
                    (##structure-ref
                     _ctx276770_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_mod276776_
                    (let ()
                      (declare (not safe))
                      (hash-get _ht276772_ _id276774_))))
              (let ((_$e276779_ _mod276776_))
                (if _$e276779_
                    _$e276779_
                    (let* ((_mod276782_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _ctx276770_)))
                           (_val276787_
                            (let ((_$e276784_ _mod276782_))
                              (if _$e276784_ _$e276784_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (table-set! _ht276772_ _id276774_ _val276787_))
                      _val276787_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_ctx276768_)
        (if (##structure-ref _ctx276768_ '1 gx#expander-context::t '#f)
            (let ((__tmp281244
                   (##structure-ref
                    _ctx276768_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp281244))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_id276745_)
        (letrec ((_catch-e276747_
                  (lambda (_exn276766_)
                    (if (gxc#current-compile-verbose)
                        (begin
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"Failed to load ssxi module for "
                             _id276745_))
                          (display-exception _exn276766_))
                        '#!void)
                    '#f))
                 (_import-e276748_
                  (lambda ()
                    (let* ((_str-id276751_
                            (string-append
                             (let ()
                               (declare (not safe))
                               (gxc#module-id->path-string _id276745_))
                             '".ssxi"))
                           (_artefact-path276759_
                            (let ((_odir276752276754_
                                   (gxc#current-compile-output-dir)))
                              (if _odir276752276754_
                                  (let ((_odir276757_ _odir276752276754_))
                                    (path-expand
                                     (string-append _str-id276751_ '".ss")
                                     _odir276757_))
                                  '#f)))
                           (_library-path276761_
                            (string->symbol
                             (string-append '":" _str-id276751_ '".ss")))
                           (_ssxi-path276763_
                            (if (and _artefact-path276759_
                                     (file-exists? _artefact-path276759_))
                                _artefact-path276759_
                                _library-path276761_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _ssxi-path276763_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _ssxi-path276763_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (with-catch _catch-e276747_ _import-e276748_)))))
    (define gxc#optimize-source
      (lambda (_stx276736_)
        (let () (declare (not safe)) (gxc#apply-collect-mutators _stx276736_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _stx276736_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _stx276736_))
        (let* ((_stx276738_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _stx276736_)))
               (_stx276740_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _stx276738_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _stx276740_))
          (let ((_stx276743_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _stx276740_))))
            (declare (not safe))
            (gxc#apply-optimize-call _stx276743_)))))
    (define gxc#&generate-ssxi
      (make-promise
       (lambda ()
         (let ((_tbl276733_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp281245 (force gxc#&generate-runtime-empty)))
             (declare (not safe))
             (hash-copy! _tbl276733_ __tmp281245))
           (let ()
             (declare (not safe))
             (table-set! _tbl276733_ '%#begin gxc#generate-runtime-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl276733_
              '%#begin-syntax
              gxc#generate-ssxi-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl276733_ '%#module gxc#generate-ssxi-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl276733_
              '%#define-values
              gxc#generate-ssxi-define-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl276733_ '%#call gxc#generate-ssxi-call%))
           _tbl276733_))))
    (define gxc#apply-generate-ssxi
      (lambda (_stx276716_ . _args276718_)
        (let ((__tmp281247
               (lambda ()
                 (declare (not safe))
                 (if (null? _args276718_)
                     (gxc#compile-e__0 _stx276716_)
                     (let ((_arg1276723_ (car _args276718_))
                           (_rest276725_ (cdr _args276718_)))
                       (if (null? _rest276725_)
                           (gxc#compile-e__1 _stx276716_ _arg1276723_)
                           (let ((_arg2276728_ (car _rest276725_))
                                 (_rest276730_ (cdr _rest276725_)))
                             (if (null? _rest276730_)
                                 (gxc#compile-e__2
                                  _stx276716_
                                  _arg1276723_
                                  _arg2276728_)
                                 (apply gxc#compile-e
                                        _stx276716_
                                        _arg1276723_
                                        _arg2276728_
                                        _rest276730_))))))))
              (__tmp281246 (force gxc#&generate-ssxi)))
          (declare (not safe))
          (call-with-parameters
           __tmp281247
           gxc#current-compile-methods
           __tmp281246))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_stx276677_)
        (let* ((_g276679276689_
                (lambda (_g276680276686_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g276680276686_))))
               (_g276678276713_
                (lambda (_g276680276692_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g276680276692_))
                      (let ((_e276682276694_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g276680276692_))))
                        (let ((_hd276683276697_
                               (let ()
                                 (declare (not safe))
                                 (##car _e276682276694_)))
                              (_tl276684276699_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e276682276694_))))
                          ((lambda (_L276702_)
                             (let ((__tmp281250
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _stx276677_))))
                                   (__tmp281248
                                    (let ((__tmp281249
                                           (gx#current-expander-phi)))
                                      (declare (not safe))
                                      (fx+ __tmp281249 '1))))
                               (declare (not safe))
                               (call-with-parameters
                                __tmp281250
                                gx#current-expander-phi
                                __tmp281248)))
                           _tl276684276699_)))
                      (let ()
                        (declare (not safe))
                        (_g276679276689_ _g276680276692_))))))
          (declare (not safe))
          (_g276678276713_ _stx276677_))))
    (define gxc#generate-ssxi-module%
      (lambda (_stx276617_)
        (let* ((_g276619276633_
                (lambda (_g276620276630_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g276620276630_))))
               (_g276618276674_
                (lambda (_g276620276636_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g276620276636_))
                      (let ((_e276623276638_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g276620276636_))))
                        (let ((_hd276624276641_
                               (let ()
                                 (declare (not safe))
                                 (##car _e276623276638_)))
                              (_tl276625276643_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e276623276638_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl276625276643_))
                              (let ((_e276626276646_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl276625276643_))))
                                (let ((_hd276627276649_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e276626276646_)))
                                      (_tl276628276651_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e276626276646_))))
                                  ((lambda (_L276654_ _L276655_)
                                     (let* ((_ctx276668_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _L276655_)))
                                            (_code276670_
                                             (##structure-ref
                                              _ctx276668_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp281251
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _code276670_)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp281251
                                          gx#current-expander-context
                                          _ctx276668_))))
                                   _tl276628276651_
                                   _hd276627276649_)))
                              (let ()
                                (declare (not safe))
                                (_g276619276633_ _g276620276636_)))))
                      (let ()
                        (declare (not safe))
                        (_g276619276633_ _g276620276636_))))))
          (declare (not safe))
          (_g276618276674_ _stx276617_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_stx276427_)
        (letrec ((_generate-e276429_
                  (lambda (_id276606_)
                    (let* ((_sym276608_
                            (if (let ((__tmp281252
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp281252))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _id276606_))
                                '#f))
                           (_$e276610_
                            (if _sym276608_
                                (let ()
                                  (declare (not safe))
                                  (gxc#optimizer-lookup-type _sym276608_))
                                '#f)))
                      (if _$e276610_
                          ((lambda (_type276613_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"generate typedecl " _sym276608_))
                             (let* ((_typedecl276615_
                                     (let ((__method281221
                                            (let ()
                                              (declare (not safe))
                                              (method-ref
                                               _type276613_
                                               'typedecl))))
                                       (if __method281221
                                           (__method281221 _type276613_)
                                           (error '"Missing method"
                                                  _type276613_
                                                  'typedecl))))
                                    (__tmp281253
                                     (let ((__tmp281254
                                            (let ()
                                              (declare (not safe))
                                              (cons _typedecl276615_ '()))))
                                       (declare (not safe))
                                       (cons _sym276608_ __tmp281254))))
                               (declare (not safe))
                               (cons 'declare-type __tmp281253)))
                           _$e276610_)
                          '(begin))))))
          (let* ((___stx280919280920_ _stx276427_)
                 (_g276432276470_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx280919280920_)))))
            (let ((___kont280921280922_
                   (lambda (_L276588_)
                     (let ()
                       (declare (not safe))
                       (_generate-e276429_ _L276588_))))
                  (___kont280923280924_
                   (lambda (_L276523_)
                     (let ((_types276549_
                            (map _generate-e276429_
                                 (let ((__tmp281255
                                        (lambda (_g276541276544_
                                                 _g276542276546_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g276541276544_
                                                  _g276542276546_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp281255 '() _L276523_)))))
                       (declare (not safe))
                       (cons 'begin _types276549_)))))
              (let ((___match280974280975_
                     (lambda (_e276448276475_
                              _hd276449276478_
                              _tl276450276480_
                              _e276451276483_
                              _hd276452276486_
                              _tl276453276488_
                              ___splice280925280926_
                              _target276454276491_
                              _tl276456276493_)
                       (letrec ((_loop276457276496_
                                 (lambda (_hd276455276499_ _id276461276501_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd276455276499_))
                                       (let ((_e276458276504_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd276455276499_))))
                                         (let ((_lp-tl276460276509_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e276458276504_)))
                                               (_lp-hd276459276507_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e276458276504_))))
                                           (let ((__tmp281256
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _lp-hd276459276507_
                                                          _id276461276501_))))
                                             (declare (not safe))
                                             (_loop276457276496_
                                              _lp-tl276460276509_
                                              __tmp281256))))
                                       (let ((_id276462276512_
                                              (reverse _id276461276501_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl276453276488_))
                                             (let ((_e276463276515_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl276453276488_))))
                                               (let ((_tl276465276520_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e276463276515_)))
                                                     (_hd276464276518_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e276463276515_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _tl276465276520_))
                                                     (___kont280923280924_
                                                      _id276462276512_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g276432276470_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g276432276470_))))))))
                         (let ()
                           (declare (not safe))
                           (_loop276457276496_ _target276454276491_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx280919280920_))
                    (let ((_e276435276556_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx280919280920_))))
                      (let ((_tl276437276561_
                             (let ()
                               (declare (not safe))
                               (##cdr _e276435276556_)))
                            (_hd276436276559_
                             (let ()
                               (declare (not safe))
                               (##car _e276435276556_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl276437276561_))
                            (let ((_e276438276564_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl276437276561_))))
                              (let ((_tl276440276569_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e276438276564_)))
                                    (_hd276439276567_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e276438276564_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd276439276567_))
                                    (let ((_e276441276572_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd276439276567_))))
                                      (let ((_tl276443276577_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e276441276572_)))
                                            (_hd276442276575_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e276441276572_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl276443276577_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl276440276569_))
                                                (let ((_e276444276580_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl276440276569_))))
                                                  (let ((_tl276446276585_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e276444276580_)))
                                                        (_hd276445276583_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e276444276580_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl276446276585_))
                                                        (___kont280921280922_
                                                         _hd276442276575_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _hd276439276567_))
                                                            (let ((___splice280925280926_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _hd276439276567_ '0))))
                      (let ((_tl276456276493_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice280925280926_ '1)))
                            (_target276454276491_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice280925280926_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl276456276493_))
                            (___match280974280975_
                             _e276435276556_
                             _hd276436276559_
                             _tl276437276561_
                             _e276438276564_
                             _hd276439276567_
                             _tl276440276569_
                             ___splice280925280926_
                             _target276454276491_
                             _tl276456276493_)
                            (let () (declare (not safe)) (_g276432276470_)))))
                    (let () (declare (not safe)) (_g276432276470_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _hd276439276567_))
                                                    (let ((___splice280925280926_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _hd276439276567_
                                                              '0))))
                                                      (let ((_tl276456276493_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice280925280926_ '1)))
                    (_target276454276491_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice280925280926_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl276456276493_))
                    (___match280974280975_
                     _e276435276556_
                     _hd276436276559_
                     _tl276437276561_
                     _e276438276564_
                     _hd276439276567_
                     _tl276440276569_
                     ___splice280925280926_
                     _target276454276491_
                     _tl276456276493_)
                    (let () (declare (not safe)) (_g276432276470_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g276432276470_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _hd276439276567_))
                                                (let ((___splice280925280926_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _hd276439276567_
                                                          '0))))
                                                  (let ((_tl276456276493_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice280925280926_
                                                            '1)))
                                                        (_target276454276491_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice280925280926_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl276456276493_))
                                                        (___match280974280975_
                                                         _e276435276556_
                                                         _hd276436276559_
                                                         _tl276437276561_
                                                         _e276438276564_
                                                         _hd276439276567_
                                                         _tl276440276569_
                                                         ___splice280925280926_
                                                         _target276454276491_
                                                         _tl276456276493_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g276432276470_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g276432276470_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _hd276439276567_))
                                        (let ((___splice280925280926_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _hd276439276567_
                                                  '0))))
                                          (let ((_tl276456276493_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice280925280926_
                                                    '1)))
                                                (_target276454276491_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice280925280926_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl276456276493_))
                                                (___match280974280975_
                                                 _e276435276556_
                                                 _hd276436276559_
                                                 _tl276437276561_
                                                 _e276438276564_
                                                 _hd276439276567_
                                                 _tl276440276569_
                                                 ___splice280925280926_
                                                 _target276454276491_
                                                 _tl276456276493_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g276432276470_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g276432276470_))))))
                            (let () (declare (not safe)) (_g276432276470_)))))
                    (let () (declare (not safe)) (_g276432276470_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_stx275981_)
        (let* ((___stx280977280978_ _stx275981_)
               (_g275985276087_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx280977280978_)))))
          (let ((___kont280979280980_
                 (lambda (_L276377_ _L276378_ _L276379_ _L276380_ _L276381_)
                   (let ((__tmp281257
                          (let ((__tmp281264
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L276380_)))
                                (__tmp281258
                                 (let ((__tmp281263
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L276379_)))
                                       (__tmp281259
                                        (let ((__tmp281262
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L276378_)))
                                              (__tmp281260
                                               (let ((__tmp281261
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e _L276377_))))
                                                 (declare (not safe))
                                                 (cons __tmp281261 '()))))
                                          (declare (not safe))
                                          (cons __tmp281262 __tmp281260))))
                                   (declare (not safe))
                                   (cons __tmp281263 __tmp281259))))
                            (declare (not safe))
                            (cons __tmp281264 __tmp281258))))
                     (declare (not safe))
                     (cons 'declare-method __tmp281257))))
                (___kont280981280982_
                 (lambda (_L276203_ _L276204_ _L276205_ _L276206_)
                   (let ((__tmp281265
                          (let ((__tmp281271
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L276205_)))
                                (__tmp281266
                                 (let ((__tmp281270
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _L276204_)))
                                       (__tmp281267
                                        (let ((__tmp281269
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L276203_)))
                                              (__tmp281268
                                               (let ()
                                                 (declare (not safe))
                                                 (cons '#f '()))))
                                          (declare (not safe))
                                          (cons __tmp281269 __tmp281268))))
                                   (declare (not safe))
                                   (cons __tmp281270 __tmp281267))))
                            (declare (not safe))
                            (cons __tmp281271 __tmp281266))))
                     (declare (not safe))
                     (cons 'declare-method __tmp281265))))
                (___kont280983280984_ (lambda () '(begin))))
            (let ((___match281112281113_
                   (lambda (_e275992276249_
                            _hd275993276252_
                            _tl275994276254_
                            _e275995276257_
                            _hd275996276260_
                            _tl275997276262_
                            _e275998276265_
                            _hd275999276268_
                            _tl276000276270_
                            _e276001276273_
                            _hd276002276276_
                            _tl276003276278_
                            _e276004276281_
                            _hd276005276284_
                            _tl276006276286_
                            _e276007276289_
                            _hd276008276292_
                            _tl276009276294_
                            _e276010276297_
                            _hd276011276300_
                            _tl276012276302_
                            _e276013276305_
                            _hd276014276308_
                            _tl276015276310_
                            _e276016276313_
                            _hd276017276316_
                            _tl276018276318_
                            _e276019276321_
                            _hd276020276324_
                            _tl276021276326_
                            _e276022276329_
                            _hd276023276332_
                            _tl276024276334_
                            _e276025276337_
                            _hd276026276340_
                            _tl276027276342_
                            _e276028276345_
                            _hd276029276348_
                            _tl276030276350_
                            _e276031276353_
                            _hd276032276356_
                            _tl276033276358_
                            _e276034276361_
                            _hd276035276364_
                            _tl276036276366_
                            _e276037276369_
                            _hd276038276372_
                            _tl276039276374_)
                     (let ((_L276377_ _hd276038276372_)
                           (_L276378_ _hd276029276348_)
                           (_L276379_ _hd276020276324_)
                           (_L276380_ _hd276011276300_)
                           (_L276381_ _hd276002276276_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _L276381_
                              'bind-method!))
                           (___kont280979280980_
                            _L276377_
                            _L276378_
                            _L276379_
                            _L276380_
                            _L276381_)
                           (___kont280983280984_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx280977280978_))
                  (let ((_e275992276249_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx280977280978_))))
                    (let ((_tl275994276254_
                           (let ()
                             (declare (not safe))
                             (##cdr _e275992276249_)))
                          (_hd275993276252_
                           (let ()
                             (declare (not safe))
                             (##car _e275992276249_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl275994276254_))
                          (let ((_e275995276257_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl275994276254_))))
                            (let ((_tl275997276262_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e275995276257_)))
                                  (_hd275996276260_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e275995276257_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd275996276260_))
                                  (let ((_e275998276265_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd275996276260_))))
                                    (let ((_tl276000276270_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e275998276265_)))
                                          (_hd275999276268_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e275998276265_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd275999276268_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd275999276268_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl276000276270_))
                                                  (let ((_e276001276273_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl276000276270_))))
                                                    (let ((_tl276003276278_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e276001276273_)))
                                                          (_hd276002276276_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e276001276273_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl276003276278_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl275997276262_))
                      (let ((_e276004276281_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl275997276262_))))
                        (let ((_tl276006276286_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e276004276281_)))
                              (_hd276005276284_
                               (let ()
                                 (declare (not safe))
                                 (##car _e276004276281_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd276005276284_))
                              (let ((_e276007276289_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd276005276284_))))
                                (let ((_tl276009276294_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e276007276289_)))
                                      (_hd276008276292_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e276007276289_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd276008276292_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd276008276292_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl276009276294_))
                                              (let ((_e276010276297_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl276009276294_))))
                                                (let ((_tl276012276302_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e276010276297_)))
                                                      (_hd276011276300_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e276010276297_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl276012276302_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl276006276286_))
                                                          (let ((_e276013276305_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl276006276286_))))
                    (let ((_tl276015276310_
                           (let ()
                             (declare (not safe))
                             (##cdr _e276013276305_)))
                          (_hd276014276308_
                           (let ()
                             (declare (not safe))
                             (##car _e276013276305_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd276014276308_))
                          (let ((_e276016276313_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd276014276308_))))
                            (let ((_tl276018276318_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e276016276313_)))
                                  (_hd276017276316_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e276016276313_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd276017276316_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd276017276316_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl276018276318_))
                                          (let ((_e276019276321_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl276018276318_))))
                                            (let ((_tl276021276326_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e276019276321_)))
                                                  (_hd276020276324_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e276019276321_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl276021276326_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl276015276310_))
                                                      (let ((_e276022276329_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl276015276310_))))
                (let ((_tl276024276334_
                       (let () (declare (not safe)) (##cdr _e276022276329_)))
                      (_hd276023276332_
                       (let () (declare (not safe)) (##car _e276022276329_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd276023276332_))
                      (let ((_e276025276337_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd276023276332_))))
                        (let ((_tl276027276342_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e276025276337_)))
                              (_hd276026276340_
                               (let ()
                                 (declare (not safe))
                                 (##car _e276025276337_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _hd276026276340_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _hd276026276340_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl276027276342_))
                                      (let ((_e276028276345_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl276027276342_))))
                                        (let ((_tl276030276350_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e276028276345_)))
                                              (_hd276029276348_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e276028276345_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl276030276350_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl276024276334_))
                                                  (let ((_e276031276353_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl276024276334_))))
                                                    (let ((_tl276033276358_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e276031276353_)))
                                                          (_hd276032276356_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e276031276353_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd276032276356_))
                                                          (let ((_e276034276361_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd276032276356_))))
                    (let ((_tl276036276366_
                           (let ()
                             (declare (not safe))
                             (##cdr _e276034276361_)))
                          (_hd276035276364_
                           (let ()
                             (declare (not safe))
                             (##car _e276034276361_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _hd276035276364_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _hd276035276364_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl276036276366_))
                                  (let ((_e276037276369_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl276036276366_))))
                                    (let ((_tl276039276374_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e276037276369_)))
                                          (_hd276038276372_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e276037276369_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl276039276374_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl276033276358_))
                                              (___match281112281113_
                                               _e275992276249_
                                               _hd275993276252_
                                               _tl275994276254_
                                               _e275995276257_
                                               _hd275996276260_
                                               _tl275997276262_
                                               _e275998276265_
                                               _hd275999276268_
                                               _tl276000276270_
                                               _e276001276273_
                                               _hd276002276276_
                                               _tl276003276278_
                                               _e276004276281_
                                               _hd276005276284_
                                               _tl276006276286_
                                               _e276007276289_
                                               _hd276008276292_
                                               _tl276009276294_
                                               _e276010276297_
                                               _hd276011276300_
                                               _tl276012276302_
                                               _e276013276305_
                                               _hd276014276308_
                                               _tl276015276310_
                                               _e276016276313_
                                               _hd276017276316_
                                               _tl276018276318_
                                               _e276019276321_
                                               _hd276020276324_
                                               _tl276021276326_
                                               _e276022276329_
                                               _hd276023276332_
                                               _tl276024276334_
                                               _e276025276337_
                                               _hd276026276340_
                                               _tl276027276342_
                                               _e276028276345_
                                               _hd276029276348_
                                               _tl276030276350_
                                               _e276031276353_
                                               _hd276032276356_
                                               _tl276033276358_
                                               _e276034276361_
                                               _hd276035276364_
                                               _tl276036276366_
                                               _e276037276369_
                                               _hd276038276372_
                                               _tl276039276374_)
                                              (___kont280983280984_))
                                          (___kont280983280984_))))
                                  (___kont280983280984_))
                              (___kont280983280984_))
                          (___kont280983280984_))))
                  (___kont280983280984_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl276024276334_))
                                                      (if (let ((__tmp281272
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp281272 'bind-method!))
                  (let ((_L276203_ _hd276029276348_)
                        (_L276204_ _hd276020276324_)
                        (_L276205_ _hd276011276300_)
                        (_L276206_ _hd276002276276_))
                    (___kont280981280982_
                     _L276203_
                     _L276204_
                     _L276205_
                     _L276206_))
                  (___kont280983280984_))
              (___kont280983280984_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont280983280984_))))
                                      (___kont280983280984_))
                                  (___kont280983280984_))
                              (___kont280983280984_))))
                      (___kont280983280984_))))
              (___kont280983280984_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont280983280984_))))
                                          (___kont280983280984_))
                                      (___kont280983280984_))
                                  (___kont280983280984_))))
                          (___kont280983280984_))))
                  (___kont280983280984_))
              (___kont280983280984_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont280983280984_))
                                          (___kont280983280984_))
                                      (___kont280983280984_))))
                              (___kont280983280984_))))
                      (___kont280983280984_))
                  (___kont280983280984_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont280983280984_))
                                              (___kont280983280984_))
                                          (___kont280983280984_))))
                                  (___kont280983280984_))))
                          (___kont280983280984_))))
                  (___kont280983280984_)))))))
    (define gxc#!alias::typedecl
      (lambda (_self275957_)
        (let* ((_self275958275964_ _self275957_)
               (_E275960275968_
                (lambda () (error '"No clause matching" _self275958275964_)))
               (_K275961275973_
                (lambda (_alias-id275971_)
                  (let ((__tmp281273
                         (let ()
                           (declare (not safe))
                           (cons _alias-id275971_ '()))))
                    (declare (not safe))
                    (cons '@alias __tmp281273)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self275958275964_ 'gxc#!alias::t))
              (let* ((_e275962275976_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275958275964_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_alias-id275979_ _e275962275976_))
                (declare (not safe))
                (_K275961275973_ _alias-id275979_))
              (let () (declare (not safe)) (_E275960275968_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_self275748_)
        (let* ((_self275749275764_ _self275748_)
               (_E275751275768_
                (lambda () (error '"No clause matching" _self275749275764_)))
               (_K275752275782_
                (lambda (_methods275771_
                         _metaclass275772_
                         _final?275773_
                         _struct?275774_
                         _constructor275775_
                         _fields275776_
                         _slots275777_
                         _precendence-list275778_
                         _super275779_
                         _id275780_)
                  (let ((__tmp281274
                         (let ((__tmp281275
                                (let ((__tmp281276
                                       (let ((__tmp281277
                                              (let ((__tmp281278
                                                     (let ((__tmp281279
                                                            (let ((__tmp281280
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp281281
                                  (let ((__tmp281282
                                         (let ((__tmp281283
                                                (let ((__tmp281284
                                                       (if _methods275771_
                                                           (hash->list
                                                            _methods275771_)
                                                           '#f)))
                                                  (declare (not safe))
                                                  (cons __tmp281284 '()))))
                                           (declare (not safe))
                                           (cons _metaclass275772_
                                                 __tmp281283))))
                                    (declare (not safe))
                                    (cons _final?275773_ __tmp281282))))
                             (declare (not safe))
                             (cons _struct?275774_ __tmp281281))))
                      (declare (not safe))
                      (cons _constructor275775_ __tmp281280))))
               (declare (not safe))
               (cons _fields275776_ __tmp281279))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _slots275777_
                                                      __tmp281278))))
                                         (declare (not safe))
                                         (cons _precendence-list275778_
                                               __tmp281277))))
                                  (declare (not safe))
                                  (cons _super275779_ __tmp281276))))
                           (declare (not safe))
                           (cons _id275780_ __tmp281275))))
                    (declare (not safe))
                    (cons '@class __tmp281274)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self275749275764_ 'gxc#!class::t))
              (let* ((_e275753275785_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275749275764_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_id275788_ _e275753275785_)
                     (_e275754275790_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275749275764_
                         '2
                         gxc#!class::t
                         '#f)))
                     (_super275793_ _e275754275790_)
                     (_e275755275795_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275749275764_
                         '3
                         gxc#!class::t
                         '#f)))
                     (_precendence-list275798_ _e275755275795_)
                     (_e275756275800_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275749275764_
                         '4
                         gxc#!class::t
                         '#f)))
                     (_slots275803_ _e275756275800_)
                     (_e275757275805_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275749275764_
                         '5
                         gxc#!class::t
                         '#f)))
                     (_fields275808_ _e275757275805_)
                     (_e275758275810_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275749275764_
                         '6
                         gxc#!class::t
                         '#f)))
                     (_constructor275813_ _e275758275810_)
                     (_e275759275815_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275749275764_
                         '7
                         gxc#!class::t
                         '#f)))
                     (_struct?275818_ _e275759275815_)
                     (_e275760275820_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275749275764_
                         '8
                         gxc#!class::t
                         '#f)))
                     (_final?275823_ _e275760275820_)
                     (_e275761275825_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275749275764_
                         '9
                         gxc#!class::t
                         '#f)))
                     (_metaclass275828_ _e275761275825_)
                     (_e275762275830_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275749275764_
                         '10
                         gxc#!class::t
                         '#f)))
                     (_methods275833_ _e275762275830_))
                (declare (not safe))
                (_K275752275782_
                 _methods275833_
                 _metaclass275828_
                 _final?275823_
                 _struct?275818_
                 _constructor275813_
                 _fields275808_
                 _slots275803_
                 _precendence-list275798_
                 _super275793_
                 _id275788_))
              (let () (declare (not safe)) (_E275751275768_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_self275602_)
        (let* ((_self275603275609_ _self275602_)
               (_E275605275613_
                (lambda () (error '"No clause matching" _self275603275609_)))
               (_K275606275618_
                (lambda (_klass-id275616_)
                  (let ((__tmp281285
                         (let ()
                           (declare (not safe))
                           (cons _klass-id275616_ '()))))
                    (declare (not safe))
                    (cons '@predicate __tmp281285)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self275603275609_
                 'gxc#!predicate::t))
              (let* ((_e275607275621_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275603275609_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id275624_ _e275607275621_))
                (declare (not safe))
                (_K275606275618_ _klass-id275624_))
              (let () (declare (not safe)) (_E275605275613_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!predicate::t 'typedecl gxc#!predicate::typedecl '#f))
    (define gxc#!constructor::typedecl
      (lambda (_self275456_)
        (let* ((_self275457275463_ _self275456_)
               (_E275459275467_
                (lambda () (error '"No clause matching" _self275457275463_)))
               (_K275460275472_
                (lambda (_klass-id275470_)
                  (let ((__tmp281286
                         (let ()
                           (declare (not safe))
                           (cons _klass-id275470_ '()))))
                    (declare (not safe))
                    (cons '@constructor __tmp281286)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self275457275463_
                 'gxc#!constructor::t))
              (let* ((_e275461275475_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275457275463_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id275478_ _e275461275475_))
                (declare (not safe))
                (_K275460275472_ _klass-id275478_))
              (let () (declare (not safe)) (_E275459275467_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_self275296_)
        (let* ((_self275297275305_ _self275296_)
               (_E275299275309_
                (lambda () (error '"No clause matching" _self275297275305_)))
               (_K275300275316_
                (lambda (_checked?275312_ _slot275313_ _klass-id275314_)
                  (let ((__tmp281287
                         (let ((__tmp281288
                                (let ((__tmp281289
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?275312_ '()))))
                                  (declare (not safe))
                                  (cons _slot275313_ __tmp281289))))
                           (declare (not safe))
                           (cons _klass-id275314_ __tmp281288))))
                    (declare (not safe))
                    (cons '@accessor __tmp281287)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self275297275305_
                 'gxc#!accessor::t))
              (let* ((_e275301275319_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275297275305_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id275322_ _e275301275319_)
                     (_e275302275324_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275297275305_
                         '2
                         gxc#!accessor::t
                         '#f)))
                     (_slot275327_ _e275302275324_)
                     (_e275303275329_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275297275305_
                         '3
                         gxc#!accessor::t
                         '#f)))
                     (_checked?275332_ _e275303275329_))
                (declare (not safe))
                (_K275300275316_
                 _checked?275332_
                 _slot275327_
                 _klass-id275322_))
              (let () (declare (not safe)) (_E275299275309_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_self275136_)
        (let* ((_self275137275145_ _self275136_)
               (_E275139275149_
                (lambda () (error '"No clause matching" _self275137275145_)))
               (_K275140275156_
                (lambda (_checked?275152_ _slot275153_ _klass-id275154_)
                  (let ((__tmp281290
                         (let ((__tmp281291
                                (let ((__tmp281292
                                       (let ()
                                         (declare (not safe))
                                         (cons _checked?275152_ '()))))
                                  (declare (not safe))
                                  (cons _slot275153_ __tmp281292))))
                           (declare (not safe))
                           (cons _klass-id275154_ __tmp281291))))
                    (declare (not safe))
                    (cons '@mutator __tmp281290)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self275137275145_ 'gxc#!mutator::t))
              (let* ((_e275141275159_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275137275145_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_klass-id275162_ _e275141275159_)
                     (_e275142275164_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275137275145_
                         '2
                         gxc#!mutator::t
                         '#f)))
                     (_slot275167_ _e275142275164_)
                     (_e275143275169_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self275137275145_
                         '3
                         gxc#!mutator::t
                         '#f)))
                     (_checked?275172_ _e275143275169_))
                (declare (not safe))
                (_K275140275156_
                 _checked?275172_
                 _slot275167_
                 _klass-id275162_))
              (let () (declare (not safe)) (_E275139275149_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!lambda::typedecl
      (lambda (_self274962_)
        (let* ((_self274963274973_ _self274962_)
               (_E274965274977_
                (lambda () (error '"No clause matching" _self274963274973_)))
               (_K274966274988_
                (lambda (_typedecl274980_
                         _inline274981_
                         _dispatch274982_
                         _arity274983_)
                  (if _inline274981_
                      (let ((_$e274985_ _typedecl274980_))
                        (if _$e274985_
                            _$e274985_
                            (error '"Cannot generate typedecl for inline rules")))
                      (let ((__tmp281293
                             (let ((__tmp281294
                                    (let ()
                                      (declare (not safe))
                                      (cons _dispatch274982_ '()))))
                               (declare (not safe))
                               (cons _arity274983_ __tmp281294))))
                        (declare (not safe))
                        (cons '@lambda __tmp281293))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _self274963274973_ 'gxc#!lambda::t))
              (let* ((_e274967274991_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self274963274973_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e274968274994_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self274963274973_
                         '2
                         gxc#!lambda::t
                         '#f)))
                     (_arity274997_ _e274968274994_)
                     (_e274969274999_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self274963274973_
                         '3
                         gxc#!lambda::t
                         '#f)))
                     (_dispatch275002_ _e274969274999_)
                     (_e274970275004_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self274963274973_
                         '4
                         gxc#!lambda::t
                         '#f)))
                     (_inline275007_ _e274970275004_)
                     (_e274971275009_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self274963274973_
                         '5
                         gxc#!lambda::t
                         '#f)))
                     (_typedecl275012_ _e274971275009_))
                (declare (not safe))
                (_K274966274988_
                 _typedecl275012_
                 _inline275007_
                 _dispatch275002_
                 _arity274997_))
              (let () (declare (not safe)) (_E274965274977_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_self274773_)
        (letrec ((_clause-e274775_
                  (lambda (_clause274805_)
                    (let* ((_clause274806274814_ _clause274805_)
                           (_E274808274818_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause274806274814_)))
                           (_K274809274824_
                            (lambda (_dispatch274821_ _arity274822_)
                              (let ((__tmp281295
                                     (let ()
                                       (declare (not safe))
                                       (cons _dispatch274821_ '()))))
                                (declare (not safe))
                                (cons _arity274822_ __tmp281295)))))
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _clause274806274814_
                             'gxc#!lambda::t))
                          (let* ((_e274810274827_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause274806274814_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                                 (_e274811274830_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause274806274814_
                                     '2
                                     gxc#!lambda::t
                                     '#f)))
                                 (_arity274833_ _e274811274830_)
                                 (_e274812274835_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _clause274806274814_
                                     '3
                                     gxc#!lambda::t
                                     '#f)))
                                 (_dispatch274838_ _e274812274835_))
                            (declare (not safe))
                            (_K274809274824_ _dispatch274838_ _arity274833_))
                          (let () (declare (not safe)) (_E274808274818_)))))))
          (let* ((_self274776274783_ _self274773_)
                 (_E274778274787_
                  (lambda () (error '"No clause matching" _self274776274783_)))
                 (_K274779274794_
                  (lambda (_clauses274790_)
                    (let ((_clauses274792_
                           (map _clause-e274775_ _clauses274790_)))
                      (declare (not safe))
                      (cons '@case-lambda _clauses274792_)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _self274776274783_
                   'gxc#!case-lambda::t))
                (let* ((_e274780274797_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self274776274783_
                           '1
                           gxc#!type::t
                           '#f)))
                       (_e274781274800_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _self274776274783_
                           '2
                           gxc#!case-lambda::t
                           '#f)))
                       (_clauses274803_ _e274781274800_))
                  (declare (not safe))
                  (_K274779274794_ _clauses274803_))
                (let () (declare (not safe)) (_E274778274787_)))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_self274616_)
        (let* ((_self274617274625_ _self274616_)
               (_E274619274629_
                (lambda () (error '"No clause matching" _self274617274625_)))
               (_K274620274635_
                (lambda (_dispatch274632_ _table274633_)
                  (let ((__tmp281296
                         (let ((__tmp281297
                                (let ()
                                  (declare (not safe))
                                  (cons _dispatch274632_ '()))))
                           (declare (not safe))
                           (cons _table274633_ __tmp281297))))
                    (declare (not safe))
                    (cons '@kw-lambda __tmp281296)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self274617274625_
                 'gxc#!kw-lambda::t))
              (let* ((_e274621274638_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self274617274625_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e274622274641_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self274617274625_
                         '2
                         gxc#!kw-lambda::t
                         '#f)))
                     (_table274644_ _e274622274641_)
                     (_e274623274646_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self274617274625_
                         '3
                         gxc#!kw-lambda::t
                         '#f)))
                     (_dispatch274649_ _e274623274646_))
                (declare (not safe))
                (_K274620274635_ _dispatch274649_ _table274644_))
              (let () (declare (not safe)) (_E274619274629_))))))
    (let ()
      (declare (not safe))
      (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_self274459_)
        (let* ((_self274460274468_ _self274459_)
               (_E274462274472_
                (lambda () (error '"No clause matching" _self274460274468_)))
               (_K274463274478_
                (lambda (_main274475_ _keys274476_)
                  (let ((__tmp281298
                         (let ((__tmp281299
                                (let ()
                                  (declare (not safe))
                                  (cons _main274475_ '()))))
                           (declare (not safe))
                           (cons _keys274476_ __tmp281299))))
                    (declare (not safe))
                    (cons '@kw-lambda-dispatch __tmp281298)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _self274460274468_
                 'gxc#!kw-lambda-primary::t))
              (let* ((_e274464274481_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self274460274468_
                         '1
                         gxc#!type::t
                         '#f)))
                     (_e274465274484_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self274460274468_
                         '2
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_keys274487_ _e274465274484_)
                     (_e274466274489_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _self274460274468_
                         '3
                         gxc#!kw-lambda-primary::t
                         '#f)))
                     (_main274492_ _e274466274489_))
                (declare (not safe))
                (_K274463274478_ _main274492_ _keys274487_))
              (let () (declare (not safe)) (_E274462274472_))))))
    (let ()
      (declare (not safe))
      (bind-method!
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))))
