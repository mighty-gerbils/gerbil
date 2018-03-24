(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj48024 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj48024) __obj48024))))))
  (define gxc#optimize!
    (lambda (_ctx47717_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#optimizer-load-ssxi-deps _ctx47717_)
           (table-set!
            (##structure-ref
             (gxc#current-compile-optimizer-info)
             '2
             gxc#optimizer-info::t
             '#f)
            (##structure-ref _ctx47717_ '1 gx#expander-context::t '#f)
            '#t)
           (let ((_code47720_
                  (gxc#optimize-source
                   (##structure-ref _ctx47717_ '11 gx#module-context::t '#f))))
             (##structure-set!
              _ctx47717_
              _code47720_
              '11
              gx#module-context::t
              '#f))))
       gxc#current-compile-mutators
       (make-hash-table-eq)
       gxc#current-compile-local-type
       (make-hash-table-eq))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx47662_)
      (letrec* ((_deps47664_
                 (let* ((_imports47708_
                         (##structure-ref
                          _ctx47662_
                          '8
                          gx#module-context::t
                          '#f))
                        (_$e47710_ (gx#core-context-prelude__% _ctx47662_)))
                   (if _$e47710_
                       ((lambda (_g4771247714_)
                          (cons _g4771247714_ _imports47708_))
                        _$e47710_)
                       _imports47708_))))
        (let _lp47666_ ((_rest47668_ _deps47664_))
          (let* ((_rest4766947677_ _rest47668_)
                 (_else4767147685_ (lambda () '#!void))
                 (_K4767347696_
                  (lambda (_rest47688_ _hd47689_)
                    (if (##structure-instance-of?
                         _hd47689_
                         'gx#module-context::t)
                        (begin
                          (if (table-ref
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)
                               (##structure-ref
                                _hd47689_
                                '1
                                gx#expander-context::t
                                '#f)
                               '#f)
                              '#!void
                              (begin
                                (let ((_$e47691_
                                       (gx#core-context-prelude__% _hd47689_)))
                                  (if _$e47691_
                                      ((lambda (_pre47694_)
                                         (_lp47666_
                                          (cons _pre47694_
                                                (##structure-ref
                                                 _hd47689_
                                                 '8
                                                 gx#module-context::t
                                                 '#f))))
                                       _$e47691_)
                                      (_lp47666_
                                       (##structure-ref
                                        _hd47689_
                                        '8
                                        gx#module-context::t
                                        '#f))))
                                (gxc#optimizer-load-ssxi _hd47689_)))
                          (_lp47666_ _rest47688_))
                        (if (##structure-instance-of?
                             _hd47689_
                             'gx#prelude-context::t)
                            (begin
                              (if (table-ref
                                   (##structure-ref
                                    (gxc#current-compile-optimizer-info)
                                    '2
                                    gxc#optimizer-info::t
                                    '#f)
                                   (##structure-ref
                                    _hd47689_
                                    '1
                                    gx#expander-context::t
                                    '#f)
                                   '#f)
                                  '#!void
                                  (begin
                                    (_lp47666_
                                     (##structure-ref
                                      _hd47689_
                                      '7
                                      gx#prelude-context::t
                                      '#f))
                                    (gxc#optimizer-load-ssxi _hd47689_)))
                              (_lp47666_ _rest47688_))
                            (if (##structure-direct-instance-of?
                                 _hd47689_
                                 'gx#module-import::t)
                                (_lp47666_
                                 (cons (##direct-structure-ref
                                        _hd47689_
                                        '1
                                        gx#module-import::t
                                        '#f)
                                       _rest47688_))
                                (if (##structure-direct-instance-of?
                                     _hd47689_
                                     'gx#module-export::t)
                                    (_lp47666_
                                     (cons (##direct-structure-ref
                                            _hd47689_
                                            '1
                                            gx#module-export::t
                                            '#f)
                                           _rest47688_))
                                    (if (##structure-direct-instance-of?
                                         _hd47689_
                                         'gx#import-set::t)
                                        (_lp47666_
                                         (cons (##direct-structure-ref
                                                _hd47689_
                                                '1
                                                gx#import-set::t
                                                '#f)
                                               _rest47688_))
                                        (error '"Unexpected module import"
                                               _hd47689_)))))))))
            (if (##pair? _rest4766947677_)
                (let ((_hd4767447699_ (##car _rest4766947677_))
                      (_tl4767547701_ (##cdr _rest4766947677_)))
                  (let* ((_hd47704_ _hd4767447699_)
                         (_rest47706_ _tl4767547701_))
                    (_K4767347696_ _rest47706_ _hd47704_)))
                (_else4767147685_)))))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx47642_)
      (if (if (##structure-instance-of? _ctx47642_ 'gx#module-context::t)
              (list? (##structure-ref _ctx47642_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let* ((_ht47644_
                  (##structure-ref
                   (gxc#current-compile-optimizer-info)
                   '2
                   gxc#optimizer-info::t
                   '#f))
                 (_id47646_
                  (##structure-ref _ctx47642_ '1 gx#expander-context::t '#f))
                 (_mod47648_ (table-ref _ht47644_ _id47646_ '#f)))
            (let ((_$e47651_ _mod47648_))
              (if _$e47651_
                  _$e47651_
                  (let* ((_mod47654_ (gxc#optimizer-import-ssxi _ctx47642_))
                         (_val47659_
                          (let ((_$e47656_ _mod47654_))
                            (if _$e47656_ _$e47656_ '#!void))))
                    (begin
                      (table-set! _ht47644_ _id47646_ _val47659_)
                      _val47659_))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx47619_)
      (letrec ((_catch-e47621_
                (lambda (_exn47640_)
                  (begin
                    (if (gxc#current-compile-verbose)
                        (begin
                          (displayln
                           '"Failed to load ssxi module for "
                           (##structure-ref
                            _ctx47619_
                            '1
                            gx#expander-context::t
                            '#f))
                          (display-exception _exn47640_))
                        '#!void)
                    '#f)))
               (_import-e47622_
                (lambda ()
                  (let* ((_str-id47625_
                          (string-append
                           (gxc#module-id->path-string
                            (##structure-ref
                             _ctx47619_
                             '1
                             gx#expander-context::t
                             '#f))
                           '".ssxi"))
                         (_artefact-path47633_
                          (let ((_odir4762647628_
                                 (gxc#current-compile-output-dir)))
                            (if _odir4762647628_
                                (let ((_odir47631_ _odir4762647628_))
                                  (path-expand
                                   (string-append _str-id47625_ '".ss")
                                   _odir47631_))
                                '#f)))
                         (_library-path47635_
                          (string->symbol
                           (string-append '":" _str-id47625_ '".ss")))
                         (_ssxi-path47637_
                          (if (if _artefact-path47633_
                                  (file-exists? _artefact-path47633_)
                                  '#f)
                              _artefact-path47633_
                              _library-path47635_)))
                    (begin
                      (gxc#verbose '"Loading ssxi module " _ssxi-path47637_)
                      (gx#import-module__% _ssxi-path47637_ '#t '#t))))))
        (if (##structure-ref _ctx47619_ '1 gx#expander-context::t '#f)
            (with-exception-catcher _catch-e47621_ _import-e47622_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx47613_)
      (begin
        (gxc#apply-collect-mutators _stx47613_)
        (let ((_stx47615_ (gxc#apply-lift-top-lambdas _stx47613_)))
          (begin
            (gxc#apply-collect-type-info _stx47615_)
            (let ((_stx47617_ (gxc#apply-optimize-annotated _stx47615_)))
              (gxc#apply-optimize-call _stx47617_)))))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl47610_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl47610_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl47610_ '%#begin gxc#generate-runtime-begin%)
           (table-set!
            _tbl47610_
            '%#begin-syntax
            gxc#generate-ssxi-begin-syntax%)
           (table-set! _tbl47610_ '%#module gxc#generate-ssxi-module%)
           (table-set!
            _tbl47610_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (table-set! _tbl47610_ '%#call gxc#generate-ssxi-call%)
           _tbl47610_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx47603_ . _args47605_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx47603_ _args47605_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#generate-ssxi-begin-syntax%
    (lambda (_stx47564_)
      (let* ((_g4756647576_
              (lambda (_g4756747573_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4756747573_)))
             (_g4756547600_
              (lambda (_g4756747579_)
                (if (gx#stx-pair? _g4756747579_)
                    (let ((_e4756947581_ (gx#stx-e _g4756747579_)))
                      (let ((_hd4757047584_ (##car _e4756947581_))
                            (_tl4757147586_ (##cdr _e4756947581_)))
                        ((lambda (_L47589_)
                           (call-with-parameters
                            (lambda ()
                              (gxc#generate-runtime-begin% _stx47564_))
                            gx#current-expander-phi
                            (fx+ (gx#current-expander-phi) '1)))
                         _tl4757147586_)))
                    (_g4756647576_ _g4756747579_)))))
        (_g4756547600_ _stx47564_))))
  (define gxc#generate-ssxi-module%
    (lambda (_stx47504_)
      (let* ((_g4750647520_
              (lambda (_g4750747517_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4750747517_)))
             (_g4750547561_
              (lambda (_g4750747523_)
                (if (gx#stx-pair? _g4750747523_)
                    (let ((_e4751047525_ (gx#stx-e _g4750747523_)))
                      (let ((_hd4751147528_ (##car _e4751047525_))
                            (_tl4751247530_ (##cdr _e4751047525_)))
                        (if (gx#stx-pair? _tl4751247530_)
                            (let ((_e4751347533_ (gx#stx-e _tl4751247530_)))
                              (let ((_hd4751447536_ (##car _e4751347533_))
                                    (_tl4751547538_ (##cdr _e4751347533_)))
                                ((lambda (_L47541_ _L47542_)
                                   (let* ((_ctx47555_
                                           (gx#syntax-local-e__0 _L47542_))
                                          (_code47557_
                                           (##structure-ref
                                            _ctx47555_
                                            '11
                                            gx#module-context::t
                                            '#f)))
                                     (call-with-parameters
                                      (lambda () (gxc#compile-e _code47557_))
                                      gx#current-expander-context
                                      _ctx47555_)))
                                 _tl4751547538_
                                 _hd4751447536_)))
                            (_g4750647520_ _g4750747523_))))
                    (_g4750647520_ _g4750747523_)))))
        (_g4750547561_ _stx47504_))))
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx47314_)
      (letrec ((_generate-e47316_
                (lambda (_id47493_)
                  (let* ((_sym47495_
                          (if (gx#identifier? (gx#datum->syntax__0 '#f 'id))
                              (gxc#identifier-symbol _id47493_)
                              '#f))
                         (_$e47497_
                          (if _sym47495_
                              (gxc#optimizer-lookup-type _sym47495_)
                              '#f)))
                    (if _$e47497_
                        ((lambda (_type47500_)
                           (begin
                             (gxc#verbose '"generate typedecl " _sym47495_)
                             (let ((_typedecl47502_
                                    (call-method _type47500_ 'typedecl)))
                               (cons 'declare-type
                                     (cons _sym47495_
                                           (cons _typedecl47502_ '()))))))
                         _$e47497_)
                        '(begin))))))
        (let* ((___stx4772347724_ _stx47314_)
               (_g4731947357_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx4772347724_))))
          (let ((___kont4772547726_
                 (lambda (_L47475_) (_generate-e47316_ _L47475_)))
                (___kont4772747728_
                 (lambda (_L47410_)
                   (let ((_types47436_
                          (map _generate-e47316_
                               (begin
                                 '#!void
                                 (foldr1 (lambda (_g4742847431_ _g4742947433_)
                                           (cons _g4742847431_ _g4742947433_))
                                         '()
                                         _L47410_)))))
                     (cons 'begin _types47436_)))))
            (let ((___match4777847779_
                   (lambda (_e4733547362_
                            _hd4733647365_
                            _tl4733747367_
                            _e4733847370_
                            _hd4733947373_
                            _tl4734047375_
                            ___splice4772947730_
                            _target4734147378_
                            _tl4734347380_)
                     (letrec ((_loop4734447383_
                               (lambda (_hd4734247386_ _id4734847388_)
                                 (if (gx#stx-pair? _hd4734247386_)
                                     (let ((_e4734547391_
                                            (gx#stx-e _hd4734247386_)))
                                       (let ((_lp-tl4734747396_
                                              (##cdr _e4734547391_))
                                             (_lp-hd4734647394_
                                              (##car _e4734547391_)))
                                         (_loop4734447383_
                                          _lp-tl4734747396_
                                          (cons _lp-hd4734647394_
                                                _id4734847388_))))
                                     (let ((_id4734947399_
                                            (reverse _id4734847388_)))
                                       (if (gx#stx-pair? _tl4734047375_)
                                           (let ((_e4735047402_
                                                  (gx#stx-e _tl4734047375_)))
                                             (let ((_tl4735247407_
                                                    (##cdr _e4735047402_))
                                                   (_hd4735147405_
                                                    (##car _e4735047402_)))
                                               (if (gx#stx-null?
                                                    _tl4735247407_)
                                                   (___kont4772747728_
                                                    _id4734947399_)
                                                   (_g4731947357_))))
                                           (_g4731947357_)))))))
                       (_loop4734447383_ _target4734147378_ '())))))
              (if (gx#stx-pair? ___stx4772347724_)
                  (let ((_e4732247443_ (gx#stx-e ___stx4772347724_)))
                    (let ((_tl4732447448_ (##cdr _e4732247443_))
                          (_hd4732347446_ (##car _e4732247443_)))
                      (if (gx#stx-pair? _tl4732447448_)
                          (let ((_e4732547451_ (gx#stx-e _tl4732447448_)))
                            (let ((_tl4732747456_ (##cdr _e4732547451_))
                                  (_hd4732647454_ (##car _e4732547451_)))
                              (if (gx#stx-pair? _hd4732647454_)
                                  (let ((_e4732847459_
                                         (gx#stx-e _hd4732647454_)))
                                    (let ((_tl4733047464_
                                           (##cdr _e4732847459_))
                                          (_hd4732947462_
                                           (##car _e4732847459_)))
                                      (if (gx#stx-null? _tl4733047464_)
                                          (if (gx#stx-pair? _tl4732747456_)
                                              (let ((_e4733147467_
                                                     (gx#stx-e
                                                      _tl4732747456_)))
                                                (let ((_tl4733347472_
                                                       (##cdr _e4733147467_))
                                                      (_hd4733247470_
                                                       (##car _e4733147467_)))
                                                  (if (gx#stx-null?
                                                       _tl4733347472_)
                                                      (___kont4772547726_
                                                       _hd4732947462_)
                                                      (if (gx#stx-pair/null?
                                                           _hd4732647454_)
                                                          (let ((___splice4772947730_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _hd4732647454_ '0)))
                    (let ((_tl4734347380_
                           (##vector-ref ___splice4772947730_ '1))
                          (_target4734147378_
                           (##vector-ref ___splice4772947730_ '0)))
                      (if (gx#stx-null? _tl4734347380_)
                          (___match4777847779_
                           _e4732247443_
                           _hd4732347446_
                           _tl4732447448_
                           _e4732547451_
                           _hd4732647454_
                           _tl4732747456_
                           ___splice4772947730_
                           _target4734147378_
                           _tl4734347380_)
                          (_g4731947357_))))
                  (_g4731947357_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _hd4732647454_)
                                                  (let ((___splice4772947730_
                                                         (gx#syntax-split-splice
                                                          _hd4732647454_
                                                          '0)))
                                                    (let ((_tl4734347380_
                                                           (##vector-ref
                                                            ___splice4772947730_
                                                            '1))
                                                          (_target4734147378_
                                                           (##vector-ref
                                                            ___splice4772947730_
                                                            '0)))
                                                      (if (gx#stx-null?
                                                           _tl4734347380_)
                                                          (___match4777847779_
                                                           _e4732247443_
                                                           _hd4732347446_
                                                           _tl4732447448_
                                                           _e4732547451_
                                                           _hd4732647454_
                                                           _tl4732747456_
                                                           ___splice4772947730_
                                                           _target4734147378_
                                                           _tl4734347380_)
                                                          (_g4731947357_))))
                                                  (_g4731947357_)))
                                          (if (gx#stx-pair/null?
                                               _hd4732647454_)
                                              (let ((___splice4772947730_
                                                     (gx#syntax-split-splice
                                                      _hd4732647454_
                                                      '0)))
                                                (let ((_tl4734347380_
                                                       (##vector-ref
                                                        ___splice4772947730_
                                                        '1))
                                                      (_target4734147378_
                                                       (##vector-ref
                                                        ___splice4772947730_
                                                        '0)))
                                                  (if (gx#stx-null?
                                                       _tl4734347380_)
                                                      (___match4777847779_
                                                       _e4732247443_
                                                       _hd4732347446_
                                                       _tl4732447448_
                                                       _e4732547451_
                                                       _hd4732647454_
                                                       _tl4732747456_
                                                       ___splice4772947730_
                                                       _target4734147378_
                                                       _tl4734347380_)
                                                      (_g4731947357_))))
                                              (_g4731947357_)))))
                                  (if (gx#stx-pair/null? _hd4732647454_)
                                      (let ((___splice4772947730_
                                             (gx#syntax-split-splice
                                              _hd4732647454_
                                              '0)))
                                        (let ((_tl4734347380_
                                               (##vector-ref
                                                ___splice4772947730_
                                                '1))
                                              (_target4734147378_
                                               (##vector-ref
                                                ___splice4772947730_
                                                '0)))
                                          (if (gx#stx-null? _tl4734347380_)
                                              (___match4777847779_
                                               _e4732247443_
                                               _hd4732347446_
                                               _tl4732447448_
                                               _e4732547451_
                                               _hd4732647454_
                                               _tl4732747456_
                                               ___splice4772947730_
                                               _target4734147378_
                                               _tl4734347380_)
                                              (_g4731947357_))))
                                      (_g4731947357_)))))
                          (_g4731947357_))))
                  (_g4731947357_))))))))
  (define gxc#generate-ssxi-call%
    (lambda (_stx46868_)
      (let* ((___stx4778147782_ _stx46868_)
             (_g4687246974_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4778147782_))))
        (let ((___kont4778347784_
               (lambda (_L47264_ _L47265_ _L47266_ _L47267_ _L47268_)
                 (cons 'declare-method
                       (cons (gxc#identifier-symbol _L47267_)
                             (cons (gx#stx-e _L47266_)
                                   (cons (gxc#identifier-symbol _L47265_)
                                         (cons (gx#stx-e _L47264_) '())))))))
              (___kont4778547786_
               (lambda (_L47090_ _L47091_ _L47092_ _L47093_)
                 (cons 'declare-method
                       (cons (gxc#identifier-symbol _L47092_)
                             (cons (gx#stx-e _L47091_)
                                   (cons (gxc#identifier-symbol _L47090_)
                                         (cons '#f '())))))))
              (___kont4778747788_ (lambda () '(begin))))
          (let ((___match4791647917_
                 (lambda (_e4687947136_
                          _hd4688047139_
                          _tl4688147141_
                          _e4688247144_
                          _hd4688347147_
                          _tl4688447149_
                          _e4688547152_
                          _hd4688647155_
                          _tl4688747157_
                          _e4688847160_
                          _hd4688947163_
                          _tl4689047165_
                          _e4689147168_
                          _hd4689247171_
                          _tl4689347173_
                          _e4689447176_
                          _hd4689547179_
                          _tl4689647181_
                          _e4689747184_
                          _hd4689847187_
                          _tl4689947189_
                          _e4690047192_
                          _hd4690147195_
                          _tl4690247197_
                          _e4690347200_
                          _hd4690447203_
                          _tl4690547205_
                          _e4690647208_
                          _hd4690747211_
                          _tl4690847213_
                          _e4690947216_
                          _hd4691047219_
                          _tl4691147221_
                          _e4691247224_
                          _hd4691347227_
                          _tl4691447229_
                          _e4691547232_
                          _hd4691647235_
                          _tl4691747237_
                          _e4691847240_
                          _hd4691947243_
                          _tl4692047245_
                          _e4692147248_
                          _hd4692247251_
                          _tl4692347253_
                          _e4692447256_
                          _hd4692547259_
                          _tl4692647261_)
                   (let ((_L47264_ _hd4692547259_)
                         (_L47265_ _hd4691647235_)
                         (_L47266_ _hd4690747211_)
                         (_L47267_ _hd4689847187_)
                         (_L47268_ _hd4688947163_))
                     (if (gxc#runtime-identifier=? _L47268_ 'bind-method!)
                         (___kont4778347784_
                          _L47264_
                          _L47265_
                          _L47266_
                          _L47267_
                          _L47268_)
                         (___kont4778747788_))))))
            (if (gx#stx-pair? ___stx4778147782_)
                (let ((_e4687947136_ (gx#stx-e ___stx4778147782_)))
                  (let ((_tl4688147141_ (##cdr _e4687947136_))
                        (_hd4688047139_ (##car _e4687947136_)))
                    (if (gx#stx-pair? _tl4688147141_)
                        (let ((_e4688247144_ (gx#stx-e _tl4688147141_)))
                          (let ((_tl4688447149_ (##cdr _e4688247144_))
                                (_hd4688347147_ (##car _e4688247144_)))
                            (if (gx#stx-pair? _hd4688347147_)
                                (let ((_e4688547152_
                                       (gx#stx-e _hd4688347147_)))
                                  (let ((_tl4688747157_ (##cdr _e4688547152_))
                                        (_hd4688647155_ (##car _e4688547152_)))
                                    (if (gx#identifier? _hd4688647155_)
                                        (if (gx#stx-eq? '%#ref _hd4688647155_)
                                            (if (gx#stx-pair? _tl4688747157_)
                                                (let ((_e4688847160_
                                                       (gx#stx-e
                                                        _tl4688747157_)))
                                                  (let ((_tl4689047165_
                                                         (##cdr _e4688847160_))
                                                        (_hd4688947163_
                                                         (##car _e4688847160_)))
                                                    (if (gx#stx-null?
                                                         _tl4689047165_)
                                                        (if (gx#stx-pair?
                                                             _tl4688447149_)
                                                            (let ((_e4689147168_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl4688447149_)))
                      (let ((_tl4689347173_ (##cdr _e4689147168_))
                            (_hd4689247171_ (##car _e4689147168_)))
                        (if (gx#stx-pair? _hd4689247171_)
                            (let ((_e4689447176_ (gx#stx-e _hd4689247171_)))
                              (let ((_tl4689647181_ (##cdr _e4689447176_))
                                    (_hd4689547179_ (##car _e4689447176_)))
                                (if (gx#identifier? _hd4689547179_)
                                    (if (gx#stx-eq? '%#ref _hd4689547179_)
                                        (if (gx#stx-pair? _tl4689647181_)
                                            (let ((_e4689747184_
                                                   (gx#stx-e _tl4689647181_)))
                                              (let ((_tl4689947189_
                                                     (##cdr _e4689747184_))
                                                    (_hd4689847187_
                                                     (##car _e4689747184_)))
                                                (if (gx#stx-null?
                                                     _tl4689947189_)
                                                    (if (gx#stx-pair?
                                                         _tl4689347173_)
                                                        (let ((_e4690047192_
                                                               (gx#stx-e
                                                                _tl4689347173_)))
                                                          (let ((_tl4690247197_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e4690047192_))
                        (_hd4690147195_ (##car _e4690047192_)))
                    (if (gx#stx-pair? _hd4690147195_)
                        (let ((_e4690347200_ (gx#stx-e _hd4690147195_)))
                          (let ((_tl4690547205_ (##cdr _e4690347200_))
                                (_hd4690447203_ (##car _e4690347200_)))
                            (if (gx#identifier? _hd4690447203_)
                                (if (gx#stx-eq? '%#quote _hd4690447203_)
                                    (if (gx#stx-pair? _tl4690547205_)
                                        (let ((_e4690647208_
                                               (gx#stx-e _tl4690547205_)))
                                          (let ((_tl4690847213_
                                                 (##cdr _e4690647208_))
                                                (_hd4690747211_
                                                 (##car _e4690647208_)))
                                            (if (gx#stx-null? _tl4690847213_)
                                                (if (gx#stx-pair?
                                                     _tl4690247197_)
                                                    (let ((_e4690947216_
                                                           (gx#stx-e
                                                            _tl4690247197_)))
                                                      (let ((_tl4691147221_
                                                             (##cdr _e4690947216_))
                                                            (_hd4691047219_
                                                             (##car _e4690947216_)))
                                                        (if (gx#stx-pair?
                                                             _hd4691047219_)
                                                            (let ((_e4691247224_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd4691047219_)))
                      (let ((_tl4691447229_ (##cdr _e4691247224_))
                            (_hd4691347227_ (##car _e4691247224_)))
                        (if (gx#identifier? _hd4691347227_)
                            (if (gx#stx-eq? '%#ref _hd4691347227_)
                                (if (gx#stx-pair? _tl4691447229_)
                                    (let ((_e4691547232_
                                           (gx#stx-e _tl4691447229_)))
                                      (let ((_tl4691747237_
                                             (##cdr _e4691547232_))
                                            (_hd4691647235_
                                             (##car _e4691547232_)))
                                        (if (gx#stx-null? _tl4691747237_)
                                            (if (gx#stx-pair? _tl4691147221_)
                                                (let ((_e4691847240_
                                                       (gx#stx-e
                                                        _tl4691147221_)))
                                                  (let ((_tl4692047245_
                                                         (##cdr _e4691847240_))
                                                        (_hd4691947243_
                                                         (##car _e4691847240_)))
                                                    (if (gx#stx-pair?
                                                         _hd4691947243_)
                                                        (let ((_e4692147248_
                                                               (gx#stx-e
                                                                _hd4691947243_)))
                                                          (let ((_tl4692347253_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e4692147248_))
                        (_hd4692247251_ (##car _e4692147248_)))
                    (if (gx#identifier? _hd4692247251_)
                        (if (gx#stx-eq? '%#quote _hd4692247251_)
                            (if (gx#stx-pair? _tl4692347253_)
                                (let ((_e4692447256_
                                       (gx#stx-e _tl4692347253_)))
                                  (let ((_tl4692647261_ (##cdr _e4692447256_))
                                        (_hd4692547259_ (##car _e4692447256_)))
                                    (if (gx#stx-null? _tl4692647261_)
                                        (if (gx#stx-null? _tl4692047245_)
                                            (___match4791647917_
                                             _e4687947136_
                                             _hd4688047139_
                                             _tl4688147141_
                                             _e4688247144_
                                             _hd4688347147_
                                             _tl4688447149_
                                             _e4688547152_
                                             _hd4688647155_
                                             _tl4688747157_
                                             _e4688847160_
                                             _hd4688947163_
                                             _tl4689047165_
                                             _e4689147168_
                                             _hd4689247171_
                                             _tl4689347173_
                                             _e4689447176_
                                             _hd4689547179_
                                             _tl4689647181_
                                             _e4689747184_
                                             _hd4689847187_
                                             _tl4689947189_
                                             _e4690047192_
                                             _hd4690147195_
                                             _tl4690247197_
                                             _e4690347200_
                                             _hd4690447203_
                                             _tl4690547205_
                                             _e4690647208_
                                             _hd4690747211_
                                             _tl4690847213_
                                             _e4690947216_
                                             _hd4691047219_
                                             _tl4691147221_
                                             _e4691247224_
                                             _hd4691347227_
                                             _tl4691447229_
                                             _e4691547232_
                                             _hd4691647235_
                                             _tl4691747237_
                                             _e4691847240_
                                             _hd4691947243_
                                             _tl4692047245_
                                             _e4692147248_
                                             _hd4692247251_
                                             _tl4692347253_
                                             _e4692447256_
                                             _hd4692547259_
                                             _tl4692647261_)
                                            (___kont4778747788_))
                                        (___kont4778747788_))))
                                (___kont4778747788_))
                            (___kont4778747788_))
                        (___kont4778747788_))))
                (___kont4778747788_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _tl4691147221_)
                                                    (if (gxc#runtime-identifier=?
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '-bind-method)
                                                         'bind-method!)
                                                        (let ((_L47090_
                                                               _hd4691647235_)
                                                              (_L47091_
                                                               _hd4690747211_)
                                                              (_L47092_
                                                               _hd4689847187_)
                                                              (_L47093_
                                                               _hd4688947163_))
                                                          (___kont4778547786_
                                                           _L47090_
                                                           _L47091_
                                                           _L47092_
                                                           _L47093_))
                                                        (___kont4778747788_))
                                                    (___kont4778747788_)))
                                            (___kont4778747788_))))
                                    (___kont4778747788_))
                                (___kont4778747788_))
                            (___kont4778747788_))))
                    (___kont4778747788_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4778747788_))
                                                (___kont4778747788_))))
                                        (___kont4778747788_))
                                    (___kont4778747788_))
                                (___kont4778747788_))))
                        (___kont4778747788_))))
                (___kont4778747788_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4778747788_))))
                                            (___kont4778747788_))
                                        (___kont4778747788_))
                                    (___kont4778747788_))))
                            (___kont4778747788_))))
                    (___kont4778747788_))
                (___kont4778747788_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4778747788_))
                                            (___kont4778747788_))
                                        (___kont4778747788_))))
                                (___kont4778747788_))))
                        (___kont4778747788_))))
                (___kont4778747788_)))))))
  (define gxc#!alias::typedecl
    (lambda (_self46844_)
      (let* ((_self4684546851_ _self46844_)
             (_E4684746855_
              (lambda () (error '"No clause matching" _self4684546851_)))
             (_K4684846860_
              (lambda (_alias-id46858_)
                (cons '@alias (cons _alias-id46858_ '())))))
        (if (##structure-instance-of? _self4684546851_ 'gxc#!alias::t)
            (let* ((_e4684946863_ (##vector-ref _self4684546851_ '1))
                   (_alias-id46866_ _e4684946863_))
              (_K4684846860_ _alias-id46866_))
            (_E4684746855_)))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self46666_)
      (let* ((_self4666746678_ _self46666_)
             (_E4666946682_
              (lambda () (error '"No clause matching" _self4666746678_)))
             (_K4667046691_
              (lambda (_plist46685_
                       _ctor46686_
                       _fields46687_
                       _super46688_
                       _type-id46689_)
                (cons '@struct-type
                      (cons _type-id46689_
                            (cons _super46688_
                                  (cons _fields46687_
                                        (cons _ctor46686_
                                              (cons _plist46685_ '())))))))))
        (if (##structure-instance-of? _self4666746678_ 'gxc#!struct-type::t)
            (let* ((_e4667146694_ (##vector-ref _self4666746678_ '1))
                   (_type-id46697_ _e4667146694_)
                   (_e4667246699_ (##vector-ref _self4666746678_ '2))
                   (_super46702_ _e4667246699_)
                   (_e4667346704_ (##vector-ref _self4666746678_ '3))
                   (_fields46707_ _e4667346704_)
                   (_e4667446709_ (##vector-ref _self4666746678_ '4))
                   (_e4667546712_ (##vector-ref _self4666746678_ '5))
                   (_ctor46715_ _e4667546712_)
                   (_e4667646717_ (##vector-ref _self4666746678_ '6))
                   (_plist46720_ _e4667646717_))
              (_K4667046691_
               _plist46720_
               _ctor46715_
               _fields46707_
               _super46702_
               _type-id46697_))
            (_E4666946682_)))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self46520_)
      (let* ((_self4652146527_ _self46520_)
             (_E4652346531_
              (lambda () (error '"No clause matching" _self4652146527_)))
             (_K4652446536_
              (lambda (_struct-t46534_)
                (cons '@struct-pred (cons _struct-t46534_ '())))))
        (if (##structure-instance-of? _self4652146527_ 'gxc#!struct-pred::t)
            (let* ((_e4652546539_ (##vector-ref _self4652146527_ '1))
                   (_struct-t46542_ _e4652546539_))
              (_K4652446536_ _struct-t46542_))
            (_E4652346531_)))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self46374_)
      (let* ((_self4637546381_ _self46374_)
             (_E4637746385_
              (lambda () (error '"No clause matching" _self4637546381_)))
             (_K4637846390_
              (lambda (_struct-t46388_)
                (cons '@struct-cons (cons _struct-t46388_ '())))))
        (if (##structure-instance-of? _self4637546381_ 'gxc#!struct-cons::t)
            (let* ((_e4637946393_ (##vector-ref _self4637546381_ '1))
                   (_struct-t46396_ _e4637946393_))
              (_K4637846390_ _struct-t46396_))
            (_E4637746385_)))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self46214_)
      (let* ((_self4621546223_ _self46214_)
             (_E4621746227_
              (lambda () (error '"No clause matching" _self4621546223_)))
             (_K4621846234_
              (lambda (_unchecked?46230_ _off46231_ _struct-t46232_)
                (cons '@struct-getf
                      (cons _struct-t46232_
                            (cons _off46231_ (cons _unchecked?46230_ '())))))))
        (if (##structure-instance-of? _self4621546223_ 'gxc#!struct-getf::t)
            (let* ((_e4621946237_ (##vector-ref _self4621546223_ '1))
                   (_struct-t46240_ _e4621946237_)
                   (_e4622046242_ (##vector-ref _self4621546223_ '2))
                   (_off46245_ _e4622046242_)
                   (_e4622146247_ (##vector-ref _self4621546223_ '3))
                   (_unchecked?46250_ _e4622146247_))
              (_K4621846234_ _unchecked?46250_ _off46245_ _struct-t46240_))
            (_E4621746227_)))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self46054_)
      (let* ((_self4605546063_ _self46054_)
             (_E4605746067_
              (lambda () (error '"No clause matching" _self4605546063_)))
             (_K4605846074_
              (lambda (_unchecked?46070_ _off46071_ _struct-t46072_)
                (cons '@struct-setf
                      (cons _struct-t46072_
                            (cons _off46071_ (cons _unchecked?46070_ '())))))))
        (if (##structure-instance-of? _self4605546063_ 'gxc#!struct-setf::t)
            (let* ((_e4605946077_ (##vector-ref _self4605546063_ '1))
                   (_struct-t46080_ _e4605946077_)
                   (_e4606046082_ (##vector-ref _self4605546063_ '2))
                   (_off46085_ _e4606046082_)
                   (_e4606146087_ (##vector-ref _self4605546063_ '3))
                   (_unchecked?46090_ _e4606146087_))
              (_K4605846074_ _unchecked?46090_ _off46085_ _struct-t46080_))
            (_E4605746067_)))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#!lambda::typedecl
    (lambda (_self45880_)
      (let* ((_self4588145891_ _self45880_)
             (_E4588345895_
              (lambda () (error '"No clause matching" _self4588145891_)))
             (_K4588445906_
              (lambda (_typedecl45898_
                       _inline45899_
                       _dispatch45900_
                       _arity45901_)
                (if _inline45899_
                    (let ((_$e45903_ _typedecl45898_))
                      (if _$e45903_
                          _$e45903_
                          (error '"Cannot generate typedecl for inline rules")))
                    (cons '@lambda
                          (cons _arity45901_ (cons _dispatch45900_ '())))))))
        (if (##structure-instance-of? _self4588145891_ 'gxc#!lambda::t)
            (let* ((_e4588545909_ (##vector-ref _self4588145891_ '1))
                   (_e4588645912_ (##vector-ref _self4588145891_ '2))
                   (_arity45915_ _e4588645912_)
                   (_e4588745917_ (##vector-ref _self4588145891_ '3))
                   (_dispatch45920_ _e4588745917_)
                   (_e4588845922_ (##vector-ref _self4588145891_ '4))
                   (_inline45925_ _e4588845922_)
                   (_e4588945927_ (##vector-ref _self4588145891_ '5))
                   (_typedecl45930_ _e4588945927_))
              (_K4588445906_
               _typedecl45930_
               _inline45925_
               _dispatch45920_
               _arity45915_))
            (_E4588345895_)))))
  (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
  (define gxc#!case-lambda::typedecl
    (lambda (_self45691_)
      (letrec ((_clause-e45693_
                (lambda (_clause45723_)
                  (let* ((_clause4572445732_ _clause45723_)
                         (_E4572645736_
                          (lambda ()
                            (error '"No clause matching" _clause4572445732_)))
                         (_K4572745742_
                          (lambda (_dispatch45739_ _arity45740_)
                            (cons _arity45740_ (cons _dispatch45739_ '())))))
                    (if (##structure-instance-of?
                         _clause4572445732_
                         'gxc#!lambda::t)
                        (let* ((_e4572845745_
                                (##vector-ref _clause4572445732_ '1))
                               (_e4572945748_
                                (##vector-ref _clause4572445732_ '2))
                               (_arity45751_ _e4572945748_)
                               (_e4573045753_
                                (##vector-ref _clause4572445732_ '3))
                               (_dispatch45756_ _e4573045753_))
                          (_K4572745742_ _dispatch45756_ _arity45751_))
                        (_E4572645736_))))))
        (let* ((_self4569445701_ _self45691_)
               (_E4569645705_
                (lambda () (error '"No clause matching" _self4569445701_)))
               (_K4569745712_
                (lambda (_clauses45708_)
                  (let ((_clauses45710_ (map _clause-e45693_ _clauses45708_)))
                    (cons '@case-lambda _clauses45710_)))))
          (if (##structure-instance-of? _self4569445701_ 'gxc#!case-lambda::t)
              (let* ((_e4569845715_ (##vector-ref _self4569445701_ '1))
                     (_e4569945718_ (##vector-ref _self4569445701_ '2))
                     (_clauses45721_ _e4569945718_))
                (_K4569745712_ _clauses45721_))
              (_E4569645705_))))))
  (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
  (define gxc#!kw-lambda::typedecl
    (lambda (_self45534_)
      (let* ((_self4553545543_ _self45534_)
             (_E4553745547_
              (lambda () (error '"No clause matching" _self4553545543_)))
             (_K4553845553_
              (lambda (_dispatch45550_ _table45551_)
                (cons '@kw-lambda
                      (cons _table45551_ (cons _dispatch45550_ '()))))))
        (if (##structure-instance-of? _self4553545543_ 'gxc#!kw-lambda::t)
            (let* ((_e4553945556_ (##vector-ref _self4553545543_ '1))
                   (_e4554045559_ (##vector-ref _self4553545543_ '2))
                   (_table45562_ _e4554045559_)
                   (_e4554145564_ (##vector-ref _self4553545543_ '3))
                   (_dispatch45567_ _e4554145564_))
              (_K4553845553_ _dispatch45567_ _table45562_))
            (_E4553745547_)))))
  (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f)
  (define gxc#!kw-lambda-primary::typedecl
    (lambda (_self45377_)
      (let* ((_self4537845386_ _self45377_)
             (_E4538045390_
              (lambda () (error '"No clause matching" _self4537845386_)))
             (_K4538145396_
              (lambda (_main45393_ _keys45394_)
                (cons '@kw-lambda-dispatch
                      (cons _keys45394_ (cons _main45393_ '()))))))
        (if (##structure-instance-of?
             _self4537845386_
             'gxc#!kw-lambda-primary::t)
            (let* ((_e4538245399_ (##vector-ref _self4537845386_ '1))
                   (_e4538345402_ (##vector-ref _self4537845386_ '2))
                   (_keys45405_ _e4538345402_)
                   (_e4538445407_ (##vector-ref _self4537845386_ '3))
                   (_main45410_ _e4538445407_))
              (_K4538145396_ _main45410_ _keys45405_))
            (_E4538045390_)))))
  (bind-method!
   gxc#!kw-lambda-primary::t
   'typedecl
   gxc#!kw-lambda-primary::typedecl
   '#f))
