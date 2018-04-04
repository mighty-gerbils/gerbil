(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<match>[1]#_g41365_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41366_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41367_|
    (gx#make-syntax-quote 'quote #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41368_|
    (gx#make-syntax-quote 'quasiquote #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41369_|
    (gx#make-syntax-quote 'apply #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41370_|
    (gx#make-syntax-quote '? #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41371_|
    (gx#make-syntax-quote 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41372_|
    (gx#make-syntax-quote 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41373_|
    (gx#make-syntax-quote 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41374_|
    (gx#make-syntax-quote 'cons #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41375_|
    (gx#make-syntax-quote 'cons* #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41376_|
    (gx#make-syntax-quote '@list #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41377_|
    (gx#make-syntax-quote 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41378_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41379_|
    (gx#make-syntax-quote 'vector #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41388_|
    (gx#make-syntax-quote 'else #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41393_|
    (gx#make-syntax-quote 'else #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41394_|
    (gx#make-syntax-quote '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41395_|
    (gx#make-syntax-quote '<...> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41400_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41401_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41402_|
    (gx#make-syntax-quote 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41403_|
    (gx#make-syntax-quote 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41404_|
    (gx#make-syntax-quote 'not #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core$<match>[1]#match-macro::t|
      (make-class-type
       'gerbil.core#match-macro::t
       (cons |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::t| '())
       '()
       'match-macro
       '()
       '#f))
    (define |gerbil/core$<match>[1]#match-macro?|
      (make-class-predicate |gerbil/core$<match>[1]#match-macro::t|))
    (define |gerbil/core$<match>[1]#make-match-macro|
      (lambda _$args29610_
        (apply make-class-instance
               |gerbil/core$<match>[1]#match-macro::t|
               _$args29610_)))
    (define |gerbil/core$<match>[1]#syntax-local-match-macro?|
      (lambda (_stx29607_)
        (if (gx#identifier? _stx29607_)
            (|gerbil/core$<match>[1]#match-macro?|
             (gx#syntax-local-value _stx29607_ false))
            '#f)))
    (define |gerbil/core$<match>[1]#parse-match-pattern__%|
      (lambda (_stx27913_ _match-stx27915_)
        (letrec ((_parse127917_
                  (lambda (_hd28270_)
                    (let* ((___stx3863638637_ _hd28270_)
                           (_g2829628438_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3863638637_))))
                      (let ((___kont3863938640_
                             (lambda (_L29370_ _L29372_)
                               (let* ((___stx3855638557_ _L29370_)
                                      (_g2938929422_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx3855638557_))))
                                 (let ((___kont3855938560_
                                        (lambda ()
                                          (cons '?: (cons _L29372_ '()))))
                                       (___kont3856138562_
                                        (lambda (_L29563_)
                                          (cons '?:
                                                (cons _L29372_
                                                      (cons (_parse127917_
                                                             _L29563_)
                                                            '())))))
                                       (___kont3856338564_
                                        (lambda (_L29533_)
                                          (cons '?:
                                                (cons _L29372_
                                                      (cons '=>:
                                                            (cons (_parse127917_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L29533_)
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (___kont3856538566_
                                        (lambda (_L29484_ _L29486_)
                                          (cons '?:
                                                (cons _L29372_
                                                      (cons '::
                                                            (cons _L29486_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '=>: (cons (_parse127917_ _L29484_) '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (___kont3856738568_
                                        (lambda ()
                                          (_parse-error27924_ _hd28270_))))
                                   (let ((_g2938529574_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 ___stx3855638557_)
                                                (let ((_e2939229553_
                                                       (gx#syntax-e
                                                        ___stx3855638557_)))
                                                  (let ((_tl2939429560_
                                                         (##cdr _e2939229553_))
                                                        (_hd2939329557_
                                                         (##car _e2939229553_)))
                                                    (if (gx#stx-null?
                                                         _tl2939429560_)
                                                        (___kont3856138562_
                                                         _hd2939329557_)
                                                        (if (gx#identifier?
                                                             _hd2939329557_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core$<match>[1]#_g41365_|
                         _hd2939329557_)
                        (if (gx#stx-pair? _tl2939429560_)
                            (let ((_e2939929523_ (gx#syntax-e _tl2939429560_)))
                              (let ((_tl2940129530_ (##cdr _e2939929523_))
                                    (_hd2940029527_ (##car _e2939929523_)))
                                (if (gx#stx-null? _tl2940129530_)
                                    (___kont3856338564_ _hd2940029527_)
                                    (___kont3856738568_))))
                            (___kont3856738568_))
                        (___kont3856738568_))
                    (if (gx#stx-datum? _hd2939329557_)
                        (let ((_e2940729450_ (gx#stx-e _hd2939329557_)))
                          (if (equal? _e2940729450_ '::)
                              (if (gx#stx-pair? _tl2939429560_)
                                  (let ((_e2940829454_
                                         (gx#syntax-e _tl2939429560_)))
                                    (let ((_tl2941029461_
                                           (##cdr _e2940829454_))
                                          (_hd2940929458_
                                           (##car _e2940829454_)))
                                      (if (gx#stx-pair? _tl2941029461_)
                                          (let ((_e2941129464_
                                                 (gx#syntax-e _tl2941029461_)))
                                            (let ((_tl2941329471_
                                                   (##cdr _e2941129464_))
                                                  (_hd2941229468_
                                                   (##car _e2941129464_)))
                                              (if (gx#identifier?
                                                   _hd2941229468_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g41366_|
                                                       _hd2941229468_)
                                                      (if (gx#stx-pair?
                                                           _tl2941329471_)
                                                          (let ((_e2941429474_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2941329471_)))
                    (let ((_tl2941629481_ (##cdr _e2941429474_))
                          (_hd2941529478_ (##car _e2941429474_)))
                      (if (gx#stx-null? _tl2941629481_)
                          (___kont3856538566_ _hd2941529478_ _hd2940929458_)
                          (___kont3856738568_))))
                  (___kont3856738568_))
              (___kont3856738568_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont3856738568_))))
                                          (___kont3856738568_))))
                                  (___kont3856738568_))
                              (___kont3856738568_)))
                        (___kont3856738568_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont3856738568_)))))
                                     (if (gx#stx-null? ___stx3855638557_)
                                         (___kont3855938560_)
                                         (_g2938529574_)))))))
                            (___kont3864138642_
                             (lambda (_L29275_)
                               (let* ((___stx3853838539_ _L29275_)
                                      (_g2928729298_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx3853838539_))))
                                 (let ((___kont3854138542_
                                        (lambda (_L29326_)
                                          (_parse127917_ _L29326_)))
                                       (___kont3854338544_
                                        (lambda ()
                                          (cons 'and:
                                                (gx#stx-map
                                                 _parse127917_
                                                 _L29275_)))))
                                   (if (gx#stx-pair? ___stx3853838539_)
                                       (let ((_e2929029316_
                                              (gx#syntax-e ___stx3853838539_)))
                                         (let ((_tl2929229323_
                                                (##cdr _e2929029316_))
                                               (_hd2929129320_
                                                (##car _e2929029316_)))
                                           (if (gx#stx-null? _tl2929229323_)
                                               (___kont3854138542_
                                                _hd2929129320_)
                                               (___kont3854338544_))))
                                       (___kont3854338544_))))))
                            (___kont3864338644_
                             (lambda (_L29190_)
                               (let* ((___stx3852038521_ _L29190_)
                                      (_g2920229213_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx3852038521_))))
                                 (let ((___kont3852338524_
                                        (lambda (_L29241_)
                                          (_parse127917_ _L29241_)))
                                       (___kont3852538526_
                                        (lambda ()
                                          (cons 'or:
                                                (gx#stx-map
                                                 _parse127917_
                                                 _L29190_)))))
                                   (if (gx#stx-pair? ___stx3852038521_)
                                       (let ((_e2920529231_
                                              (gx#syntax-e ___stx3852038521_)))
                                         (let ((_tl2920729238_
                                                (##cdr _e2920529231_))
                                               (_hd2920629235_
                                                (##car _e2920529231_)))
                                           (if (gx#stx-null? _tl2920729238_)
                                               (___kont3852338524_
                                                _hd2920629235_)
                                               (___kont3852538526_))))
                                       (___kont3852538526_))))))
                            (___kont3864538646_
                             (lambda (_L29160_)
                               (cons 'not:
                                     (cons (_parse127917_ _L29160_) '()))))
                            (___kont3864738648_
                             (lambda (_L29116_ _L29118_)
                               (cons 'cons:
                                     (cons (_parse127917_ _L29118_)
                                           (cons (_parse127917_ _L29116_)
                                                 '())))))
                            (___kont3864938650_
                             (lambda (_L29060_ _L29062_ _L29063_)
                               (if (gx#stx-null? _L29060_)
                                   (cons 'cons:
                                         (cons (_parse127917_ _L29063_)
                                               (cons (_parse127917_ _L29062_)
                                                     '())))
                                   (cons 'cons:
                                         (cons (_parse127917_ _L29063_)
                                               (cons (_parse127917_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'cons*)
                                                            (cons _L29062_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L29060_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                            (___kont3865138652_
                             (lambda (_L29012_) (_parse-list27919_ _L29012_)))
                            (___kont3865338654_
                             (lambda (_L28982_)
                               (cons 'box:
                                     (cons (_parse127917_ _L28982_) '()))))
                            (___kont3865538656_
                             (lambda (_L28945_)
                               (cons 'box:
                                     (cons (_parse127917_ _L28945_) '()))))
                            (___kont3865738658_
                             (lambda (_L28921_) (_parse127917_ _L28921_)))
                            (___kont3865938660_
                             (lambda (_L28883_)
                               (cons 'values:
                                     (cons (_parse-vector27920_ _L28883_)
                                           '()))))
                            (___kont3866138662_
                             (lambda (_L28855_)
                               (cons 'vector:
                                     (cons (_parse-vector27920_ _L28855_)
                                           '()))))
                            (___kont3866338664_
                             (lambda (_L28816_)
                               (cons 'vector:
                                     (cons (_parse-vector27920_
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g2882928832_
                                                              _g2883028835_)
                                                       (cons _g2882928832_
                                                             _g2883028835_))
                                                     '()
                                                     _L28816_)))
                                           '()))))
                            (___kont3866738668_
                             (lambda (_L28762_ _L28764_)
                               (cons 'struct:
                                     (cons (gx#syntax-local-value _L28764_)
                                           (cons (_parse-vector27920_ _L28762_)
                                                 '())))))
                            (___kont3866938670_
                             (lambda (_L28732_ _L28734_)
                               (cons 'class:
                                     (cons (gx#syntax-local-value _L28734_)
                                           (cons (_parse-class-body27922_
                                                  _L28732_)
                                                 '())))))
                            (___kont3867138672_
                             (lambda (_L28692_ _L28694_)
                               (cons '?:
                                     (cons (cons (gx#datum->syntax '#f 'cut)
                                                 (cons _L28694_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '<>)
                                                             (cons _L28692_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                            (___kont3867338674_
                             (lambda (_L28652_)
                               (cons 'datum: (cons (gx#stx-e _L28652_) '()))))
                            (___kont3867538676_
                             (lambda (_L28612_) (_parse-qq27923_ _L28612_)))
                            (___kont3867738678_
                             (lambda (_L28568_ _L28570_)
                               (cons 'apply:
                                     (cons _L28570_
                                           (cons (_parse127917_ _L28568_)
                                                 '())))))
                            (___kont3867938680_
                             (lambda (_L28516_)
                               (_parse127917_
                                (gx#core-apply-expander
                                 (gx#syntax-local-e _L28516_)
                                 (gx#stx-wrap-source
                                  (cons 'match: _hd28270_)
                                  (let ((_$e28527_ (gx#stx-source _hd28270_)))
                                    (if _$e28527_
                                        _$e28527_
                                        (gx#stx-source _stx27913_))))))))
                            (___kont3868138682_
                             (lambda (_L28490_) (cons 'any: '())))
                            (___kont3868338684_
                             (lambda (_L28474_)
                               (cons 'var: (cons _L28474_ '()))))
                            (___kont3868538686_
                             (lambda (_L28456_)
                               (cons 'datum: (cons (gx#stx-e _L28456_) '()))))
                            (___kont3868738688_
                             (lambda () (_parse-error27924_ _hd28270_))))
                        (let* ((_g2829428467_
                                (lambda ()
                                  (let ((_L28456_ ___stx3863638637_))
                                    (if (gx#stx-datum? _L28456_)
                                        (___kont3868538686_ _L28456_)
                                        (___kont3868738688_)))))
                               (_g2829328483_
                                (lambda ()
                                  (let ((_L28474_ ___stx3863638637_))
                                    (if (if (gx#identifier? _L28474_)
                                            (not (gx#ellipsis? _L28474_))
                                            '#f)
                                        (___kont3868338684_ _L28474_)
                                        (_g2829428467_)))))
                               (_g2829228499_
                                (lambda ()
                                  (let ((_L28490_ ___stx3863638637_))
                                    (if (gx#underscore? _L28490_)
                                        (___kont3868138682_ _L28490_)
                                        (_g2829328483_)))))
                               (___match3896338964_
                                (lambda (_e2842728506_
                                         _hd2842828510_
                                         _tl2842928513_)
                                  (let ((_L28516_ _hd2842828510_))
                                    (if (|gerbil/core$<match>[1]#syntax-local-match-macro?|
                                         _L28516_)
                                        (___kont3867938680_ _L28516_)
                                        (_g2829228499_)))))
                               (___match3889738898_
                                (lambda (_e2839528672_
                                         _hd2839628676_
                                         _tl2839728679_
                                         _e2839828682_
                                         _hd2839928686_
                                         _tl2840028689_)
                                  (let ((_L28692_ _hd2839928686_)
                                        (_L28694_ _hd2839628676_))
                                    (if (if (gx#identifier? _L28694_)
                                            (let ((_$e28707_
                                                   (gx#free-identifier=?
                                                    _L28694_
                                                    (gx#datum->syntax
                                                     '#f
                                                     'eq?))))
                                              (if _$e28707_
                                                  _$e28707_
                                                  (let ((_$e28711_
                                                         (gx#free-identifier=?
                                                          _L28694_
                                                          (gx#datum->syntax
                                                           '#f
                                                           'eqv?))))
                                                    (if _$e28711_
                                                        _$e28711_
                                                        (gx#free-identifier=?
                                                         _L28694_
                                                         (gx#datum->syntax
                                                          '#f
                                                          'equal?))))))
                                            '#f)
                                        (___kont3867138672_ _L28692_ _L28694_)
                                        (if (gx#identifier? _hd2839628676_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core$<match>[1]#_g41367_|
                                                 _hd2839628676_)
                                                (___kont3867338674_
                                                 _hd2839928686_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core$<match>[1]#_g41368_|
                                                     _hd2839628676_)
                                                    (___kont3867538676_
                                                     _hd2839928686_)
                                                    (___match3896338964_
                                                     _e2839528672_
                                                     _hd2839628676_
                                                     _tl2839728679_)))
                                            (___match3896338964_
                                             _e2839528672_
                                             _hd2839628676_
                                             _tl2839728679_))))))
                               (___match3888338884_
                                (lambda (_e2839028722_
                                         _hd2839128726_
                                         _tl2839228729_)
                                  (let ((_L28732_ _tl2839228729_)
                                        (_L28734_ _hd2839128726_))
                                    (if (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-class-info?|
                                         _L28734_)
                                        (___kont3866938670_ _L28732_ _L28734_)
                                        (if (gx#stx-pair? _tl2839228729_)
                                            (let ((_e2839828682_
                                                   (gx#syntax-e
                                                    _tl2839228729_)))
                                              (let ((_tl2840028689_
                                                     (##cdr _e2839828682_))
                                                    (_hd2839928686_
                                                     (##car _e2839828682_)))
                                                (if (gx#stx-null?
                                                     _tl2840028689_)
                                                    (___match3889738898_
                                                     _e2839028722_
                                                     _hd2839128726_
                                                     _tl2839228729_
                                                     _e2839828682_
                                                     _hd2839928686_
                                                     _tl2840028689_)
                                                    (if (gx#identifier?
                                                         _hd2839128726_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core$<match>[1]#_g41367_|
                                                             _hd2839128726_)
                                                            (___match3896338964_
                                                             _e2839028722_
                                                             _hd2839128726_
                                                             _tl2839228729_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core$<match>[1]#_g41368_|
                         _hd2839128726_)
                        (___match3896338964_
                         _e2839028722_
                         _hd2839128726_
                         _tl2839228729_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g41369_|
                             _hd2839128726_)
                            (if (gx#stx-pair? _tl2840028689_)
                                (let ((_e2842328558_
                                       (gx#syntax-e _tl2840028689_)))
                                  (let ((_tl2842528565_ (##cdr _e2842328558_))
                                        (_hd2842428562_ (##car _e2842328558_)))
                                    (if (gx#stx-null? _tl2842528565_)
                                        (___kont3867738678_
                                         _hd2842428562_
                                         _hd2839928686_)
                                        (___match3896338964_
                                         _e2839028722_
                                         _hd2839128726_
                                         _tl2839228729_))))
                                (___match3896338964_
                                 _e2839028722_
                                 _hd2839128726_
                                 _tl2839228729_))
                            (___match3896338964_
                             _e2839028722_
                             _hd2839128726_
                             _tl2839228729_))))
                (___match3896338964_
                 _e2839028722_
                 _hd2839128726_
                 _tl2839228729_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___match3896338964_
                                             _e2839028722_
                                             _hd2839128726_
                                             _tl2839228729_))))))
                               (___match3887738878_
                                (lambda (_e2838528752_
                                         _hd2838628756_
                                         _tl2838728759_)
                                  (let ((_L28762_ _tl2838728759_)
                                        (_L28764_ _hd2838628756_))
                                    (if (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
                                         _L28764_)
                                        (___kont3866738668_ _L28762_ _L28764_)
                                        (___match3888338884_
                                         _e2838528752_
                                         _hd2838628756_
                                         _tl2838728759_)))))
                               (___match3887138872_
                                (lambda (_e2837328782_
                                         ___splice3866538666_
                                         _target2837428786_
                                         _tl2837628789_)
                                  (letrec ((_loop2837728792_
                                            (lambda (_hd2837528796_
                                                     _body2838128799_)
                                              (if (gx#stx-pair? _hd2837528796_)
                                                  (let ((_e2837828802_
                                                         (gx#syntax-e
                                                          _hd2837528796_)))
                                                    (let ((_lp-tl2838028809_
                                                           (##cdr _e2837828802_))
                                                          (_lp-hd2837928806_
                                                           (##car _e2837828802_)))
                                                      (_loop2837728792_
                                                       _lp-tl2838028809_
                                                       (cons _lp-hd2837928806_
                                                             _body2838128799_))))
                                                  (let ((_body2838228812_
                                                         (reverse _body2838128799_)))
                                                    (___kont3866338664_
                                                     _body2838228812_))))))
                                    (_loop2837728792_
                                     _target2837428786_
                                     '()))))
                               (_g2828428838_
                                (lambda ()
                                  (if (gx#stx-vector? ___stx3863638637_)
                                      (let ((_e2837328782_
                                             (vector->list
                                              (gx#syntax-e
                                               ___stx3863638637_))))
                                        (if (gx#stx-pair/null? _e2837328782_)
                                            (let ((___splice3866538666_
                                                   (gx#syntax-split-splice
                                                    _e2837328782_
                                                    '0)))
                                              (let ((_tl2837628789_
                                                     (##vector-ref
                                                      ___splice3866538666_
                                                      '1))
                                                    (_target2837428786_
                                                     (##vector-ref
                                                      ___splice3866538666_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl2837628789_)
                                                    (___match3887138872_
                                                     _e2837328782_
                                                     ___splice3866538666_
                                                     _target2837428786_
                                                     _tl2837628789_)
                                                    (_g2829228499_))))
                                            (_g2829228499_)))
                                      (_g2829228499_))))
                               (_g2828028955_
                                (lambda ()
                                  (if (gx#stx-box? ___stx3863638637_)
                                      (let ((_e2835628941_
                                             (unbox (gx#syntax-e
                                                     ___stx3863638637_))))
                                        (___kont3865538656_ _e2835628941_))
                                      (_g2828428838_))))
                               (___match3872538726_
                                (lambda (_e2831129180_
                                         _hd2831229184_
                                         _tl2831329187_)
                                  (let ((_L29190_ _tl2831329187_))
                                    (if (gx#stx-list? _L29190_)
                                        (___kont3864338644_ _L29190_)
                                        (___match3887738878_
                                         _e2831129180_
                                         _hd2831229184_
                                         _tl2831329187_)))))
                               (___match3871538716_
                                (lambda (_e2830729265_
                                         _hd2830829269_
                                         _tl2830929272_)
                                  (let ((_L29275_ _tl2830929272_))
                                    (if (gx#stx-list? _L29275_)
                                        (___kont3864138642_ _L29275_)
                                        (___match3887738878_
                                         _e2830729265_
                                         _hd2830829269_
                                         _tl2830929272_))))))
                          (if (gx#stx-pair? ___stx3863638637_)
                              (let ((_e2830029350_
                                     (gx#syntax-e ___stx3863638637_)))
                                (let ((_tl2830229357_ (##cdr _e2830029350_))
                                      (_hd2830129354_ (##car _e2830029350_)))
                                  (if (gx#identifier? _hd2830129354_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g41370_|
                                           _hd2830129354_)
                                          (if (gx#stx-pair? _tl2830229357_)
                                              (let ((_e2830329360_
                                                     (gx#syntax-e
                                                      _tl2830229357_)))
                                                (let ((_tl2830529367_
                                                       (##cdr _e2830329360_))
                                                      (_hd2830429364_
                                                       (##car _e2830329360_)))
                                                  (___kont3863938640_
                                                   _tl2830529367_
                                                   _hd2830429364_)))
                                              (___match3887738878_
                                               _e2830029350_
                                               _hd2830129354_
                                               _tl2830229357_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g41371_|
                                               _hd2830129354_)
                                              (___match3871538716_
                                               _e2830029350_
                                               _hd2830129354_
                                               _tl2830229357_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g41372_|
                                                   _hd2830129354_)
                                                  (___match3872538726_
                                                   _e2830029350_
                                                   _hd2830129354_
                                                   _tl2830229357_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g41373_|
                                                       _hd2830129354_)
                                                      (if (gx#stx-pair?
                                                           _tl2830229357_)
                                                          (let ((_e2831829150_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2830229357_)))
                    (let ((_tl2832029157_ (##cdr _e2831829150_))
                          (_hd2831929154_ (##car _e2831829150_)))
                      (if (gx#stx-null? _tl2832029157_)
                          (___kont3864538646_ _hd2831929154_)
                          (___match3887738878_
                           _e2830029350_
                           _hd2830129354_
                           _tl2830229357_))))
                  (___match3887738878_
                   _e2830029350_
                   _hd2830129354_
                   _tl2830229357_))
              (if (gx#free-identifier=?
                   |gerbil/core$<match>[1]#_g41374_|
                   _hd2830129354_)
                  (if (gx#stx-pair? _tl2830229357_)
                      (let ((_e2832629096_ (gx#syntax-e _tl2830229357_)))
                        (let ((_tl2832829103_ (##cdr _e2832629096_))
                              (_hd2832729100_ (##car _e2832629096_)))
                          (if (gx#stx-pair? _tl2832829103_)
                              (let ((_e2832929106_
                                     (gx#syntax-e _tl2832829103_)))
                                (let ((_tl2833129113_ (##cdr _e2832929106_))
                                      (_hd2833029110_ (##car _e2832929106_)))
                                  (if (gx#stx-null? _tl2833129113_)
                                      (___kont3864738648_
                                       _hd2833029110_
                                       _hd2832729100_)
                                      (___match3887738878_
                                       _e2830029350_
                                       _hd2830129354_
                                       _tl2830229357_))))
                              (___match3887738878_
                               _e2830029350_
                               _hd2830129354_
                               _tl2830229357_))))
                      (___match3887738878_
                       _e2830029350_
                       _hd2830129354_
                       _tl2830229357_))
                  (if (gx#free-identifier=?
                       |gerbil/core$<match>[1]#_g41375_|
                       _hd2830129354_)
                      (if (gx#stx-pair? _tl2830229357_)
                          (let ((_e2833829040_ (gx#syntax-e _tl2830229357_)))
                            (let ((_tl2834029047_ (##cdr _e2833829040_))
                                  (_hd2833929044_ (##car _e2833829040_)))
                              (if (gx#stx-pair? _tl2834029047_)
                                  (let ((_e2834129050_
                                         (gx#syntax-e _tl2834029047_)))
                                    (let ((_tl2834329057_
                                           (##cdr _e2834129050_))
                                          (_hd2834229054_
                                           (##car _e2834129050_)))
                                      (___kont3864938650_
                                       _tl2834329057_
                                       _hd2834229054_
                                       _hd2833929044_)))
                                  (___match3887738878_
                                   _e2830029350_
                                   _hd2830129354_
                                   _tl2830229357_))))
                          (___match3887738878_
                           _e2830029350_
                           _hd2830129354_
                           _tl2830229357_))
                      (if (gx#free-identifier=?
                           |gerbil/core$<match>[1]#_g41376_|
                           _hd2830129354_)
                          (___kont3865138652_ _tl2830229357_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g41377_|
                               _hd2830129354_)
                              (if (gx#stx-pair? _tl2830229357_)
                                  (let ((_e2835228972_
                                         (gx#syntax-e _tl2830229357_)))
                                    (let ((_tl2835428979_
                                           (##cdr _e2835228972_))
                                          (_hd2835328976_
                                           (##car _e2835228972_)))
                                      (if (gx#stx-null? _tl2835428979_)
                                          (___kont3865338654_ _hd2835328976_)
                                          (___match3887738878_
                                           _e2830029350_
                                           _hd2830129354_
                                           _tl2830229357_))))
                                  (___match3887738878_
                                   _e2830029350_
                                   _hd2830129354_
                                   _tl2830229357_))
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g41378_|
                                   _hd2830129354_)
                                  (if (gx#stx-pair? _tl2830229357_)
                                      (let ((_e2836128911_
                                             (gx#syntax-e _tl2830229357_)))
                                        (let ((_tl2836328918_
                                               (##cdr _e2836128911_))
                                              (_hd2836228915_
                                               (##car _e2836128911_)))
                                          (if (gx#stx-null? _tl2836328918_)
                                              (___kont3865738658_
                                               _hd2836228915_)
                                              (___kont3865938660_
                                               _tl2830229357_))))
                                      (___kont3865938660_ _tl2830229357_))
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g41379_|
                                       _hd2830129354_)
                                      (___kont3866138662_ _tl2830229357_)
                                      (___match3887738878_
                                       _e2830029350_
                                       _hd2830129354_
                                       _tl2830229357_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (___match3887738878_
                                       _e2830029350_
                                       _hd2830129354_
                                       _tl2830229357_))))
                              (_g2828028955_)))))))
                 (_parse-list27919_
                  (lambda (_body28099_)
                    (let* ((___stx3896638967_ _body28099_)
                           (_g2810528134_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3896638967_))))
                      (let ((___kont3896938970_
                             (lambda (_L28252_) (_parse127917_ _L28252_)))
                            (___kont3897138972_
                             (lambda (_L28204_ _L28206_ _L28207_)
                               (cons 'splice:
                                     (cons (_parse127917_ _L28207_)
                                           (cons (_parse-list27919_ _L28204_)
                                                 '())))))
                            (___kont3897338974_
                             (lambda (_L28162_ _L28164_)
                               (cons 'cons:
                                     (cons (_parse127917_ _L28164_)
                                           (cons (_parse-list27919_ _L28162_)
                                                 '())))))
                            (___kont3897538976_
                             (lambda ()
                               (if (gx#stx-null? _body28099_)
                                   (cons 'null: '())
                                   (if (not (gx#stx-pair? _body28099_))
                                       (_parse127917_ _body28099_)
                                       (_parse-error27924_ _body28099_))))))
                        (let* ((___match3901539016_
                                (lambda (_e2812628152_
                                         _hd2812728156_
                                         _tl2812828159_)
                                  (let ((_L28162_ _tl2812828159_)
                                        (_L28164_ _hd2812728156_))
                                    (if (not (gx#ellipsis? _L28164_))
                                        (___kont3897338974_ _L28162_ _L28164_)
                                        (___kont3897538976_)))))
                               (___match3900939010_
                                (lambda (_e2811828184_
                                         _hd2811928188_
                                         _tl2812028191_
                                         _e2812128194_
                                         _hd2812228198_
                                         _tl2812328201_)
                                  (let ((_L28204_ _tl2812328201_)
                                        (_L28206_ _hd2812228198_)
                                        (_L28207_ _hd2811928188_))
                                    (if (gx#ellipsis? _L28206_)
                                        (___kont3897138972_
                                         _L28204_
                                         _L28206_
                                         _L28207_)
                                        (___match3901539016_
                                         _e2811828184_
                                         _hd2811928188_
                                         _tl2812028191_))))))
                          (if (gx#stx-pair? ___stx3896638967_)
                              (let ((_e2810828228_
                                     (gx#syntax-e ___stx3896638967_)))
                                (let ((_tl2811028235_ (##cdr _e2810828228_))
                                      (_hd2810928232_ (##car _e2810828228_)))
                                  (if (gx#stx-datum? _hd2810928232_)
                                      (let ((_e2811128238_
                                             (gx#stx-e _hd2810928232_)))
                                        (if (equal? _e2811128238_ '::)
                                            (if (gx#stx-pair? _tl2811028235_)
                                                (let ((_e2811228242_
                                                       (gx#syntax-e
                                                        _tl2811028235_)))
                                                  (let ((_tl2811428249_
                                                         (##cdr _e2811228242_))
                                                        (_hd2811328246_
                                                         (##car _e2811228242_)))
                                                    (if (gx#stx-null?
                                                         _tl2811428249_)
                                                        (___kont3896938970_
                                                         _hd2811328246_)
                                                        (___match3900939010_
                                                         _e2810828228_
                                                         _hd2810928232_
                                                         _tl2811028235_
                                                         _e2811228242_
                                                         _hd2811328246_
                                                         _tl2811428249_))))
                                                (___match3901539016_
                                                 _e2810828228_
                                                 _hd2810928232_
                                                 _tl2811028235_))
                                            (if (gx#stx-pair? _tl2811028235_)
                                                (let ((_e2812128194_
                                                       (gx#syntax-e
                                                        _tl2811028235_)))
                                                  (let ((_tl2812328201_
                                                         (##cdr _e2812128194_))
                                                        (_hd2812228198_
                                                         (##car _e2812128194_)))
                                                    (___match3900939010_
                                                     _e2810828228_
                                                     _hd2810928232_
                                                     _tl2811028235_
                                                     _e2812128194_
                                                     _hd2812228198_
                                                     _tl2812328201_)))
                                                (___match3901539016_
                                                 _e2810828228_
                                                 _hd2810928232_
                                                 _tl2811028235_))))
                                      (if (gx#stx-pair? _tl2811028235_)
                                          (let ((_e2812128194_
                                                 (gx#syntax-e _tl2811028235_)))
                                            (let ((_tl2812328201_
                                                   (##cdr _e2812128194_))
                                                  (_hd2812228198_
                                                   (##car _e2812128194_)))
                                              (___match3900939010_
                                               _e2810828228_
                                               _hd2810928232_
                                               _tl2811028235_
                                               _e2812128194_
                                               _hd2812228198_
                                               _tl2812328201_)))
                                          (___match3901539016_
                                           _e2810828228_
                                           _hd2810928232_
                                           _tl2811028235_)))))
                              (___kont3897538976_)))))))
                 (_parse-vector27920_
                  (lambda (_body28096_)
                    (if (_simple-vector?27921_ _body28096_)
                        (cons 'simple:
                              (cons (gx#stx-map _parse127917_ _body28096_)
                                    '()))
                        (cons 'list:
                              (cons (_parse-list27919_ _body28096_) '())))))
                 (_simple-vector?27921_
                  (lambda (_body28033_)
                    (let* ((___stx3901839019_ _body28033_)
                           (_g2803728049_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3901839019_))))
                      (let ((___kont3902139022_
                             (lambda (_L28077_ _L28079_)
                               (if (not (gx#ellipsis? _L28079_))
                                   (_simple-vector?27921_ _L28077_)
                                   '#f)))
                            (___kont3902339024_
                             (lambda () (gx#stx-null? _body28033_))))
                        (if (gx#stx-pair? ___stx3901839019_)
                            (let ((_e2804128067_
                                   (gx#syntax-e ___stx3901839019_)))
                              (let ((_tl2804328074_ (##cdr _e2804128067_))
                                    (_hd2804228071_ (##car _e2804128067_)))
                                (___kont3902139022_
                                 _tl2804328074_
                                 _hd2804228071_)))
                            (___kont3902339024_))))))
                 (_parse-class-body27922_
                  (lambda (_body27942_)
                    (let _recur27945_ ((_rest27948_ _body27942_))
                      (let* ((___stx3903439035_ _rest27948_)
                             (_g2795227968_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx3903439035_))))
                        (let ((___kont3903739038_
                               (lambda (_L28006_ _L28008_ _L28009_)
                                 (cons* _L28009_
                                        (_parse127917_ _L28008_)
                                        (_recur27945_ _L28006_))))
                              (___kont3903939040_
                               (lambda ()
                                 (if (gx#stx-null? _rest27948_)
                                     '()
                                     (_parse-error27924_ _rest27948_)))))
                          (let ((___match3905339054_
                                 (lambda (_e2795727986_
                                          _hd2795827990_
                                          _tl2795927993_
                                          _e2796027996_
                                          _hd2796128000_
                                          _tl2796228003_)
                                   (let ((_L28006_ _tl2796228003_)
                                         (_L28008_ _hd2796128000_)
                                         (_L28009_ _hd2795827990_))
                                     (if (gx#stx-keyword? _L28009_)
                                         (___kont3903739038_
                                          _L28006_
                                          _L28008_
                                          _L28009_)
                                         (___kont3903939040_))))))
                            (if (gx#stx-pair? ___stx3903439035_)
                                (let ((_e2795727986_
                                       (gx#syntax-e ___stx3903439035_)))
                                  (let ((_tl2795927993_ (##cdr _e2795727986_))
                                        (_hd2795827990_ (##car _e2795727986_)))
                                    (if (gx#stx-pair? _tl2795927993_)
                                        (let ((_e2796027996_
                                               (gx#syntax-e _tl2795927993_)))
                                          (let ((_tl2796228003_
                                                 (##cdr _e2796027996_))
                                                (_hd2796128000_
                                                 (##car _e2796027996_)))
                                            (___match3905339054_
                                             _e2795727986_
                                             _hd2795827990_
                                             _tl2795927993_
                                             _e2796027996_
                                             _hd2796128000_
                                             _tl2796228003_)))
                                        (___kont3903939040_))))
                                (___kont3903939040_))))))))
                 (_parse-qq27923_
                  (lambda (_hd27929_)
                    (let ((_g2793127938_
                           (lambda (_g2793227934_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2793227934_))))
                      (_g2793127938_ _hd27929_))))
                 (_parse-error27924_
                  (lambda (_hd27926_)
                    (apply gx#raise-syntax-error
                           '#f
                           '"Bad syntax; illegal pattern"
                           (if _match-stx27915_
                               (cons _match-stx27915_
                                     (cons _stx27913_ (cons _hd27926_ '())))
                               (cons _stx27913_ (cons _hd27926_ '())))))))
          (_parse127917_ _stx27913_))))
    (define |gerbil/core$<match>[1]#parse-match-pattern__0|
      (lambda (_stx29597_)
        (let ((_match-stx29600_ '#f))
          (|gerbil/core$<match>[1]#parse-match-pattern__%|
           _stx29597_
           _match-stx29600_))))
    (define |gerbil/core$<match>[1]#parse-match-pattern|
      (lambda _g41381_
        (let ((_g41380_ (length _g41381_)))
          (cond ((##fx= _g41380_ 1)
                 (apply |gerbil/core$<match>[1]#parse-match-pattern__0|
                        _g41381_))
                ((##fx= _g41380_ 2)
                 (apply |gerbil/core$<match>[1]#parse-match-pattern__%|
                        _g41381_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core$<match>[1]#parse-match-pattern|
                  _g41381_))))))
    (define |gerbil/core$<match>[1]#match-pattern?|
      (lambda (_stx27897_)
        (call-with-escape
         (lambda (_E27901_)
           (with-exception-handler
            (let ((_E!27904_ (current-exception-handler)))
              (lambda (_e27907_)
                (if (gx#syntax-error? _e27907_)
                    (_E27901_ '#f)
                    (_E!27904_ _e27907_))))
            (lambda ()
              (begin
                (|gerbil/core$<match>[1]#parse-match-pattern__0| _stx27897_)
                '#t)))))))
    (define |gerbil/core$<match>[1]#match-pattern-vars|
      (lambda (_ptree26602_)
        (letrec ((_loop26605_
                  (lambda (_ptree26892_ _vars26894_ _K26895_)
                    (let* ((___stx3916439165_ _ptree26892_)
                           (_g2690827018_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3916439165_))))
                      (let ((___kont3916739168_
                             (lambda (_L27648_)
                               (let* ((___stx3907239073_ _L27648_)
                                      (_g2766527705_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx3907239073_))))
                                 (let ((___kont3907539076_
                                        (lambda (_L27878_)
                                          (_loop26605_
                                           _L27878_
                                           _vars26894_
                                           _K26895_)))
                                       (___kont3907739078_
                                        (lambda (_L27845_)
                                          (_loop26605_
                                           _L27845_
                                           _vars26894_
                                           _K26895_)))
                                       (___kont3907939080_
                                        (lambda (_L27781_)
                                          (_loop26605_
                                           _L27781_
                                           _vars26894_
                                           _K26895_)))
                                       (___kont3908139082_
                                        (lambda () (_K26895_ _vars26894_))))
                                   (if (gx#stx-pair? ___stx3907239073_)
                                       (let ((_e2766827868_
                                              (gx#syntax-e ___stx3907239073_)))
                                         (let ((_tl2767027875_
                                                (##cdr _e2766827868_))
                                               (_hd2766927872_
                                                (##car _e2766827868_)))
                                           (if (gx#stx-null? _tl2767027875_)
                                               (___kont3907539076_
                                                _hd2766927872_)
                                               (if (gx#stx-pair?
                                                    _tl2767027875_)
                                                   (let ((_e2767527821_
                                                          (gx#syntax-e
                                                           _tl2767027875_)))
                                                     (let ((_tl2767727828_
                                                            (##cdr _e2767527821_))
                                                           (_hd2767627825_
                                                            (##car _e2767527821_)))
                                                       (if (gx#stx-datum?
                                                            _hd2767627825_)
                                                           (let ((_e2767827831_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd2767627825_)))
                     (if (equal? _e2767827831_ '=>:)
                         (if (gx#stx-pair? _tl2767727828_)
                             (let ((_e2767927835_
                                    (gx#syntax-e _tl2767727828_)))
                               (let ((_tl2768127842_ (##cdr _e2767927835_))
                                     (_hd2768027839_ (##car _e2767927835_)))
                                 (if (gx#stx-null? _tl2768127842_)
                                     (___kont3907739078_ _hd2768027839_)
                                     (___kont3908139082_))))
                             (___kont3908139082_))
                         (if (equal? _e2767827831_ '::)
                             (if (gx#stx-pair? _tl2767727828_)
                                 (let ((_e2769027747_
                                        (gx#syntax-e _tl2767727828_)))
                                   (let ((_tl2769227754_ (##cdr _e2769027747_))
                                         (_hd2769127751_
                                          (##car _e2769027747_)))
                                     (if (gx#stx-pair? _tl2769227754_)
                                         (let ((_e2769327757_
                                                (gx#syntax-e _tl2769227754_)))
                                           (let ((_tl2769527764_
                                                  (##cdr _e2769327757_))
                                                 (_hd2769427761_
                                                  (##car _e2769327757_)))
                                             (if (gx#stx-datum? _hd2769427761_)
                                                 (let ((_e2769627767_
                                                        (gx#stx-e
                                                         _hd2769427761_)))
                                                   (if (equal? _e2769627767_
                                                               '=>:)
                                                       (if (gx#stx-pair?
                                                            _tl2769527764_)
                                                           (let ((_e2769727771_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl2769527764_)))
                     (let ((_tl2769927778_ (##cdr _e2769727771_))
                           (_hd2769827775_ (##car _e2769727771_)))
                       (if (gx#stx-null? _tl2769927778_)
                           (___kont3907939080_ _hd2769827775_)
                           (___kont3908139082_))))
                   (___kont3908139082_))
               (___kont3908139082_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont3908139082_))))
                                         (___kont3908139082_))))
                                 (___kont3908139082_))
                             (___kont3908139082_))))
                   (___kont3908139082_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont3908139082_)))))
                                       (___kont3908139082_))))))
                            (___kont3916939170_
                             (lambda (_L27535_ _L27537_)
                               (let* ((___stx3905639057_ _L27535_)
                                      (_g2755327565_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx3905639057_))))
                                 (let ((___kont3905939060_
                                        (lambda (_L27593_ _L27595_)
                                          (_loop26605_
                                           _L27595_
                                           _vars26894_
                                           (lambda (_g2760727609_)
                                             (_loop26605_
                                              (cons _L27537_ _L27593_)
                                              _g2760727609_
                                              _K26895_)))))
                                       (___kont3906139062_
                                        (lambda () (_K26895_ _vars26894_))))
                                   (if (gx#stx-pair? ___stx3905639057_)
                                       (let ((_e2755727583_
                                              (gx#syntax-e ___stx3905639057_)))
                                         (let ((_tl2755927590_
                                                (##cdr _e2755727583_))
                                               (_hd2755827587_
                                                (##car _e2755727583_)))
                                           (___kont3905939060_
                                            _tl2755927590_
                                            _hd2755827587_)))
                                       (___kont3906139062_))))))
                            (___kont3917139172_
                             (lambda (_L27504_)
                               (_loop26605_ _L27504_ _vars26894_ _K26895_)))
                            (___kont3917339174_
                             (lambda (_L27450_ _L27452_)
                               (_loop26605_
                                _L27452_
                                _vars26894_
                                (lambda (_g2746727469_)
                                  (_loop26605_
                                   _L27450_
                                   _g2746727469_
                                   _K26895_)))))
                            (___kont3917539176_
                             (lambda (_L27386_ _L27388_)
                               (_loop26605_
                                _L27388_
                                _vars26894_
                                (lambda (_g2740327405_)
                                  (_loop26605_
                                   _L27386_
                                   _g2740327405_
                                   _K26895_)))))
                            (___kont3917739178_
                             (lambda (_L27331_)
                               (_loop26605_ _L27331_ _vars26894_ _K26895_)))
                            (___kont3917939180_
                             (lambda (_L27281_ _L27283_)
                               (_loop-vector26607_
                                _L27281_
                                _vars26894_
                                _K26895_)))
                            (___kont3918139182_
                             (lambda (_L27238_)
                               (_loop-vector26607_
                                _L27238_
                                _vars26894_
                                _K26895_)))
                            (___kont3918339184_
                             (lambda (_L27181_)
                               (_loop-class-list26609_
                                _L27181_
                                _vars26894_
                                _K26895_)))
                            (___kont3918539186_
                             (lambda (_L27122_ _L27124_)
                               (_loop26605_ _L27122_ _vars26894_ _K26895_)))
                            (___kont3918739188_
                             (lambda (_L27060_)
                               (if (find (lambda (_g2707527077_)
                                           (gx#bound-identifier=?
                                            _g2707527077_
                                            _L27060_))
                                         _vars26894_)
                                   (_K26895_ _vars26894_)
                                   (_K26895_ (cons _L27060_ _vars26894_)))))
                            (___kont3918939190_
                             (lambda () (_K26895_ _vars26894_))))
                        (let* ((___match3932139322_
                                (lambda (_e2696527261_
                                         _hd2696627265_
                                         _tl2696727268_
                                         _e2696827271_
                                         _hd2696927275_
                                         _tl2697027278_)
                                  (let ((_L27281_ _hd2696927275_)
                                        (_L27283_ _hd2696627265_))
                                    (if (let ((_$e27296_
                                               (gx#stx-eq? 'values: _L27283_)))
                                          (if _$e27296_
                                              _$e27296_
                                              (gx#stx-eq? 'vector: _L27283_)))
                                        (___kont3917939180_ _L27281_ _L27283_)
                                        (if (gx#stx-datum? _hd2696627265_)
                                            (let ((_e2697527214_
                                                   (gx#stx-e _hd2696627265_)))
                                              (if (equal? _e2697527214_
                                                          'struct:)
                                                  (___kont3918939190_)
                                                  (if (equal? _e2697527214_
                                                              'class:)
                                                      (___kont3918939190_)
                                                      (if (equal? _e2697527214_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'apply:)
                  (___kont3918939190_)
                  (if (equal? _e2697527214_ 'var:)
                      (___kont3918739188_ _hd2696927275_)
                      (___kont3918939190_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont3918939190_))))))
                               (___match3921539216_
                                (lambda (_e2692027525_
                                         _hd2692127529_
                                         _tl2692227532_)
                                  (let ((_L27535_ _tl2692227532_)
                                        (_L27537_ _hd2692127529_))
                                    (if (let ((_$e27548_
                                               (gx#stx-eq? 'and: _L27537_)))
                                          (if _$e27548_
                                              _$e27548_
                                              (gx#stx-eq? 'or: _L27537_)))
                                        (___kont3916939170_ _L27535_ _L27537_)
                                        (if (gx#stx-datum? _hd2692127529_)
                                            (let ((_e2692727490_
                                                   (gx#stx-e _hd2692127529_)))
                                              (if (equal? _e2692727490_ 'not:)
                                                  (if (gx#stx-pair?
                                                       _tl2692227532_)
                                                      (let ((_e2692827494_
                                                             (gx#syntax-e
                                                              _tl2692227532_)))
                                                        (let ((_tl2693027501_
                                                               (##cdr _e2692827494_))
                                                              (_hd2692927498_
                                                               (##car _e2692827494_)))
                                                          (if (gx#stx-null?
                                                               _tl2693027501_)
                                                              (___kont3917139172_
                                                               _hd2692927498_)
                                                              (___kont3918939190_))))
                                                      (___kont3918939190_))
                                                  (if (equal? _e2692727490_
                                                              'cons:)
                                                      (if (gx#stx-pair?
                                                           _tl2692227532_)
                                                          (let ((_e2693727430_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2692227532_)))
                    (let ((_tl2693927437_ (##cdr _e2693727430_))
                          (_hd2693827434_ (##car _e2693727430_)))
                      (if (gx#stx-pair? _tl2693927437_)
                          (let ((_e2694027440_ (gx#syntax-e _tl2693927437_)))
                            (let ((_tl2694227447_ (##cdr _e2694027440_))
                                  (_hd2694127444_ (##car _e2694027440_)))
                              (if (gx#stx-null? _tl2694227447_)
                                  (___kont3917339174_
                                   _hd2694127444_
                                   _hd2693827434_)
                                  (___kont3918939190_))))
                          (if (gx#stx-null? _tl2693927437_)
                              (___match3932139322_
                               _e2692027525_
                               _hd2692127529_
                               _tl2692227532_
                               _e2693727430_
                               _hd2693827434_
                               _tl2693927437_)
                              (___kont3918939190_)))))
                  (___kont3918939190_))
              (if (equal? _e2692727490_ 'splice:)
                  (if (gx#stx-pair? _tl2692227532_)
                      (let ((_e2694927366_ (gx#syntax-e _tl2692227532_)))
                        (let ((_tl2695127373_ (##cdr _e2694927366_))
                              (_hd2695027370_ (##car _e2694927366_)))
                          (if (gx#stx-pair? _tl2695127373_)
                              (let ((_e2695227376_
                                     (gx#syntax-e _tl2695127373_)))
                                (let ((_tl2695427383_ (##cdr _e2695227376_))
                                      (_hd2695327380_ (##car _e2695227376_)))
                                  (if (gx#stx-null? _tl2695427383_)
                                      (___kont3917539176_
                                       _hd2695327380_
                                       _hd2695027370_)
                                      (___kont3918939190_))))
                              (if (gx#stx-null? _tl2695127373_)
                                  (___match3932139322_
                                   _e2692027525_
                                   _hd2692127529_
                                   _tl2692227532_
                                   _e2694927366_
                                   _hd2695027370_
                                   _tl2695127373_)
                                  (___kont3918939190_)))))
                      (___kont3918939190_))
                  (if (equal? _e2692727490_ 'box:)
                      (if (gx#stx-pair? _tl2692227532_)
                          (let ((_e2696027321_ (gx#syntax-e _tl2692227532_)))
                            (let ((_tl2696227328_ (##cdr _e2696027321_))
                                  (_hd2696127325_ (##car _e2696027321_)))
                              (if (gx#stx-null? _tl2696227328_)
                                  (___kont3917739178_ _hd2696127325_)
                                  (___kont3918939190_))))
                          (___kont3918939190_))
                      (if (gx#stx-pair? _tl2692227532_)
                          (let ((_e2696827271_ (gx#syntax-e _tl2692227532_)))
                            (let ((_tl2697027278_ (##cdr _e2696827271_))
                                  (_hd2696927275_ (##car _e2696827271_)))
                              (if (gx#stx-null? _tl2697027278_)
                                  (___match3932139322_
                                   _e2692027525_
                                   _hd2692127529_
                                   _tl2692227532_
                                   _e2696827271_
                                   _hd2696927275_
                                   _tl2697027278_)
                                  (if (equal? _e2692727490_ 'struct:)
                                      (if (gx#stx-pair? _tl2697027278_)
                                          (let ((_e2697927228_
                                                 (gx#syntax-e _tl2697027278_)))
                                            (let ((_tl2698127235_
                                                   (##cdr _e2697927228_))
                                                  (_hd2698027232_
                                                   (##car _e2697927228_)))
                                              (if (gx#stx-null? _tl2698127235_)
                                                  (___kont3918139182_
                                                   _hd2698027232_)
                                                  (___kont3918939190_))))
                                          (___kont3918939190_))
                                      (if (equal? _e2692727490_ 'class:)
                                          (if (gx#stx-pair? _tl2697027278_)
                                              (let ((_e2699027171_
                                                     (gx#syntax-e
                                                      _tl2697027278_)))
                                                (let ((_tl2699227178_
                                                       (##cdr _e2699027171_))
                                                      (_hd2699127175_
                                                       (##car _e2699027171_)))
                                                  (if (gx#stx-null?
                                                       _tl2699227178_)
                                                      (___kont3918339184_
                                                       _hd2699127175_)
                                                      (___kont3918939190_))))
                                              (___kont3918939190_))
                                          (if (equal? _e2692727490_ 'apply:)
                                              (if (gx#stx-pair? _tl2697027278_)
                                                  (let ((_e2700227112_
                                                         (gx#syntax-e
                                                          _tl2697027278_)))
                                                    (let ((_tl2700427119_
                                                           (##cdr _e2700227112_))
                                                          (_hd2700327116_
                                                           (##car _e2700227112_)))
                                                      (if (gx#stx-null?
                                                           _tl2700427119_)
                                                          (___kont3918539186_
                                                           _hd2700327116_
                                                           _hd2696927275_)
                                                          (___kont3918939190_))))
                                                  (___kont3918939190_))
                                              (___kont3918939190_)))))))
                          (___kont3918939190_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _tl2692227532_)
                                                (let ((_e2696827271_
                                                       (gx#syntax-e
                                                        _tl2692227532_)))
                                                  (let ((_tl2697027278_
                                                         (##cdr _e2696827271_))
                                                        (_hd2696927275_
                                                         (##car _e2696827271_)))
                                                    (if (gx#stx-null?
                                                         _tl2697027278_)
                                                        (___match3932139322_
                                                         _e2692027525_
                                                         _hd2692127529_
                                                         _tl2692227532_
                                                         _e2696827271_
                                                         _hd2696927275_
                                                         _tl2697027278_)
                                                        (___kont3918939190_))))
                                                (___kont3918939190_))))))))
                          (if (gx#stx-pair? ___stx3916439165_)
                              (let ((_e2691127624_
                                     (gx#syntax-e ___stx3916439165_)))
                                (let ((_tl2691327631_ (##cdr _e2691127624_))
                                      (_hd2691227628_ (##car _e2691127624_)))
                                  (if (gx#stx-datum? _hd2691227628_)
                                      (let ((_e2691427634_
                                             (gx#stx-e _hd2691227628_)))
                                        (if (equal? _e2691427634_ '?:)
                                            (if (gx#stx-pair? _tl2691327631_)
                                                (let ((_e2691527638_
                                                       (gx#syntax-e
                                                        _tl2691327631_)))
                                                  (let ((_tl2691727645_
                                                         (##cdr _e2691527638_))
                                                        (_hd2691627642_
                                                         (##car _e2691527638_)))
                                                    (___kont3916739168_
                                                     _tl2691727645_)))
                                                (___match3921539216_
                                                 _e2691127624_
                                                 _hd2691227628_
                                                 _tl2691327631_))
                                            (___match3921539216_
                                             _e2691127624_
                                             _hd2691227628_
                                             _tl2691327631_)))
                                      (___match3921539216_
                                       _e2691127624_
                                       _hd2691227628_
                                       _tl2691327631_))))
                              (___kont3918939190_)))))))
                 (_loop-vector26607_
                  (lambda (_body26768_ _vars26770_ _K26771_)
                    (let* ((___stx3942239423_ _body26768_)
                           (_g2677426797_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3942239423_))))
                      (let ((___kont3942539426_
                             (lambda (_L26874_)
                               (_loop-list26608_
                                _L26874_
                                _vars26770_
                                _K26771_)))
                            (___kont3942739428_
                             (lambda (_L26828_)
                               (_loop26605_ _L26828_ _vars26770_ _K26771_))))
                        (if (gx#stx-pair? ___stx3942239423_)
                            (let ((_e2677726850_
                                   (gx#syntax-e ___stx3942239423_)))
                              (let ((_tl2677926857_ (##cdr _e2677726850_))
                                    (_hd2677826854_ (##car _e2677726850_)))
                                (if (gx#stx-datum? _hd2677826854_)
                                    (let ((_e2678026860_
                                           (gx#stx-e _hd2677826854_)))
                                      (if (equal? _e2678026860_ 'simple:)
                                          (if (gx#stx-pair? _tl2677926857_)
                                              (let ((_e2678126864_
                                                     (gx#syntax-e
                                                      _tl2677926857_)))
                                                (let ((_tl2678326871_
                                                       (##cdr _e2678126864_))
                                                      (_hd2678226868_
                                                       (##car _e2678126864_)))
                                                  (if (gx#stx-null?
                                                       _tl2678326871_)
                                                      (___kont3942539426_
                                                       _hd2678226868_)
                                                      (_g2677426797_))))
                                              (_g2677426797_))
                                          (if (equal? _e2678026860_ 'list:)
                                              (if (gx#stx-pair? _tl2677926857_)
                                                  (let ((_e2678926818_
                                                         (gx#syntax-e
                                                          _tl2677926857_)))
                                                    (let ((_tl2679126825_
                                                           (##cdr _e2678926818_))
                                                          (_hd2679026822_
                                                           (##car _e2678926818_)))
                                                      (if (gx#stx-null?
                                                           _tl2679126825_)
                                                          (___kont3942739428_
                                                           _hd2679026822_)
                                                          (_g2677426797_))))
                                                  (_g2677426797_))
                                              (_g2677426797_))))
                                    (_g2677426797_))))
                            (_g2677426797_))))))
                 (_loop-list26608_
                  (lambda (_rest26698_ _vars26700_ _K26701_)
                    (let* ((___stx3947239473_ _rest26698_)
                           (_g2670426716_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3947239473_))))
                      (let ((___kont3947539476_
                             (lambda (_L26744_ _L26746_)
                               (_loop26605_
                                _L26746_
                                _vars26700_
                                (lambda (_g2675826760_)
                                  (_loop-list26608_
                                   _L26744_
                                   _g2675826760_
                                   _K26701_)))))
                            (___kont3947739478_
                             (lambda () (_K26701_ _vars26700_))))
                        (if (gx#stx-pair? ___stx3947239473_)
                            (let ((_e2670826734_
                                   (gx#syntax-e ___stx3947239473_)))
                              (let ((_tl2671026741_ (##cdr _e2670826734_))
                                    (_hd2670926738_ (##car _e2670826734_)))
                                (___kont3947539476_
                                 _tl2671026741_
                                 _hd2670926738_)))
                            (___kont3947739478_))))))
                 (_loop-class-list26609_
                  (lambda (_rest26611_ _vars26613_ _K26614_)
                    (let* ((___stx3948839489_ _rest26611_)
                           (_g2661726632_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3948839489_))))
                      (let ((___kont3949139492_
                             (lambda (_L26670_ _L26672_)
                               (_loop26605_
                                _L26672_
                                _vars26613_
                                (lambda (_g2668826690_)
                                  (_loop-class-list26609_
                                   _L26670_
                                   _g2668826690_
                                   _K26614_)))))
                            (___kont3949339494_
                             (lambda () (_K26614_ _vars26613_))))
                        (if (gx#stx-pair? ___stx3948839489_)
                            (let ((_e2662126650_
                                   (gx#syntax-e ___stx3948839489_)))
                              (let ((_tl2662326657_ (##cdr _e2662126650_))
                                    (_hd2662226654_ (##car _e2662126650_)))
                                (if (gx#stx-pair? _tl2662326657_)
                                    (let ((_e2662426660_
                                           (gx#syntax-e _tl2662326657_)))
                                      (let ((_tl2662626667_
                                             (##cdr _e2662426660_))
                                            (_hd2662526664_
                                             (##car _e2662426660_)))
                                        (___kont3949139492_
                                         _tl2662626667_
                                         _hd2662526664_)))
                                    (___kont3949339494_))))
                            (___kont3949339494_)))))))
          (_loop26605_ _ptree26602_ '() values))))
    (define |gerbil/core$<match>[1]#generate-match1|
      (lambda (_stx23185_ _tgt23187_ _ptree23188_ _K23189_ _E23190_)
        (letrec ((_generate123192_
                  (lambda (_tgt24815_ _ptree24817_ _K24818_ _E24819_)
                    (let* ((_g2482124829_
                            (lambda (_g2482224825_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2482224825_)))
                           (_g2482026598_
                            (lambda (_g2482224833_)
                              ((lambda (_L24836_)
                                 (let ()
                                   (let* ((___stx3972439725_ _ptree24817_)
                                          (_g2486325005_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              ___stx3972439725_))))
                                     (let ((___kont3972739728_
                                            (lambda (_L26313_ _L26315_)
                                              (let* ((___stx3964239643_
                                                      _L26313_)
                                                     (_g2633226367_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         ___stx3964239643_))))
                                                (let ((___kont3964539646_
                                                       (lambda ()
                                                         (cons 'if
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '?)
                                   (cons _L26315_ (cons _L24836_ '())))
                             (cons _K24818_ (cons _E24819_ '()))))))
              (___kont3964739648_
               (lambda (_L26568_)
                 (cons 'if
                       (cons (cons (gx#datum->syntax '#f '?)
                                   (cons _L26315_ (cons _L24836_ '())))
                             (cons (_generate123192_
                                    _tgt24815_
                                    _L26568_
                                    _K24818_
                                    _E24819_)
                                   (cons _E24819_ '()))))))
              (___kont3964939650_
               (lambda (_L26506_)
                 (let* ((_g2652026528_
                         (lambda (_g2652126524_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2652126524_)))
                        (_g2651926547_
                         (lambda (_g2652126532_)
                           ((lambda (_L26535_)
                              (let ()
                                (cons 'let
                                      (cons (cons (cons _L26535_
                                                        (cons (cons _L26315_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _L24836_ '()))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())
                                            (cons (cons 'if
                                                        (cons _L26535_
                                                              (cons (_generate123192_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L26535_
                             _L26506_
                             _K24818_
                             _E24819_)
                            (cons _E24819_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                            _g2652126532_))))
                   (_g2651926547_ (gx#genident 'e)))))
              (___kont3965139652_
               (lambda (_L26422_ _L26424_)
                 (let* ((_g2644426452_
                         (lambda (_g2644526448_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2644526448_)))
                        (_g2644326471_
                         (lambda (_g2644526456_)
                           ((lambda (_L26459_)
                              (let ()
                                (cons 'if
                                      (cons (cons (gx#datum->syntax '#f '?)
                                                  (cons _L26315_
                                                        (cons _L24836_ '())))
                                            (cons (cons 'let
                                                        (cons (cons (cons _L26459_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (cons _L26424_ (cons _L24836_ '()))
                                        '()))
                            '())
                      (cons (_generate123192_
                             _L26459_
                             _L26422_
                             _K24818_
                             _E24819_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _E24819_ '()))))))
                            _g2644526456_))))
                   (_g2644326471_ (gx#genident 'e))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g2632926579_
                                                         (lambda ()
                                                           (if (gx#stx-pair?
                                                                ___stx3964239643_)
                                                               (let ((_e2633526558_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e ___stx3964239643_)))
                         (let ((_tl2633726565_ (##cdr _e2633526558_))
                               (_hd2633626562_ (##car _e2633526558_)))
                           (if (gx#stx-null? _tl2633726565_)
                               (___kont3964739648_ _hd2633626562_)
                               (if (gx#stx-datum? _hd2633626562_)
                                   (let ((_e2634226492_
                                          (gx#stx-e _hd2633626562_)))
                                     (if (equal? _e2634226492_ '=>:)
                                         (if (gx#stx-pair? _tl2633726565_)
                                             (let ((_e2634326496_
                                                    (gx#syntax-e
                                                     _tl2633726565_)))
                                               (let ((_tl2634526503_
                                                      (##cdr _e2634326496_))
                                                     (_hd2634426500_
                                                      (##car _e2634326496_)))
                                                 (if (gx#stx-null?
                                                      _tl2634526503_)
                                                     (___kont3964939650_
                                                      _hd2634426500_)
                                                     (_g2633226367_))))
                                             (_g2633226367_))
                                         (if (equal? _e2634226492_ '::)
                                             (if (gx#stx-pair? _tl2633726565_)
                                                 (let ((_e2635226388_
                                                        (gx#syntax-e
                                                         _tl2633726565_)))
                                                   (let ((_tl2635426395_
                                                          (##cdr _e2635226388_))
                                                         (_hd2635326392_
                                                          (##car _e2635226388_)))
                                                     (if (gx#stx-pair?
                                                          _tl2635426395_)
                                                         (let ((_e2635526398_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2635426395_)))
                   (let ((_tl2635726405_ (##cdr _e2635526398_))
                         (_hd2635626402_ (##car _e2635526398_)))
                     (if (gx#stx-datum? _hd2635626402_)
                         (let ((_e2635826408_ (gx#stx-e _hd2635626402_)))
                           (if (equal? _e2635826408_ '=>:)
                               (if (gx#stx-pair? _tl2635726405_)
                                   (let ((_e2635926412_
                                          (gx#syntax-e _tl2635726405_)))
                                     (let ((_tl2636126419_
                                            (##cdr _e2635926412_))
                                           (_hd2636026416_
                                            (##car _e2635926412_)))
                                       (if (gx#stx-null? _tl2636126419_)
                                           (___kont3965139652_
                                            _hd2636026416_
                                            _hd2635326392_)
                                           (_g2633226367_))))
                                   (_g2633226367_))
                               (_g2633226367_)))
                         (_g2633226367_))))
                 (_g2633226367_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2633226367_))
                                             (_g2633226367_))))
                                   (_g2633226367_)))))
                       (_g2633226367_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         ___stx3964239643_)
                                                        (___kont3964539646_)
                                                        (_g2632926579_)))))))
                                           (___kont3972939730_
                                            (lambda (_L26210_)
                                              (let* ((___stx3962639627_
                                                      _L26210_)
                                                     (_g2622326235_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         ___stx3962639627_))))
                                                (let ((___kont3962939630_
                                                       (lambda (_L26263_
                                                                _L26265_)
                                                         (_generate123192_
                                                          _tgt24815_
                                                          _L26265_
                                                          (_generate123192_
                                                           _tgt24815_
                                                           (cons 'and:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L26263_)
                   _K24818_
                   _E24819_)
                  _E24819_)))
              (___kont3963139632_ (lambda () _K24818_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx3962639627_)
                                                      (let ((_e2622726253_
                                                             (gx#syntax-e
                                                              ___stx3962639627_)))
                                                        (let ((_tl2622926260_
                                                               (##cdr _e2622726253_))
                                                              (_hd2622826257_
                                                               (##car _e2622726253_)))
                                                          (___kont3962939630_
                                                           _tl2622926260_
                                                           _hd2622826257_)))
                                                      (___kont3963139632_))))))
                                           (___kont3973139732_
                                            (lambda (_L26117_)
                                              (let* ((___stx3961039611_
                                                      _L26117_)
                                                     (_g2613026142_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         ___stx3961039611_))))
                                                (let ((___kont3961339614_
                                                       (lambda (_L26170_
                                                                _L26172_)
                                                         (_generate123192_
                                                          _tgt24815_
                                                          _L26172_
                                                          _K24818_
                                                          (_generate123192_
                                                           _tgt24815_
                                                           (cons 'or: _L26170_)
                                                           _K24818_
                                                           _E24819_))))
                                                      (___kont3961539616_
                                                       (lambda () _E24819_)))
                                                  (if (gx#stx-pair?
                                                       ___stx3961039611_)
                                                      (let ((_e2613426160_
                                                             (gx#syntax-e
                                                              ___stx3961039611_)))
                                                        (let ((_tl2613626167_
                                                               (##cdr _e2613426160_))
                                                              (_hd2613526164_
                                                               (##car _e2613426160_)))
                                                          (___kont3961339614_
                                                           _tl2613626167_
                                                           _hd2613526164_)))
                                                      (___kont3961539616_))))))
                                           (___kont3973339734_
                                            (lambda (_L26082_)
                                              (_generate123192_
                                               _tgt24815_
                                               _L26082_
                                               _E24819_
                                               _K24818_)))
                                           (___kont3973539736_
                                            (lambda (_L25964_ _L25966_)
                                              (let* ((_g2598325998_
                                                      (lambda (_g2598425994_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g2598425994_)))
                                                     (_g2598226047_
                                                      (lambda (_g2598426002_)
                                                        (if (gx#stx-pair?
                                                             _g2598426002_)
                                                            (let ((_e2598726005_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _g2598426002_)))
                      (let ((_hd2598826009_ (##car _e2598726005_))
                            (_tl2598926012_ (##cdr _e2598726005_)))
                        (if (gx#stx-pair? _tl2598926012_)
                            (let ((_e2599026015_ (gx#syntax-e _tl2598926012_)))
                              (let ((_hd2599126019_ (##car _e2599026015_))
                                    (_tl2599226022_ (##cdr _e2599026015_)))
                                (if (gx#stx-null? _tl2599226022_)
                                    ((lambda (_L26025_ _L26027_)
                                       (let ()
                                         (cons 'if
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '##pair?)
                                                           (cons _L24836_ '()))
                                                     (cons (let ((_hd-pat26043_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _L25966_))
                         (_tl-pat26045_ (gx#stx-e _L25964_)))
                     (if (if (equal? _hd-pat26043_ '(any:))
                             (equal? _tl-pat26045_ '(any:))
                             '#f)
                         _K24818_
                         (if (equal? _tl-pat26045_ '(any:))
                             (cons 'let
                                   (cons (cons (cons _L26027_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##car)
                         (cons _L24836_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons (_generate123192_
                                                _L26027_
                                                _L25966_
                                                _K24818_
                                                _E24819_)
                                               '())))
                             (if (equal? _hd-pat26043_ '(any:))
                                 (cons 'let
                                       (cons (cons (cons _L26025_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '##cdr)
                             (cons _L24836_ '()))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())
                                             (cons (_generate123192_
                                                    _L26025_
                                                    _L25964_
                                                    _K24818_
                                                    _E24819_)
                                                   '())))
                                 (cons 'let
                                       (cons (cons (cons _L26027_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '##car)
                             (cons _L24836_ '()))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons _L26025_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '##cdr)
                                   (cons _L24836_ '()))
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (_generate123192_
                                                    _L26027_
                                                    _L25966_
                                                    (_generate123192_
                                                     _L26025_
                                                     _L25964_
                                                     _K24818_
                                                     _E24819_)
                                                    _E24819_)
                                                   '())))))))
                   (cons _E24819_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _hd2599126019_
                                     _hd2598826009_)
                                    (_g2598325998_ _g2598426002_))))
                            (_g2598325998_ _g2598426002_))))
                    (_g2598325998_ _g2598426002_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2598226047_
                                                 (list (gx#genident 'hd)
                                                       (gx#genident 'tl))))))
                                           (___kont3973739738_
                                            (lambda ()
                                              (cons 'if
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##null?)
                        (cons _L24836_ '()))
                  (cons _K24818_ (cons _E24819_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont3973939740_
                                            (lambda (_L25880_ _L25882_)
                                              (_generate-splice23194_
                                               _tgt24815_
                                               _L25882_
                                               _L25880_
                                               _K24818_
                                               _E24819_)))
                                           (___kont3974139742_
                                            (lambda (_L25794_)
                                              (let* ((_g2580825816_
                                                      (lambda (_g2580925812_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g2580925812_)))
                                                     (_g2580725835_
                                                      (lambda (_g2580925820_)
                                                        ((lambda (_L25823_)
                                                           (let ()
                                                             (cons 'if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f '##box?)
                                       (cons _L24836_ '()))
                                 (cons (cons 'let
                                             (cons (cons (cons _L25823_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '##unbox)
                                   (cons _L24836_ '()))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (_generate123192_
                                                          _L25823_
                                                          _L25794_
                                                          _K24818_
                                                          _E24819_)
                                                         '())))
                                       (cons _E24819_ '()))))))
                 _g2580925820_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2580725835_
                                                 (gx#genident 'e)))))
                                           (___kont3974339744_
                                            (lambda (_L25599_)
                                              (let* ((___stx3956039561_
                                                      _L25599_)
                                                     (_g2561425637_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         ___stx3956039561_))))
                                                (let ((___kont3956339564_
                                                       (lambda (_L25714_)
                                                         (let* ((_g2572825736_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2572925732_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2572925732_)))
                        (_g2572725755_
                         (lambda (_g2572925740_)
                           ((lambda (_L25743_)
                              (let ()
                                (cons 'if
                                      (cons (cons (gx#datum->syntax '#f '##fx=)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'values-count)
                                                              (cons _L24836_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _L25743_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (_generate-simple-vector23195_
                                                   _tgt24815_
                                                   _L25714_
                                                   '0
                                                   _K24818_
                                                   _E24819_)
                                                  (cons _E24819_ '()))))))
                            _g2572925740_))))
                   (_g2572725755_ (gx#stx-length _L25714_)))))
              (___kont3956539566_
               (lambda (_L25668_)
                 (_generate-list-vector23196_
                  _tgt24815_
                  _L25668_
                  'values->list
                  _K24818_
                  _E24819_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx3956039561_)
                                                      (let ((_e2561725690_
                                                             (gx#syntax-e
                                                              ___stx3956039561_)))
                                                        (let ((_tl2561925697_
                                                               (##cdr _e2561725690_))
                                                              (_hd2561825694_
                                                               (##car _e2561725690_)))
                                                          (if (gx#stx-datum?
                                                               _hd2561825694_)
                                                              (let ((_e2562025700_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd2561825694_)))
                        (if (equal? _e2562025700_ 'simple:)
                            (if (gx#stx-pair? _tl2561925697_)
                                (let ((_e2562125704_
                                       (gx#syntax-e _tl2561925697_)))
                                  (let ((_tl2562325711_ (##cdr _e2562125704_))
                                        (_hd2562225708_ (##car _e2562125704_)))
                                    (if (gx#stx-null? _tl2562325711_)
                                        (___kont3956339564_ _hd2562225708_)
                                        (_g2561425637_))))
                                (_g2561425637_))
                            (if (equal? _e2562025700_ 'list:)
                                (if (gx#stx-pair? _tl2561925697_)
                                    (let ((_e2562925658_
                                           (gx#syntax-e _tl2561925697_)))
                                      (let ((_tl2563125665_
                                             (##cdr _e2562925658_))
                                            (_hd2563025662_
                                             (##car _e2562925658_)))
                                        (if (gx#stx-null? _tl2563125665_)
                                            (___kont3956539566_ _hd2563025662_)
                                            (_g2561425637_))))
                                    (_g2561425637_))
                                (_g2561425637_))))
                      (_g2561425637_))))
              (_g2561425637_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont3974539746_
                                            (lambda (_L25404_)
                                              (let* ((___stx3951039511_
                                                      _L25404_)
                                                     (_g2541925442_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         ___stx3951039511_))))
                                                (let ((___kont3951339514_
                                                       (lambda (_L25519_)
                                                         (let* ((_g2553325541_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2553425537_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2553425537_)))
                        (_g2553225560_
                         (lambda (_g2553425545_)
                           ((lambda (_L25548_)
                              (let ()
                                (cons 'if
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   '##vector?)
                                                  (cons _L24836_ '()))
                                            (cons (cons 'if
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '##fx=)
                            (cons (cons (gx#datum->syntax '#f '##vector-length)
                                        (cons _L24836_ '()))
                                  (cons _L25548_ '())))
                      (cons (_generate-simple-vector23195_
                             _tgt24815_
                             _L25519_
                             '0
                             _K24818_
                             _E24819_)
                            (cons _E24819_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _E24819_ '()))))))
                            _g2553425545_))))
                   (_g2553225560_ (gx#stx-length _L25519_)))))
              (___kont3951539516_
               (lambda (_L25473_)
                 (cons 'if
                       (cons (cons (gx#datum->syntax '#f '##vector?)
                                   (cons _L24836_ '()))
                             (cons (_generate-list-vector23196_
                                    _tgt24815_
                                    _L25473_
                                    'vector->list
                                    _K24818_
                                    _E24819_)
                                   (cons _E24819_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx3951039511_)
                                                      (let ((_e2542225495_
                                                             (gx#syntax-e
                                                              ___stx3951039511_)))
                                                        (let ((_tl2542425502_
                                                               (##cdr _e2542225495_))
                                                              (_hd2542325499_
                                                               (##car _e2542225495_)))
                                                          (if (gx#stx-datum?
                                                               _hd2542325499_)
                                                              (let ((_e2542525505_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd2542325499_)))
                        (if (equal? _e2542525505_ 'simple:)
                            (if (gx#stx-pair? _tl2542425502_)
                                (let ((_e2542625509_
                                       (gx#syntax-e _tl2542425502_)))
                                  (let ((_tl2542825516_ (##cdr _e2542625509_))
                                        (_hd2542725513_ (##car _e2542625509_)))
                                    (if (gx#stx-null? _tl2542825516_)
                                        (___kont3951339514_ _hd2542725513_)
                                        (_g2541925442_))))
                                (_g2541925442_))
                            (if (equal? _e2542525505_ 'list:)
                                (if (gx#stx-pair? _tl2542425502_)
                                    (let ((_e2543425463_
                                           (gx#syntax-e _tl2542425502_)))
                                      (let ((_tl2543625470_
                                             (##cdr _e2543425463_))
                                            (_hd2543525467_
                                             (##car _e2543425463_)))
                                        (if (gx#stx-null? _tl2543625470_)
                                            (___kont3951539516_ _hd2543525467_)
                                            (_g2541925442_))))
                                    (_g2541925442_))
                                (_g2541925442_))))
                      (_g2541925442_))))
              (_g2541925442_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont3974739748_
                                            (lambda (_L25355_ _L25357_)
                                              (_generate-struct23197_
                                               (gx#stx-e _L25357_)
                                               _tgt24815_
                                               _L25355_
                                               _K24818_
                                               _E24819_)))
                                           (___kont3974939750_
                                            (lambda (_L25296_ _L25298_)
                                              (_generate-class23198_
                                               (gx#stx-e _L25298_)
                                               _tgt24815_
                                               _L25296_
                                               _K24818_
                                               _E24819_)))
                                           (___kont3975139752_
                                            (lambda (_L25199_)
                                              (let* ((_g2521325221_
                                                      (lambda (_g2521425217_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g2521425217_)))
                                                     (_g2521225240_
                                                      (lambda (_g2521425225_)
                                                        ((lambda (_L25228_)
                                                           (let ()
                                                             (cons 'if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _L25228_
                                       (cons _L24836_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'quote)
                                                         (cons _L25199_ '()))
                                                   '())))
                                 (cons _K24818_ (cons _E24819_ '()))))))
                 _g2521425225_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2521225240_
                                                 (let ((_e25244_
                                                        (gx#stx-e _L25199_)))
                                                   (if (let ((_$e25247_
                                                              (symbol? _e25244_)))
                                                         (if _$e25247_
                                                             _$e25247_
                                                             (let ((_$e25251_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (keyword? _e25244_)))
                       (if _$e25251_ _$e25251_ (immediate? _e25244_)))))
               '##eq?
               (if (number? _e25244_) 'eqv? 'equal?)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont3975339754_
                                            (lambda (_L25119_ _L25121_)
                                              (let* ((_g2513725145_
                                                      (lambda (_g2513825141_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g2513825141_)))
                                                     (_g2513625164_
                                                      (lambda (_g2513825149_)
                                                        ((lambda (_L25152_)
                                                           (let ()
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _L25152_
                                             (cons (cons _L25121_
                                                         (cons _L24836_ '()))
                                                   '()))
                                       '())
                                 (cons (_generate123192_
                                        _L25152_
                                        _L25119_
                                        _K24818_
                                        _E24819_)
                                       '())))))
                 _g2513825149_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2513625164_
                                                 (gx#genident 'e)))))
                                           (___kont3975539756_
                                            (lambda (_L25061_)
                                              (cons 'let
                                                    (cons (cons (cons _L25061_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _L24836_ '()))
                        '())
                  (cons _K24818_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont3975739758_
                                            (lambda () _K24818_)))
                                       (if (gx#stx-pair? ___stx3972439725_)
                                           (let ((_e2486726289_
                                                  (gx#syntax-e
                                                   ___stx3972439725_)))
                                             (let ((_tl2486926296_
                                                    (##cdr _e2486726289_))
                                                   (_hd2486826293_
                                                    (##car _e2486726289_)))
                                               (if (gx#stx-datum?
                                                    _hd2486826293_)
                                                   (let ((_e2487026299_
                                                          (gx#stx-e
                                                           _hd2486826293_)))
                                                     (if (equal? _e2487026299_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '?:)
                 (if (gx#stx-pair? _tl2486926296_)
                     (let ((_e2487126303_ (gx#syntax-e _tl2486926296_)))
                       (let ((_tl2487326310_ (##cdr _e2487126303_))
                             (_hd2487226307_ (##car _e2487126303_)))
                         (___kont3972739728_ _tl2487326310_ _hd2487226307_)))
                     (_g2486325005_))
                 (if (equal? _e2487026299_ 'and:)
                     (___kont3972939730_ _tl2486926296_)
                     (if (equal? _e2487026299_ 'or:)
                         (___kont3973139732_ _tl2486926296_)
                         (if (equal? _e2487026299_ 'not:)
                             (if (gx#stx-pair? _tl2486926296_)
                                 (let ((_e2488926072_
                                        (gx#syntax-e _tl2486926296_)))
                                   (let ((_tl2489126079_ (##cdr _e2488926072_))
                                         (_hd2489026076_
                                          (##car _e2488926072_)))
                                     (if (gx#stx-null? _tl2489126079_)
                                         (___kont3973339734_ _hd2489026076_)
                                         (_g2486325005_))))
                                 (_g2486325005_))
                             (if (equal? _e2487026299_ 'cons:)
                                 (if (gx#stx-pair? _tl2486926296_)
                                     (let ((_e2489825944_
                                            (gx#syntax-e _tl2486926296_)))
                                       (let ((_tl2490025951_
                                              (##cdr _e2489825944_))
                                             (_hd2489925948_
                                              (##car _e2489825944_)))
                                         (if (gx#stx-pair? _tl2490025951_)
                                             (let ((_e2490125954_
                                                    (gx#syntax-e
                                                     _tl2490025951_)))
                                               (let ((_tl2490325961_
                                                      (##cdr _e2490125954_))
                                                     (_hd2490225958_
                                                      (##car _e2490125954_)))
                                                 (if (gx#stx-null?
                                                      _tl2490325961_)
                                                     (___kont3973539736_
                                                      _hd2490225958_
                                                      _hd2489925948_)
                                                     (_g2486325005_))))
                                             (_g2486325005_))))
                                     (_g2486325005_))
                                 (if (equal? _e2487026299_ 'null:)
                                     (if (gx#stx-null? _tl2486926296_)
                                         (___kont3973739738_)
                                         (_g2486325005_))
                                     (if (equal? _e2487026299_ 'splice:)
                                         (if (gx#stx-pair? _tl2486926296_)
                                             (let ((_e2491425860_
                                                    (gx#syntax-e
                                                     _tl2486926296_)))
                                               (let ((_tl2491625867_
                                                      (##cdr _e2491425860_))
                                                     (_hd2491525864_
                                                      (##car _e2491425860_)))
                                                 (if (gx#stx-pair?
                                                      _tl2491625867_)
                                                     (let ((_e2491725870_
                                                            (gx#syntax-e
                                                             _tl2491625867_)))
                                                       (let ((_tl2491925877_
                                                              (##cdr _e2491725870_))
                                                             (_hd2491825874_
                                                              (##car _e2491725870_)))
                                                         (if (gx#stx-null?
                                                              _tl2491925877_)
                                                             (___kont3973939740_
                                                              _hd2491825874_
                                                              _hd2491525864_)
                                                             (_g2486325005_))))
                                                     (_g2486325005_))))
                                             (_g2486325005_))
                                         (if (equal? _e2487026299_ 'box:)
                                             (if (gx#stx-pair? _tl2486926296_)
                                                 (let ((_e2492525784_
                                                        (gx#syntax-e
                                                         _tl2486926296_)))
                                                   (let ((_tl2492725791_
                                                          (##cdr _e2492525784_))
                                                         (_hd2492625788_
                                                          (##car _e2492525784_)))
                                                     (if (gx#stx-null?
                                                          _tl2492725791_)
                                                         (___kont3974139742_
                                                          _hd2492625788_)
                                                         (_g2486325005_))))
                                                 (_g2486325005_))
                                             (if (equal? _e2487026299_
                                                         'values:)
                                                 (if (gx#stx-pair?
                                                      _tl2486926296_)
                                                     (let ((_e2493325589_
                                                            (gx#syntax-e
                                                             _tl2486926296_)))
                                                       (let ((_tl2493525596_
                                                              (##cdr _e2493325589_))
                                                             (_hd2493425593_
                                                              (##car _e2493325589_)))
                                                         (if (gx#stx-null?
                                                              _tl2493525596_)
                                                             (___kont3974339744_
                                                              _hd2493425593_)
                                                             (_g2486325005_))))
                                                     (_g2486325005_))
                                                 (if (equal? _e2487026299_
                                                             'vector:)
                                                     (if (gx#stx-pair?
                                                          _tl2486926296_)
                                                         (let ((_e2494125394_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2486926296_)))
                   (let ((_tl2494325401_ (##cdr _e2494125394_))
                         (_hd2494225398_ (##car _e2494125394_)))
                     (if (gx#stx-null? _tl2494325401_)
                         (___kont3974539746_ _hd2494225398_)
                         (_g2486325005_))))
                 (_g2486325005_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (equal? _e2487026299_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'struct:)
                 (if (gx#stx-pair? _tl2486926296_)
                     (let ((_e2495025335_ (gx#syntax-e _tl2486926296_)))
                       (let ((_tl2495225342_ (##cdr _e2495025335_))
                             (_hd2495125339_ (##car _e2495025335_)))
                         (if (gx#stx-pair? _tl2495225342_)
                             (let ((_e2495325345_
                                    (gx#syntax-e _tl2495225342_)))
                               (let ((_tl2495525352_ (##cdr _e2495325345_))
                                     (_hd2495425349_ (##car _e2495325345_)))
                                 (if (gx#stx-null? _tl2495525352_)
                                     (___kont3974739748_
                                      _hd2495425349_
                                      _hd2495125339_)
                                     (_g2486325005_))))
                             (_g2486325005_))))
                     (_g2486325005_))
                 (if (equal? _e2487026299_ 'class:)
                     (if (gx#stx-pair? _tl2486926296_)
                         (let ((_e2496225276_ (gx#syntax-e _tl2486926296_)))
                           (let ((_tl2496425283_ (##cdr _e2496225276_))
                                 (_hd2496325280_ (##car _e2496225276_)))
                             (if (gx#stx-pair? _tl2496425283_)
                                 (let ((_e2496525286_
                                        (gx#syntax-e _tl2496425283_)))
                                   (let ((_tl2496725293_ (##cdr _e2496525286_))
                                         (_hd2496625290_
                                          (##car _e2496525286_)))
                                     (if (gx#stx-null? _tl2496725293_)
                                         (___kont3974939750_
                                          _hd2496625290_
                                          _hd2496325280_)
                                         (_g2486325005_))))
                                 (_g2486325005_))))
                         (_g2486325005_))
                     (if (equal? _e2487026299_ 'datum:)
                         (if (gx#stx-pair? _tl2486926296_)
                             (let ((_e2497325189_
                                    (gx#syntax-e _tl2486926296_)))
                               (let ((_tl2497525196_ (##cdr _e2497325189_))
                                     (_hd2497425193_ (##car _e2497325189_)))
                                 (if (gx#stx-null? _tl2497525196_)
                                     (___kont3975139752_ _hd2497425193_)
                                     (_g2486325005_))))
                             (_g2486325005_))
                         (if (equal? _e2487026299_ 'apply:)
                             (if (gx#stx-pair? _tl2486926296_)
                                 (let ((_e2498225099_
                                        (gx#syntax-e _tl2486926296_)))
                                   (let ((_tl2498425106_ (##cdr _e2498225099_))
                                         (_hd2498325103_
                                          (##car _e2498225099_)))
                                     (if (gx#stx-pair? _tl2498425106_)
                                         (let ((_e2498525109_
                                                (gx#syntax-e _tl2498425106_)))
                                           (let ((_tl2498725116_
                                                  (##cdr _e2498525109_))
                                                 (_hd2498625113_
                                                  (##car _e2498525109_)))
                                             (if (gx#stx-null? _tl2498725116_)
                                                 (___kont3975339754_
                                                  _hd2498625113_
                                                  _hd2498325103_)
                                                 (_g2486325005_))))
                                         (_g2486325005_))))
                                 (_g2486325005_))
                             (if (equal? _e2487026299_ 'var:)
                                 (if (gx#stx-pair? _tl2486926296_)
                                     (let ((_e2499325051_
                                            (gx#syntax-e _tl2486926296_)))
                                       (let ((_tl2499525058_
                                              (##cdr _e2499325051_))
                                             (_hd2499425055_
                                              (##car _e2499325051_)))
                                         (if (gx#stx-null? _tl2499525058_)
                                             (___kont3975539756_
                                              _hd2499425055_)
                                             (_g2486325005_))))
                                     (_g2486325005_))
                                 (if (equal? _e2487026299_ 'any:)
                                     (if (gx#stx-null? _tl2486926296_)
                                         (___kont3975739758_)
                                         (_g2486325005_))
                                     (_g2486325005_))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2486325005_))))
                                           (_g2486325005_))))))
                               _g2482224833_))))
                      (_g2482026598_ _tgt24815_))))
                 (_generate-splice23194_
                  (lambda (_tgt24187_ _hd24189_ _rest24190_ _K24191_ _E24192_)
                    (let* ((_g2419424211_
                            (lambda (_g2419524207_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2419524207_)))
                           (_g2419324811_
                            (lambda (_g2419524215_)
                              (if (gx#stx-pair/null? _g2419524215_)
                                  (let ((_g41382_
                                         (gx#syntax-split-splice
                                          _g2419524215_
                                          '0)))
                                    (begin
                                      (let ((_g41383_
                                             (if (##values? _g41382_)
                                                 (##vector-length _g41382_)
                                                 1)))
                                        (if (not (##fx= _g41383_ 2))
                                            (error "Context expects 2 values"
                                                   _g41383_)))
                                      (let ((_target2419724218_
                                             (##vector-ref _g41382_ 0))
                                            (_tl2419924221_
                                             (##vector-ref _g41382_ 1)))
                                        (if (gx#stx-null? _tl2419924221_)
                                            (letrec ((_loop2420024224_
                                                      (lambda (_hd2419824228_
                                                               _var2420424231_)
                                                        (if (gx#stx-pair?
                                                             _hd2419824228_)
                                                            (let ((_e2420124234_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd2419824228_)))
                      (let ((_lp-hd2420224238_ (##car _e2420124234_))
                            (_lp-tl2420324241_ (##cdr _e2420124234_)))
                        (_loop2420024224_
                         _lp-tl2420324241_
                         (cons _lp-hd2420224238_ _var2420424231_))))
                    (let ((_var2420524244_ (reverse _var2420424231_)))
                      ((lambda (_L24248_)
                         (let ()
                           (let* ((_g2426424281_
                                   (lambda (_g2426524277_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2426524277_)))
                                  (_g2426324799_
                                   (lambda (_g2426524285_)
                                     (if (gx#stx-pair/null? _g2426524285_)
                                         (let ((_g41384_
                                                (gx#syntax-split-splice
                                                 _g2426524285_
                                                 '0)))
                                           (begin
                                             (let ((_g41385_
                                                    (if (##values? _g41384_)
                                                        (##vector-length
                                                         _g41384_)
                                                        1)))
                                               (if (not (##fx= _g41385_ 2))
                                                   (error "Context expects 2 values"
                                                          _g41385_)))
                                             (let ((_target2426724288_
                                                    (##vector-ref _g41384_ 0))
                                                   (_tl2426924291_
                                                    (##vector-ref _g41384_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2426924291_)
                                                   (letrec ((_loop2427024294_
                                                             (lambda (_hd2426824298_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _var-r2427424301_)
                       (if (gx#stx-pair? _hd2426824298_)
                           (let ((_e2427124304_ (gx#syntax-e _hd2426824298_)))
                             (let ((_lp-hd2427224308_ (##car _e2427124304_))
                                   (_lp-tl2427324311_ (##cdr _e2427124304_)))
                               (_loop2427024294_
                                _lp-tl2427324311_
                                (cons _lp-hd2427224308_ _var-r2427424301_))))
                           (let ((_var-r2427524314_
                                  (reverse _var-r2427424301_)))
                             ((lambda (_L24318_)
                                (let ()
                                  (let* ((_g2433524352_
                                          (lambda (_g2433624348_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g2433624348_)))
                                         (_g2433424787_
                                          (lambda (_g2433624356_)
                                            (if (gx#stx-pair/null?
                                                 _g2433624356_)
                                                (let ((_g41386_
                                                       (gx#syntax-split-splice
                                                        _g2433624356_
                                                        '0)))
                                                  (begin
                                                    (let ((_g41387_
                                                           (if (##values?
                                                                _g41386_)
                                                               (##vector-length
                                                                _g41386_)
                                                               1)))
                                                      (if (not (##fx= _g41387_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                  (error "Context expects 2 values" _g41387_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2433824359_
                                                           (##vector-ref
                                                            _g41386_
                                                            0))
                                                          (_tl2434024362_
                                                           (##vector-ref
                                                            _g41386_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl2434024362_)
                                                          (letrec ((_loop2434124365_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2433924369_ _init2434524372_)
                              (if (gx#stx-pair? _hd2433924369_)
                                  (let ((_e2434224375_
                                         (gx#syntax-e _hd2433924369_)))
                                    (let ((_lp-hd2434324379_
                                           (##car _e2434224375_))
                                          (_lp-tl2434424382_
                                           (##cdr _e2434224375_)))
                                      (_loop2434124365_
                                       _lp-tl2434424382_
                                       (cons _lp-hd2434324379_
                                             _init2434524372_))))
                                  (let ((_init2434624385_
                                         (reverse _init2434524372_)))
                                    ((lambda (_L24389_)
                                       (let ()
                                         (let* ((_g2440624414_
                                                 (lambda (_g2440724410_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g2440724410_)))
                                                (_g2440524783_
                                                 (lambda (_g2440724418_)
                                                   ((lambda (_L24421_)
                                                      (let ()
                                                        (let* ((_g2443424442_
                                                                (lambda (_g2443524438_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g2443524438_)))
                       (_g2443324779_
                        (lambda (_g2443524446_)
                          ((lambda (_L24449_)
                             (let ()
                               (let* ((_g2446224470_
                                       (lambda (_g2446324466_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2446324466_)))
                                      (_g2446124775_
                                       (lambda (_g2446324474_)
                                         ((lambda (_L24477_)
                                            (let ()
                                              (let* ((_g2449024498_
                                                      (lambda (_g2449124494_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g2449124494_)))
                                                     (_g2448924771_
                                                      (lambda (_g2449124502_)
                                                        ((lambda (_L24505_)
                                                           (let ()
                                                             (let* ((_g2451824526_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g2451924522_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g2451924522_)))
                            (_g2451724767_
                             (lambda (_g2451924530_)
                               ((lambda (_L24533_)
                                  (let ()
                                    (let* ((_g2454624554_
                                            (lambda (_g2454724550_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2454724550_)))
                                           (_g2454524763_
                                            (lambda (_g2454724558_)
                                              ((lambda (_L24561_)
                                                 (let ()
                                                   (let* ((_g2457424582_
                                                           (lambda (_g2457524578_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g2457524578_)))
                                                          (_g2457324759_
                                                           (lambda (_g2457524586_)
                                                             ((lambda (_L24589_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g2460224610_
                                  (lambda (_g2460324606_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g2460324606_)))
                                 (_g2460124744_
                                  (lambda (_g2460324614_)
                                    ((lambda (_L24617_)
                                       (let ()
                                         (let* ((_g2463024638_
                                                 (lambda (_g2463124634_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g2463124634_)))
                                                (_g2462924732_
                                                 (lambda (_g2463124642_)
                                                   ((lambda (_L24645_)
                                                      (let ()
                                                        (let* ((_g2465824666_
                                                                (lambda (_g2465924662_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g2465924662_)))
                       (_g2465724728_
                        (lambda (_g2465924670_)
                          ((lambda (_L24673_)
                             (let ()
                               (let ()
                                 (cons (gx#datum->syntax '#f 'letrec)
                                       (cons (cons (cons _L24449_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lambda)
                             (cons (cons _L24561_
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g2468724698_
                                                           _g2468824701_)
                                                    (cons _g2468724698_
                                                          _g2468824701_))
                                                  '()
                                                  _L24248_)))
                                   (cons _L24589_ '())))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons _L24505_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'lambda)
                                   (cons (cons _L24533_
                                               (cons _L24561_
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g2468924704_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2469024707_)
                        (cons _g2468924704_ _g2469024707_))
                      '()
                      _L24318_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons _L24673_ '())))
                             '()))
                 (cons (cons _L24477_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons (cons _L24561_
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g2469124710_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2469224713_)
                        (cons _g2469124710_ _g2469224713_))
                      '()
                      _L24318_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'pair?)
                               (cons _L24561_ '()))
                         (cons (cons _L24505_
                                     (cons (cons (gx#datum->syntax '#f '##car)
                                                 (cons _L24561_ '()))
                                           (cons _L24561_
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2469324716_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2469424719_)
                    (cons _g2469324716_ _g2469424719_))
                  '()
                  _L24318_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _L24645_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   '()))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _L24477_
                                                         (cons _L24421_
                                                               (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void
                         (foldr (lambda (_g2469524722_ _g2469624725_)
                                  (cons _g2469524722_ _g2469624725_))
                                '()
                                _L24389_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))))
                           _g2465924670_))))
                  (_g2465724728_
                   (_generate123192_ _L24533_ _hd24189_ _L24617_ _L24645_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2463124642_))))
                                           (_g2462924732_
                                            (cons _L24449_
                                                  (cons _L24561_
                                                        (begin
                                                          '#!void
                                                          (foldr (lambda (_g2473524738_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g2473624741_)
                           (cons (cons (gx#datum->syntax '#f 'reverse)
                                       (cons _g2473524738_ '()))
                                 _g2473624741_))
                         '()
                         _L24318_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _g2460324614_))))
                            (_g2460124744_
                             (cons _L24477_
                                   (cons (cons (gx#datum->syntax '#f '##cdr)
                                               (cons _L24561_ '()))
                                         (begin
                                           (gx#syntax-check-splice-targets
                                            _L24318_
                                            _L24248_)
                                           (foldr (lambda (_g2474724751_
                                                           _g2474824754_
                                                           _g2474924756_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'cons)
                        (cons _g2474824754_ (cons _g2474724751_ '())))
                  _g2474924756_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()
                                                  _L24318_
                                                  _L24248_))))))))
                      _g2457524586_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2457324759_
                                                      (_generate123192_
                                                       _L24561_
                                                       _rest24190_
                                                       _K24191_
                                                       _E24192_)))))
                                               _g2454724558_))))
                                      (_g2454524763_ (gx#genident 'rest)))))
                                _g2451924530_))))
                       (_g2451724767_ (gx#genident 'hd)))))
                 _g2449124502_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2448924771_
                                                 (gx#genident 'splice-try)))))
                                          _g2446324474_))))
                                 (_g2446124775_ (gx#genident 'splice-loop)))))
                           _g2443524446_))))
                  (_g2443324779_ (gx#genident 'splice-rest)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2440724418_))))
                                           (_g2440524783_ _tgt24187_))))
                                     _init2434624385_))))))
                    (_loop2434124365_ _target2433824359_ '()))
                  (_g2433524352_ _g2433624356_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2433524352_
                                                 _g2433624356_)))))
                                    (_g2433424787_
                                     (make-list
                                      (gx#stx-length
                                       (begin
                                         '#!void
                                         (foldr (lambda (_g2479024793_
                                                         _g2479124796_)
                                                  (cons _g2479024793_
                                                        _g2479124796_))
                                                '()
                                                _L24248_)))
                                      (cons (gx#datum->syntax '#f '@list)
                                            '()))))))
                              _var-r2427524314_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2427024294_
                                                      _target2426724288_
                                                      '()))
                                                   (_g2426424281_
                                                    _g2426524285_)))))
                                         (_g2426424281_ _g2426524285_)))))
                             (_g2426324799_
                              (gx#gentemps
                               (begin
                                 '#!void
                                 (foldr (lambda (_g2480224805_ _g2480324808_)
                                          (cons _g2480224805_ _g2480324808_))
                                        '()
                                        _L24248_)))))))
                       _var2420524244_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop2420024224_
                                               _target2419724218_
                                               '()))
                                            (_g2419424211_ _g2419524215_)))))
                                  (_g2419424211_ _g2419524215_)))))
                      (_g2419324811_
                       (|gerbil/core$<match>[1]#match-pattern-vars|
                        _hd24189_)))))
                 (_generate-simple-vector23195_
                  (lambda (_tgt24029_
                           _body24031_
                           _start24032_
                           _K24033_
                           _E24034_)
                    (let _recur24036_ ((_rest24039_ _body24031_)
                                       (_off24041_ _start24032_))
                      (let* ((___stx4008240083_ _rest24039_)
                             (_g2404424056_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx4008240083_))))
                        (let ((___kont4008540086_
                               (lambda (_L24084_ _L24086_)
                                 (let* ((_g2410124120_
                                         (lambda (_g2410224116_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g2410224116_)))
                                        (_g2410024179_
                                         (lambda (_g2410224124_)
                                           (if (gx#stx-pair? _g2410224124_)
                                               (let ((_e2410624127_
                                                      (gx#syntax-e
                                                       _g2410224124_)))
                                                 (let ((_hd2410724131_
                                                        (##car _e2410624127_))
                                                       (_tl2410824134_
                                                        (##cdr _e2410624127_)))
                                                   (if (gx#stx-pair?
                                                        _tl2410824134_)
                                                       (let ((_e2410924137_
                                                              (gx#syntax-e
                                                               _tl2410824134_)))
                                                         (let ((_hd2411024141_
                                                                (##car _e2410924137_))
                                                               (_tl2411124144_
                                                                (##cdr _e2410924137_)))
                                                           (if (gx#stx-pair?
                                                                _tl2411124144_)
                                                               (let ((_e2411224147_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2411124144_)))
                         (let ((_hd2411324151_ (##car _e2411224147_))
                               (_tl2411424154_ (##cdr _e2411224147_)))
                           (if (gx#stx-null? _tl2411424154_)
                               ((lambda (_L24157_ _L24159_ _L24160_)
                                  (let ()
                                    (cons 'let
                                          (cons (cons (cons _L24160_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '##vector-ref)
                                (cons _L24159_ (cons _L24157_ '())))
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (_generate123192_
                                                       _L24160_
                                                       _L24086_
                                                       (_recur24036_
                                                        _L24084_
                                                        (fx1+ _off24041_))
                                                       _E24034_)
                                                      '())))))
                                _hd2411324151_
                                _hd2411024141_
                                _hd2410724131_)
                               (_g2410124120_ _g2410224124_))))
                       (_g2410124120_ _g2410224124_))))
               (_g2410124120_ _g2410224124_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2410124120_
                                                _g2410224124_)))))
                                   (_g2410024179_
                                    (list (gx#genident 'e)
                                          _tgt24029_
                                          _off24041_)))))
                              (___kont4008740088_ (lambda () _K24033_)))
                          (if (gx#stx-pair? ___stx4008240083_)
                              (let ((_e2404824074_
                                     (gx#syntax-e ___stx4008240083_)))
                                (let ((_tl2405024081_ (##cdr _e2404824074_))
                                      (_hd2404924078_ (##car _e2404824074_)))
                                  (___kont4008540086_
                                   _tl2405024081_
                                   _hd2404924078_)))
                              (___kont4008740088_)))))))
                 (_generate-list-vector23196_
                  (lambda (_tgt23921_
                           _body23923_
                           _->list23924_
                           _K23925_
                           _E23926_)
                    (let* ((_g2392823936_
                            (lambda (_g2392923932_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2392923932_)))
                           (_g2392724025_
                            (lambda (_g2392923940_)
                              ((lambda (_L23943_)
                                 (let ()
                                   (let* ((_g2395523963_
                                           (lambda (_g2395623959_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g2395623959_)))
                                          (_g2395424021_
                                           (lambda (_g2395623967_)
                                             ((lambda (_L23970_)
                                                (let ()
                                                  (let* ((_g2398323991_
                                                          (lambda (_g2398423987_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g2398423987_)))
                                                         (_g2398224013_
                                                          (lambda (_g2398423995_)
                                                            ((lambda (_L23998_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (cons 'let
                                 (cons (cons (cons _L23943_
                                                   (cons _L23998_ '()))
                                             '())
                                       (cons (_generate123192_
                                              _L23943_
                                              _body23923_
                                              _K23925_
                                              _E23926_)
                                             '()))))))
                     _g2398423995_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2398224013_
                                                     (let ((_$e24017_
                                                            _->list23924_))
                                                       (if (eq? 'values->list
                                                                _$e24017_)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'values->list)
                         (cons _L23970_ '()))
                   (if (eq? 'vector->list _$e24017_)
                       (cons (gx#datum->syntax '#f '##vector->list)
                             (cons _L23970_ '()))
                       (if (eq? 'struct->list _$e24017_)
                           (cons (gx#datum->syntax '#f '##cdr)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              '##vector->list)
                                             (cons _L23970_ '()))
                                       '()))
                           (gx#raise-syntax-error
                            '#f
                            '"Unexpected list conversion"
                            _stx23185_
                            _->list23924_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _g2395623967_))))
                                     (_g2395424021_ _tgt23921_))))
                               _g2392923940_))))
                      (_g2392724025_ (gx#genident 'e)))))
                 (_generate-struct23197_
                  (lambda (_info23579_
                           _tgt23581_
                           _body23582_
                           _K23583_
                           _E23584_)
                    (let* ((_rtd23586_
                            (if (|gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info?|
                                 _info23579_)
                                (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
                                 _info23579_)
                                '#f))
                           (_fields23596_
                            (let _lp23589_ ((_rtd23592_ _rtd23586_)
                                            (_k23594_ '0))
                              (if _rtd23592_
                                  (_lp23589_
                                   (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
                                    (##structure-ref
                                     _rtd23592_
                                     '2
                                     |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
                                     '#f))
                                   (fx+ (length (##structure-ref
                                                 _rtd23592_
                                                 '6
                                                 |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|
                                                 '#f))
                                        _k23594_))
                                  _k23594_)))
                           (_final?23599_
                            (if _rtd23586_
                                (assgetq 'final:
                                         (##structure-ref
                                          _rtd23586_
                                          '5
                                          |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
                                          '#f))
                                '#f))
                           (_g2360223610_
                            (lambda (_g2360323606_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2360323606_)))
                           (_g2360123917_
                            (lambda (_g2360323614_)
                              ((lambda (_L23617_)
                                 (let ()
                                   (let* ((_g2363223640_
                                           (lambda (_g2363323636_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g2363323636_)))
                                          (_g2363123819_
                                           (lambda (_g2363323644_)
                                             ((lambda (_L23647_)
                                                (let ()
                                                  (let ()
                                                    (let* ((___stx4009840099_
                                                            _body23582_)
                                                           (_g2366323686_
                                                            (lambda ()
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               ___stx4009840099_))))
                                                      (let ((___kont4010140102_
                                                             (lambda (_L23765_)
                                                               (let ((_K23779_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (_generate-simple-vector23195_
                               _tgt23581_
                               _L23765_
                               '1
                               _K23583_
                               _E23584_))
                             (_len23781_ (gx#stx-length _L23765_)))
                         (if (if _rtd23586_
                                 (fx<= _len23781_ _fields23596_)
                                 '#f)
                             (cons 'if
                                   (cons _L23647_
                                         (cons _K23779_ (cons _E23584_ '()))))
                             (let* ((_g2378323791_
                                     (lambda (_g2378423787_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g2378423787_)))
                                    (_g2378223811_
                                     (lambda (_g2378423795_)
                                       ((lambda (_L23798_)
                                          (let ()
                                            (cons 'if
                                                  (cons _L23647_
                                                        (cons (cons 'if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f '##fx<)
                                        (cons _L23798_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '##vector-length)
                                                          (cons _L23617_ '()))
                                                    '())))
                                  (cons _K23779_ (cons _E23584_ '()))))
                      (cons _E23584_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g2378423795_))))
                               (_g2378223811_ _len23781_))))))
                    (___kont4010340104_
                     (lambda (_L23717_)
                       (cons 'if
                             (cons _L23647_
                                   (cons (_generate-list-vector23196_
                                          _tgt23581_
                                          _L23717_
                                          'struct->list
                                          _K23583_
                                          _E23584_)
                                         (cons _E23584_ '())))))))
                (if (gx#stx-pair? ___stx4009840099_)
                    (let ((_e2366623741_ (gx#syntax-e ___stx4009840099_)))
                      (let ((_tl2366823748_ (##cdr _e2366623741_))
                            (_hd2366723745_ (##car _e2366623741_)))
                        (if (gx#stx-datum? _hd2366723745_)
                            (let ((_e2366923751_ (gx#stx-e _hd2366723745_)))
                              (if (equal? _e2366923751_ 'simple:)
                                  (if (gx#stx-pair? _tl2366823748_)
                                      (let ((_e2367023755_
                                             (gx#syntax-e _tl2366823748_)))
                                        (let ((_tl2367223762_
                                               (##cdr _e2367023755_))
                                              (_hd2367123759_
                                               (##car _e2367023755_)))
                                          (if (gx#stx-null? _tl2367223762_)
                                              (___kont4010140102_
                                               _hd2367123759_)
                                              (_g2366323686_))))
                                      (_g2366323686_))
                                  (if (equal? _e2366923751_ 'list:)
                                      (if (gx#stx-pair? _tl2366823748_)
                                          (let ((_e2367823707_
                                                 (gx#syntax-e _tl2366823748_)))
                                            (let ((_tl2368023714_
                                                   (##cdr _e2367823707_))
                                                  (_hd2367923711_
                                                   (##car _e2367823707_)))
                                              (if (gx#stx-null? _tl2368023714_)
                                                  (___kont4010340104_
                                                   _hd2367923711_)
                                                  (_g2366323686_))))
                                          (_g2366323686_))
                                      (_g2366323686_))))
                            (_g2366323686_))))
                    (_g2366323686_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _g2363323644_))))
                                     (_g2363123819_
                                      (if (|gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info?|
                                           _info23579_)
                                          (let* ((_g2382323831_
                                                  (lambda (_g2382423827_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2382423827_)))
                                                 (_g2382223850_
                                                  (lambda (_g2382423835_)
                                                    ((lambda (_L23838_)
                                                       (let ()
                                                         (cons _L23838_
                                                               (cons _L23617_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2382423835_))))
                                            (_g2382223850_
                                             (cadddr (|gerbil/core$<MOP>$<MOP:2>[1]#expander-type-identifiers|
                                                      _info23579_))))
                                          (let* ((_g2385423869_
                                                  (lambda (_g2385523865_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2385523865_)))
                                                 (_g2385323913_
                                                  (lambda (_g2385523873_)
                                                    (if (gx#stx-pair?
                                                         _g2385523873_)
                                                        (let ((_e2385823876_
                                                               (gx#syntax-e
                                                                _g2385523873_)))
                                                          (let ((_hd2385923880_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2385823876_))
                        (_tl2386023883_ (##cdr _e2385823876_)))
                    (if (gx#stx-pair? _tl2386023883_)
                        (let ((_e2386123886_ (gx#syntax-e _tl2386023883_)))
                          (let ((_hd2386223890_ (##car _e2386123886_))
                                (_tl2386323893_ (##cdr _e2386123886_)))
                            (if (gx#stx-null? _tl2386323893_)
                                ((lambda (_L23896_ _L23898_)
                                   (let ()
                                     (cons _L23896_
                                           (cons _L23898_
                                                 (cons _L23617_ '())))))
                                 _hd2386223890_
                                 _hd2385923880_)
                                (_g2385423869_ _g2385523873_))))
                        (_g2385423869_ _g2385523873_))))
                (_g2385423869_ _g2385523873_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2385323913_
                                             (list (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                    _info23579_)
                                                   (if _final?23599_
                                                       (gx#datum->syntax
                                                        '#f
                                                        'direct-struct-instance?)
                                                       (gx#datum->syntax
                                                        '#f
                                                        'struct-instance?))))))))))
                               _g2360323614_))))
                      (_g2360123917_ _tgt23581_))))
                 (_generate-class23198_
                  (lambda (_info23200_
                           _tgt23202_
                           _body23203_
                           _K23204_
                           _E23205_)
                    (letrec* ((_rtd23207_
                               (if (|gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info?|
                                    _info23200_)
                                   (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
                                    _info23200_)
                                   '#f))
                              (_known-slot?23209_
                               (if _rtd23207_
                                   (lambda (_key23573_)
                                     (let ((_slot23576_
                                            (keyword->symbol
                                             (gx#stx-e _key23573_))))
                                       (_rtd-known-slot?23211_
                                        _rtd23207_
                                        _slot23576_)))
                                   false))
                              (_final?23210_
                               (if _rtd23207_
                                   (assgetq 'final:
                                            (##structure-ref
                                             _rtd23207_
                                             '5
                                             |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
                                             '#f))
                                   '#f))
                              (_rtd-known-slot?23211_
                               (lambda (_rtd23560_ _slot23562_)
                                 (if _rtd23560_
                                     (let ((_$e23564_
                                            (memq _slot23562_
                                                  (##structure-ref
                                                   _rtd23560_
                                                   '6
                                                   |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
                                                   '#f))))
                                       (if _$e23564_
                                           _$e23564_
                                           (ormap (lambda (_g2356723569_)
                                                    (_rtd-known-slot?23211_
                                                     _g2356723569_
                                                     _slot23562_))
                                                  (map |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
                                                       (##structure-ref
                                                        _rtd23560_
                                                        '2
                                                        |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
                                                        '#f)))))
                                     '#f)))
                              (_recur23212_
                               (lambda (_klass23346_ _rest23348_)
                                 (let* ((___stx4014840149_ _rest23348_)
                                        (_g2335123367_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx4014840149_))))
                                   (let ((___kont4015140152_
                                          (lambda (_L23405_ _L23407_ _L23408_)
                                            (let* ((_g2342423432_
                                                    (lambda (_g2342523428_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g2342523428_)))
                                                   (_g2342323552_
                                                    (lambda (_g2342523436_)
                                                      ((lambda (_L23439_)
                                                         (let ()
                                                           (let* ((_g2345123459_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g2345223455_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2345223455_)))
                          (_g2345023548_
                           (lambda (_g2345223463_)
                             ((lambda (_L23466_)
                                (let ()
                                  (let* ((_g2347923487_
                                          (lambda (_g2348023483_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g2348023483_)))
                                         (_g2347823544_
                                          (lambda (_g2348023491_)
                                            ((lambda (_L23494_)
                                               (let ()
                                                 (let* ((_g2350723515_
                                                         (lambda (_g2350823511_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2350823511_)))
                                                        (_g2350623540_
                                                         (lambda (_g2350823519_)
                                                           ((lambda (_L23522_)
                                                              (let ()
                                                                (let ((_K23535_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons 'let
                                     (cons (cons (cons _L23522_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##vector-ref)
                           (cons _L23439_
                                 (cons (cons (gx#datum->syntax '#f 'fx1+)
                                             (cons _L23494_ '()))
                                       '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (_generate123192_
                                                  _L23522_
                                                  _L23407_
                                                  (_recur23212_
                                                   _klass23346_
                                                   _L23405_)
                                                  _E23205_)
                                                 '())))))
                          (if (_known-slot?23209_ _L23408_)
                              (cons 'let
                                    (cons (cons (cons _L23494_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'class-slot-offset)
                          (cons _L23466_ (cons _L23408_ '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons _K23535_ '())))
                              (cons 'let
                                    (cons (cons (cons _L23494_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'class-slot-offset)
                          (cons _L23466_ (cons _L23408_ '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons 'if
                                                      (cons _L23494_
                                                            (cons _K23535_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _E23205_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))))))
                    _g2350823519_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2350623540_
                                                    (gx#genident 'e)))))
                                             _g2348023491_))))
                                    (_g2347823544_ (gx#genident 'slot)))))
                              _g2345223463_))))
                     (_g2345023548_ _klass23346_))))
               _g2342523436_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2342323552_ _tgt23202_))))
                                         (___kont4015340154_
                                          (lambda () _K23204_)))
                                     (if (gx#stx-pair? ___stx4014840149_)
                                         (let ((_e2335623385_
                                                (gx#syntax-e
                                                 ___stx4014840149_)))
                                           (let ((_tl2335823392_
                                                  (##cdr _e2335623385_))
                                                 (_hd2335723389_
                                                  (##car _e2335623385_)))
                                             (if (gx#stx-pair? _tl2335823392_)
                                                 (let ((_e2335923395_
                                                        (gx#syntax-e
                                                         _tl2335823392_)))
                                                   (let ((_tl2336123402_
                                                          (##cdr _e2335923395_))
                                                         (_hd2336023399_
                                                          (##car _e2335923395_)))
                                                     (___kont4015140152_
                                                      _tl2336123402_
                                                      _hd2336023399_
                                                      _hd2335723389_)))
                                                 (___kont4015340154_))))
                                         (___kont4015340154_)))))))
                      (let* ((_g2321423222_
                              (lambda (_g2321523218_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2321523218_)))
                             (_g2321323342_
                              (lambda (_g2321523226_)
                                ((lambda (_L23229_)
                                   (let ()
                                     (let* ((_g2324423252_
                                             (lambda (_g2324523248_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2324523248_)))
                                            (_g2324323338_
                                             (lambda (_g2324523256_)
                                               ((lambda (_L23259_)
                                                  (let ()
                                                    (let* ((_g2327223280_
                                                            (lambda (_g2327323276_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g2327323276_)))
                                                           (_g2327123334_
                                                            (lambda (_g2327323284_)
                                                              ((lambda (_L23287_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2330023308_
                                   (lambda (_g2330123304_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2330123304_)))
                                  (_g2329923330_
                                   (lambda (_g2330123312_)
                                     ((lambda (_L23315_)
                                        (let ()
                                          (let ()
                                            (cons 'if
                                                  (cons (cons _L23315_
                                                              (cons _L23287_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _L23259_ '())))
                (cons (cons 'let
                            (cons (cons (cons _L23229_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'object-type)
                                                          (cons _L23259_ '()))
                                                    '()))
                                        '())
                                  (cons (_recur23212_ _L23229_ _body23203_)
                                        '())))
                      (cons _E23205_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2330123312_))))
                             (_g2329923330_
                              (if _final?23210_
                                  (gx#datum->syntax
                                   '#f
                                   'direct-class-instance?)
                                  (gx#datum->syntax '#f 'class-instance?))))))
                       _g2327323284_))))
              (_g2327123334_
               (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                _info23200_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2324523256_))))
                                       (_g2324323338_ _tgt23202_))))
                                 _g2321523226_))))
                        (_g2321323342_ (gx#genident 'class)))))))
          (_generate123192_ _tgt23187_ _ptree23188_ _K23189_ _E23190_))))
    (define |gerbil/core$<match>[1]#generate-match*|
      (lambda (_stx22081_ _tgt-lst22083_ _clauses22084_)
        (letrec ((_parse-body22086_
                  (lambda (_hd-len23007_)
                    (let _lp23010_ ((_rest23013_ _clauses22084_)
                                    (_r23015_ '()))
                      (let* ((___stx4019840199_ _rest23013_)
                             (_g2301823030_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx4019840199_))))
                        (let ((___kont4020140202_
                               (lambda (_L23058_ _L23060_)
                                 (let* ((___stx4017040171_ _L23060_)
                                        (_g2307723093_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx4017040171_))))
                                   (let ((___kont4017340174_
                                          (lambda (_L23162_)
                                            (if (gx#stx-null? _L23058_)
                                                (cons (cons (gx#genident 'else)
                                                            (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'begin) _L23162_)
                                 (let ((_$e23173_ (gx#stx-source _L23060_)))
                                   (if _$e23173_
                                       _$e23173_
                                       (gx#stx-source _stx22081_))))
                                '())))
              _r23015_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; misplaced else"
                                                 _stx22081_
                                                 _L23060_))))
                                         (___kont4017540176_
                                          (lambda (_L23121_ _L23123_)
                                            (_lp23010_
                                             _L23058_
                                             (cons (cons (gx#genident
                                                          'try-match)
                                                         (cons (gx#stx-map
                                                                (lambda (_g2313523137_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (|gerbil/core$<match>[1]#parse-match-pattern__%|
                           _g2313523137_
                           _stx22081_))
                        _L23123_)
                       (cons (gx#stx-wrap-source
                              (cons (gx#datum->syntax '#f 'begin) _L23121_)
                              (let ((_$e23141_ (gx#stx-source _L23060_)))
                                (if _$e23141_
                                    _$e23141_
                                    (gx#stx-source _stx22081_))))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _r23015_))))
                                         (___kont4017740178_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; illegal match clause"
                                             _stx22081_
                                             _L23060_))))
                                     (let* ((___match4019540196_
                                             (lambda (_e2308523111_
                                                      _hd2308623115_
                                                      _tl2308723118_)
                                               (let ((_L23121_ _tl2308723118_)
                                                     (_L23123_ _hd2308623115_))
                                                 (if (if (gx#stx-list?
                                                          _L23123_)
                                                         (if (fx= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L23123_)
                          _hd-len23007_)
                     (if (gx#stx-list? _L23121_)
                         (not (gx#stx-null? _L23121_))
                         '#f)
                     '#f)
                 '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4017540176_
                                                      _L23121_
                                                      _L23123_)
                                                     (___kont4017740178_)))))
                                            (___match4018940190_
                                             (lambda (_e2308023152_
                                                      _hd2308123156_
                                                      _tl2308223159_)
                                               (let ((_L23162_ _tl2308223159_))
                                                 (if (if (gx#stx-list?
                                                          _L23162_)
                                                         (not (gx#stx-null?
                                                               _L23162_))
                                                         '#f)
                                                     (___kont4017340174_
                                                      _L23162_)
                                                     (___match4019540196_
                                                      _e2308023152_
                                                      _hd2308123156_
                                                      _tl2308223159_))))))
                                       (if (gx#stx-pair? ___stx4017040171_)
                                           (let ((_e2308023152_
                                                  (gx#syntax-e
                                                   ___stx4017040171_)))
                                             (let ((_tl2308223159_
                                                    (##cdr _e2308023152_))
                                                   (_hd2308123156_
                                                    (##car _e2308023152_)))
                                               (if (gx#identifier?
                                                    _hd2308123156_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core$<match>[1]#_g41388_|
                                                        _hd2308123156_)
                                                       (___match4018940190_
                                                        _e2308023152_
                                                        _hd2308123156_
                                                        _tl2308223159_)
                                                       (___match4019540196_
                                                        _e2308023152_
                                                        _hd2308123156_
                                                        _tl2308223159_))
                                                   (___match4019540196_
                                                    _e2308023152_
                                                    _hd2308123156_
                                                    _tl2308223159_))))
                                           (___kont4017740178_)))))))
                              (___kont4020340204_ (lambda () _r23015_)))
                          (if (gx#stx-pair? ___stx4019840199_)
                              (let ((_e2302223048_
                                     (gx#syntax-e ___stx4019840199_)))
                                (let ((_tl2302423055_ (##cdr _e2302223048_))
                                      (_hd2302323052_ (##car _e2302223048_)))
                                  (___kont4020140202_
                                   _tl2302423055_
                                   _hd2302323052_)))
                              (___kont4020340204_)))))))
                 (_generate-body22088_
                  (lambda (_body22792_)
                    (let* ((_g2279522803_
                            (lambda (_g2279622799_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2279622799_)))
                           (_g2279423003_
                            (lambda (_g2279622807_)
                              ((lambda (_L22810_)
                                 (let ()
                                   (let* ((_g2282222839_
                                           (lambda (_g2282322835_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g2282322835_)))
                                          (_g2282122999_
                                           (lambda (_g2282322843_)
                                             (if (gx#stx-pair/null?
                                                  _g2282322843_)
                                                 (let ((_g41389_
                                                        (gx#syntax-split-splice
                                                         _g2282322843_
                                                         '0)))
                                                   (begin
                                                     (let ((_g41390_
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g41389_)
                        (##vector-length _g41389_)
                        1)))
               (if (not (##fx= _g41390_ 2))
                   (error "Context expects 2 values" _g41390_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2282522846_
                                                            (##vector-ref
                                                             _g41389_
                                                             0))
                                                           (_tl2282722849_
                                                            (##vector-ref
                                                             _g41389_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2282722849_)
                                                           (letrec ((_loop2282822852_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2282622856_ _target2283222859_)
                               (if (gx#stx-pair? _hd2282622856_)
                                   (let ((_e2282922862_
                                          (gx#syntax-e _hd2282622856_)))
                                     (let ((_lp-hd2283022866_
                                            (##car _e2282922862_))
                                           (_lp-tl2283122869_
                                            (##cdr _e2282922862_)))
                                       (_loop2282822852_
                                        _lp-tl2283122869_
                                        (cons _lp-hd2283022866_
                                              _target2283222859_))))
                                   (let ((_target2283322872_
                                          (reverse _target2283222859_)))
                                     ((lambda (_L22876_)
                                        (let ()
                                          (let* ((_g2289322901_
                                                  (lambda (_g2289422897_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2289422897_)))
                                                 (_g2289222987_
                                                  (lambda (_g2289422905_)
                                                    ((lambda (_L22908_)
                                                       (let ()
                                                         (let* ((_g2292122929_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2292222925_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2292222925_)))
                        (_g2292022983_
                         (lambda (_g2292222933_)
                           ((lambda (_L22936_)
                              (let ()
                                (let* ((_g2294922957_
                                        (lambda (_g2295022953_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g2295022953_)))
                                       (_g2294822979_
                                        (lambda (_g2295022961_)
                                          ((lambda (_L22964_)
                                             (let ()
                                               (let ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '@match)
                                                             (cons _L22964_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g2295022961_))))
                                  (_g2294822979_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'let)
                                          (cons (cons (cons _L22810_
                                                            (cons _L22908_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _L22936_ '())))
                                    (gx#stx-source _stx22081_))))))
                            _g2292222933_))))
                   (_g2292022983_
                    (_generate-clauses22089_
                     _body22792_
                     (cons _L22810_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2289422905_))))
                                            (_g2289222987_
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'error)
                              (cons '"No clause matching"
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g2299022993_
                                                      _g2299122996_)
                                               (cons _g2299022993_
                                                     _g2299122996_))
                                             '()
                                             _L22876_))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx22081_))))))
                                      _target2283322872_))))))
                     (_loop2282822852_ _target2282522846_ '()))
                   (_g2282222839_ _g2282322843_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2282222839_
                                                  _g2282322843_)))))
                                     (_g2282122999_ _tgt-lst22083_))))
                               _g2279622807_))))
                      (_g2279423003_ (gx#genident 'E)))))
                 (_generate-clauses22089_
                  (lambda (_rest22444_ _E22446_)
                    (let* ((___stx4021440215_ _rest22444_)
                           (_g2245022466_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx4021440215_))))
                      (let ((___kont4021740218_
                             (lambda (_L22700_)
                               (let* ((_g2271122729_
                                       (lambda (_g2271222725_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2271222725_)))
                                      (_g2271022784_
                                       (lambda (_g2271222733_)
                                         (if (gx#stx-pair? _g2271222733_)
                                             (let ((_e2271522736_
                                                    (gx#syntax-e
                                                     _g2271222733_)))
                                               (let ((_hd2271622740_
                                                      (##car _e2271522736_))
                                                     (_tl2271722743_
                                                      (##cdr _e2271522736_)))
                                                 (if (gx#stx-pair?
                                                      _tl2271722743_)
                                                     (let ((_e2271822746_
                                                            (gx#syntax-e
                                                             _tl2271722743_)))
                                                       (let ((_hd2271922750_
                                                              (##car _e2271822746_))
                                                             (_tl2272022753_
                                                              (##cdr _e2271822746_)))
                                                         (if (gx#stx-pair?
                                                              _tl2272022753_)
                                                             (let ((_e2272122756_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl2272022753_)))
                       (let ((_hd2272222760_ (##car _e2272122756_))
                             (_tl2272322763_ (##cdr _e2272122756_)))
                         (if (gx#stx-null? _tl2272322763_)
                             ((lambda (_L22766_ _L22768_)
                                (cons 'begin-annotation
                                      (cons '@match-body
                                            (cons (if (gx#stx-e _L22768_)
                                                      (_generate122090_
                                                       _L22768_
                                                       _L22766_
                                                       _E22446_)
                                                      _L22766_)
                                                  '()))))
                              _hd2272222760_
                              _hd2271922750_)
                             (_g2271122729_ _g2271222733_))))
                     (_g2271122729_ _g2271222733_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2271122729_
                                                      _g2271222733_))))
                                             (_g2271122729_ _g2271222733_)))))
                                 (_g2271022784_ _L22700_))))
                            (___kont4021940220_
                             (lambda (_L22494_ _L22496_)
                               (let* ((_g2250922528_
                                       (lambda (_g2251022524_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2251022524_)))
                                      (_g2250822679_
                                       (lambda (_g2251022532_)
                                         (if (gx#stx-pair? _g2251022532_)
                                             (let ((_e2251422535_
                                                    (gx#syntax-e
                                                     _g2251022532_)))
                                               (let ((_hd2251522539_
                                                      (##car _e2251422535_))
                                                     (_tl2251622542_
                                                      (##cdr _e2251422535_)))
                                                 (if (gx#stx-pair?
                                                      _tl2251622542_)
                                                     (let ((_e2251722545_
                                                            (gx#syntax-e
                                                             _tl2251622542_)))
                                                       (let ((_hd2251822549_
                                                              (##car _e2251722545_))
                                                             (_tl2251922552_
                                                              (##cdr _e2251722545_)))
                                                         (if (gx#stx-pair?
                                                              _tl2251922552_)
                                                             (let ((_e2252022555_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl2251922552_)))
                       (let ((_hd2252122559_ (##car _e2252022555_))
                             (_tl2252222562_ (##cdr _e2252022555_)))
                         (if (gx#stx-null? _tl2252222562_)
                             ((lambda (_L22565_ _L22567_ _L22568_)
                                (if (gx#stx-e _L22567_)
                                    (let* ((_g2258522600_
                                            (lambda (_g2258622596_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2258622596_)))
                                           (_g2258422645_
                                            (lambda (_g2258622604_)
                                              (if (gx#stx-pair? _g2258622604_)
                                                  (let ((_e2258922607_
                                                         (gx#syntax-e
                                                          _g2258622604_)))
                                                    (let ((_hd2259022611_
                                                           (##car _e2258922607_))
                                                          (_tl2259122614_
                                                           (##cdr _e2258922607_)))
                                                      (if (gx#stx-pair?
                                                           _tl2259122614_)
                                                          (let ((_e2259222617_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2259122614_)))
                    (let ((_hd2259322621_ (##car _e2259222617_))
                          (_tl2259422624_ (##cdr _e2259222617_)))
                      (if (gx#stx-null? _tl2259422624_)
                          ((lambda (_L22627_ _L22629_)
                             (let ()
                               (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _L22568_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'lambda)
                           (cons '() (cons _L22629_ '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons _L22627_ '())))))
                           _hd2259322621_
                           _hd2259022611_)
                          (_g2258522600_ _g2258622604_))))
                  (_g2258522600_ _g2258622604_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2258522600_
                                                   _g2258622604_)))))
                                      (_g2258422645_
                                       (list (_generate122090_
                                              _L22567_
                                              _L22565_
                                              _E22446_)
                                             (_generate-clauses22089_
                                              _L22494_
                                              (cons _L22568_ '())))))
                                    (let* ((_g2264922657_
                                            (lambda (_g2265022653_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2265022653_)))
                                           (_g2264822675_
                                            (lambda (_g2265022661_)
                                              ((lambda (_L22664_)
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (cons (cons _L22568_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'begin-annotation)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      '@match-else)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lambda)
                         (cons '() (cons _L22565_ '())))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))
                             '())
                       (cons _L22664_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g2265022661_))))
                                      (_g2264822675_
                                       (_generate-clauses22089_
                                        _L22494_
                                        (cons _L22568_ '()))))))
                              _hd2252122559_
                              _hd2251822549_
                              _hd2251522539_)
                             (_g2250922528_ _g2251022532_))))
                     (_g2250922528_ _g2251022532_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2250922528_
                                                      _g2251022532_))))
                                             (_g2250922528_ _g2251022532_)))))
                                 (_g2250822679_ _L22496_))))
                            (___kont4022140222_
                             (lambda ()
                               (cons 'begin-annotation
                                     (cons '@match-body
                                           (cons _E22446_ '()))))))
                        (if (gx#stx-pair? ___stx4021440215_)
                            (let ((_e2245322690_
                                   (gx#syntax-e ___stx4021440215_)))
                              (let ((_tl2245522697_ (##cdr _e2245322690_))
                                    (_hd2245422694_ (##car _e2245322690_)))
                                (if (gx#stx-null? _tl2245522697_)
                                    (___kont4021740218_ _hd2245422694_)
                                    (___kont4021940220_
                                     _tl2245522697_
                                     _hd2245422694_))))
                            (___kont4022140222_))))))
                 (_generate122090_
                  (lambda (_clause22092_ _body22094_ _E22095_)
                    (let* ((_g2209722121_
                            (lambda (_g2209822117_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2209822117_)))
                           (_g2209622440_
                            (lambda (_g2209822125_)
                              (if (gx#stx-pair? _g2209822125_)
                                  (let ((_e2210122128_
                                         (gx#syntax-e _g2209822125_)))
                                    (let ((_hd2210222132_
                                           (##car _e2210122128_))
                                          (_tl2210322135_
                                           (##cdr _e2210122128_)))
                                      (if (gx#stx-pair? _tl2210322135_)
                                          (let ((_e2210422138_
                                                 (gx#syntax-e _tl2210322135_)))
                                            (let ((_hd2210522142_
                                                   (##car _e2210422138_))
                                                  (_tl2210622145_
                                                   (##cdr _e2210422138_)))
                                              (if (gx#stx-pair/null?
                                                   _hd2210522142_)
                                                  (let ((_g41391_
                                                         (gx#syntax-split-splice
                                                          _hd2210522142_
                                                          '0)))
                                                    (begin
                                                      (let ((_g41392_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g41391_)
                         (##vector-length _g41391_)
                         1)))
                (if (not (##fx= _g41392_ 2))
                    (error "Context expects 2 values" _g41392_)))
              (let ((_target2210722148_ (##vector-ref _g41391_ 0))
                    (_tl2210922151_ (##vector-ref _g41391_ 1)))
                (if (gx#stx-null? _tl2210922151_)
                    (letrec ((_loop2211022154_
                              (lambda (_hd2210822158_ _var2211422161_)
                                (if (gx#stx-pair? _hd2210822158_)
                                    (let ((_e2211122164_
                                           (gx#syntax-e _hd2210822158_)))
                                      (let ((_lp-hd2211222168_
                                             (##car _e2211122164_))
                                            (_lp-tl2211322171_
                                             (##cdr _e2211122164_)))
                                        (_loop2211022154_
                                         _lp-tl2211322171_
                                         (cons _lp-hd2211222168_
                                               _var2211422161_))))
                                    (let ((_var2211522174_
                                           (reverse _var2211422161_)))
                                      (if (gx#stx-null? _tl2210622145_)
                                          ((lambda (_L22178_ _L22180_)
                                             (let ()
                                               (begin
                                                 (gx#check-duplicate-identifiers
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g2220122204_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2220222207_)
                     (cons _g2220122204_ _g2220222207_))
                   '()
                   _L22178_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx22081_)
                                                 (let* ((_g2221022218_
                                                         (lambda (_g2221122214_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2221122214_)))
                                                        (_g2220922312_
                                                         (lambda (_g2221122222_)
                                                           ((lambda (_L22225_)
                                                              (let ()
                                                                (let* ((_g2223822246_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g2223922242_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g2223922242_)))
                               (_g2223722308_
                                (lambda (_g2223922250_)
                                  ((lambda (_L22253_)
                                     (let ()
                                       (let* ((_g2226622274_
                                               (lambda (_g2226722270_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g2226722270_)))
                                              (_g2226522296_
                                               (lambda (_g2226722278_)
                                                 ((lambda (_L22281_)
                                                    (let ()
                                                      (let ()
                                                        (gx#stx-wrap-source
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (cons _L22180_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _L22281_ '()))
                             (cons _L22225_ '())))
                 (gx#stx-source _stx22081_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g2226722278_))))
                                         (_g2226522296_
                                          (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons (begin
                                                         '#!void
                                                         (foldr (lambda (_g2229922302_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g2230022305_)
                          (cons _g2229922302_ _g2230022305_))
                        '()
                        _L22178_))
               (cons _L22253_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _stx22081_))))))
                                   _g2223922250_))))
                          (_g2223722308_ _body22094_))))
                    _g2221122222_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2220922312_
                                                    (let _recur22316_ ((_rest22319_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _clause22092_)
                               (_rest-targets22321_ _tgt-lst22083_))
              (let* ((___stx4024040241_ _rest22319_)
                     (_g2232422336_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         ___stx4024040241_))))
                (let ((___kont4024340244_
                       (lambda (_L22372_ _L22374_)
                         (let* ((_g2238922401_
                                 (lambda (_g2239022397_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2239022397_)))
                                (_g2238822432_
                                 (lambda (_g2239022405_)
                                   (if (gx#stx-pair? _g2239022405_)
                                       (let ((_e2239322408_
                                              (gx#syntax-e _g2239022405_)))
                                         (let ((_hd2239422412_
                                                (##car _e2239322408_))
                                               (_tl2239522415_
                                                (##cdr _e2239322408_)))
                                           ((lambda (_L22418_ _L22420_)
                                              (|gerbil/core$<match>[1]#generate-match1|
                                               _stx22081_
                                               _L22420_
                                               _L22374_
                                               (_recur22316_ _L22372_ _L22418_)
                                               _E22095_))
                                            _tl2239522415_
                                            _hd2239422412_)))
                                       (_g2238922401_ _g2239022405_)))))
                           (_g2238822432_ _rest-targets22321_))))
                      (___kont4024540246_
                       (lambda ()
                         (cons _L22180_
                               (begin
                                 '#!void
                                 (foldr (lambda (_g2234622349_ _g2234722352_)
                                          (cons _g2234622349_ _g2234722352_))
                                        '()
                                        _L22178_))))))
                  (if (gx#stx-pair? ___stx4024040241_)
                      (let ((_e2232822362_ (gx#syntax-e ___stx4024040241_)))
                        (let ((_tl2233022369_ (##cdr _e2232822362_))
                              (_hd2232922366_ (##car _e2232822362_)))
                          (___kont4024340244_ _tl2233022369_ _hd2232922366_)))
                      (___kont4024540246_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _var2211522174_
                                           _hd2210222132_)
                                          (_g2209722121_ _g2209822125_)))))))
                      (_loop2211022154_ _target2210722148_ '()))
                    (_g2209722121_ _g2209822125_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2209722121_
                                                   _g2209822125_))))
                                          (_g2209722121_ _g2209822125_))))
                                  (_g2209722121_ _g2209822125_)))))
                      (_g2209622440_
                       (list (gx#genident 'K)
                             (apply append
                                    (map |gerbil/core$<match>[1]#match-pattern-vars|
                                         _clause22092_))))))))
          (_generate-body22088_
           (_parse-body22086_ (gx#stx-length _tgt-lst22083_))))))
    (define |gerbil/core$<match>[1]#generate-match|
      (lambda (_stx21983_ _tgt21985_ _clauses21986_)
        (letrec ((_reclause21988_
                  (lambda (_clause21991_)
                    (let* ((___stx4025640257_ _clause21991_)
                           (_g2199622011_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx4025640257_))))
                      (let ((___kont4025940260_ (lambda () _clause21991_))
                            (___kont4026140262_
                             (lambda (_L22039_ _L22041_)
                               (gx#stx-wrap-source
                                (cons (cons _L22041_ '()) _L22039_)
                                (gx#stx-source
                                 (gx#datum->syntax '#f 'clause)))))
                            (___kont4026340264_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal match clause"
                                _stx21983_
                                _clause21991_))))
                        (if (gx#stx-pair? ___stx4025640257_)
                            (let ((_e2199822063_
                                   (gx#syntax-e ___stx4025640257_)))
                              (let ((_tl2200022070_ (##cdr _e2199822063_))
                                    (_hd2199922067_ (##car _e2199822063_)))
                                (if (gx#identifier? _hd2199922067_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<match>[1]#_g41393_|
                                         _hd2199922067_)
                                        (___kont4025940260_)
                                        (___kont4026140262_
                                         _tl2200022070_
                                         _hd2199922067_))
                                    (___kont4026140262_
                                     _tl2200022070_
                                     _hd2199922067_))))
                            (___kont4026340264_)))))))
          (|gerbil/core$<match>[1]#generate-match*|
           _stx21983_
           (cons _tgt21985_ '())
           (gx#stx-map _reclause21988_ _clauses21986_)))))
    (define |gerbil/core$<match>[:0:]#match|
      (lambda (_stx29622_)
        (let* ((___stx4028440285_ _stx29622_)
               (_g2962729656_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx4028440285_))))
          (let ((___kont4028740288_
                 (lambda (_L29896_)
                   (let* ((_g2990929917_
                           (lambda (_g2991029913_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2991029913_)))
                          (_g2990829970_
                           (lambda (_g2991029921_)
                             ((lambda (_L29924_)
                                (let ()
                                  (let* ((_g2993629944_
                                          (lambda (_g2993729940_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g2993729940_)))
                                         (_g2993529966_
                                          (lambda (_g2993729948_)
                                            ((lambda (_L29951_)
                                               (let ()
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'lambda)
                                                         (cons (cons _L29924_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons _L29951_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _g2993729948_))))
                                    (_g2993529966_
                                     (gx#stx-wrap-source
                                      (cons (gx#datum->syntax '#f 'match)
                                            (cons _L29924_ _L29896_))
                                      (gx#stx-source _stx29622_))))))
                              _g2991029921_))))
                     (_g2990829970_ (gx#genident 'e)))))
                (___kont4028940290_
                 (lambda (_L29791_)
                   (let* ((_g2980429812_
                           (lambda (_g2980529808_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2980529808_)))
                          (_g2980329865_
                           (lambda (_g2980529816_)
                             ((lambda (_L29819_)
                                (let ()
                                  (let* ((_g2983129839_
                                          (lambda (_g2983229835_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g2983229835_)))
                                         (_g2983029861_
                                          (lambda (_g2983229843_)
                                            ((lambda (_L29846_)
                                               (let ()
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'lambda)
                                                         (cons _L29819_
                                                               (cons _L29846_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _g2983229843_))))
                                    (_g2983029861_
                                     (gx#stx-wrap-source
                                      (cons (gx#datum->syntax '#f 'match)
                                            (cons _L29819_ _L29791_))
                                      (gx#stx-source _stx29622_))))))
                              _g2980529816_))))
                     (_g2980329865_ (gx#genident 'args)))))
                (___kont4029140292_
                 (lambda (_L29683_ _L29685_)
                   (let* ((_g2969929707_
                           (lambda (_g2970029703_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2970029703_)))
                          (_g2969829760_
                           (lambda (_g2970029711_)
                             ((lambda (_L29714_)
                                (let ()
                                  (let* ((_g2972629734_
                                          (lambda (_g2972729730_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g2972729730_)))
                                         (_g2972529756_
                                          (lambda (_g2972729738_)
                                            ((lambda (_L29741_)
                                               (let ()
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (cons (cons _L29714_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _L29685_ '()))
                             '())
                       (cons _L29741_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _g2972729738_))))
                                    (_g2972529756_
                                     (|gerbil/core$<match>[1]#generate-match|
                                      _stx29622_
                                      _L29714_
                                      _L29683_)))))
                              _g2970029711_))))
                     (_g2969829760_ (gx#genident _L29685_))))))
            (let* ((___match4033740338_
                    (lambda (_e2964529663_
                             _hd2964629667_
                             _tl2964729670_
                             _e2964829673_
                             _hd2964929677_
                             _tl2965029680_)
                      (let ((_L29683_ _tl2965029680_)
                            (_L29685_ _hd2964929677_))
                        (if (gx#stx-list? _L29683_)
                            (___kont4029140292_ _L29683_ _L29685_)
                            (_g2962729656_)))))
                   (___match4032540326_
                    (lambda (_e2963729771_
                             _hd2963829775_
                             _tl2963929778_
                             _e2964029781_
                             _hd2964129785_
                             _tl2964229788_)
                      (let ((_L29791_ _tl2964229788_))
                        (if (gx#stx-list? _L29791_)
                            (___kont4028940290_ _L29791_)
                            (___match4033740338_
                             _e2963729771_
                             _hd2963829775_
                             _tl2963929778_
                             _e2964029781_
                             _hd2964129785_
                             _tl2964229788_)))))
                   (___match4030940310_
                    (lambda (_e2963029876_
                             _hd2963129880_
                             _tl2963229883_
                             _e2963329886_
                             _hd2963429890_
                             _tl2963529893_)
                      (let ((_L29896_ _tl2963529893_))
                        (if (gx#stx-list? _L29896_)
                            (___kont4028740288_ _L29896_)
                            (___match4033740338_
                             _e2963029876_
                             _hd2963129880_
                             _tl2963229883_
                             _e2963329886_
                             _hd2963429890_
                             _tl2963529893_))))))
              (if (gx#stx-pair? ___stx4028440285_)
                  (let ((_e2963029876_ (gx#syntax-e ___stx4028440285_)))
                    (let ((_tl2963229883_ (##cdr _e2963029876_))
                          (_hd2963129880_ (##car _e2963029876_)))
                      (if (gx#stx-pair? _tl2963229883_)
                          (let ((_e2963329886_ (gx#syntax-e _tl2963229883_)))
                            (let ((_tl2963529893_ (##cdr _e2963329886_))
                                  (_hd2963429890_ (##car _e2963329886_)))
                              (if (gx#identifier? _hd2963429890_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g41394_|
                                       _hd2963429890_)
                                      (___match4030940310_
                                       _e2963029876_
                                       _hd2963129880_
                                       _tl2963229883_
                                       _e2963329886_
                                       _hd2963429890_
                                       _tl2963529893_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g41395_|
                                           _hd2963429890_)
                                          (___match4032540326_
                                           _e2963029876_
                                           _hd2963129880_
                                           _tl2963229883_
                                           _e2963329886_
                                           _hd2963429890_
                                           _tl2963529893_)
                                          (___match4033740338_
                                           _e2963029876_
                                           _hd2963129880_
                                           _tl2963229883_
                                           _e2963329886_
                                           _hd2963429890_
                                           _tl2963529893_)))
                                  (___match4033740338_
                                   _e2963029876_
                                   _hd2963129880_
                                   _tl2963229883_
                                   _e2963329886_
                                   _hd2963429890_
                                   _tl2963529893_))))
                          (_g2962729656_))))
                  (_g2962729656_)))))))
    (define |gerbil/core$<match>[:0:]#match*|
      (lambda (_stx29978_)
        (let* ((_g2998130005_
                (lambda (_g2998230001_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2998230001_)))
               (_g2998030217_
                (lambda (_g2998230009_)
                  (if (gx#stx-pair? _g2998230009_)
                      (let ((_e2998530012_ (gx#syntax-e _g2998230009_)))
                        (let ((_hd2998630016_ (##car _e2998530012_))
                              (_tl2998730019_ (##cdr _e2998530012_)))
                          (if (gx#stx-pair? _tl2998730019_)
                              (let ((_e2998830022_
                                     (gx#syntax-e _tl2998730019_)))
                                (let ((_hd2998930026_ (##car _e2998830022_))
                                      (_tl2999030029_ (##cdr _e2998830022_)))
                                  (if (gx#stx-pair/null? _hd2998930026_)
                                      (let ((_g41396_
                                             (gx#syntax-split-splice
                                              _hd2998930026_
                                              '0)))
                                        (begin
                                          (let ((_g41397_
                                                 (if (##values? _g41396_)
                                                     (##vector-length _g41396_)
                                                     1)))
                                            (if (not (##fx= _g41397_ 2))
                                                (error "Context expects 2 values"
                                                       _g41397_)))
                                          (let ((_target2999130032_
                                                 (##vector-ref _g41396_ 0))
                                                (_tl2999330035_
                                                 (##vector-ref _g41396_ 1)))
                                            (if (gx#stx-null? _tl2999330035_)
                                                (letrec ((_loop2999430038_
                                                          (lambda (_hd2999230042_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e2999830045_)
                    (if (gx#stx-pair? _hd2999230042_)
                        (let ((_e2999530048_ (gx#syntax-e _hd2999230042_)))
                          (let ((_lp-hd2999630052_ (##car _e2999530048_))
                                (_lp-tl2999730055_ (##cdr _e2999530048_)))
                            (_loop2999430038_
                             _lp-tl2999730055_
                             (cons _lp-hd2999630052_ _e2999830045_))))
                        (let ((_e2999930058_ (reverse _e2999830045_)))
                          ((lambda (_L30062_ _L30064_)
                             (if (gx#stx-list? _L30062_)
                                 (let* ((_g3008230099_
                                         (lambda (_g3008330095_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g3008330095_)))
                                        (_g3008130205_
                                         (lambda (_g3008330103_)
                                           (if (gx#stx-pair/null?
                                                _g3008330103_)
                                               (let ((_g41398_
                                                      (gx#syntax-split-splice
                                                       _g3008330103_
                                                       '0)))
                                                 (begin
                                                   (let ((_g41399_
                                                          (if (##values?
                                                               _g41398_)
                                                              (##vector-length
                                                               _g41398_)
                                                              1)))
                                                     (if (not (##fx= _g41399_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                 (error "Context expects 2 values" _g41399_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target3008530106_
                                                          (##vector-ref
                                                           _g41398_
                                                           0))
                                                         (_tl3008730109_
                                                          (##vector-ref
                                                           _g41398_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl3008730109_)
                                                         (letrec ((_loop3008830112_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd3008630116_ _$e3009230119_)
                             (if (gx#stx-pair? _hd3008630116_)
                                 (let ((_e3008930122_
                                        (gx#syntax-e _hd3008630116_)))
                                   (let ((_lp-hd3009030126_
                                          (##car _e3008930122_))
                                         (_lp-tl3009130129_
                                          (##cdr _e3008930122_)))
                                     (_loop3008830112_
                                      _lp-tl3009130129_
                                      (cons _lp-hd3009030126_
                                            _$e3009230119_))))
                                 (let ((_$e3009330132_
                                        (reverse _$e3009230119_)))
                                   ((lambda (_L30136_)
                                      (let ()
                                        (let* ((_g3015230160_
                                                (lambda (_g3015330156_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g3015330156_)))
                                               (_g3015130193_
                                                (lambda (_g3015330164_)
                                                  ((lambda (_L30167_)
                                                     (let ()
                                                       (let ()
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#syntax-check-splice-targets
                                _L30064_
                                _L30136_)
                               (foldr (lambda (_g3018130185_
                                               _g3018230188_
                                               _g3018330190_)
                                        (cons (cons _g3018230188_
                                                    (cons _g3018130185_ '()))
                                              _g3018330190_))
                                      '()
                                      _L30064_
                                      _L30136_))
                             (cons _L30167_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g3015330164_))))
                                          (_g3015130193_
                                           (|gerbil/core$<match>[1]#generate-match*|
                                            _stx29978_
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g3019630199_
                                                              _g3019730202_)
                                                       (cons _g3019630199_
                                                             _g3019730202_))
                                                     '()
                                                     _L30136_))
                                            _L30062_)))))
                                    _$e3009330132_))))))
                   (_loop3008830112_ _target3008530106_ '()))
                 (_g3008230099_ _g3008330103_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g3008230099_
                                                _g3008330103_)))))
                                   (_g3008130205_
                                    (gx#gentemps
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g3020830211_
                                                       _g3020930214_)
                                                (cons _g3020830211_
                                                      _g3020930214_))
                                              '()
                                              _L30064_)))))
                                 (_g2998130005_ _g2998230009_)))
                           _tl2999030029_
                           _e2999930058_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop2999430038_
                                                   _target2999130032_
                                                   '()))
                                                (_g2998130005_
                                                 _g2998230009_)))))
                                      (_g2998130005_ _g2998230009_))))
                              (_g2998130005_ _g2998230009_))))
                      (_g2998130005_ _g2998230009_)))))
          (_g2998030217_ _stx29978_))))
    (define |gerbil/core$<match>[:0:]#with|
      (lambda (_$stx30223_)
        (let* ((___stx4034040341_ _$stx30223_)
               (_g3022930312_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx4034040341_))))
          (let ((___kont4034340344_
                 (lambda (_L30642_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (begin
                                 '#!void
                                 (foldr (lambda (_g3065830661_ _g3065930664_)
                                          (cons _g3065830661_ _g3065930664_))
                                        '()
                                        _L30642_))))))
                (___kont4034740348_
                 (lambda (_L30550_ _L30552_ _L30553_ _L30554_)
                   (cons _L30554_
                         (cons (cons (cons _L30553_ (cons _L30552_ '())) '())
                               (begin
                                 '#!void
                                 (foldr (lambda (_g3057630579_ _g3057730582_)
                                          (cons _g3057630579_ _g3057730582_))
                                        '()
                                        _L30550_))))))
                (___kont4035140352_
                 (lambda (_L30423_ _L30425_ _L30426_)
                   (cons (gx#datum->syntax '#f 'match*)
                         (cons (begin
                                 '#!void
                                 (foldr (lambda (_g3044830455_ _g3044930458_)
                                          (cons _g3044830455_ _g3044930458_))
                                        '()
                                        _L30425_))
                               (cons (cons (begin
                                             '#!void
                                             (foldr (lambda (_g3045030461_
                                                             _g3045130464_)
                                                      (cons _g3045030461_
                                                            _g3045130464_))
                                                    '()
                                                    _L30426_))
                                           (begin
                                             '#!void
                                             (foldr (lambda (_g3045230467_
                                                             _g3045330470_)
                                                      (cons _g3045230467_
                                                            _g3045330470_))
                                                    '()
                                                    _L30423_)))
                                     '()))))))
            (let* ((___match4043340434_
                    (lambda (_e3027530319_
                             _hd3027630323_
                             _tl3027730326_
                             _e3027830329_
                             _hd3027930333_
                             _tl3028030336_
                             ___splice4035340354_
                             _target3028130339_
                             _tl3028330342_)
                      (letrec ((_loop3028430345_
                                (lambda (_hd3028230349_
                                         _expr3028830352_
                                         _hd3028930354_)
                                  (if (gx#stx-pair? _hd3028230349_)
                                      (let ((_e3028530357_
                                             (gx#syntax-e _hd3028230349_)))
                                        (let ((_lp-tl3028730364_
                                               (##cdr _e3028530357_))
                                              (_lp-hd3028630361_
                                               (##car _e3028530357_)))
                                          (if (gx#stx-pair? _lp-hd3028630361_)
                                              (let ((_e3029230367_
                                                     (gx#syntax-e
                                                      _lp-hd3028630361_)))
                                                (let ((_tl3029430374_
                                                       (##cdr _e3029230367_))
                                                      (_hd3029330371_
                                                       (##car _e3029230367_)))
                                                  (if (gx#stx-pair?
                                                       _tl3029430374_)
                                                      (let ((_e3029530377_
                                                             (gx#syntax-e
                                                              _tl3029430374_)))
                                                        (let ((_tl3029730384_
                                                               (##cdr _e3029530377_))
                                                              (_hd3029630381_
                                                               (##car _e3029530377_)))
                                                          (if (gx#stx-null?
                                                               _tl3029730384_)
                                                              (_loop3028430345_
                                                               _lp-tl3028730364_
                                                               (cons _hd3029630381_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr3028830352_)
                       (cons _hd3029330371_ _hd3028930354_))
                      (_g3022930312_))))
              (_g3022930312_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3022930312_))))
                                      (let ((_hd3029130390_
                                             (reverse _hd3028930354_))
                                            (_expr3029030387_
                                             (reverse _expr3028830352_)))
                                        (if (gx#stx-pair/null? _tl3028030336_)
                                            (let ((___splice4035540356_
                                                   (gx#syntax-split-splice
                                                    _tl3028030336_
                                                    '0)))
                                              (let ((_tl3030030396_
                                                     (##vector-ref
                                                      ___splice4035540356_
                                                      '1))
                                                    (_target3029830393_
                                                     (##vector-ref
                                                      ___splice4035540356_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl3030030396_)
                                                    (letrec ((_loop3030130399_
                                                              (lambda (_hd3029930403_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body3030530406_)
                        (if (gx#stx-pair? _hd3029930403_)
                            (let ((_e3030230409_ (gx#syntax-e _hd3029930403_)))
                              (let ((_lp-tl3030430416_ (##cdr _e3030230409_))
                                    (_lp-hd3030330413_ (##car _e3030230409_)))
                                (_loop3030130399_
                                 _lp-tl3030430416_
                                 (cons _lp-hd3030330413_ _body3030530406_))))
                            (let ((_body3030630419_
                                   (reverse _body3030530406_)))
                              (___kont4035140352_
                               _body3030630419_
                               _expr3029030387_
                               _hd3029130390_))))))
              (_loop3030130399_ _target3029830393_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3022930312_))))
                                            (_g3022930312_)))))))
                        (_loop3028430345_ _target3028130339_ '() '()))))
                   (___match4042540426_
                    (lambda (_e3027530319_
                             _hd3027630323_
                             _tl3027730326_
                             _e3027830329_
                             _hd3027930333_
                             _tl3028030336_)
                      (if (gx#stx-pair/null? _hd3027930333_)
                          (let ((___splice4035340354_
                                 (gx#syntax-split-splice _hd3027930333_ '0)))
                            (let ((_tl3028330342_
                                   (##vector-ref ___splice4035340354_ '1))
                                  (_target3028130339_
                                   (##vector-ref ___splice4035340354_ '0)))
                              (if (gx#stx-null? _tl3028330342_)
                                  (___match4043340434_
                                   _e3027530319_
                                   _hd3027630323_
                                   _tl3027730326_
                                   _e3027830329_
                                   _hd3027930333_
                                   _tl3028030336_
                                   ___splice4035340354_
                                   _target3028130339_
                                   _tl3028330342_)
                                  (_g3022930312_))))
                          (_g3022930312_))))
                   (___match4041340414_
                    (lambda (_e3025130480_
                             _hd3025230484_
                             _tl3025330487_
                             _e3025430490_
                             _hd3025530494_
                             _tl3025630497_
                             _e3025730500_
                             _hd3025830504_
                             _tl3025930507_
                             _e3026030510_
                             _hd3026130514_
                             _tl3026230517_
                             ___splice4034940350_
                             _target3026330520_
                             _tl3026530523_)
                      (letrec ((_loop3026630526_
                                (lambda (_hd3026430530_ _body3027030533_)
                                  (if (gx#stx-pair? _hd3026430530_)
                                      (let ((_e3026730536_
                                             (gx#syntax-e _hd3026430530_)))
                                        (let ((_lp-tl3026930543_
                                               (##cdr _e3026730536_))
                                              (_lp-hd3026830540_
                                               (##car _e3026730536_)))
                                          (_loop3026630526_
                                           _lp-tl3026930543_
                                           (cons _lp-hd3026830540_
                                                 _body3027030533_))))
                                      (let ((_body3027130546_
                                             (reverse _body3027030533_)))
                                        (let ((_L30550_ _body3027130546_)
                                              (_L30552_ _hd3026130514_)
                                              (_L30553_ _hd3025830504_)
                                              (_L30554_ _hd3025230484_))
                                          (if (|gerbil/core$<match>[1]#match-pattern?|
                                               _L30553_)
                                              (___kont4034740348_
                                               _L30550_
                                               _L30552_
                                               _L30553_
                                               _L30554_)
                                              (___match4042540426_
                                               _e3025130480_
                                               _hd3025230484_
                                               _tl3025330487_
                                               _e3025430490_
                                               _hd3025530494_
                                               _tl3025630497_))))))))
                        (_loop3026630526_ _target3026330520_ '()))))
                   (___match4037940380_
                    (lambda (_e3023230592_
                             _hd3023330596_
                             _tl3023430599_
                             _e3023530602_
                             _hd3023630606_
                             _tl3023730609_
                             ___splice4034540346_
                             _target3023830612_
                             _tl3024030615_)
                      (letrec ((_loop3024130618_
                                (lambda (_hd3023930622_ _body3024530625_)
                                  (if (gx#stx-pair? _hd3023930622_)
                                      (let ((_e3024230628_
                                             (gx#syntax-e _hd3023930622_)))
                                        (let ((_lp-tl3024430635_
                                               (##cdr _e3024230628_))
                                              (_lp-hd3024330632_
                                               (##car _e3024230628_)))
                                          (_loop3024130618_
                                           _lp-tl3024430635_
                                           (cons _lp-hd3024330632_
                                                 _body3024530625_))))
                                      (let ((_body3024630638_
                                             (reverse _body3024530625_)))
                                        (___kont4034340344_
                                         _body3024630638_))))))
                        (_loop3024130618_ _target3023830612_ '())))))
              (if (gx#stx-pair? ___stx4034040341_)
                  (let ((_e3023230592_ (gx#syntax-e ___stx4034040341_)))
                    (let ((_tl3023430599_ (##cdr _e3023230592_))
                          (_hd3023330596_ (##car _e3023230592_)))
                      (if (gx#stx-pair? _tl3023430599_)
                          (let ((_e3023530602_ (gx#syntax-e _tl3023430599_)))
                            (let ((_tl3023730609_ (##cdr _e3023530602_))
                                  (_hd3023630606_ (##car _e3023530602_)))
                              (if (gx#stx-null? _hd3023630606_)
                                  (if (gx#stx-pair/null? _tl3023730609_)
                                      (let ((___splice4034540346_
                                             (gx#syntax-split-splice
                                              _tl3023730609_
                                              '0)))
                                        (let ((_tl3024030615_
                                               (##vector-ref
                                                ___splice4034540346_
                                                '1))
                                              (_target3023830612_
                                               (##vector-ref
                                                ___splice4034540346_
                                                '0)))
                                          (if (gx#stx-null? _tl3024030615_)
                                              (___match4037940380_
                                               _e3023230592_
                                               _hd3023330596_
                                               _tl3023430599_
                                               _e3023530602_
                                               _hd3023630606_
                                               _tl3023730609_
                                               ___splice4034540346_
                                               _target3023830612_
                                               _tl3024030615_)
                                              (if (gx#stx-pair/null?
                                                   _hd3023630606_)
                                                  (let ((___splice4035340354_
                                                         (gx#syntax-split-splice
                                                          _hd3023630606_
                                                          '0)))
                                                    (let ((_tl3028330342_
                                                           (##vector-ref
                                                            ___splice4035340354_
                                                            '1))
                                                          (_target3028130339_
                                                           (##vector-ref
                                                            ___splice4035340354_
                                                            '0)))
                                                      (if (gx#stx-null?
                                                           _tl3028330342_)
                                                          (___match4043340434_
                                                           _e3023230592_
                                                           _hd3023330596_
                                                           _tl3023430599_
                                                           _e3023530602_
                                                           _hd3023630606_
                                                           _tl3023730609_
                                                           ___splice4035340354_
                                                           _target3028130339_
                                                           _tl3028330342_)
                                                          (_g3022930312_))))
                                                  (_g3022930312_)))))
                                      (if (gx#stx-pair/null? _hd3023630606_)
                                          (let ((___splice4035340354_
                                                 (gx#syntax-split-splice
                                                  _hd3023630606_
                                                  '0)))
                                            (let ((_tl3028330342_
                                                   (##vector-ref
                                                    ___splice4035340354_
                                                    '1))
                                                  (_target3028130339_
                                                   (##vector-ref
                                                    ___splice4035340354_
                                                    '0)))
                                              (if (gx#stx-null? _tl3028330342_)
                                                  (___match4043340434_
                                                   _e3023230592_
                                                   _hd3023330596_
                                                   _tl3023430599_
                                                   _e3023530602_
                                                   _hd3023630606_
                                                   _tl3023730609_
                                                   ___splice4035340354_
                                                   _target3028130339_
                                                   _tl3028330342_)
                                                  (_g3022930312_))))
                                          (_g3022930312_)))
                                  (if (gx#stx-pair? _hd3023630606_)
                                      (let ((_e3025730500_
                                             (gx#syntax-e _hd3023630606_)))
                                        (let ((_tl3025930507_
                                               (##cdr _e3025730500_))
                                              (_hd3025830504_
                                               (##car _e3025730500_)))
                                          (if (gx#stx-pair? _tl3025930507_)
                                              (let ((_e3026030510_
                                                     (gx#syntax-e
                                                      _tl3025930507_)))
                                                (let ((_tl3026230517_
                                                       (##cdr _e3026030510_))
                                                      (_hd3026130514_
                                                       (##car _e3026030510_)))
                                                  (if (gx#stx-null?
                                                       _tl3026230517_)
                                                      (if (gx#stx-pair/null?
                                                           _tl3023730609_)
                                                          (let ((___splice4034940350_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _tl3023730609_ '0)))
                    (let ((_tl3026530523_
                           (##vector-ref ___splice4034940350_ '1))
                          (_target3026330520_
                           (##vector-ref ___splice4034940350_ '0)))
                      (if (gx#stx-null? _tl3026530523_)
                          (___match4041340414_
                           _e3023230592_
                           _hd3023330596_
                           _tl3023430599_
                           _e3023530602_
                           _hd3023630606_
                           _tl3023730609_
                           _e3025730500_
                           _hd3025830504_
                           _tl3025930507_
                           _e3026030510_
                           _hd3026130514_
                           _tl3026230517_
                           ___splice4034940350_
                           _target3026330520_
                           _tl3026530523_)
                          (if (gx#stx-pair/null? _hd3023630606_)
                              (let ((___splice4035340354_
                                     (gx#syntax-split-splice
                                      _hd3023630606_
                                      '0)))
                                (let ((_tl3028330342_
                                       (##vector-ref ___splice4035340354_ '1))
                                      (_target3028130339_
                                       (##vector-ref ___splice4035340354_ '0)))
                                  (if (gx#stx-null? _tl3028330342_)
                                      (___match4043340434_
                                       _e3023230592_
                                       _hd3023330596_
                                       _tl3023430599_
                                       _e3023530602_
                                       _hd3023630606_
                                       _tl3023730609_
                                       ___splice4035340354_
                                       _target3028130339_
                                       _tl3028330342_)
                                      (_g3022930312_))))
                              (_g3022930312_)))))
                  (if (gx#stx-pair/null? _hd3023630606_)
                      (let ((___splice4035340354_
                             (gx#syntax-split-splice _hd3023630606_ '0)))
                        (let ((_tl3028330342_
                               (##vector-ref ___splice4035340354_ '1))
                              (_target3028130339_
                               (##vector-ref ___splice4035340354_ '0)))
                          (if (gx#stx-null? _tl3028330342_)
                              (___match4043340434_
                               _e3023230592_
                               _hd3023330596_
                               _tl3023430599_
                               _e3023530602_
                               _hd3023630606_
                               _tl3023730609_
                               ___splice4035340354_
                               _target3028130339_
                               _tl3028330342_)
                              (_g3022930312_))))
                      (_g3022930312_)))
              (if (gx#stx-pair/null? _hd3023630606_)
                  (let ((___splice4035340354_
                         (gx#syntax-split-splice _hd3023630606_ '0)))
                    (let ((_tl3028330342_
                           (##vector-ref ___splice4035340354_ '1))
                          (_target3028130339_
                           (##vector-ref ___splice4035340354_ '0)))
                      (if (gx#stx-null? _tl3028330342_)
                          (___match4043340434_
                           _e3023230592_
                           _hd3023330596_
                           _tl3023430599_
                           _e3023530602_
                           _hd3023630606_
                           _tl3023730609_
                           ___splice4035340354_
                           _target3028130339_
                           _tl3028330342_)
                          (_g3022930312_))))
                  (_g3022930312_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _hd3023630606_)
                                                  (let ((___splice4035340354_
                                                         (gx#syntax-split-splice
                                                          _hd3023630606_
                                                          '0)))
                                                    (let ((_tl3028330342_
                                                           (##vector-ref
                                                            ___splice4035340354_
                                                            '1))
                                                          (_target3028130339_
                                                           (##vector-ref
                                                            ___splice4035340354_
                                                            '0)))
                                                      (if (gx#stx-null?
                                                           _tl3028330342_)
                                                          (___match4043340434_
                                                           _e3023230592_
                                                           _hd3023330596_
                                                           _tl3023430599_
                                                           _e3023530602_
                                                           _hd3023630606_
                                                           _tl3023730609_
                                                           ___splice4035340354_
                                                           _target3028130339_
                                                           _tl3028330342_)
                                                          (_g3022930312_))))
                                                  (_g3022930312_)))))
                                      (if (gx#stx-pair/null? _hd3023630606_)
                                          (let ((___splice4035340354_
                                                 (gx#syntax-split-splice
                                                  _hd3023630606_
                                                  '0)))
                                            (let ((_tl3028330342_
                                                   (##vector-ref
                                                    ___splice4035340354_
                                                    '1))
                                                  (_target3028130339_
                                                   (##vector-ref
                                                    ___splice4035340354_
                                                    '0)))
                                              (if (gx#stx-null? _tl3028330342_)
                                                  (___match4043340434_
                                                   _e3023230592_
                                                   _hd3023330596_
                                                   _tl3023430599_
                                                   _e3023530602_
                                                   _hd3023630606_
                                                   _tl3023730609_
                                                   ___splice4035340354_
                                                   _target3028130339_
                                                   _tl3028330342_)
                                                  (_g3022930312_))))
                                          (_g3022930312_))))))
                          (_g3022930312_))))
                  (_g3022930312_)))))))
    (define |gerbil/core$<match>[:0:]#with*|
      (lambda (_$stx30675_)
        (let* ((___stx4043640437_ _$stx30675_)
               (_g3068030732_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx4043640437_))))
          (let ((___kont4043940440_
                 (lambda (_L30902_ _L30904_ _L30905_ _L30906_ _L30907_)
                   (cons (gx#datum->syntax '#f 'with)
                         (cons (cons (cons _L30906_ (cons _L30905_ '())) '())
                               (cons (cons _L30907_
                                           (cons _L30904_
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g3093230935_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g3093330938_)
                    (cons _g3093230935_ _g3093330938_))
                  '()
                  _L30902_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont4044340444_
                 (lambda (_L30789_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (begin
                                 '#!void
                                 (foldr (lambda (_g3080630809_ _g3080730812_)
                                          (cons _g3080630809_ _g3080730812_))
                                        '()
                                        _L30789_)))))))
            (let* ((___match4050940510_
                    (lambda (_e3071230739_
                             _hd3071330743_
                             _tl3071430746_
                             _e3071530749_
                             _hd3071630753_
                             _tl3071730756_
                             ___splice4044540446_
                             _target3071830759_
                             _tl3072030762_)
                      (letrec ((_loop3072130765_
                                (lambda (_hd3071930769_ _body3072530772_)
                                  (if (gx#stx-pair? _hd3071930769_)
                                      (let ((_e3072230775_
                                             (gx#syntax-e _hd3071930769_)))
                                        (let ((_lp-tl3072430782_
                                               (##cdr _e3072230775_))
                                              (_lp-hd3072330779_
                                               (##car _e3072230775_)))
                                          (_loop3072130765_
                                           _lp-tl3072430782_
                                           (cons _lp-hd3072330779_
                                                 _body3072530772_))))
                                      (let ((_body3072630785_
                                             (reverse _body3072530772_)))
                                        (___kont4044340444_
                                         _body3072630785_))))))
                        (_loop3072130765_ _target3071830759_ '()))))
                   (___match4048740488_
                    (lambda (_e3068730822_
                             _hd3068830826_
                             _tl3068930829_
                             _e3069030832_
                             _hd3069130836_
                             _tl3069230839_
                             _e3069330842_
                             _hd3069430846_
                             _tl3069530849_
                             _e3069630852_
                             _hd3069730856_
                             _tl3069830859_
                             _e3069930862_
                             _hd3070030866_
                             _tl3070130869_
                             ___splice4044140442_
                             _target3070230872_
                             _tl3070430875_)
                      (letrec ((_loop3070530878_
                                (lambda (_hd3070330882_ _body3070930885_)
                                  (if (gx#stx-pair? _hd3070330882_)
                                      (let ((_e3070630888_
                                             (gx#syntax-e _hd3070330882_)))
                                        (let ((_lp-tl3070830895_
                                               (##cdr _e3070630888_))
                                              (_lp-hd3070730892_
                                               (##car _e3070630888_)))
                                          (_loop3070530878_
                                           _lp-tl3070830895_
                                           (cons _lp-hd3070730892_
                                                 _body3070930885_))))
                                      (let ((_body3071030898_
                                             (reverse _body3070930885_)))
                                        (___kont4043940440_
                                         _body3071030898_
                                         _tl3069530849_
                                         _hd3070030866_
                                         _hd3069730856_
                                         _hd3068830826_))))))
                        (_loop3070530878_ _target3070230872_ '())))))
              (if (gx#stx-pair? ___stx4043640437_)
                  (let ((_e3068730822_ (gx#syntax-e ___stx4043640437_)))
                    (let ((_tl3068930829_ (##cdr _e3068730822_))
                          (_hd3068830826_ (##car _e3068730822_)))
                      (if (gx#stx-pair? _tl3068930829_)
                          (let ((_e3069030832_ (gx#syntax-e _tl3068930829_)))
                            (let ((_tl3069230839_ (##cdr _e3069030832_))
                                  (_hd3069130836_ (##car _e3069030832_)))
                              (if (gx#stx-pair? _hd3069130836_)
                                  (let ((_e3069330842_
                                         (gx#syntax-e _hd3069130836_)))
                                    (let ((_tl3069530849_
                                           (##cdr _e3069330842_))
                                          (_hd3069430846_
                                           (##car _e3069330842_)))
                                      (if (gx#stx-pair? _hd3069430846_)
                                          (let ((_e3069630852_
                                                 (gx#syntax-e _hd3069430846_)))
                                            (let ((_tl3069830859_
                                                   (##cdr _e3069630852_))
                                                  (_hd3069730856_
                                                   (##car _e3069630852_)))
                                              (if (gx#stx-pair? _tl3069830859_)
                                                  (let ((_e3069930862_
                                                         (gx#syntax-e
                                                          _tl3069830859_)))
                                                    (let ((_tl3070130869_
                                                           (##cdr _e3069930862_))
                                                          (_hd3070030866_
                                                           (##car _e3069930862_)))
                                                      (if (gx#stx-null?
                                                           _tl3070130869_)
                                                          (if (gx#stx-pair/null?
                                                               _tl3069230839_)
                                                              (let ((___splice4044140442_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _tl3069230839_ '0)))
                        (let ((_tl3070430875_
                               (##vector-ref ___splice4044140442_ '1))
                              (_target3070230872_
                               (##vector-ref ___splice4044140442_ '0)))
                          (if (gx#stx-null? _tl3070430875_)
                              (___match4048740488_
                               _e3068730822_
                               _hd3068830826_
                               _tl3068930829_
                               _e3069030832_
                               _hd3069130836_
                               _tl3069230839_
                               _e3069330842_
                               _hd3069430846_
                               _tl3069530849_
                               _e3069630852_
                               _hd3069730856_
                               _tl3069830859_
                               _e3069930862_
                               _hd3070030866_
                               _tl3070130869_
                               ___splice4044140442_
                               _target3070230872_
                               _tl3070430875_)
                              (_g3068030732_))))
                      (_g3068030732_))
                  (_g3068030732_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3068030732_))))
                                          (_g3068030732_))))
                                  (if (gx#stx-null? _hd3069130836_)
                                      (if (gx#stx-pair/null? _tl3069230839_)
                                          (let ((___splice4044540446_
                                                 (gx#syntax-split-splice
                                                  _tl3069230839_
                                                  '0)))
                                            (let ((_tl3072030762_
                                                   (##vector-ref
                                                    ___splice4044540446_
                                                    '1))
                                                  (_target3071830759_
                                                   (##vector-ref
                                                    ___splice4044540446_
                                                    '0)))
                                              (if (gx#stx-null? _tl3072030762_)
                                                  (___match4050940510_
                                                   _e3068730822_
                                                   _hd3068830826_
                                                   _tl3068930829_
                                                   _e3069030832_
                                                   _hd3069130836_
                                                   _tl3069230839_
                                                   ___splice4044540446_
                                                   _target3071830759_
                                                   _tl3072030762_)
                                                  (_g3068030732_))))
                                          (_g3068030732_))
                                      (_g3068030732_)))))
                          (_g3068030732_))))
                  (_g3068030732_)))))))
    (define |gerbil/core$<match>[:0:]#?|
      (lambda (_$stx30947_)
        (let* ((___stx4051240513_ _$stx30947_)
               (_g3095831104_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx4051240513_))))
          (let ((___kont4051540516_
                 (lambda (_L31708_ _L31710_ _L31711_)
                   (cons (gx#datum->syntax '#f 'and)
                         (begin
                           '#!void
                           (foldr (lambda (_g3173231735_ _g3173331738_)
                                    (cons (cons _L31711_
                                                (cons _g3173231735_
                                                      (cons _L31708_ '())))
                                          _g3173331738_))
                                  '()
                                  _L31710_)))))
                (___kont4051940520_
                 (lambda (_L31598_ _L31600_ _L31601_)
                   (cons (gx#datum->syntax '#f 'or)
                         (begin
                           '#!void
                           (foldr (lambda (_g3162231625_ _g3162331628_)
                                    (cons (cons _L31601_
                                                (cons _g3162231625_
                                                      (cons _L31598_ '())))
                                          _g3162331628_))
                                  '()
                                  _L31600_)))))
                (___kont4052340524_
                 (lambda (_L31498_ _L31500_ _L31501_)
                   (cons (gx#datum->syntax '#f 'not)
                         (cons (cons _L31501_
                                     (cons _L31500_ (cons _L31498_ '())))
                               '()))))
                (___kont4052540526_
                 (lambda (_L31424_ _L31426_)
                   (cons _L31426_ (cons _L31424_ '()))))
                (___kont4052740528_
                 (lambda (_L31372_ _L31374_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons _L31374_
                                           (cons _L31372_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$obj)
                                                       '())))
                                     '())))))
                (___kont4052940530_
                 (lambda (_L31324_ _L31326_ _L31327_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _L31327_
                                                       (cons _L31326_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L31324_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont4053140532_
                 (lambda (_L31255_ _L31257_ _L31258_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'alet)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '$val)
                                                       (cons (cons _L31258_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _L31257_
                                 (cons (gx#datum->syntax '#f '$obj) '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L31255_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$val)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont4053340534_
                 (lambda (_L31175_ _L31177_ _L31178_ _L31179_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _L31179_
                                                       (cons _L31178_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L31175_
                                                             (cons (cons _L31177_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (gx#datum->syntax '#f '$obj) '()))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((___match4068540686_
                    (lambda (_e3104831284_
                             _hd3104931288_
                             _tl3105031291_
                             _e3105131294_
                             _hd3105231298_
                             _tl3105331301_
                             _e3105431304_
                             _hd3105531308_
                             _tl3105631311_)
                      (if (gx#identifier? _hd3105531308_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g41400_|
                               _hd3105531308_)
                              (if (gx#stx-pair? _tl3105631311_)
                                  (let ((_e3105731314_
                                         (gx#syntax-e _tl3105631311_)))
                                    (let ((_tl3105931321_
                                           (##cdr _e3105731314_))
                                          (_hd3105831318_
                                           (##car _e3105731314_)))
                                      (if (gx#stx-null? _tl3105931321_)
                                          (___kont4052940530_
                                           _hd3105831318_
                                           _hd3105231298_
                                           _hd3104931288_)
                                          (_g3095831104_))))
                                  (_g3095831104_))
                              (_g3095831104_))
                          (if (gx#stx-datum? _hd3105531308_)
                              (let ((_e3107231241_ (gx#stx-e _hd3105531308_)))
                                (if (equal? _e3107231241_ '::)
                                    (if (gx#stx-pair? _tl3105631311_)
                                        (let ((_e3107331245_
                                               (gx#syntax-e _tl3105631311_)))
                                          (let ((_tl3107531252_
                                                 (##cdr _e3107331245_))
                                                (_hd3107431249_
                                                 (##car _e3107331245_)))
                                            (if (gx#stx-null? _tl3107531252_)
                                                (___kont4053140532_
                                                 _hd3107431249_
                                                 _hd3105231298_
                                                 _hd3104931288_)
                                                (if (gx#stx-pair?
                                                     _tl3107531252_)
                                                    (let ((_e3109331155_
                                                           (gx#syntax-e
                                                            _tl3107531252_)))
                                                      (let ((_tl3109531162_
                                                             (##cdr _e3109331155_))
                                                            (_hd3109431159_
                                                             (##car _e3109331155_)))
                                                        (if (gx#identifier?
                                                             _hd3109431159_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core$<match>[1]#_g41401_|
                         _hd3109431159_)
                        (if (gx#stx-pair? _tl3109531162_)
                            (let ((_e3109631165_ (gx#syntax-e _tl3109531162_)))
                              (let ((_tl3109831172_ (##cdr _e3109631165_))
                                    (_hd3109731169_ (##car _e3109631165_)))
                                (if (gx#stx-null? _tl3109831172_)
                                    (___kont4053340534_
                                     _hd3109731169_
                                     _hd3107431249_
                                     _hd3105231298_
                                     _hd3104931288_)
                                    (_g3095831104_))))
                            (_g3095831104_))
                        (_g3095831104_))
                    (_g3095831104_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3095831104_)))))
                                        (_g3095831104_))
                                    (_g3095831104_)))
                              (_g3095831104_)))))
                   (___match4066540666_
                    (lambda (_e3103931352_
                             _hd3104031356_
                             _tl3104131359_
                             _e3104231362_
                             _hd3104331366_
                             _tl3104431369_)
                      (if (gx#stx-null? _tl3104431369_)
                          (___kont4052740528_ _hd3104331366_ _hd3104031356_)
                          (if (gx#stx-pair? _tl3104431369_)
                              (let ((_e3105431304_
                                     (gx#syntax-e _tl3104431369_)))
                                (let ((_tl3105631311_ (##cdr _e3105431304_))
                                      (_hd3105531308_ (##car _e3105431304_)))
                                  (if (gx#identifier? _hd3105531308_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g41400_|
                                           _hd3105531308_)
                                          (if (gx#stx-pair? _tl3105631311_)
                                              (let ((_e3105731314_
                                                     (gx#syntax-e
                                                      _tl3105631311_)))
                                                (let ((_tl3105931321_
                                                       (##cdr _e3105731314_))
                                                      (_hd3105831318_
                                                       (##car _e3105731314_)))
                                                  (if (gx#stx-null?
                                                       _tl3105931321_)
                                                      (___kont4052940530_
                                                       _hd3105831318_
                                                       _hd3104331366_
                                                       _hd3104031356_)
                                                      (_g3095831104_))))
                                              (_g3095831104_))
                                          (_g3095831104_))
                                      (if (gx#stx-datum? _hd3105531308_)
                                          (let ((_e3107231241_
                                                 (gx#stx-e _hd3105531308_)))
                                            (if (equal? _e3107231241_ '::)
                                                (if (gx#stx-pair?
                                                     _tl3105631311_)
                                                    (let ((_e3107331245_
                                                           (gx#syntax-e
                                                            _tl3105631311_)))
                                                      (let ((_tl3107531252_
                                                             (##cdr _e3107331245_))
                                                            (_hd3107431249_
                                                             (##car _e3107331245_)))
                                                        (if (gx#stx-null?
                                                             _tl3107531252_)
                                                            (___kont4053140532_
                                                             _hd3107431249_
                                                             _hd3104331366_
                                                             _hd3104031356_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3107531252_)
                        (let ((_e3109331155_ (gx#syntax-e _tl3107531252_)))
                          (let ((_tl3109531162_ (##cdr _e3109331155_))
                                (_hd3109431159_ (##car _e3109331155_)))
                            (if (gx#identifier? _hd3109431159_)
                                (if (gx#free-identifier=?
                                     |gerbil/core$<match>[1]#_g41401_|
                                     _hd3109431159_)
                                    (if (gx#stx-pair? _tl3109531162_)
                                        (let ((_e3109631165_
                                               (gx#syntax-e _tl3109531162_)))
                                          (let ((_tl3109831172_
                                                 (##cdr _e3109631165_))
                                                (_hd3109731169_
                                                 (##car _e3109631165_)))
                                            (if (gx#stx-null? _tl3109831172_)
                                                (___kont4053340534_
                                                 _hd3109731169_
                                                 _hd3107431249_
                                                 _hd3104331366_
                                                 _hd3104031356_)
                                                (_g3095831104_))))
                                        (_g3095831104_))
                                    (_g3095831104_))
                                (_g3095831104_))))
                        (_g3095831104_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3095831104_))
                                                (_g3095831104_)))
                                          (_g3095831104_)))))
                              (_g3095831104_)))))
                   (___match4059540596_
                    (lambda (_e3098731528_
                             _hd3098831532_
                             _tl3098931535_
                             _e3099031538_
                             _hd3099131542_
                             _tl3099231545_
                             _e3099331548_
                             _hd3099431552_
                             _tl3099531555_
                             ___splice4052140522_
                             _target3099631558_
                             _tl3099831561_)
                      (letrec ((_loop3099931564_
                                (lambda (_hd3099731568_ _pred3100331571_)
                                  (if (gx#stx-pair? _hd3099731568_)
                                      (let ((_e3100031574_
                                             (gx#syntax-e _hd3099731568_)))
                                        (let ((_lp-tl3100231581_
                                               (##cdr _e3100031574_))
                                              (_lp-hd3100131578_
                                               (##car _e3100031574_)))
                                          (_loop3099931564_
                                           _lp-tl3100231581_
                                           (cons _lp-hd3100131578_
                                                 _pred3100331571_))))
                                      (let ((_pred3100431584_
                                             (reverse _pred3100331571_)))
                                        (if (gx#stx-pair? _tl3099231545_)
                                            (let ((_e3100531588_
                                                   (gx#syntax-e
                                                    _tl3099231545_)))
                                              (let ((_tl3100731595_
                                                     (##cdr _e3100531588_))
                                                    (_hd3100631592_
                                                     (##car _e3100531588_)))
                                                (if (gx#stx-null?
                                                     _tl3100731595_)
                                                    (___kont4051940520_
                                                     _hd3100631592_
                                                     _pred3100431584_
                                                     _hd3098831532_)
                                                    (___match4068540686_
                                                     _e3098731528_
                                                     _hd3098831532_
                                                     _tl3098931535_
                                                     _e3099031538_
                                                     _hd3099131542_
                                                     _tl3099231545_
                                                     _e3100531588_
                                                     _hd3100631592_
                                                     _tl3100731595_))))
                                            (___match4066540666_
                                             _e3098731528_
                                             _hd3098831532_
                                             _tl3098931535_
                                             _e3099031538_
                                             _hd3099131542_
                                             _tl3099231545_)))))))
                        (_loop3099931564_ _target3099631558_ '()))))
                   (___match4056540566_
                    (lambda (_e3096331638_
                             _hd3096431642_
                             _tl3096531645_
                             _e3096631648_
                             _hd3096731652_
                             _tl3096831655_
                             _e3096931658_
                             _hd3097031662_
                             _tl3097131665_
                             ___splice4051740518_
                             _target3097231668_
                             _tl3097431671_)
                      (letrec ((_loop3097531674_
                                (lambda (_hd3097331678_ _pred3097931681_)
                                  (if (gx#stx-pair? _hd3097331678_)
                                      (let ((_e3097631684_
                                             (gx#syntax-e _hd3097331678_)))
                                        (let ((_lp-tl3097831691_
                                               (##cdr _e3097631684_))
                                              (_lp-hd3097731688_
                                               (##car _e3097631684_)))
                                          (_loop3097531674_
                                           _lp-tl3097831691_
                                           (cons _lp-hd3097731688_
                                                 _pred3097931681_))))
                                      (let ((_pred3098031694_
                                             (reverse _pred3097931681_)))
                                        (if (gx#stx-pair? _tl3096831655_)
                                            (let ((_e3098131698_
                                                   (gx#syntax-e
                                                    _tl3096831655_)))
                                              (let ((_tl3098331705_
                                                     (##cdr _e3098131698_))
                                                    (_hd3098231702_
                                                     (##car _e3098131698_)))
                                                (if (gx#stx-null?
                                                     _tl3098331705_)
                                                    (___kont4051540516_
                                                     _hd3098231702_
                                                     _pred3098031694_
                                                     _hd3096431642_)
                                                    (___match4068540686_
                                                     _e3096331638_
                                                     _hd3096431642_
                                                     _tl3096531645_
                                                     _e3096631648_
                                                     _hd3096731652_
                                                     _tl3096831655_
                                                     _e3098131698_
                                                     _hd3098231702_
                                                     _tl3098331705_))))
                                            (___match4066540666_
                                             _e3096331638_
                                             _hd3096431642_
                                             _tl3096531645_
                                             _e3096631648_
                                             _hd3096731652_
                                             _tl3096831655_)))))))
                        (_loop3097531674_ _target3097231668_ '())))))
              (if (gx#stx-pair? ___stx4051240513_)
                  (let ((_e3096331638_ (gx#syntax-e ___stx4051240513_)))
                    (let ((_tl3096531645_ (##cdr _e3096331638_))
                          (_hd3096431642_ (##car _e3096331638_)))
                      (if (gx#stx-pair? _tl3096531645_)
                          (let ((_e3096631648_ (gx#syntax-e _tl3096531645_)))
                            (let ((_tl3096831655_ (##cdr _e3096631648_))
                                  (_hd3096731652_ (##car _e3096631648_)))
                              (if (gx#stx-pair? _hd3096731652_)
                                  (let ((_e3096931658_
                                         (gx#syntax-e _hd3096731652_)))
                                    (let ((_tl3097131665_
                                           (##cdr _e3096931658_))
                                          (_hd3097031662_
                                           (##car _e3096931658_)))
                                      (if (gx#identifier? _hd3097031662_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g41402_|
                                               _hd3097031662_)
                                              (if (gx#stx-pair/null?
                                                   _tl3097131665_)
                                                  (let ((___splice4051740518_
                                                         (gx#syntax-split-splice
                                                          _tl3097131665_
                                                          '0)))
                                                    (let ((_tl3097431671_
                                                           (##vector-ref
                                                            ___splice4051740518_
                                                            '1))
                                                          (_target3097231668_
                                                           (##vector-ref
                                                            ___splice4051740518_
                                                            '0)))
                                                      (if (gx#stx-null?
                                                           _tl3097431671_)
                                                          (___match4056540566_
                                                           _e3096331638_
                                                           _hd3096431642_
                                                           _tl3096531645_
                                                           _e3096631648_
                                                           _hd3096731652_
                                                           _tl3096831655_
                                                           _e3096931658_
                                                           _hd3097031662_
                                                           _tl3097131665_
                                                           ___splice4051740518_
                                                           _target3097231668_
                                                           _tl3097431671_)
                                                          (if (gx#stx-pair?
                                                               _tl3096831655_)
                                                              (let ((_e3103431414_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl3096831655_)))
                        (let ((_tl3103631421_ (##cdr _e3103431414_))
                              (_hd3103531418_ (##car _e3103431414_)))
                          (if (gx#stx-null? _tl3103631421_)
                              (___kont4052540526_
                               _hd3103531418_
                               _hd3096731652_)
                              (if (gx#identifier? _hd3103531418_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g41400_|
                                       _hd3103531418_)
                                      (if (gx#stx-pair? _tl3103631421_)
                                          (let ((_e3105731314_
                                                 (gx#syntax-e _tl3103631421_)))
                                            (let ((_tl3105931321_
                                                   (##cdr _e3105731314_))
                                                  (_hd3105831318_
                                                   (##car _e3105731314_)))
                                              (if (gx#stx-null? _tl3105931321_)
                                                  (___kont4052940530_
                                                   _hd3105831318_
                                                   _hd3096731652_
                                                   _hd3096431642_)
                                                  (_g3095831104_))))
                                          (_g3095831104_))
                                      (_g3095831104_))
                                  (if (gx#stx-datum? _hd3103531418_)
                                      (let ((_e3107231241_
                                             (gx#stx-e _hd3103531418_)))
                                        (if (equal? _e3107231241_ '::)
                                            (if (gx#stx-pair? _tl3103631421_)
                                                (let ((_e3107331245_
                                                       (gx#syntax-e
                                                        _tl3103631421_)))
                                                  (let ((_tl3107531252_
                                                         (##cdr _e3107331245_))
                                                        (_hd3107431249_
                                                         (##car _e3107331245_)))
                                                    (if (gx#stx-null?
                                                         _tl3107531252_)
                                                        (___kont4053140532_
                                                         _hd3107431249_
                                                         _hd3096731652_
                                                         _hd3096431642_)
                                                        (if (gx#stx-pair?
                                                             _tl3107531252_)
                                                            (let ((_e3109331155_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3107531252_)))
                      (let ((_tl3109531162_ (##cdr _e3109331155_))
                            (_hd3109431159_ (##car _e3109331155_)))
                        (if (gx#identifier? _hd3109431159_)
                            (if (gx#free-identifier=?
                                 |gerbil/core$<match>[1]#_g41401_|
                                 _hd3109431159_)
                                (if (gx#stx-pair? _tl3109531162_)
                                    (let ((_e3109631165_
                                           (gx#syntax-e _tl3109531162_)))
                                      (let ((_tl3109831172_
                                             (##cdr _e3109631165_))
                                            (_hd3109731169_
                                             (##car _e3109631165_)))
                                        (if (gx#stx-null? _tl3109831172_)
                                            (___kont4053340534_
                                             _hd3109731169_
                                             _hd3107431249_
                                             _hd3096731652_
                                             _hd3096431642_)
                                            (_g3095831104_))))
                                    (_g3095831104_))
                                (_g3095831104_))
                            (_g3095831104_))))
                    (_g3095831104_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3095831104_))
                                            (_g3095831104_)))
                                      (_g3095831104_))))))
                      (if (gx#stx-null? _tl3096831655_)
                          (___kont4052740528_ _hd3096731652_ _hd3096431642_)
                          (_g3095831104_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _tl3096831655_)
                                                      (let ((_e3103431414_
                                                             (gx#syntax-e
                                                              _tl3096831655_)))
                                                        (let ((_tl3103631421_
                                                               (##cdr _e3103431414_))
                                                              (_hd3103531418_
                                                               (##car _e3103431414_)))
                                                          (if (gx#stx-null?
                                                               _tl3103631421_)
                                                              (___kont4052540526_
                                                               _hd3103531418_
                                                               _hd3096731652_)
                                                              (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd3103531418_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g41400_|
                               _hd3103531418_)
                              (if (gx#stx-pair? _tl3103631421_)
                                  (let ((_e3105731314_
                                         (gx#syntax-e _tl3103631421_)))
                                    (let ((_tl3105931321_
                                           (##cdr _e3105731314_))
                                          (_hd3105831318_
                                           (##car _e3105731314_)))
                                      (if (gx#stx-null? _tl3105931321_)
                                          (___kont4052940530_
                                           _hd3105831318_
                                           _hd3096731652_
                                           _hd3096431642_)
                                          (_g3095831104_))))
                                  (_g3095831104_))
                              (_g3095831104_))
                          (if (gx#stx-datum? _hd3103531418_)
                              (let ((_e3107231241_ (gx#stx-e _hd3103531418_)))
                                (if (equal? _e3107231241_ '::)
                                    (if (gx#stx-pair? _tl3103631421_)
                                        (let ((_e3107331245_
                                               (gx#syntax-e _tl3103631421_)))
                                          (let ((_tl3107531252_
                                                 (##cdr _e3107331245_))
                                                (_hd3107431249_
                                                 (##car _e3107331245_)))
                                            (if (gx#stx-null? _tl3107531252_)
                                                (___kont4053140532_
                                                 _hd3107431249_
                                                 _hd3096731652_
                                                 _hd3096431642_)
                                                (if (gx#stx-pair?
                                                     _tl3107531252_)
                                                    (let ((_e3109331155_
                                                           (gx#syntax-e
                                                            _tl3107531252_)))
                                                      (let ((_tl3109531162_
                                                             (##cdr _e3109331155_))
                                                            (_hd3109431159_
                                                             (##car _e3109331155_)))
                                                        (if (gx#identifier?
                                                             _hd3109431159_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core$<match>[1]#_g41401_|
                         _hd3109431159_)
                        (if (gx#stx-pair? _tl3109531162_)
                            (let ((_e3109631165_ (gx#syntax-e _tl3109531162_)))
                              (let ((_tl3109831172_ (##cdr _e3109631165_))
                                    (_hd3109731169_ (##car _e3109631165_)))
                                (if (gx#stx-null? _tl3109831172_)
                                    (___kont4053340534_
                                     _hd3109731169_
                                     _hd3107431249_
                                     _hd3096731652_
                                     _hd3096431642_)
                                    (_g3095831104_))))
                            (_g3095831104_))
                        (_g3095831104_))
                    (_g3095831104_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3095831104_)))))
                                        (_g3095831104_))
                                    (_g3095831104_)))
                              (_g3095831104_))))))
              (if (gx#stx-null? _tl3096831655_)
                  (___kont4052740528_ _hd3096731652_ _hd3096431642_)
                  (_g3095831104_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g41403_|
                                                   _hd3097031662_)
                                                  (if (gx#stx-pair/null?
                                                       _tl3097131665_)
                                                      (let ((___splice4052140522_
                                                             (gx#syntax-split-splice
                                                              _tl3097131665_
                                                              '0)))
                                                        (let ((_tl3099831561_
                                                               (##vector-ref
                                                                ___splice4052140522_
                                                                '1))
                                                              (_target3099631558_
                                                               (##vector-ref
                                                                ___splice4052140522_
                                                                '0)))
                                                          (if (gx#stx-null?
                                                               _tl3099831561_)
                                                              (___match4059540596_
                                                               _e3096331638_
                                                               _hd3096431642_
                                                               _tl3096531645_
                                                               _e3096631648_
                                                               _hd3096731652_
                                                               _tl3096831655_
                                                               _e3096931658_
                                                               _hd3097031662_
                                                               _tl3097131665_
                                                               ___splice4052140522_
                                                               _target3099631558_
                                                               _tl3099831561_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl3096831655_)
                          (let ((_e3103431414_ (gx#syntax-e _tl3096831655_)))
                            (let ((_tl3103631421_ (##cdr _e3103431414_))
                                  (_hd3103531418_ (##car _e3103431414_)))
                              (if (gx#stx-null? _tl3103631421_)
                                  (___kont4052540526_
                                   _hd3103531418_
                                   _hd3096731652_)
                                  (if (gx#identifier? _hd3103531418_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g41400_|
                                           _hd3103531418_)
                                          (if (gx#stx-pair? _tl3103631421_)
                                              (let ((_e3105731314_
                                                     (gx#syntax-e
                                                      _tl3103631421_)))
                                                (let ((_tl3105931321_
                                                       (##cdr _e3105731314_))
                                                      (_hd3105831318_
                                                       (##car _e3105731314_)))
                                                  (if (gx#stx-null?
                                                       _tl3105931321_)
                                                      (___kont4052940530_
                                                       _hd3105831318_
                                                       _hd3096731652_
                                                       _hd3096431642_)
                                                      (_g3095831104_))))
                                              (_g3095831104_))
                                          (_g3095831104_))
                                      (if (gx#stx-datum? _hd3103531418_)
                                          (let ((_e3107231241_
                                                 (gx#stx-e _hd3103531418_)))
                                            (if (equal? _e3107231241_ '::)
                                                (if (gx#stx-pair?
                                                     _tl3103631421_)
                                                    (let ((_e3107331245_
                                                           (gx#syntax-e
                                                            _tl3103631421_)))
                                                      (let ((_tl3107531252_
                                                             (##cdr _e3107331245_))
                                                            (_hd3107431249_
                                                             (##car _e3107331245_)))
                                                        (if (gx#stx-null?
                                                             _tl3107531252_)
                                                            (___kont4053140532_
                                                             _hd3107431249_
                                                             _hd3096731652_
                                                             _hd3096431642_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3107531252_)
                        (let ((_e3109331155_ (gx#syntax-e _tl3107531252_)))
                          (let ((_tl3109531162_ (##cdr _e3109331155_))
                                (_hd3109431159_ (##car _e3109331155_)))
                            (if (gx#identifier? _hd3109431159_)
                                (if (gx#free-identifier=?
                                     |gerbil/core$<match>[1]#_g41401_|
                                     _hd3109431159_)
                                    (if (gx#stx-pair? _tl3109531162_)
                                        (let ((_e3109631165_
                                               (gx#syntax-e _tl3109531162_)))
                                          (let ((_tl3109831172_
                                                 (##cdr _e3109631165_))
                                                (_hd3109731169_
                                                 (##car _e3109631165_)))
                                            (if (gx#stx-null? _tl3109831172_)
                                                (___kont4053340534_
                                                 _hd3109731169_
                                                 _hd3107431249_
                                                 _hd3096731652_
                                                 _hd3096431642_)
                                                (_g3095831104_))))
                                        (_g3095831104_))
                                    (_g3095831104_))
                                (_g3095831104_))))
                        (_g3095831104_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3095831104_))
                                                (_g3095831104_)))
                                          (_g3095831104_))))))
                          (if (gx#stx-null? _tl3096831655_)
                              (___kont4052740528_
                               _hd3096731652_
                               _hd3096431642_)
                              (_g3095831104_))))))
              (if (gx#stx-pair? _tl3096831655_)
                  (let ((_e3103431414_ (gx#syntax-e _tl3096831655_)))
                    (let ((_tl3103631421_ (##cdr _e3103431414_))
                          (_hd3103531418_ (##car _e3103431414_)))
                      (if (gx#stx-null? _tl3103631421_)
                          (___kont4052540526_ _hd3103531418_ _hd3096731652_)
                          (if (gx#identifier? _hd3103531418_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g41400_|
                                   _hd3103531418_)
                                  (if (gx#stx-pair? _tl3103631421_)
                                      (let ((_e3105731314_
                                             (gx#syntax-e _tl3103631421_)))
                                        (let ((_tl3105931321_
                                               (##cdr _e3105731314_))
                                              (_hd3105831318_
                                               (##car _e3105731314_)))
                                          (if (gx#stx-null? _tl3105931321_)
                                              (___kont4052940530_
                                               _hd3105831318_
                                               _hd3096731652_
                                               _hd3096431642_)
                                              (_g3095831104_))))
                                      (_g3095831104_))
                                  (_g3095831104_))
                              (if (gx#stx-datum? _hd3103531418_)
                                  (let ((_e3107231241_
                                         (gx#stx-e _hd3103531418_)))
                                    (if (equal? _e3107231241_ '::)
                                        (if (gx#stx-pair? _tl3103631421_)
                                            (let ((_e3107331245_
                                                   (gx#syntax-e
                                                    _tl3103631421_)))
                                              (let ((_tl3107531252_
                                                     (##cdr _e3107331245_))
                                                    (_hd3107431249_
                                                     (##car _e3107331245_)))
                                                (if (gx#stx-null?
                                                     _tl3107531252_)
                                                    (___kont4053140532_
                                                     _hd3107431249_
                                                     _hd3096731652_
                                                     _hd3096431642_)
                                                    (if (gx#stx-pair?
                                                         _tl3107531252_)
                                                        (let ((_e3109331155_
                                                               (gx#syntax-e
                                                                _tl3107531252_)))
                                                          (let ((_tl3109531162_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3109331155_))
                        (_hd3109431159_ (##car _e3109331155_)))
                    (if (gx#identifier? _hd3109431159_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g41401_|
                             _hd3109431159_)
                            (if (gx#stx-pair? _tl3109531162_)
                                (let ((_e3109631165_
                                       (gx#syntax-e _tl3109531162_)))
                                  (let ((_tl3109831172_ (##cdr _e3109631165_))
                                        (_hd3109731169_ (##car _e3109631165_)))
                                    (if (gx#stx-null? _tl3109831172_)
                                        (___kont4053340534_
                                         _hd3109731169_
                                         _hd3107431249_
                                         _hd3096731652_
                                         _hd3096431642_)
                                        (_g3095831104_))))
                                (_g3095831104_))
                            (_g3095831104_))
                        (_g3095831104_))))
                (_g3095831104_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g3095831104_))
                                        (_g3095831104_)))
                                  (_g3095831104_))))))
                  (if (gx#stx-null? _tl3096831655_)
                      (___kont4052740528_ _hd3096731652_ _hd3096431642_)
                      (_g3095831104_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g41404_|
                                                       _hd3097031662_)
                                                      (if (gx#stx-pair?
                                                           _tl3097131665_)
                                                          (let ((_e3102031478_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3097131665_)))
                    (let ((_tl3102231485_ (##cdr _e3102031478_))
                          (_hd3102131482_ (##car _e3102031478_)))
                      (if (gx#stx-null? _tl3102231485_)
                          (if (gx#stx-pair? _tl3096831655_)
                              (let ((_e3102331488_
                                     (gx#syntax-e _tl3096831655_)))
                                (let ((_tl3102531495_ (##cdr _e3102331488_))
                                      (_hd3102431492_ (##car _e3102331488_)))
                                  (if (gx#stx-null? _tl3102531495_)
                                      (___kont4052340524_
                                       _hd3102431492_
                                       _hd3102131482_
                                       _hd3096431642_)
                                      (if (gx#identifier? _hd3102431492_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g41400_|
                                               _hd3102431492_)
                                              (if (gx#stx-pair? _tl3102531495_)
                                                  (let ((_e3105731314_
                                                         (gx#syntax-e
                                                          _tl3102531495_)))
                                                    (let ((_tl3105931321_
                                                           (##cdr _e3105731314_))
                                                          (_hd3105831318_
                                                           (##car _e3105731314_)))
                                                      (if (gx#stx-null?
                                                           _tl3105931321_)
                                                          (___kont4052940530_
                                                           _hd3105831318_
                                                           _hd3096731652_
                                                           _hd3096431642_)
                                                          (_g3095831104_))))
                                                  (_g3095831104_))
                                              (_g3095831104_))
                                          (if (gx#stx-datum? _hd3102431492_)
                                              (let ((_e3107231241_
                                                     (gx#stx-e
                                                      _hd3102431492_)))
                                                (if (equal? _e3107231241_ '::)
                                                    (if (gx#stx-pair?
                                                         _tl3102531495_)
                                                        (let ((_e3107331245_
                                                               (gx#syntax-e
                                                                _tl3102531495_)))
                                                          (let ((_tl3107531252_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3107331245_))
                        (_hd3107431249_ (##car _e3107331245_)))
                    (if (gx#stx-null? _tl3107531252_)
                        (___kont4053140532_
                         _hd3107431249_
                         _hd3096731652_
                         _hd3096431642_)
                        (if (gx#stx-pair? _tl3107531252_)
                            (let ((_e3109331155_ (gx#syntax-e _tl3107531252_)))
                              (let ((_tl3109531162_ (##cdr _e3109331155_))
                                    (_hd3109431159_ (##car _e3109331155_)))
                                (if (gx#identifier? _hd3109431159_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<match>[1]#_g41401_|
                                         _hd3109431159_)
                                        (if (gx#stx-pair? _tl3109531162_)
                                            (let ((_e3109631165_
                                                   (gx#syntax-e
                                                    _tl3109531162_)))
                                              (let ((_tl3109831172_
                                                     (##cdr _e3109631165_))
                                                    (_hd3109731169_
                                                     (##car _e3109631165_)))
                                                (if (gx#stx-null?
                                                     _tl3109831172_)
                                                    (___kont4053340534_
                                                     _hd3109731169_
                                                     _hd3107431249_
                                                     _hd3096731652_
                                                     _hd3096431642_)
                                                    (_g3095831104_))))
                                            (_g3095831104_))
                                        (_g3095831104_))
                                    (_g3095831104_))))
                            (_g3095831104_)))))
                (_g3095831104_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3095831104_)))
                                              (_g3095831104_))))))
                              (if (gx#stx-null? _tl3096831655_)
                                  (___kont4052740528_
                                   _hd3096731652_
                                   _hd3096431642_)
                                  (_g3095831104_)))
                          (if (gx#stx-pair? _tl3096831655_)
                              (let ((_e3103431414_
                                     (gx#syntax-e _tl3096831655_)))
                                (let ((_tl3103631421_ (##cdr _e3103431414_))
                                      (_hd3103531418_ (##car _e3103431414_)))
                                  (if (gx#stx-null? _tl3103631421_)
                                      (___kont4052540526_
                                       _hd3103531418_
                                       _hd3096731652_)
                                      (if (gx#identifier? _hd3103531418_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g41400_|
                                               _hd3103531418_)
                                              (if (gx#stx-pair? _tl3103631421_)
                                                  (let ((_e3105731314_
                                                         (gx#syntax-e
                                                          _tl3103631421_)))
                                                    (let ((_tl3105931321_
                                                           (##cdr _e3105731314_))
                                                          (_hd3105831318_
                                                           (##car _e3105731314_)))
                                                      (if (gx#stx-null?
                                                           _tl3105931321_)
                                                          (___kont4052940530_
                                                           _hd3105831318_
                                                           _hd3096731652_
                                                           _hd3096431642_)
                                                          (_g3095831104_))))
                                                  (_g3095831104_))
                                              (_g3095831104_))
                                          (if (gx#stx-datum? _hd3103531418_)
                                              (let ((_e3107231241_
                                                     (gx#stx-e
                                                      _hd3103531418_)))
                                                (if (equal? _e3107231241_ '::)
                                                    (if (gx#stx-pair?
                                                         _tl3103631421_)
                                                        (let ((_e3107331245_
                                                               (gx#syntax-e
                                                                _tl3103631421_)))
                                                          (let ((_tl3107531252_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3107331245_))
                        (_hd3107431249_ (##car _e3107331245_)))
                    (if (gx#stx-null? _tl3107531252_)
                        (___kont4053140532_
                         _hd3107431249_
                         _hd3096731652_
                         _hd3096431642_)
                        (if (gx#stx-pair? _tl3107531252_)
                            (let ((_e3109331155_ (gx#syntax-e _tl3107531252_)))
                              (let ((_tl3109531162_ (##cdr _e3109331155_))
                                    (_hd3109431159_ (##car _e3109331155_)))
                                (if (gx#identifier? _hd3109431159_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<match>[1]#_g41401_|
                                         _hd3109431159_)
                                        (if (gx#stx-pair? _tl3109531162_)
                                            (let ((_e3109631165_
                                                   (gx#syntax-e
                                                    _tl3109531162_)))
                                              (let ((_tl3109831172_
                                                     (##cdr _e3109631165_))
                                                    (_hd3109731169_
                                                     (##car _e3109631165_)))
                                                (if (gx#stx-null?
                                                     _tl3109831172_)
                                                    (___kont4053340534_
                                                     _hd3109731169_
                                                     _hd3107431249_
                                                     _hd3096731652_
                                                     _hd3096431642_)
                                                    (_g3095831104_))))
                                            (_g3095831104_))
                                        (_g3095831104_))
                                    (_g3095831104_))))
                            (_g3095831104_)))))
                (_g3095831104_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3095831104_)))
                                              (_g3095831104_))))))
                              (if (gx#stx-null? _tl3096831655_)
                                  (___kont4052740528_
                                   _hd3096731652_
                                   _hd3096431642_)
                                  (_g3095831104_))))))
                  (if (gx#stx-pair? _tl3096831655_)
                      (let ((_e3103431414_ (gx#syntax-e _tl3096831655_)))
                        (let ((_tl3103631421_ (##cdr _e3103431414_))
                              (_hd3103531418_ (##car _e3103431414_)))
                          (if (gx#stx-null? _tl3103631421_)
                              (___kont4052540526_
                               _hd3103531418_
                               _hd3096731652_)
                              (if (gx#identifier? _hd3103531418_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g41400_|
                                       _hd3103531418_)
                                      (if (gx#stx-pair? _tl3103631421_)
                                          (let ((_e3105731314_
                                                 (gx#syntax-e _tl3103631421_)))
                                            (let ((_tl3105931321_
                                                   (##cdr _e3105731314_))
                                                  (_hd3105831318_
                                                   (##car _e3105731314_)))
                                              (if (gx#stx-null? _tl3105931321_)
                                                  (___kont4052940530_
                                                   _hd3105831318_
                                                   _hd3096731652_
                                                   _hd3096431642_)
                                                  (_g3095831104_))))
                                          (_g3095831104_))
                                      (_g3095831104_))
                                  (if (gx#stx-datum? _hd3103531418_)
                                      (let ((_e3107231241_
                                             (gx#stx-e _hd3103531418_)))
                                        (if (equal? _e3107231241_ '::)
                                            (if (gx#stx-pair? _tl3103631421_)
                                                (let ((_e3107331245_
                                                       (gx#syntax-e
                                                        _tl3103631421_)))
                                                  (let ((_tl3107531252_
                                                         (##cdr _e3107331245_))
                                                        (_hd3107431249_
                                                         (##car _e3107331245_)))
                                                    (if (gx#stx-null?
                                                         _tl3107531252_)
                                                        (___kont4053140532_
                                                         _hd3107431249_
                                                         _hd3096731652_
                                                         _hd3096431642_)
                                                        (if (gx#stx-pair?
                                                             _tl3107531252_)
                                                            (let ((_e3109331155_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3107531252_)))
                      (let ((_tl3109531162_ (##cdr _e3109331155_))
                            (_hd3109431159_ (##car _e3109331155_)))
                        (if (gx#identifier? _hd3109431159_)
                            (if (gx#free-identifier=?
                                 |gerbil/core$<match>[1]#_g41401_|
                                 _hd3109431159_)
                                (if (gx#stx-pair? _tl3109531162_)
                                    (let ((_e3109631165_
                                           (gx#syntax-e _tl3109531162_)))
                                      (let ((_tl3109831172_
                                             (##cdr _e3109631165_))
                                            (_hd3109731169_
                                             (##car _e3109631165_)))
                                        (if (gx#stx-null? _tl3109831172_)
                                            (___kont4053340534_
                                             _hd3109731169_
                                             _hd3107431249_
                                             _hd3096731652_
                                             _hd3096431642_)
                                            (_g3095831104_))))
                                    (_g3095831104_))
                                (_g3095831104_))
                            (_g3095831104_))))
                    (_g3095831104_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3095831104_))
                                            (_g3095831104_)))
                                      (_g3095831104_))))))
                      (if (gx#stx-null? _tl3096831655_)
                          (___kont4052740528_ _hd3096731652_ _hd3096431642_)
                          (_g3095831104_))))
              (if (gx#stx-pair? _tl3096831655_)
                  (let ((_e3103431414_ (gx#syntax-e _tl3096831655_)))
                    (let ((_tl3103631421_ (##cdr _e3103431414_))
                          (_hd3103531418_ (##car _e3103431414_)))
                      (if (gx#stx-null? _tl3103631421_)
                          (___kont4052540526_ _hd3103531418_ _hd3096731652_)
                          (if (gx#identifier? _hd3103531418_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g41400_|
                                   _hd3103531418_)
                                  (if (gx#stx-pair? _tl3103631421_)
                                      (let ((_e3105731314_
                                             (gx#syntax-e _tl3103631421_)))
                                        (let ((_tl3105931321_
                                               (##cdr _e3105731314_))
                                              (_hd3105831318_
                                               (##car _e3105731314_)))
                                          (if (gx#stx-null? _tl3105931321_)
                                              (___kont4052940530_
                                               _hd3105831318_
                                               _hd3096731652_
                                               _hd3096431642_)
                                              (_g3095831104_))))
                                      (_g3095831104_))
                                  (_g3095831104_))
                              (if (gx#stx-datum? _hd3103531418_)
                                  (let ((_e3107231241_
                                         (gx#stx-e _hd3103531418_)))
                                    (if (equal? _e3107231241_ '::)
                                        (if (gx#stx-pair? _tl3103631421_)
                                            (let ((_e3107331245_
                                                   (gx#syntax-e
                                                    _tl3103631421_)))
                                              (let ((_tl3107531252_
                                                     (##cdr _e3107331245_))
                                                    (_hd3107431249_
                                                     (##car _e3107331245_)))
                                                (if (gx#stx-null?
                                                     _tl3107531252_)
                                                    (___kont4053140532_
                                                     _hd3107431249_
                                                     _hd3096731652_
                                                     _hd3096431642_)
                                                    (if (gx#stx-pair?
                                                         _tl3107531252_)
                                                        (let ((_e3109331155_
                                                               (gx#syntax-e
                                                                _tl3107531252_)))
                                                          (let ((_tl3109531162_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3109331155_))
                        (_hd3109431159_ (##car _e3109331155_)))
                    (if (gx#identifier? _hd3109431159_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g41401_|
                             _hd3109431159_)
                            (if (gx#stx-pair? _tl3109531162_)
                                (let ((_e3109631165_
                                       (gx#syntax-e _tl3109531162_)))
                                  (let ((_tl3109831172_ (##cdr _e3109631165_))
                                        (_hd3109731169_ (##car _e3109631165_)))
                                    (if (gx#stx-null? _tl3109831172_)
                                        (___kont4053340534_
                                         _hd3109731169_
                                         _hd3107431249_
                                         _hd3096731652_
                                         _hd3096431642_)
                                        (_g3095831104_))))
                                (_g3095831104_))
                            (_g3095831104_))
                        (_g3095831104_))))
                (_g3095831104_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g3095831104_))
                                        (_g3095831104_)))
                                  (_g3095831104_))))))
                  (if (gx#stx-null? _tl3096831655_)
                      (___kont4052740528_ _hd3096731652_ _hd3096431642_)
                      (_g3095831104_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl3096831655_)
                                              (let ((_e3103431414_
                                                     (gx#syntax-e
                                                      _tl3096831655_)))
                                                (let ((_tl3103631421_
                                                       (##cdr _e3103431414_))
                                                      (_hd3103531418_
                                                       (##car _e3103431414_)))
                                                  (if (gx#stx-null?
                                                       _tl3103631421_)
                                                      (___kont4052540526_
                                                       _hd3103531418_
                                                       _hd3096731652_)
                                                      (if (gx#identifier?
                                                           _hd3103531418_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core$<match>[1]#_g41400_|
                                                               _hd3103531418_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl3103631421_)
                          (let ((_e3105731314_ (gx#syntax-e _tl3103631421_)))
                            (let ((_tl3105931321_ (##cdr _e3105731314_))
                                  (_hd3105831318_ (##car _e3105731314_)))
                              (if (gx#stx-null? _tl3105931321_)
                                  (___kont4052940530_
                                   _hd3105831318_
                                   _hd3096731652_
                                   _hd3096431642_)
                                  (_g3095831104_))))
                          (_g3095831104_))
                      (_g3095831104_))
                  (if (gx#stx-datum? _hd3103531418_)
                      (let ((_e3107231241_ (gx#stx-e _hd3103531418_)))
                        (if (equal? _e3107231241_ '::)
                            (if (gx#stx-pair? _tl3103631421_)
                                (let ((_e3107331245_
                                       (gx#syntax-e _tl3103631421_)))
                                  (let ((_tl3107531252_ (##cdr _e3107331245_))
                                        (_hd3107431249_ (##car _e3107331245_)))
                                    (if (gx#stx-null? _tl3107531252_)
                                        (___kont4053140532_
                                         _hd3107431249_
                                         _hd3096731652_
                                         _hd3096431642_)
                                        (if (gx#stx-pair? _tl3107531252_)
                                            (let ((_e3109331155_
                                                   (gx#syntax-e
                                                    _tl3107531252_)))
                                              (let ((_tl3109531162_
                                                     (##cdr _e3109331155_))
                                                    (_hd3109431159_
                                                     (##car _e3109331155_)))
                                                (if (gx#identifier?
                                                     _hd3109431159_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core$<match>[1]#_g41401_|
                                                         _hd3109431159_)
                                                        (if (gx#stx-pair?
                                                             _tl3109531162_)
                                                            (let ((_e3109631165_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3109531162_)))
                      (let ((_tl3109831172_ (##cdr _e3109631165_))
                            (_hd3109731169_ (##car _e3109631165_)))
                        (if (gx#stx-null? _tl3109831172_)
                            (___kont4053340534_
                             _hd3109731169_
                             _hd3107431249_
                             _hd3096731652_
                             _hd3096431642_)
                            (_g3095831104_))))
                    (_g3095831104_))
                (_g3095831104_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3095831104_))))
                                            (_g3095831104_)))))
                                (_g3095831104_))
                            (_g3095831104_)))
                      (_g3095831104_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null? _tl3096831655_)
                                                  (___kont4052740528_
                                                   _hd3096731652_
                                                   _hd3096431642_)
                                                  (_g3095831104_))))))
                                  (if (gx#stx-pair? _tl3096831655_)
                                      (let ((_e3103431414_
                                             (gx#syntax-e _tl3096831655_)))
                                        (let ((_tl3103631421_
                                               (##cdr _e3103431414_))
                                              (_hd3103531418_
                                               (##car _e3103431414_)))
                                          (if (gx#stx-null? _tl3103631421_)
                                              (___kont4052540526_
                                               _hd3103531418_
                                               _hd3096731652_)
                                              (if (gx#identifier?
                                                   _hd3103531418_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g41400_|
                                                       _hd3103531418_)
                                                      (if (gx#stx-pair?
                                                           _tl3103631421_)
                                                          (let ((_e3105731314_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3103631421_)))
                    (let ((_tl3105931321_ (##cdr _e3105731314_))
                          (_hd3105831318_ (##car _e3105731314_)))
                      (if (gx#stx-null? _tl3105931321_)
                          (___kont4052940530_
                           _hd3105831318_
                           _hd3096731652_
                           _hd3096431642_)
                          (_g3095831104_))))
                  (_g3095831104_))
              (_g3095831104_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-datum?
                                                       _hd3103531418_)
                                                      (let ((_e3107231241_
                                                             (gx#stx-e
                                                              _hd3103531418_)))
                                                        (if (equal? _e3107231241_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '::)
                    (if (gx#stx-pair? _tl3103631421_)
                        (let ((_e3107331245_ (gx#syntax-e _tl3103631421_)))
                          (let ((_tl3107531252_ (##cdr _e3107331245_))
                                (_hd3107431249_ (##car _e3107331245_)))
                            (if (gx#stx-null? _tl3107531252_)
                                (___kont4053140532_
                                 _hd3107431249_
                                 _hd3096731652_
                                 _hd3096431642_)
                                (if (gx#stx-pair? _tl3107531252_)
                                    (let ((_e3109331155_
                                           (gx#syntax-e _tl3107531252_)))
                                      (let ((_tl3109531162_
                                             (##cdr _e3109331155_))
                                            (_hd3109431159_
                                             (##car _e3109331155_)))
                                        (if (gx#identifier? _hd3109431159_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core$<match>[1]#_g41401_|
                                                 _hd3109431159_)
                                                (if (gx#stx-pair?
                                                     _tl3109531162_)
                                                    (let ((_e3109631165_
                                                           (gx#syntax-e
                                                            _tl3109531162_)))
                                                      (let ((_tl3109831172_
                                                             (##cdr _e3109631165_))
                                                            (_hd3109731169_
                                                             (##car _e3109631165_)))
                                                        (if (gx#stx-null?
                                                             _tl3109831172_)
                                                            (___kont4053340534_
                                                             _hd3109731169_
                                                             _hd3107431249_
                                                             _hd3096731652_
                                                             _hd3096431642_)
                                                            (_g3095831104_))))
                                                    (_g3095831104_))
                                                (_g3095831104_))
                                            (_g3095831104_))))
                                    (_g3095831104_)))))
                        (_g3095831104_))
                    (_g3095831104_)))
              (_g3095831104_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-null? _tl3096831655_)
                                          (___kont4052740528_
                                           _hd3096731652_
                                           _hd3096431642_)
                                          (_g3095831104_))))))
                          (_g3095831104_))))
                  (_g3095831104_)))))))
    (define |gerbil/core$<match>[:0:]#defsyntax-for-match|
      (lambda (_$stx31747_)
        (let* ((___stx4078040781_ _$stx31747_)
               (_g3175231786_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx4078040781_))))
          (let ((___kont4078340784_
                 (lambda (_L31890_ _L31892_ _L31893_)
                   (cons (gx#datum->syntax '#f 'defsyntax)
                         (cons _L31893_
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            'make-match-macro)
                                           (cons 'macro:
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        '#f
                                        '$match-e)
                                       (cons _L31892_ '()))
                                 (cons (cons (gx#datum->syntax '#f '$macro-e)
                                             (cons _L31890_ '()))
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'lambda)
                                       (cons (cons (gx#datum->syntax '#f '$stx)
                                                   '())
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'syntax-case)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                '$stx)
                                                               (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (cons 'match:
                                               (gx#datum->syntax '#f 'body))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'core-apply-expander)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            '$match-e)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'stx-wrap-source)
                               (cons (cons (gx#datum->syntax '#f 'syntax)
                                           (cons (gx#datum->syntax '#f 'body)
                                                 '()))
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'stx-source)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$stx)
                                                       '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f '_)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'core-apply-expander)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '$macro-e)
                         (cons (gx#datum->syntax '#f '$stx) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                 '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont4078540786_
                 (lambda (_L31823_ _L31825_ _L31826_)
                   (cons _L31826_
                         (cons _L31825_
                               (cons _L31823_
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '$stx)
                                                             '())
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'raise-syntax-error)
                           (cons '#f
                                 (cons '"Bad syntax"
                                       (cons (gx#datum->syntax '#f '$stx)
                                             '()))))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))))
            (let ((___match4081340814_
                   (lambda (_e3175731850_
                            _hd3175831854_
                            _tl3175931857_
                            _e3176031860_
                            _hd3176131864_
                            _tl3176231867_
                            _e3176331870_
                            _hd3176431874_
                            _tl3176531877_
                            _e3176631880_
                            _hd3176731884_
                            _tl3176831887_)
                     (let ((_L31890_ _hd3176731884_)
                           (_L31892_ _hd3176431874_)
                           (_L31893_ _hd3176131864_))
                       (if (gx#identifier? _L31893_)
                           (___kont4078340784_ _L31890_ _L31892_ _L31893_)
                           (_g3175231786_))))))
              (if (gx#stx-pair? ___stx4078040781_)
                  (let ((_e3175731850_ (gx#syntax-e ___stx4078040781_)))
                    (let ((_tl3175931857_ (##cdr _e3175731850_))
                          (_hd3175831854_ (##car _e3175731850_)))
                      (if (gx#stx-pair? _tl3175931857_)
                          (let ((_e3176031860_ (gx#syntax-e _tl3175931857_)))
                            (let ((_tl3176231867_ (##cdr _e3176031860_))
                                  (_hd3176131864_ (##car _e3176031860_)))
                              (if (gx#stx-pair? _tl3176231867_)
                                  (let ((_e3176331870_
                                         (gx#syntax-e _tl3176231867_)))
                                    (let ((_tl3176531877_
                                           (##cdr _e3176331870_))
                                          (_hd3176431874_
                                           (##car _e3176331870_)))
                                      (if (gx#stx-pair? _tl3176531877_)
                                          (let ((_e3176631880_
                                                 (gx#syntax-e _tl3176531877_)))
                                            (let ((_tl3176831887_
                                                   (##cdr _e3176631880_))
                                                  (_hd3176731884_
                                                   (##car _e3176631880_)))
                                              (if (gx#stx-null? _tl3176831887_)
                                                  (___match4081340814_
                                                   _e3175731850_
                                                   _hd3175831854_
                                                   _tl3175931857_
                                                   _e3176031860_
                                                   _hd3176131864_
                                                   _tl3176231867_
                                                   _e3176331870_
                                                   _hd3176431874_
                                                   _tl3176531877_
                                                   _e3176631880_
                                                   _hd3176731884_
                                                   _tl3176831887_)
                                                  (_g3175231786_))))
                                          (if (gx#stx-null? _tl3176531877_)
                                              (___kont4078540786_
                                               _hd3176431874_
                                               _hd3176131864_
                                               _hd3175831854_)
                                              (_g3175231786_)))))
                                  (_g3175231786_))))
                          (_g3175231786_))))
                  (_g3175231786_)))))))
    (define |gerbil/core$<match>[:0:]#defrules-for-match|
      (lambda (_$stx31915_)
        (let* ((_g3191931934_
                (lambda (_g3192031930_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g3192031930_)))
               (_g3191831977_
                (lambda (_g3192031938_)
                  (if (gx#stx-pair? _g3192031938_)
                      (let ((_e3192331941_ (gx#syntax-e _g3192031938_)))
                        (let ((_hd3192431945_ (##car _e3192331941_))
                              (_tl3192531948_ (##cdr _e3192331941_)))
                          (if (gx#stx-pair? _tl3192531948_)
                              (let ((_e3192631951_
                                     (gx#syntax-e _tl3192531948_)))
                                (let ((_hd3192731955_ (##car _e3192631951_))
                                      (_tl3192831958_ (##cdr _e3192631951_)))
                                  ((lambda (_L31961_ _L31963_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'defsyntax-for-match)
                                           (cons _L31963_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'syntax-rules)
                                                             _L31961_)
                                                       '()))))
                                   _tl3192831958_
                                   _hd3192731955_)))
                              (_g3191931934_ _g3192031938_))))
                      (_g3191931934_ _g3192031938_)))))
          (_g3191831977_ _$stx31915_))))))
