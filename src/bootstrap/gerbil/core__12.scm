(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<more-sugar>[1]#setq-macro::t|
    (make-class-type
     'gerbil.core#setq-macro::t
     (cons |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::t| '())
     '()
     'setq-macro
     '()
     '#f))
  (define |gerbil/core$<more-sugar>[1]#setq-macro?|
    (make-class-predicate |gerbil/core$<more-sugar>[1]#setq-macro::t|))
  (define |gerbil/core$<more-sugar>[1]#make-setq-macro|
    (lambda _$args32586_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setq-macro::t|
             _$args32586_)))
  (define |gerbil/core$<more-sugar>[1]#setf-macro::t|
    (make-class-type
     'gerbil.core#setf-macro::t
     (cons |gerbil/core$<MOP>$<MOP:3>[1]#macro-object::t| '())
     '()
     'setf-macro
     '()
     '#f))
  (define |gerbil/core$<more-sugar>[1]#setf-macro?|
    (make-class-predicate |gerbil/core$<more-sugar>[1]#setf-macro::t|))
  (define |gerbil/core$<more-sugar>[1]#make-setf-macro|
    (lambda _$args32582_
      (apply make-class-instance
             |gerbil/core$<more-sugar>[1]#setf-macro::t|
             _$args32582_)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
    (lambda (_stx32579_)
      (if (gx#identifier? _stx32579_)
          (|gerbil/core$<more-sugar>[1]#setf-macro?|
           (gx#syntax-local-value _stx32579_ false))
          '#f)))
  (define |gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
    (lambda (_stx32576_)
      (if (gx#identifier? _stx32576_)
          (|gerbil/core$<more-sugar>[1]#setq-macro?|
           (gx#syntax-local-value _stx32576_ false))
          '#f)))
  (define |gerbil/core$<more-sugar>[:0:]#set!|
    (lambda (_stx32590_)
      (let* ((___stx4160541606_ _stx32590_)
             (_g3259632655_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4160541606_))))
        (let ((___kont4160841609_
               (lambda (_L32928_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _L32928_)
                  _stx32590_)))
              (___kont4161041611_
               (lambda (_L32827_ _L32829_ _L32830_)
                 (let* ((_g3285232860_
                         (lambda (_g3285332856_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g3285332856_)))
                        (_g3285132887_
                         (lambda (_g3285332864_)
                           ((lambda (_L32867_)
                              (let ()
                                (cons _L32867_
                                      (foldr (lambda (_g3287832881_
                                                      _g3287932884_)
                                               (cons _g3287832881_
                                                     _g3287932884_))
                                             (cons _L32827_ '())
                                             _L32829_))))
                            _g3285332864_))))
                   (_g3285132887_
                    (gx#stx-identifier _L32830_ _L32830_ '"-set!")))))
              (___kont4161441615_
               (lambda (_L32737_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _L32737_)
                  _stx32590_)))
              (___kont4161641617_
               (lambda (_L32692_ _L32694_)
                 (cons (gx#datum->syntax '#f '%#set!)
                       (cons _L32694_ (cons _L32692_ '()))))))
          (let* ((___match4169641697_
                  (lambda (_e3264132662_
                           _hd3264232666_
                           _tl3264332669_
                           _e3264432672_
                           _hd3264532676_
                           _tl3264632679_
                           _e3264732682_
                           _hd3264832686_
                           _tl3264932689_)
                    (let ((_L32692_ _hd3264832686_) (_L32694_ _hd3264532676_))
                      (if (gx#identifier? _L32694_)
                          (___kont4161641617_ _L32692_ _L32694_)
                          (_g3259632655_)))))
                 (___match4167641677_
                  (lambda (_e3263332717_
                           _hd3263432721_
                           _tl3263532724_
                           _e3263632727_
                           _hd3263732731_
                           _tl3263832734_)
                    (let ((_L32737_ _hd3263732731_))
                      (if (|gerbil/core$<more-sugar>[1]#syntax-local-setq-macro?|
                           _L32737_)
                          (___kont4161441615_ _L32737_)
                          (if (gx#stx-pair? _tl3263832734_)
                              (let ((_e3264732682_
                                     (gx#syntax-e _tl3263832734_)))
                                (let ((_tl3264932689_ (##cdr _e3264732682_))
                                      (_hd3264832686_ (##car _e3264732682_)))
                                  (if (gx#stx-null? _tl3264932689_)
                                      (___match4169641697_
                                       _e3263332717_
                                       _hd3263432721_
                                       _tl3263532724_
                                       _e3263632727_
                                       _hd3263732731_
                                       _tl3263832734_
                                       _e3264732682_
                                       _hd3264832686_
                                       _tl3264932689_)
                                      (_g3259632655_))))
                              (_g3259632655_))))))
                 (___match4166441665_
                  (lambda (_e3261132757_
                           _hd3261232761_
                           _tl3261332764_
                           _e3261432767_
                           _hd3261532771_
                           _tl3261632774_
                           _e3261732777_
                           _hd3261832781_
                           _tl3261932784_
                           ___splice4161241613_
                           _target3262032787_
                           _tl3262232790_)
                    (letrec ((_loop3262332793_
                              (lambda (_hd3262132797_ _arg3262732800_)
                                (if (gx#stx-pair? _hd3262132797_)
                                    (let ((_e3262432803_
                                           (gx#syntax-e _hd3262132797_)))
                                      (let ((_lp-tl3262632810_
                                             (##cdr _e3262432803_))
                                            (_lp-hd3262532807_
                                             (##car _e3262432803_)))
                                        (_loop3262332793_
                                         _lp-tl3262632810_
                                         (cons _lp-hd3262532807_
                                               _arg3262732800_))))
                                    (let ((_arg3262832813_
                                           (reverse _arg3262732800_)))
                                      (if (gx#stx-pair? _tl3261632774_)
                                          (let ((_e3262932817_
                                                 (gx#syntax-e _tl3261632774_)))
                                            (let ((_tl3263132824_
                                                   (##cdr _e3262932817_))
                                                  (_hd3263032821_
                                                   (##car _e3262932817_)))
                                              (if (gx#stx-null? _tl3263132824_)
                                                  (let ((_L32827_
                                                         _hd3263032821_)
                                                        (_L32829_
                                                         _arg3262832813_)
                                                        (_L32830_
                                                         _hd3261832781_))
                                                    (if (gx#identifier?
                                                         _L32830_)
                                                        (___kont4161041611_
                                                         _L32827_
                                                         _L32829_
                                                         _L32830_)
                                                        (___match4167641677_
                                                         _e3261132757_
                                                         _hd3261232761_
                                                         _tl3261332764_
                                                         _e3261432767_
                                                         _hd3261532771_
                                                         _tl3261632774_)))
                                                  (___match4167641677_
                                                   _e3261132757_
                                                   _hd3261232761_
                                                   _tl3261332764_
                                                   _e3261432767_
                                                   _hd3261532771_
                                                   _tl3261632774_))))
                                          (___match4167641677_
                                           _e3261132757_
                                           _hd3261232761_
                                           _tl3261332764_
                                           _e3261432767_
                                           _hd3261532771_
                                           _tl3261632774_)))))))
                      (_loop3262332793_ _target3262032787_ '())))))
            (if (gx#stx-pair? ___stx4160541606_)
                (let ((_e3259932898_ (gx#syntax-e ___stx4160541606_)))
                  (let ((_tl3260132905_ (##cdr _e3259932898_))
                        (_hd3260032902_ (##car _e3259932898_)))
                    (if (gx#stx-pair? _tl3260132905_)
                        (let ((_e3260232908_ (gx#syntax-e _tl3260132905_)))
                          (let ((_tl3260432915_ (##cdr _e3260232908_))
                                (_hd3260332912_ (##car _e3260232908_)))
                            (if (gx#stx-pair? _hd3260332912_)
                                (let ((_e3260532918_
                                       (gx#syntax-e _hd3260332912_)))
                                  (let ((_tl3260732925_ (##cdr _e3260532918_))
                                        (_hd3260632922_ (##car _e3260532918_)))
                                    (if (|gerbil/core$<more-sugar>[1]#syntax-local-setf-macro?|
                                         (gx#datum->syntax '#f 'setfid))
                                        (let ((_L32928_ _hd3260632922_))
                                          (___kont4160841609_ _L32928_))
                                        (if (gx#stx-pair/null? _tl3260732925_)
                                            (let ((___splice4161241613_
                                                   (gx#syntax-split-splice
                                                    _tl3260732925_
                                                    '0)))
                                              (let ((_tl3262232790_
                                                     (##vector-ref
                                                      ___splice4161241613_
                                                      '1))
                                                    (_target3262032787_
                                                     (##vector-ref
                                                      ___splice4161241613_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl3262232790_)
                                                    (___match4166441665_
                                                     _e3259932898_
                                                     _hd3260032902_
                                                     _tl3260132905_
                                                     _e3260232908_
                                                     _hd3260332912_
                                                     _tl3260432915_
                                                     _e3260532918_
                                                     _hd3260632922_
                                                     _tl3260732925_
                                                     ___splice4161241613_
                                                     _target3262032787_
                                                     _tl3262232790_)
                                                    (___match4167641677_
                                                     _e3259932898_
                                                     _hd3260032902_
                                                     _tl3260132905_
                                                     _e3260232908_
                                                     _hd3260332912_
                                                     _tl3260432915_))))
                                            (___match4167641677_
                                             _e3259932898_
                                             _hd3260032902_
                                             _tl3260132905_
                                             _e3260232908_
                                             _hd3260332912_
                                             _tl3260432915_)))))
                                (___match4167641677_
                                 _e3259932898_
                                 _hd3260032902_
                                 _tl3260132905_
                                 _e3260232908_
                                 _hd3260332912_
                                 _tl3260432915_))))
                        (_g3259632655_))))
                (_g3259632655_)))))))
  (define |gerbil/core$<more-sugar>[:0:]#values-set!|
    (lambda (_stx32948_)
      (let* ((_g3295132975_
              (lambda (_g3295232971_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3295232971_)))
             (_g3295033153_
              (lambda (_g3295232979_)
                (if (gx#stx-pair? _g3295232979_)
                    (let ((_e3295532982_ (gx#syntax-e _g3295232979_)))
                      (let ((_hd3295632986_ (##car _e3295532982_))
                            (_tl3295732989_ (##cdr _e3295532982_)))
                        (if (gx#stx-pair/null? _tl3295732989_)
                            (if (fx>= (gx#stx-length _tl3295732989_) '1)
                                (let ((_g42183_
                                       (gx#syntax-split-splice
                                        _tl3295732989_
                                        '1)))
                                  (begin
                                    (let ((_g42184_
                                           (if (##values? _g42183_)
                                               (##vector-length _g42183_)
                                               1)))
                                      (if (not (##fx= _g42184_ 2))
                                          (error "Context expects 2 values"
                                                 _g42184_)))
                                    (let ((_target3295832992_
                                           (##vector-ref _g42183_ 0))
                                          (_tl3296032995_
                                           (##vector-ref _g42183_ 1)))
                                      (if (gx#stx-pair? _tl3296032995_)
                                          (let ((_e3296732998_
                                                 (gx#syntax-e _tl3296032995_)))
                                            (let ((_hd3296833002_
                                                   (##car _e3296732998_))
                                                  (_tl3296933005_
                                                   (##cdr _e3296732998_)))
                                              (if (gx#stx-null? _tl3296933005_)
                                                  (letrec ((_loop3296133008_
                                                            (lambda (_hd3295933012_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tgt3296533015_)
                      (if (gx#stx-pair? _hd3295933012_)
                          (let ((_e3296233018_ (gx#syntax-e _hd3295933012_)))
                            (let ((_lp-hd3296333022_ (##car _e3296233018_))
                                  (_lp-tl3296433025_ (##cdr _e3296233018_)))
                              (_loop3296133008_
                               _lp-tl3296433025_
                               (cons _lp-hd3296333022_ _tgt3296533015_))))
                          (let ((_tgt3296633028_ (reverse _tgt3296533015_)))
                            ((lambda (_L33032_ _L33034_)
                               (let* ((_g3305233069_
                                       (lambda (_g3305333065_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g3305333065_)))
                                      (_g3305133141_
                                       (lambda (_g3305333073_)
                                         (if (gx#stx-pair/null? _g3305333073_)
                                             (let ((_g42185_
                                                    (gx#syntax-split-splice
                                                     _g3305333073_
                                                     '0)))
                                               (begin
                                                 (let ((_g42186_
                                                        (if (##values?
                                                             _g42185_)
                                                            (##vector-length
                                                             _g42185_)
                                                            1)))
                                                   (if (not (##fx= _g42186_ 2))
                                                       (error "Context expects 2 values"
                                                              _g42186_)))
                                                 (let ((_target3305533076_
                                                        (##vector-ref
                                                         _g42185_
                                                         0))
                                                       (_tl3305733079_
                                                        (##vector-ref
                                                         _g42185_
                                                         1)))
                                                   (if (gx#stx-null?
                                                        _tl3305733079_)
                                                       (letrec ((_loop3305833082_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd3305633086_ _$e3306233089_)
                           (if (gx#stx-pair? _hd3305633086_)
                               (let ((_e3305933092_
                                      (gx#syntax-e _hd3305633086_)))
                                 (let ((_lp-hd3306033096_
                                        (##car _e3305933092_))
                                       (_lp-tl3306133099_
                                        (##cdr _e3305933092_)))
                                   (_loop3305833082_
                                    _lp-tl3306133099_
                                    (cons _lp-hd3306033096_ _$e3306233089_))))
                               (let ((_$e3306333102_ (reverse _$e3306233089_)))
                                 ((lambda (_L33106_)
                                    (let ()
                                      (cons (gx#datum->syntax '#f 'let-values)
                                            (cons (cons (cons (foldr (lambda (_g3312133127_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g3312233130_)
                               (cons _g3312133127_ _g3312233130_))
                             '()
                             _L33106_)
                      (cons _L33032_ '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    (gx#syntax-check-splice-targets
                                                     _L33106_
                                                     _L33034_)
                                                    (foldr (lambda (_g3312333133_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g3312433136_
                            _g3312533138_)
                     (cons (cons (gx#datum->syntax '#f 'set!)
                                 (cons _g3312433136_ (cons _g3312333133_ '())))
                           _g3312533138_))
                   '()
                   _L33106_
                   _L33034_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _$e3306333102_))))))
                 (_loop3305833082_ _target3305533076_ '()))
               (_g3305233069_ _g3305333073_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g3305233069_ _g3305333073_)))))
                                 (_g3305133141_
                                  (gx#gentemps
                                   (foldr (lambda (_g3314433147_ _g3314533150_)
                                            (cons _g3314433147_ _g3314533150_))
                                          '()
                                          _L33034_)))))
                             _hd3296833002_
                             _tgt3296633028_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3296133008_
                                                     _target3295832992_
                                                     '()))
                                                  (_g3295132975_
                                                   _g3295232979_))))
                                          (_g3295132975_ _g3295232979_)))))
                                (_g3295132975_ _g3295232979_))
                            (_g3295132975_ _g3295232979_))))
                    (_g3295132975_ _g3295232979_)))))
        (_g3295033153_ _stx32948_))))
  (define |gerbil/core$<more-sugar>[:0:]#parameterize|
    (lambda (_stx33159_)
      (let* ((___stx4169941700_ _stx33159_)
             (_g3316333221_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx4169941700_))))
        (let ((___kont4170241703_
               (lambda (_L33555_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons '()
                             (foldr (lambda (_g3357133574_ _g3357233577_)
                                      (cons _g3357133574_ _g3357233577_))
                                    '()
                                    _L33555_)))))
              (___kont4170641707_
               (lambda (_L33332_ _L33334_ _L33335_)
                 (let* ((_g3335833366_
                         (lambda (_g3335933362_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g3335933362_)))
                        (_g3335733486_
                         (lambda (_g3335933370_)
                           ((lambda (_L33373_)
                              (let ()
                                (let* ((_g3338533402_
                                        (lambda (_g3338633398_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g3338633398_)))
                                       (_g3338433466_
                                        (lambda (_g3338633406_)
                                          (if (gx#stx-pair/null? _g3338633406_)
                                              (let ((_g42187_
                                                     (gx#syntax-split-splice
                                                      _g3338633406_
                                                      '0)))
                                                (begin
                                                  (let ((_g42188_
                                                         (if (##values?
                                                              _g42187_)
                                                             (##vector-length
                                                              _g42187_)
                                                             1)))
                                                    (if (not (##fx= _g42188_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                (error "Context expects 2 values" _g42188_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target3338833409_
                                                         (##vector-ref
                                                          _g42187_
                                                          0))
                                                        (_tl3339033412_
                                                         (##vector-ref
                                                          _g42187_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl3339033412_)
                                                        (letrec ((_loop3339133415_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd3338933419_ _arg3339533422_)
                            (if (gx#stx-pair? _hd3338933419_)
                                (let ((_e3339233425_
                                       (gx#syntax-e _hd3338933419_)))
                                  (let ((_lp-hd3339333429_
                                         (##car _e3339233425_))
                                        (_lp-tl3339433432_
                                         (##cdr _e3339233425_)))
                                    (_loop3339133415_
                                     _lp-tl3339433432_
                                     (cons _lp-hd3339333429_
                                           _arg3339533422_))))
                                (let ((_arg3339633435_
                                       (reverse _arg3339533422_)))
                                  ((lambda (_L33439_)
                                     (let ()
                                       (let ()
                                         (cons (gx#datum->syntax
                                                '#f
                                                'call-with-parameters)
                                               (cons _L33373_
                                                     (foldr (lambda (_g3345733460_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g3345833463_)
                      (cons _g3345733460_ _g3345833463_))
                    '()
                    _L33439_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _arg3339633435_))))))
                  (_loop3339133415_ _target3338833409_ '()))
                (_g3338533402_ _g3338633406_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3338533402_ _g3338633406_)))))
                                  (_g3338433466_
                                   (foldr cons*
                                          '()
                                          (gx#syntax->list
                                           (foldr (lambda (_g3346933472_
                                                           _g3347033475_)
                                                    (cons _g3346933472_
                                                          _g3347033475_))
                                                  '()
                                                  _L33335_))
                                          (gx#syntax->list
                                           (foldr (lambda (_g3347733480_
                                                           _g3347833483_)
                                                    (cons _g3347733480_
                                                          _g3347833483_))
                                                  '()
                                                  _L33334_)))))))
                            _g3335933370_))))
                   (_g3335733486_
                    (gx#stx-wrap-source
                     (cons (gx#datum->syntax '#f 'lambda)
                           (cons '()
                                 (foldr (lambda (_g3348933492_ _g3349033495_)
                                          (cons _g3348933492_ _g3349033495_))
                                        '()
                                        _L33332_)))
                     (gx#stx-source _stx33159_)))))))
          (let* ((___match4175441755_
                  (lambda (_e3318433228_
                           _hd3318533232_
                           _tl3318633235_
                           _e3318733238_
                           _hd3318833242_
                           _tl3318933245_
                           ___splice4170841709_
                           _target3319033248_
                           _tl3319233251_)
                    (letrec ((_loop3319333254_
                              (lambda (_hd3319133258_
                                       _expr3319733261_
                                       _param3319833263_)
                                (if (gx#stx-pair? _hd3319133258_)
                                    (let ((_e3319433266_
                                           (gx#syntax-e _hd3319133258_)))
                                      (let ((_lp-tl3319633273_
                                             (##cdr _e3319433266_))
                                            (_lp-hd3319533270_
                                             (##car _e3319433266_)))
                                        (if (gx#stx-pair? _lp-hd3319533270_)
                                            (let ((_e3320133276_
                                                   (gx#syntax-e
                                                    _lp-hd3319533270_)))
                                              (let ((_tl3320333283_
                                                     (##cdr _e3320133276_))
                                                    (_hd3320233280_
                                                     (##car _e3320133276_)))
                                                (if (gx#stx-pair?
                                                     _tl3320333283_)
                                                    (let ((_e3320433286_
                                                           (gx#syntax-e
                                                            _tl3320333283_)))
                                                      (let ((_tl3320633293_
                                                             (##cdr _e3320433286_))
                                                            (_hd3320533290_
                                                             (##car _e3320433286_)))
                                                        (if (gx#stx-null?
                                                             _tl3320633293_)
                                                            (_loop3319333254_
                                                             _lp-tl3319633273_
                                                             (cons _hd3320533290_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr3319733261_)
                     (cons _hd3320233280_ _param3319833263_))
                    (_g3316333221_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3316333221_))))
                                            (_g3316333221_))))
                                    (let ((_param3320033299_
                                           (reverse _param3319833263_))
                                          (_expr3319933296_
                                           (reverse _expr3319733261_)))
                                      (if (gx#stx-pair/null? _tl3318933245_)
                                          (let ((___splice4171041711_
                                                 (gx#syntax-split-splice
                                                  _tl3318933245_
                                                  '0)))
                                            (let ((_tl3320933305_
                                                   (##vector-ref
                                                    ___splice4171041711_
                                                    '1))
                                                  (_target3320733302_
                                                   (##vector-ref
                                                    ___splice4171041711_
                                                    '0)))
                                              (if (gx#stx-null? _tl3320933305_)
                                                  (letrec ((_loop3321033308_
                                                            (lambda (_hd3320833312_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body3321433315_)
                      (if (gx#stx-pair? _hd3320833312_)
                          (let ((_e3321133318_ (gx#syntax-e _hd3320833312_)))
                            (let ((_lp-tl3321333325_ (##cdr _e3321133318_))
                                  (_lp-hd3321233322_ (##car _e3321133318_)))
                              (_loop3321033308_
                               _lp-tl3321333325_
                               (cons _lp-hd3321233322_ _body3321433315_))))
                          (let ((_body3321533328_ (reverse _body3321433315_)))
                            (___kont4170641707_
                             _body3321533328_
                             _expr3319933296_
                             _param3320033299_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3321033308_
                                                     _target3320733302_
                                                     '()))
                                                  (_g3316333221_))))
                                          (_g3316333221_)))))))
                      (_loop3319333254_ _target3319033248_ '() '()))))
                 (___match4173441735_
                  (lambda (_e3316633505_
                           _hd3316733509_
                           _tl3316833512_
                           _e3316933515_
                           _hd3317033519_
                           _tl3317133522_
                           ___splice4170441705_
                           _target3317233525_
                           _tl3317433528_)
                    (letrec ((_loop3317533531_
                              (lambda (_hd3317333535_ _body3317933538_)
                                (if (gx#stx-pair? _hd3317333535_)
                                    (let ((_e3317633541_
                                           (gx#syntax-e _hd3317333535_)))
                                      (let ((_lp-tl3317833548_
                                             (##cdr _e3317633541_))
                                            (_lp-hd3317733545_
                                             (##car _e3317633541_)))
                                        (_loop3317533531_
                                         _lp-tl3317833548_
                                         (cons _lp-hd3317733545_
                                               _body3317933538_))))
                                    (let ((_body3318033551_
                                           (reverse _body3317933538_)))
                                      (___kont4170241703_
                                       _body3318033551_))))))
                      (_loop3317533531_ _target3317233525_ '())))))
            (if (gx#stx-pair? ___stx4169941700_)
                (let ((_e3316633505_ (gx#syntax-e ___stx4169941700_)))
                  (let ((_tl3316833512_ (##cdr _e3316633505_))
                        (_hd3316733509_ (##car _e3316633505_)))
                    (if (gx#stx-pair? _tl3316833512_)
                        (let ((_e3316933515_ (gx#syntax-e _tl3316833512_)))
                          (let ((_tl3317133522_ (##cdr _e3316933515_))
                                (_hd3317033519_ (##car _e3316933515_)))
                            (if (gx#stx-null? _hd3317033519_)
                                (if (gx#stx-pair/null? _tl3317133522_)
                                    (let ((___splice4170441705_
                                           (gx#syntax-split-splice
                                            _tl3317133522_
                                            '0)))
                                      (let ((_tl3317433528_
                                             (##vector-ref
                                              ___splice4170441705_
                                              '1))
                                            (_target3317233525_
                                             (##vector-ref
                                              ___splice4170441705_
                                              '0)))
                                        (if (gx#stx-null? _tl3317433528_)
                                            (___match4173441735_
                                             _e3316633505_
                                             _hd3316733509_
                                             _tl3316833512_
                                             _e3316933515_
                                             _hd3317033519_
                                             _tl3317133522_
                                             ___splice4170441705_
                                             _target3317233525_
                                             _tl3317433528_)
                                            (if (gx#stx-pair/null?
                                                 _hd3317033519_)
                                                (let ((___splice4170841709_
                                                       (gx#syntax-split-splice
                                                        _hd3317033519_
                                                        '0)))
                                                  (let ((_tl3319233251_
                                                         (##vector-ref
                                                          ___splice4170841709_
                                                          '1))
                                                        (_target3319033248_
                                                         (##vector-ref
                                                          ___splice4170841709_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl3319233251_)
                                                        (___match4175441755_
                                                         _e3316633505_
                                                         _hd3316733509_
                                                         _tl3316833512_
                                                         _e3316933515_
                                                         _hd3317033519_
                                                         _tl3317133522_
                                                         ___splice4170841709_
                                                         _target3319033248_
                                                         _tl3319233251_)
                                                        (_g3316333221_))))
                                                (_g3316333221_)))))
                                    (if (gx#stx-pair/null? _hd3317033519_)
                                        (let ((___splice4170841709_
                                               (gx#syntax-split-splice
                                                _hd3317033519_
                                                '0)))
                                          (let ((_tl3319233251_
                                                 (##vector-ref
                                                  ___splice4170841709_
                                                  '1))
                                                (_target3319033248_
                                                 (##vector-ref
                                                  ___splice4170841709_
                                                  '0)))
                                            (if (gx#stx-null? _tl3319233251_)
                                                (___match4175441755_
                                                 _e3316633505_
                                                 _hd3316733509_
                                                 _tl3316833512_
                                                 _e3316933515_
                                                 _hd3317033519_
                                                 _tl3317133522_
                                                 ___splice4170841709_
                                                 _target3319033248_
                                                 _tl3319233251_)
                                                (_g3316333221_))))
                                        (_g3316333221_)))
                                (if (gx#stx-pair/null? _hd3317033519_)
                                    (let ((___splice4170841709_
                                           (gx#syntax-split-splice
                                            _hd3317033519_
                                            '0)))
                                      (let ((_tl3319233251_
                                             (##vector-ref
                                              ___splice4170841709_
                                              '1))
                                            (_target3319033248_
                                             (##vector-ref
                                              ___splice4170841709_
                                              '0)))
                                        (if (gx#stx-null? _tl3319233251_)
                                            (___match4175441755_
                                             _e3316633505_
                                             _hd3316733509_
                                             _tl3316833512_
                                             _e3316933515_
                                             _hd3317033519_
                                             _tl3317133522_
                                             ___splice4170841709_
                                             _target3319033248_
                                             _tl3319233251_)
                                            (_g3316333221_))))
                                    (_g3316333221_)))))
                        (_g3316333221_))))
                (_g3316333221_)))))))
  (define |gerbil/core$<more-sugar>[:0:]#let/cc|
    (lambda (_$stx33588_)
      (let* ((_g3359233616_
              (lambda (_g3359333612_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3359333612_)))
             (_g3359133701_
              (lambda (_g3359333620_)
                (if (gx#stx-pair? _g3359333620_)
                    (let ((_e3359633623_ (gx#syntax-e _g3359333620_)))
                      (let ((_hd3359733627_ (##car _e3359633623_))
                            (_tl3359833630_ (##cdr _e3359633623_)))
                        (if (gx#stx-pair? _tl3359833630_)
                            (let ((_e3359933633_ (gx#syntax-e _tl3359833630_)))
                              (let ((_hd3360033637_ (##car _e3359933633_))
                                    (_tl3360133640_ (##cdr _e3359933633_)))
                                (if (gx#stx-pair/null? _tl3360133640_)
                                    (let ((_g42189_
                                           (gx#syntax-split-splice
                                            _tl3360133640_
                                            '0)))
                                      (begin
                                        (let ((_g42190_
                                               (if (##values? _g42189_)
                                                   (##vector-length _g42189_)
                                                   1)))
                                          (if (not (##fx= _g42190_ 2))
                                              (error "Context expects 2 values"
                                                     _g42190_)))
                                        (let ((_target3360233643_
                                               (##vector-ref _g42189_ 0))
                                              (_tl3360433646_
                                               (##vector-ref _g42189_ 1)))
                                          (if (gx#stx-null? _tl3360433646_)
                                              (letrec ((_loop3360533649_
                                                        (lambda (_hd3360333653_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body3360933656_)
                  (if (gx#stx-pair? _hd3360333653_)
                      (let ((_e3360633659_ (gx#syntax-e _hd3360333653_)))
                        (let ((_lp-hd3360733663_ (##car _e3360633659_))
                              (_lp-tl3360833666_ (##cdr _e3360633659_)))
                          (_loop3360533649_
                           _lp-tl3360833666_
                           (cons _lp-hd3360733663_ _body3360933656_))))
                      (let ((_body3361033669_ (reverse _body3360933656_)))
                        ((lambda (_L33673_ _L33675_)
                           (if (gx#identifier? _L33675_)
                               (cons (gx#datum->syntax '#f 'call/cc)
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons (cons _L33675_ '())
                                                       (foldr (lambda (_g3369233695_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g3369333698_)
                        (cons _g3369233695_ _g3369333698_))
                      '()
                      _L33673_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))
                               (_g3359233616_ _g3359333620_)))
                         _body3361033669_
                         _hd3360033637_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop3360533649_
                                                 _target3360233643_
                                                 '()))
                                              (_g3359233616_ _g3359333620_)))))
                                    (_g3359233616_ _g3359333620_))))
                            (_g3359233616_ _g3359333620_))))
                    (_g3359233616_ _g3359333620_)))))
        (_g3359133701_ _$stx33588_))))
  (define |gerbil/core$<more-sugar>[:0:]#let/esc|
    (lambda (_$stx33706_)
      (let* ((_g3371033734_
              (lambda (_g3371133730_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3371133730_)))
             (_g3370933819_
              (lambda (_g3371133738_)
                (if (gx#stx-pair? _g3371133738_)
                    (let ((_e3371433741_ (gx#syntax-e _g3371133738_)))
                      (let ((_hd3371533745_ (##car _e3371433741_))
                            (_tl3371633748_ (##cdr _e3371433741_)))
                        (if (gx#stx-pair? _tl3371633748_)
                            (let ((_e3371733751_ (gx#syntax-e _tl3371633748_)))
                              (let ((_hd3371833755_ (##car _e3371733751_))
                                    (_tl3371933758_ (##cdr _e3371733751_)))
                                (if (gx#stx-pair/null? _tl3371933758_)
                                    (let ((_g42191_
                                           (gx#syntax-split-splice
                                            _tl3371933758_
                                            '0)))
                                      (begin
                                        (let ((_g42192_
                                               (if (##values? _g42191_)
                                                   (##vector-length _g42191_)
                                                   1)))
                                          (if (not (##fx= _g42192_ 2))
                                              (error "Context expects 2 values"
                                                     _g42192_)))
                                        (let ((_target3372033761_
                                               (##vector-ref _g42191_ 0))
                                              (_tl3372233764_
                                               (##vector-ref _g42191_ 1)))
                                          (if (gx#stx-null? _tl3372233764_)
                                              (letrec ((_loop3372333767_
                                                        (lambda (_hd3372133771_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _body3372733774_)
                  (if (gx#stx-pair? _hd3372133771_)
                      (let ((_e3372433777_ (gx#syntax-e _hd3372133771_)))
                        (let ((_lp-hd3372533781_ (##car _e3372433777_))
                              (_lp-tl3372633784_ (##cdr _e3372433777_)))
                          (_loop3372333767_
                           _lp-tl3372633784_
                           (cons _lp-hd3372533781_ _body3372733774_))))
                      (let ((_body3372833787_ (reverse _body3372733774_)))
                        ((lambda (_L33791_ _L33793_)
                           (if (gx#identifier? _L33793_)
                               (cons (gx#datum->syntax '#f 'call/esc)
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons (cons _L33793_ '())
                                                       (foldr (lambda (_g3381033813_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g3381133816_)
                        (cons _g3381033813_ _g3381133816_))
                      '()
                      _L33791_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))
                               (_g3371033734_ _g3371133738_)))
                         _body3372833787_
                         _hd3371833755_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop3372333767_
                                                 _target3372033761_
                                                 '()))
                                              (_g3371033734_ _g3371133738_)))))
                                    (_g3371033734_ _g3371133738_))))
                            (_g3371033734_ _g3371133738_))))
                    (_g3371033734_ _g3371133738_)))))
        (_g3370933819_ _$stx33706_))))
  (define |gerbil/core$<more-sugar>[:0:]#unwind-protect|
    (lambda (_$stx33824_)
      (let* ((_g3382833856_
              (lambda (_g3382933852_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3382933852_)))
             (_g3382733955_
              (lambda (_g3382933860_)
                (if (gx#stx-pair? _g3382933860_)
                    (let ((_e3383333863_ (gx#syntax-e _g3382933860_)))
                      (let ((_hd3383433867_ (##car _e3383333863_))
                            (_tl3383533870_ (##cdr _e3383333863_)))
                        (if (gx#stx-pair? _tl3383533870_)
                            (let ((_e3383633873_ (gx#syntax-e _tl3383533870_)))
                              (let ((_hd3383733877_ (##car _e3383633873_))
                                    (_tl3383833880_ (##cdr _e3383633873_)))
                                (if (gx#stx-pair? _tl3383833880_)
                                    (let ((_e3383933883_
                                           (gx#syntax-e _tl3383833880_)))
                                      (let ((_hd3384033887_
                                             (##car _e3383933883_))
                                            (_tl3384133890_
                                             (##cdr _e3383933883_)))
                                        (if (gx#stx-pair/null? _tl3384133890_)
                                            (let ((_g42193_
                                                   (gx#syntax-split-splice
                                                    _tl3384133890_
                                                    '0)))
                                              (begin
                                                (let ((_g42194_
                                                       (if (##values? _g42193_)
                                                           (##vector-length
                                                            _g42193_)
                                                           1)))
                                                  (if (not (##fx= _g42194_ 2))
                                                      (error "Context expects 2 values"
                                                             _g42194_)))
                                                (let ((_target3384233893_
                                                       (##vector-ref
                                                        _g42193_
                                                        0))
                                                      (_tl3384433896_
                                                       (##vector-ref
                                                        _g42193_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl3384433896_)
                                                      (letrec ((_loop3384533899_
                                                                (lambda (_hd3384333903_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _rest3384933906_)
                          (if (gx#stx-pair? _hd3384333903_)
                              (let ((_e3384633909_
                                     (gx#syntax-e _hd3384333903_)))
                                (let ((_lp-hd3384733913_ (##car _e3384633909_))
                                      (_lp-tl3384833916_
                                       (##cdr _e3384633909_)))
                                  (_loop3384533899_
                                   _lp-tl3384833916_
                                   (cons _lp-hd3384733913_ _rest3384933906_))))
                              (let ((_rest3385033919_
                                     (reverse _rest3384933906_)))
                                ((lambda (_L33923_ _L33925_ _L33926_)
                                   (cons (gx#datum->syntax
                                          '#f
                                          'with-unwind-protect)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons '()
                                                           (cons _L33926_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda)
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L33925_
                               (foldr (lambda (_g3394633949_ _g3394733952_)
                                        (cons _g3394633949_ _g3394733952_))
                                      '()
                                      _L33923_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                                 _rest3385033919_
                                 _hd3384033887_
                                 _hd3383733877_))))))
                (_loop3384533899_ _target3384233893_ '()))
              (_g3382833856_ _g3382933860_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g3382833856_ _g3382933860_))))
                                    (_g3382833856_ _g3382933860_))))
                            (_g3382833856_ _g3382933860_))))
                    (_g3382833856_ _g3382933860_)))))
        (_g3382733955_ _$stx33824_)))))
