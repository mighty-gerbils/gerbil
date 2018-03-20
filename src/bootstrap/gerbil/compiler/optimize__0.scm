(declare (block) (standard-bindings) (extended-bindings))
(begin
  (declare (inlining-limit 100))
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj48400 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj48400) __obj48400))))))
  (define gxc#optimize!
    (lambda (_ctx48093_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#optimizer-load-ssxi-deps _ctx48093_)
           (table-set!
            (##structure-ref
             (gxc#current-compile-optimizer-info)
             '2
             gxc#optimizer-info::t
             '#f)
            (##structure-ref _ctx48093_ '1 gx#expander-context::t '#f)
            '#t)
           (let ((_code48096_
                  (gxc#optimize-source
                   (##structure-ref _ctx48093_ '11 gx#module-context::t '#f))))
             (##structure-set!
              _ctx48093_
              _code48096_
              '11
              gx#module-context::t
              '#f))))
       gxc#current-compile-mutators
       (make-hash-table-eq)
       gxc#current-compile-local-type
       (make-hash-table-eq))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx48038_)
      (letrec* ((_deps48040_
                 (let* ((_imports48084_
                         (##structure-ref
                          _ctx48038_
                          '8
                          gx#module-context::t
                          '#f))
                        (_$e48086_ (gx#core-context-prelude__% _ctx48038_)))
                   (if _$e48086_
                       ((lambda (_g4808848090_)
                          (cons _g4808848090_ _imports48084_))
                        _$e48086_)
                       _imports48084_))))
        (let _lp48042_ ((_rest48044_ _deps48040_))
          (let* ((_rest4804548053_ _rest48044_)
                 (_else4804748061_ (lambda () '#!void))
                 (_K4804948072_
                  (lambda (_rest48064_ _hd48065_)
                    (if (##structure-instance-of?
                         _hd48065_
                         'gx#module-context::t)
                        (begin
                          (if (table-ref
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)
                               (##structure-ref
                                _hd48065_
                                '1
                                gx#expander-context::t
                                '#f)
                               '#f)
                              '#!void
                              (begin
                                (let ((_$e48067_
                                       (gx#core-context-prelude__% _hd48065_)))
                                  (if _$e48067_
                                      ((lambda (_pre48070_)
                                         (_lp48042_
                                          (cons _pre48070_
                                                (##structure-ref
                                                 _hd48065_
                                                 '8
                                                 gx#module-context::t
                                                 '#f))))
                                       _$e48067_)
                                      (_lp48042_
                                       (##structure-ref
                                        _hd48065_
                                        '8
                                        gx#module-context::t
                                        '#f))))
                                (gxc#optimizer-load-ssxi _hd48065_)))
                          (_lp48042_ _rest48064_))
                        (if (##structure-instance-of?
                             _hd48065_
                             'gx#prelude-context::t)
                            (begin
                              (if (table-ref
                                   (##structure-ref
                                    (gxc#current-compile-optimizer-info)
                                    '2
                                    gxc#optimizer-info::t
                                    '#f)
                                   (##structure-ref
                                    _hd48065_
                                    '1
                                    gx#expander-context::t
                                    '#f)
                                   '#f)
                                  '#!void
                                  (begin
                                    (_lp48042_
                                     (##structure-ref
                                      _hd48065_
                                      '7
                                      gx#prelude-context::t
                                      '#f))
                                    (gxc#optimizer-load-ssxi _hd48065_)))
                              (_lp48042_ _rest48064_))
                            (if (##structure-direct-instance-of?
                                 _hd48065_
                                 'gx#module-import::t)
                                (_lp48042_
                                 (cons (##direct-structure-ref
                                        _hd48065_
                                        '1
                                        gx#module-import::t
                                        '#f)
                                       _rest48064_))
                                (if (##structure-direct-instance-of?
                                     _hd48065_
                                     'gx#module-export::t)
                                    (_lp48042_
                                     (cons (##direct-structure-ref
                                            _hd48065_
                                            '1
                                            gx#module-export::t
                                            '#f)
                                           _rest48064_))
                                    (if (##structure-direct-instance-of?
                                         _hd48065_
                                         'gx#import-set::t)
                                        (_lp48042_
                                         (cons (##direct-structure-ref
                                                _hd48065_
                                                '1
                                                gx#import-set::t
                                                '#f)
                                               _rest48064_))
                                        (error '"Unexpected module import"
                                               _hd48065_)))))))))
            (if (##pair? _rest4804548053_)
                (let ((_hd4805048075_ (##car _rest4804548053_))
                      (_tl4805148077_ (##cdr _rest4804548053_)))
                  (let* ((_hd48080_ _hd4805048075_)
                         (_rest48082_ _tl4805148077_))
                    (_K4804948072_ _rest48082_ _hd48080_)))
                (_else4804748061_)))))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx48018_)
      (if (if (##structure-instance-of? _ctx48018_ 'gx#module-context::t)
              (list? (##structure-ref _ctx48018_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let* ((_ht48020_
                  (##structure-ref
                   (gxc#current-compile-optimizer-info)
                   '2
                   gxc#optimizer-info::t
                   '#f))
                 (_id48022_
                  (##structure-ref _ctx48018_ '1 gx#expander-context::t '#f))
                 (_mod48024_ (table-ref _ht48020_ _id48022_ '#f)))
            (let ((_$e48027_ _mod48024_))
              (if _$e48027_
                  _$e48027_
                  (let* ((_mod48030_ (gxc#optimizer-import-ssxi _ctx48018_))
                         (_val48035_
                          (let ((_$e48032_ _mod48030_))
                            (if _$e48032_ _$e48032_ '#!void))))
                    (begin
                      (table-set! _ht48020_ _id48022_ _val48035_)
                      _val48035_))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx47995_)
      (letrec ((_catch-e47997_
                (lambda (_exn48016_)
                  (begin
                    (if (gxc#current-compile-verbose)
                        (begin
                          (displayln
                           '"Failed to load ssxi module for "
                           (##structure-ref
                            _ctx47995_
                            '1
                            gx#expander-context::t
                            '#f))
                          (display-exception _exn48016_))
                        '#!void)
                    '#f)))
               (_import-e47998_
                (lambda ()
                  (let* ((_str-id48001_
                          (string-append
                           (gxc#module-id->path-string
                            (##structure-ref
                             _ctx47995_
                             '1
                             gx#expander-context::t
                             '#f))
                           '".ssxi"))
                         (_artefact-path48009_
                          (let ((_odir4800248004_
                                 (gxc#current-compile-output-dir)))
                            (if _odir4800248004_
                                (let ((_odir48007_ _odir4800248004_))
                                  (path-expand
                                   (string-append _str-id48001_ '".ss")
                                   _odir48007_))
                                '#f)))
                         (_library-path48011_
                          (string->symbol
                           (string-append '":" _str-id48001_ '".ss")))
                         (_ssxi-path48013_
                          (if (if _artefact-path48009_
                                  (file-exists? _artefact-path48009_)
                                  '#f)
                              _artefact-path48009_
                              _library-path48011_)))
                    (begin
                      (gxc#verbose '"Loading ssxi module " _ssxi-path48013_)
                      (gx#import-module__% _ssxi-path48013_ '#t '#t))))))
        (if (##structure-ref _ctx47995_ '1 gx#expander-context::t '#f)
            (with-exception-catcher _catch-e47997_ _import-e47998_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx47989_)
      (begin
        (gxc#apply-collect-mutators _stx47989_)
        (let ((_stx47991_ (gxc#apply-lift-top-lambdas _stx47989_)))
          (begin
            (gxc#apply-collect-type-info _stx47991_)
            (let ((_stx47993_ (gxc#apply-optimize-annotated _stx47991_)))
              (gxc#apply-optimize-call _stx47993_)))))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl47986_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl47986_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl47986_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl47986_
            '%#begin-syntax
            gxc#generate-ssxi-begin-syntax%)
           (table-set! _tbl47986_ '%#module gxc#generate-ssxi-module%)
           (table-set!
            _tbl47986_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (table-set! _tbl47986_ '%#call gxc#generate-ssxi-call%)
           _tbl47986_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx47979_ . _args47981_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx47979_ _args47981_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#generate-ssxi-begin-syntax%
    (lambda (_stx47940_)
      (let* ((_g4794247952_
              (lambda (_g4794347949_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4794347949_)))
             (_g4794147976_
              (lambda (_g4794347955_)
                (if (gx#stx-pair? _g4794347955_)
                    (let ((_e4794547957_ (gx#stx-e _g4794347955_)))
                      (let ((_hd4794647960_ (##car _e4794547957_))
                            (_tl4794747962_ (##cdr _e4794547957_)))
                        ((lambda (_L47965_)
                           (call-with-parameters
                            (lambda ()
                              (gxc#generate-runtime-begin% _stx47940_))
                            gx#current-expander-phi
                            (fx+ (gx#current-expander-phi) '1)))
                         _tl4794747962_)))
                    (_g4794247952_ _g4794347955_)))))
        (_g4794147976_ _stx47940_))))
  (define gxc#generate-ssxi-module%
    (lambda (_stx47880_)
      (let* ((_g4788247896_
              (lambda (_g4788347893_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4788347893_)))
             (_g4788147937_
              (lambda (_g4788347899_)
                (if (gx#stx-pair? _g4788347899_)
                    (let ((_e4788647901_ (gx#stx-e _g4788347899_)))
                      (let ((_hd4788747904_ (##car _e4788647901_))
                            (_tl4788847906_ (##cdr _e4788647901_)))
                        (if (gx#stx-pair? _tl4788847906_)
                            (let ((_e4788947909_ (gx#stx-e _tl4788847906_)))
                              (let ((_hd4789047912_ (##car _e4788947909_))
                                    (_tl4789147914_ (##cdr _e4788947909_)))
                                ((lambda (_L47917_ _L47918_)
                                   (let* ((_ctx47931_
                                           (gx#syntax-local-e__0 _L47918_))
                                          (_code47933_
                                           (##structure-ref
                                            _ctx47931_
                                            '11
                                            gx#module-context::t
                                            '#f)))
                                     (call-with-parameters
                                      (lambda () (gxc#compile-e _code47933_))
                                      gx#current-expander-context
                                      _ctx47931_)))
                                 _tl4789147914_
                                 _hd4789047912_)))
                            (_g4788247896_ _g4788347899_))))
                    (_g4788247896_ _g4788347899_)))))
        (_g4788147937_ _stx47880_))))
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx47690_)
      (letrec ((_generate-e47692_
                (lambda (_id47869_)
                  (let* ((_sym47871_
                          (if (gx#identifier? (gx#datum->syntax__0 '#f 'id))
                              (gxc#identifier-symbol _id47869_)
                              '#f))
                         (_$e47873_
                          (if _sym47871_
                              (gxc#optimizer-lookup-type _sym47871_)
                              '#f)))
                    (if _$e47873_
                        ((lambda (_type47876_)
                           (begin
                             (gxc#verbose '"generate typedecl " _sym47871_)
                             (let ((_typedecl47878_
                                    (call-method _type47876_ 'typedecl)))
                               (cons 'declare-type
                                     (cons _sym47871_
                                           (cons _typedecl47878_ '()))))))
                         _$e47873_)
                        '(begin))))))
        (let* ((___stx4809948100_ _stx47690_)
               (_g4769547733_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx4809948100_))))
          (let ((___kont4810148102_
                 (lambda (_L47851_) (_generate-e47692_ _L47851_)))
                (___kont4810348104_
                 (lambda (_L47786_)
                   (let ((_types47812_
                          (map _generate-e47692_
                               (begin
                                 '#!void
                                 (foldr1 (lambda (_g4780447807_ _g4780547809_)
                                           (cons _g4780447807_ _g4780547809_))
                                         '()
                                         _L47786_)))))
                     (cons 'begin _types47812_)))))
            (let ((___match4815448155_
                   (lambda (_e4771147738_
                            _hd4771247741_
                            _tl4771347743_
                            _e4771447746_
                            _hd4771547749_
                            _tl4771647751_
                            ___splice4810548106_
                            _target4771747754_
                            _tl4771947756_)
                     (letrec ((_loop4772047759_
                               (lambda (_hd4771847762_ _id4772447764_)
                                 (if (gx#stx-pair? _hd4771847762_)
                                     (let ((_e4772147767_
                                            (gx#stx-e _hd4771847762_)))
                                       (let ((_lp-tl4772347772_
                                              (##cdr _e4772147767_))
                                             (_lp-hd4772247770_
                                              (##car _e4772147767_)))
                                         (_loop4772047759_
                                          _lp-tl4772347772_
                                          (cons _lp-hd4772247770_
                                                _id4772447764_))))
                                     (let ((_id4772547775_
                                            (reverse _id4772447764_)))
                                       (if (gx#stx-pair? _tl4771647751_)
                                           (let ((_e4772647778_
                                                  (gx#stx-e _tl4771647751_)))
                                             (let ((_tl4772847783_
                                                    (##cdr _e4772647778_))
                                                   (_hd4772747781_
                                                    (##car _e4772647778_)))
                                               (if (gx#stx-null?
                                                    _tl4772847783_)
                                                   (___kont4810348104_
                                                    _id4772547775_)
                                                   (_g4769547733_))))
                                           (_g4769547733_)))))))
                       (_loop4772047759_ _target4771747754_ '())))))
              (if (gx#stx-pair? ___stx4809948100_)
                  (let ((_e4769847819_ (gx#stx-e ___stx4809948100_)))
                    (let ((_tl4770047824_ (##cdr _e4769847819_))
                          (_hd4769947822_ (##car _e4769847819_)))
                      (if (gx#stx-pair? _tl4770047824_)
                          (let ((_e4770147827_ (gx#stx-e _tl4770047824_)))
                            (let ((_tl4770347832_ (##cdr _e4770147827_))
                                  (_hd4770247830_ (##car _e4770147827_)))
                              (if (gx#stx-pair? _hd4770247830_)
                                  (let ((_e4770447835_
                                         (gx#stx-e _hd4770247830_)))
                                    (let ((_tl4770647840_
                                           (##cdr _e4770447835_))
                                          (_hd4770547838_
                                           (##car _e4770447835_)))
                                      (if (gx#stx-null? _tl4770647840_)
                                          (if (gx#stx-pair? _tl4770347832_)
                                              (let ((_e4770747843_
                                                     (gx#stx-e
                                                      _tl4770347832_)))
                                                (let ((_tl4770947848_
                                                       (##cdr _e4770747843_))
                                                      (_hd4770847846_
                                                       (##car _e4770747843_)))
                                                  (if (gx#stx-null?
                                                       _tl4770947848_)
                                                      (___kont4810148102_
                                                       _hd4770547838_)
                                                      (if (gx#stx-pair/null?
                                                           _hd4770247830_)
                                                          (let ((___splice4810548106_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _hd4770247830_ '0)))
                    (let ((_tl4771947756_
                           (##vector-ref ___splice4810548106_ '1))
                          (_target4771747754_
                           (##vector-ref ___splice4810548106_ '0)))
                      (if (gx#stx-null? _tl4771947756_)
                          (___match4815448155_
                           _e4769847819_
                           _hd4769947822_
                           _tl4770047824_
                           _e4770147827_
                           _hd4770247830_
                           _tl4770347832_
                           ___splice4810548106_
                           _target4771747754_
                           _tl4771947756_)
                          (_g4769547733_))))
                  (_g4769547733_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _hd4770247830_)
                                                  (let ((___splice4810548106_
                                                         (gx#syntax-split-splice
                                                          _hd4770247830_
                                                          '0)))
                                                    (let ((_tl4771947756_
                                                           (##vector-ref
                                                            ___splice4810548106_
                                                            '1))
                                                          (_target4771747754_
                                                           (##vector-ref
                                                            ___splice4810548106_
                                                            '0)))
                                                      (if (gx#stx-null?
                                                           _tl4771947756_)
                                                          (___match4815448155_
                                                           _e4769847819_
                                                           _hd4769947822_
                                                           _tl4770047824_
                                                           _e4770147827_
                                                           _hd4770247830_
                                                           _tl4770347832_
                                                           ___splice4810548106_
                                                           _target4771747754_
                                                           _tl4771947756_)
                                                          (_g4769547733_))))
                                                  (_g4769547733_)))
                                          (if (gx#stx-pair/null?
                                               _hd4770247830_)
                                              (let ((___splice4810548106_
                                                     (gx#syntax-split-splice
                                                      _hd4770247830_
                                                      '0)))
                                                (let ((_tl4771947756_
                                                       (##vector-ref
                                                        ___splice4810548106_
                                                        '1))
                                                      (_target4771747754_
                                                       (##vector-ref
                                                        ___splice4810548106_
                                                        '0)))
                                                  (if (gx#stx-null?
                                                       _tl4771947756_)
                                                      (___match4815448155_
                                                       _e4769847819_
                                                       _hd4769947822_
                                                       _tl4770047824_
                                                       _e4770147827_
                                                       _hd4770247830_
                                                       _tl4770347832_
                                                       ___splice4810548106_
                                                       _target4771747754_
                                                       _tl4771947756_)
                                                      (_g4769547733_))))
                                              (_g4769547733_)))))
                                  (if (gx#stx-pair/null? _hd4770247830_)
                                      (let ((___splice4810548106_
                                             (gx#syntax-split-splice
                                              _hd4770247830_
                                              '0)))
                                        (let ((_tl4771947756_
                                               (##vector-ref
                                                ___splice4810548106_
                                                '1))
                                              (_target4771747754_
                                               (##vector-ref
                                                ___splice4810548106_
                                                '0)))
                                          (if (gx#stx-null? _tl4771947756_)
                                              (___match4815448155_
                                               _e4769847819_
                                               _hd4769947822_
                                               _tl4770047824_
                                               _e4770147827_
                                               _hd4770247830_
                                               _tl4770347832_
                                               ___splice4810548106_
                                               _target4771747754_
                                               _tl4771947756_)
                                              (_g4769547733_))))
                                      (_g4769547733_)))))
                          (_g4769547733_))))
                  (_g4769547733_))))))))
  (define gxc#generate-ssxi-call%
    (lambda (_stx47244_)
      (let* ((___stx4815748158_ _stx47244_)
             (_g4724847350_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4815748158_))))
        (let ((___kont4815948160_
               (lambda (_L47640_ _L47641_ _L47642_ _L47643_ _L47644_)
                 (cons 'declare-method
                       (cons (gxc#identifier-symbol _L47643_)
                             (cons (gx#stx-e _L47642_)
                                   (cons (gxc#identifier-symbol _L47641_)
                                         (cons (gx#stx-e _L47640_) '())))))))
              (___kont4816148162_
               (lambda (_L47466_ _L47467_ _L47468_ _L47469_)
                 (cons 'declare-method
                       (cons (gxc#identifier-symbol _L47468_)
                             (cons (gx#stx-e _L47467_)
                                   (cons (gxc#identifier-symbol _L47466_)
                                         (cons '#f '())))))))
              (___kont4816348164_ (lambda () '(begin))))
          (let ((___match4829248293_
                 (lambda (_e4725547512_
                          _hd4725647515_
                          _tl4725747517_
                          _e4725847520_
                          _hd4725947523_
                          _tl4726047525_
                          _e4726147528_
                          _hd4726247531_
                          _tl4726347533_
                          _e4726447536_
                          _hd4726547539_
                          _tl4726647541_
                          _e4726747544_
                          _hd4726847547_
                          _tl4726947549_
                          _e4727047552_
                          _hd4727147555_
                          _tl4727247557_
                          _e4727347560_
                          _hd4727447563_
                          _tl4727547565_
                          _e4727647568_
                          _hd4727747571_
                          _tl4727847573_
                          _e4727947576_
                          _hd4728047579_
                          _tl4728147581_
                          _e4728247584_
                          _hd4728347587_
                          _tl4728447589_
                          _e4728547592_
                          _hd4728647595_
                          _tl4728747597_
                          _e4728847600_
                          _hd4728947603_
                          _tl4729047605_
                          _e4729147608_
                          _hd4729247611_
                          _tl4729347613_
                          _e4729447616_
                          _hd4729547619_
                          _tl4729647621_
                          _e4729747624_
                          _hd4729847627_
                          _tl4729947629_
                          _e4730047632_
                          _hd4730147635_
                          _tl4730247637_)
                   (let ((_L47640_ _hd4730147635_)
                         (_L47641_ _hd4729247611_)
                         (_L47642_ _hd4728347587_)
                         (_L47643_ _hd4727447563_)
                         (_L47644_ _hd4726547539_))
                     (if (gxc#runtime-identifier=? _L47644_ 'bind-method!)
                         (___kont4815948160_
                          _L47640_
                          _L47641_
                          _L47642_
                          _L47643_
                          _L47644_)
                         (___kont4816348164_))))))
            (if (gx#stx-pair? ___stx4815748158_)
                (let ((_e4725547512_ (gx#stx-e ___stx4815748158_)))
                  (let ((_tl4725747517_ (##cdr _e4725547512_))
                        (_hd4725647515_ (##car _e4725547512_)))
                    (if (gx#stx-pair? _tl4725747517_)
                        (let ((_e4725847520_ (gx#stx-e _tl4725747517_)))
                          (let ((_tl4726047525_ (##cdr _e4725847520_))
                                (_hd4725947523_ (##car _e4725847520_)))
                            (if (gx#stx-pair? _hd4725947523_)
                                (let ((_e4726147528_
                                       (gx#stx-e _hd4725947523_)))
                                  (let ((_tl4726347533_ (##cdr _e4726147528_))
                                        (_hd4726247531_ (##car _e4726147528_)))
                                    (if (gx#identifier? _hd4726247531_)
                                        (if (gx#stx-eq? '%#ref _hd4726247531_)
                                            (if (gx#stx-pair? _tl4726347533_)
                                                (let ((_e4726447536_
                                                       (gx#stx-e
                                                        _tl4726347533_)))
                                                  (let ((_tl4726647541_
                                                         (##cdr _e4726447536_))
                                                        (_hd4726547539_
                                                         (##car _e4726447536_)))
                                                    (if (gx#stx-null?
                                                         _tl4726647541_)
                                                        (if (gx#stx-pair?
                                                             _tl4726047525_)
                                                            (let ((_e4726747544_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl4726047525_)))
                      (let ((_tl4726947549_ (##cdr _e4726747544_))
                            (_hd4726847547_ (##car _e4726747544_)))
                        (if (gx#stx-pair? _hd4726847547_)
                            (let ((_e4727047552_ (gx#stx-e _hd4726847547_)))
                              (let ((_tl4727247557_ (##cdr _e4727047552_))
                                    (_hd4727147555_ (##car _e4727047552_)))
                                (if (gx#identifier? _hd4727147555_)
                                    (if (gx#stx-eq? '%#ref _hd4727147555_)
                                        (if (gx#stx-pair? _tl4727247557_)
                                            (let ((_e4727347560_
                                                   (gx#stx-e _tl4727247557_)))
                                              (let ((_tl4727547565_
                                                     (##cdr _e4727347560_))
                                                    (_hd4727447563_
                                                     (##car _e4727347560_)))
                                                (if (gx#stx-null?
                                                     _tl4727547565_)
                                                    (if (gx#stx-pair?
                                                         _tl4726947549_)
                                                        (let ((_e4727647568_
                                                               (gx#stx-e
                                                                _tl4726947549_)))
                                                          (let ((_tl4727847573_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e4727647568_))
                        (_hd4727747571_ (##car _e4727647568_)))
                    (if (gx#stx-pair? _hd4727747571_)
                        (let ((_e4727947576_ (gx#stx-e _hd4727747571_)))
                          (let ((_tl4728147581_ (##cdr _e4727947576_))
                                (_hd4728047579_ (##car _e4727947576_)))
                            (if (gx#identifier? _hd4728047579_)
                                (if (gx#stx-eq? '%#quote _hd4728047579_)
                                    (if (gx#stx-pair? _tl4728147581_)
                                        (let ((_e4728247584_
                                               (gx#stx-e _tl4728147581_)))
                                          (let ((_tl4728447589_
                                                 (##cdr _e4728247584_))
                                                (_hd4728347587_
                                                 (##car _e4728247584_)))
                                            (if (gx#stx-null? _tl4728447589_)
                                                (if (gx#stx-pair?
                                                     _tl4727847573_)
                                                    (let ((_e4728547592_
                                                           (gx#stx-e
                                                            _tl4727847573_)))
                                                      (let ((_tl4728747597_
                                                             (##cdr _e4728547592_))
                                                            (_hd4728647595_
                                                             (##car _e4728547592_)))
                                                        (if (gx#stx-pair?
                                                             _hd4728647595_)
                                                            (let ((_e4728847600_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd4728647595_)))
                      (let ((_tl4729047605_ (##cdr _e4728847600_))
                            (_hd4728947603_ (##car _e4728847600_)))
                        (if (gx#identifier? _hd4728947603_)
                            (if (gx#stx-eq? '%#ref _hd4728947603_)
                                (if (gx#stx-pair? _tl4729047605_)
                                    (let ((_e4729147608_
                                           (gx#stx-e _tl4729047605_)))
                                      (let ((_tl4729347613_
                                             (##cdr _e4729147608_))
                                            (_hd4729247611_
                                             (##car _e4729147608_)))
                                        (if (gx#stx-null? _tl4729347613_)
                                            (if (gx#stx-pair? _tl4728747597_)
                                                (let ((_e4729447616_
                                                       (gx#stx-e
                                                        _tl4728747597_)))
                                                  (let ((_tl4729647621_
                                                         (##cdr _e4729447616_))
                                                        (_hd4729547619_
                                                         (##car _e4729447616_)))
                                                    (if (gx#stx-pair?
                                                         _hd4729547619_)
                                                        (let ((_e4729747624_
                                                               (gx#stx-e
                                                                _hd4729547619_)))
                                                          (let ((_tl4729947629_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e4729747624_))
                        (_hd4729847627_ (##car _e4729747624_)))
                    (if (gx#identifier? _hd4729847627_)
                        (if (gx#stx-eq? '%#quote _hd4729847627_)
                            (if (gx#stx-pair? _tl4729947629_)
                                (let ((_e4730047632_
                                       (gx#stx-e _tl4729947629_)))
                                  (let ((_tl4730247637_ (##cdr _e4730047632_))
                                        (_hd4730147635_ (##car _e4730047632_)))
                                    (if (gx#stx-null? _tl4730247637_)
                                        (if (gx#stx-null? _tl4729647621_)
                                            (___match4829248293_
                                             _e4725547512_
                                             _hd4725647515_
                                             _tl4725747517_
                                             _e4725847520_
                                             _hd4725947523_
                                             _tl4726047525_
                                             _e4726147528_
                                             _hd4726247531_
                                             _tl4726347533_
                                             _e4726447536_
                                             _hd4726547539_
                                             _tl4726647541_
                                             _e4726747544_
                                             _hd4726847547_
                                             _tl4726947549_
                                             _e4727047552_
                                             _hd4727147555_
                                             _tl4727247557_
                                             _e4727347560_
                                             _hd4727447563_
                                             _tl4727547565_
                                             _e4727647568_
                                             _hd4727747571_
                                             _tl4727847573_
                                             _e4727947576_
                                             _hd4728047579_
                                             _tl4728147581_
                                             _e4728247584_
                                             _hd4728347587_
                                             _tl4728447589_
                                             _e4728547592_
                                             _hd4728647595_
                                             _tl4728747597_
                                             _e4728847600_
                                             _hd4728947603_
                                             _tl4729047605_
                                             _e4729147608_
                                             _hd4729247611_
                                             _tl4729347613_
                                             _e4729447616_
                                             _hd4729547619_
                                             _tl4729647621_
                                             _e4729747624_
                                             _hd4729847627_
                                             _tl4729947629_
                                             _e4730047632_
                                             _hd4730147635_
                                             _tl4730247637_)
                                            (___kont4816348164_))
                                        (___kont4816348164_))))
                                (___kont4816348164_))
                            (___kont4816348164_))
                        (___kont4816348164_))))
                (___kont4816348164_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _tl4728747597_)
                                                    (if (gxc#runtime-identifier=?
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '-bind-method)
                                                         'bind-method!)
                                                        (let ((_L47466_
                                                               _hd4729247611_)
                                                              (_L47467_
                                                               _hd4728347587_)
                                                              (_L47468_
                                                               _hd4727447563_)
                                                              (_L47469_
                                                               _hd4726547539_))
                                                          (___kont4816148162_
                                                           _L47466_
                                                           _L47467_
                                                           _L47468_
                                                           _L47469_))
                                                        (___kont4816348164_))
                                                    (___kont4816348164_)))
                                            (___kont4816348164_))))
                                    (___kont4816348164_))
                                (___kont4816348164_))
                            (___kont4816348164_))))
                    (___kont4816348164_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4816348164_))
                                                (___kont4816348164_))))
                                        (___kont4816348164_))
                                    (___kont4816348164_))
                                (___kont4816348164_))))
                        (___kont4816348164_))))
                (___kont4816348164_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4816348164_))))
                                            (___kont4816348164_))
                                        (___kont4816348164_))
                                    (___kont4816348164_))))
                            (___kont4816348164_))))
                    (___kont4816348164_))
                (___kont4816348164_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4816348164_))
                                            (___kont4816348164_))
                                        (___kont4816348164_))))
                                (___kont4816348164_))))
                        (___kont4816348164_))))
                (___kont4816348164_)))))))
  (define gxc#!alias::typedecl
    (lambda (_self47220_)
      (let* ((_self4722147227_ _self47220_)
             (_E4722347231_
              (lambda () (error '"No clause matching" _self4722147227_)))
             (_K4722447236_
              (lambda (_alias-id47234_)
                (cons '@alias (cons _alias-id47234_ '())))))
        (if (##structure-instance-of? _self4722147227_ 'gxc#!alias::t)
            (let* ((_e4722547239_ (##vector-ref _self4722147227_ '1))
                   (_alias-id47242_ _e4722547239_))
              (_K4722447236_ _alias-id47242_))
            (_E4722347231_)))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self47042_)
      (let* ((_self4704347054_ _self47042_)
             (_E4704547058_
              (lambda () (error '"No clause matching" _self4704347054_)))
             (_K4704647067_
              (lambda (_plist47061_
                       _ctor47062_
                       _fields47063_
                       _super47064_
                       _type-id47065_)
                (cons '@struct-type
                      (cons _type-id47065_
                            (cons _super47064_
                                  (cons _fields47063_
                                        (cons _ctor47062_
                                              (cons _plist47061_ '())))))))))
        (if (##structure-instance-of? _self4704347054_ 'gxc#!struct-type::t)
            (let* ((_e4704747070_ (##vector-ref _self4704347054_ '1))
                   (_type-id47073_ _e4704747070_)
                   (_e4704847075_ (##vector-ref _self4704347054_ '2))
                   (_super47078_ _e4704847075_)
                   (_e4704947080_ (##vector-ref _self4704347054_ '3))
                   (_fields47083_ _e4704947080_)
                   (_e4705047085_ (##vector-ref _self4704347054_ '4))
                   (_e4705147088_ (##vector-ref _self4704347054_ '5))
                   (_ctor47091_ _e4705147088_)
                   (_e4705247093_ (##vector-ref _self4704347054_ '6))
                   (_plist47096_ _e4705247093_))
              (_K4704647067_
               _plist47096_
               _ctor47091_
               _fields47083_
               _super47078_
               _type-id47073_))
            (_E4704547058_)))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self46896_)
      (let* ((_self4689746903_ _self46896_)
             (_E4689946907_
              (lambda () (error '"No clause matching" _self4689746903_)))
             (_K4690046912_
              (lambda (_struct-t46910_)
                (cons '@struct-pred (cons _struct-t46910_ '())))))
        (if (##structure-instance-of? _self4689746903_ 'gxc#!struct-pred::t)
            (let* ((_e4690146915_ (##vector-ref _self4689746903_ '1))
                   (_struct-t46918_ _e4690146915_))
              (_K4690046912_ _struct-t46918_))
            (_E4689946907_)))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self46750_)
      (let* ((_self4675146757_ _self46750_)
             (_E4675346761_
              (lambda () (error '"No clause matching" _self4675146757_)))
             (_K4675446766_
              (lambda (_struct-t46764_)
                (cons '@struct-cons (cons _struct-t46764_ '())))))
        (if (##structure-instance-of? _self4675146757_ 'gxc#!struct-cons::t)
            (let* ((_e4675546769_ (##vector-ref _self4675146757_ '1))
                   (_struct-t46772_ _e4675546769_))
              (_K4675446766_ _struct-t46772_))
            (_E4675346761_)))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self46590_)
      (let* ((_self4659146599_ _self46590_)
             (_E4659346603_
              (lambda () (error '"No clause matching" _self4659146599_)))
             (_K4659446610_
              (lambda (_unchecked?46606_ _off46607_ _struct-t46608_)
                (cons '@struct-getf
                      (cons _struct-t46608_
                            (cons _off46607_ (cons _unchecked?46606_ '())))))))
        (if (##structure-instance-of? _self4659146599_ 'gxc#!struct-getf::t)
            (let* ((_e4659546613_ (##vector-ref _self4659146599_ '1))
                   (_struct-t46616_ _e4659546613_)
                   (_e4659646618_ (##vector-ref _self4659146599_ '2))
                   (_off46621_ _e4659646618_)
                   (_e4659746623_ (##vector-ref _self4659146599_ '3))
                   (_unchecked?46626_ _e4659746623_))
              (_K4659446610_ _unchecked?46626_ _off46621_ _struct-t46616_))
            (_E4659346603_)))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self46430_)
      (let* ((_self4643146439_ _self46430_)
             (_E4643346443_
              (lambda () (error '"No clause matching" _self4643146439_)))
             (_K4643446450_
              (lambda (_unchecked?46446_ _off46447_ _struct-t46448_)
                (cons '@struct-setf
                      (cons _struct-t46448_
                            (cons _off46447_ (cons _unchecked?46446_ '())))))))
        (if (##structure-instance-of? _self4643146439_ 'gxc#!struct-setf::t)
            (let* ((_e4643546453_ (##vector-ref _self4643146439_ '1))
                   (_struct-t46456_ _e4643546453_)
                   (_e4643646458_ (##vector-ref _self4643146439_ '2))
                   (_off46461_ _e4643646458_)
                   (_e4643746463_ (##vector-ref _self4643146439_ '3))
                   (_unchecked?46466_ _e4643746463_))
              (_K4643446450_ _unchecked?46466_ _off46461_ _struct-t46456_))
            (_E4643346443_)))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#!lambda::typedecl
    (lambda (_self46256_)
      (let* ((_self4625746267_ _self46256_)
             (_E4625946271_
              (lambda () (error '"No clause matching" _self4625746267_)))
             (_K4626046282_
              (lambda (_typedecl46274_
                       _inline46275_
                       _dispatch46276_
                       _arity46277_)
                (if _inline46275_
                    (let ((_$e46279_ _typedecl46274_))
                      (if _$e46279_
                          _$e46279_
                          (error '"Cannot generate typedecl for inline rules")))
                    (cons '@lambda
                          (cons _arity46277_ (cons _dispatch46276_ '())))))))
        (if (##structure-instance-of? _self4625746267_ 'gxc#!lambda::t)
            (let* ((_e4626146285_ (##vector-ref _self4625746267_ '1))
                   (_e4626246288_ (##vector-ref _self4625746267_ '2))
                   (_arity46291_ _e4626246288_)
                   (_e4626346293_ (##vector-ref _self4625746267_ '3))
                   (_dispatch46296_ _e4626346293_)
                   (_e4626446298_ (##vector-ref _self4625746267_ '4))
                   (_inline46301_ _e4626446298_)
                   (_e4626546303_ (##vector-ref _self4625746267_ '5))
                   (_typedecl46306_ _e4626546303_))
              (_K4626046282_
               _typedecl46306_
               _inline46301_
               _dispatch46296_
               _arity46291_))
            (_E4625946271_)))))
  (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
  (define gxc#!case-lambda::typedecl
    (lambda (_self46067_)
      (letrec ((_clause-e46069_
                (lambda (_clause46099_)
                  (let* ((_clause4610046108_ _clause46099_)
                         (_E4610246112_
                          (lambda ()
                            (error '"No clause matching" _clause4610046108_)))
                         (_K4610346118_
                          (lambda (_dispatch46115_ _arity46116_)
                            (cons _arity46116_ (cons _dispatch46115_ '())))))
                    (if (##structure-instance-of?
                         _clause4610046108_
                         'gxc#!lambda::t)
                        (let* ((_e4610446121_
                                (##vector-ref _clause4610046108_ '1))
                               (_e4610546124_
                                (##vector-ref _clause4610046108_ '2))
                               (_arity46127_ _e4610546124_)
                               (_e4610646129_
                                (##vector-ref _clause4610046108_ '3))
                               (_dispatch46132_ _e4610646129_))
                          (_K4610346118_ _dispatch46132_ _arity46127_))
                        (_E4610246112_))))))
        (let* ((_self4607046077_ _self46067_)
               (_E4607246081_
                (lambda () (error '"No clause matching" _self4607046077_)))
               (_K4607346088_
                (lambda (_clauses46084_)
                  (let ((_clauses46086_ (map _clause-e46069_ _clauses46084_)))
                    (cons '@case-lambda _clauses46086_)))))
          (if (##structure-instance-of? _self4607046077_ 'gxc#!case-lambda::t)
              (let* ((_e4607446091_ (##vector-ref _self4607046077_ '1))
                     (_e4607546094_ (##vector-ref _self4607046077_ '2))
                     (_clauses46097_ _e4607546094_))
                (_K4607346088_ _clauses46097_))
              (_E4607246081_))))))
  (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
  (define gxc#!kw-lambda::typedecl
    (lambda (_self45910_)
      (let* ((_self4591145919_ _self45910_)
             (_E4591345923_
              (lambda () (error '"No clause matching" _self4591145919_)))
             (_K4591445929_
              (lambda (_dispatch45926_ _table45927_)
                (cons '@kw-lambda
                      (cons _table45927_ (cons _dispatch45926_ '()))))))
        (if (##structure-instance-of? _self4591145919_ 'gxc#!kw-lambda::t)
            (let* ((_e4591545932_ (##vector-ref _self4591145919_ '1))
                   (_e4591645935_ (##vector-ref _self4591145919_ '2))
                   (_table45938_ _e4591645935_)
                   (_e4591745940_ (##vector-ref _self4591145919_ '3))
                   (_dispatch45943_ _e4591745940_))
              (_K4591445929_ _dispatch45943_ _table45938_))
            (_E4591345923_)))))
  (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f)
  (define gxc#!kw-lambda-primary::typedecl
    (lambda (_self45753_)
      (let* ((_self4575445762_ _self45753_)
             (_E4575645766_
              (lambda () (error '"No clause matching" _self4575445762_)))
             (_K4575745772_
              (lambda (_main45769_ _keys45770_)
                (cons '@kw-lambda-dispatch
                      (cons _keys45770_ (cons _main45769_ '()))))))
        (if (##structure-instance-of?
             _self4575445762_
             'gxc#!kw-lambda-primary::t)
            (let* ((_e4575845775_ (##vector-ref _self4575445762_ '1))
                   (_e4575945778_ (##vector-ref _self4575445762_ '2))
                   (_keys45781_ _e4575945778_)
                   (_e4576045783_ (##vector-ref _self4575445762_ '3))
                   (_main45786_ _e4576045783_))
              (_K4575745772_ _main45786_ _keys45781_))
            (_E4575645766_)))))
  (bind-method!
   gxc#!kw-lambda-primary::t
   'typedecl
   gxc#!kw-lambda-primary::typedecl
   '#f))
