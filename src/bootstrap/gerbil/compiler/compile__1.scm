(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g16697_|
    (##structure
     gx#syntax-quote::t
     'meta-state::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16698_|
    (##structure
     gx#syntax-quote::t
     'make-meta-state
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16699_|
    (##structure
     gx#syntax-quote::t
     'meta-state?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16700_|
    (##structure
     gx#syntax-quote::t
     'meta-state-src
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16701_|
    (##structure
     gx#syntax-quote::t
     'meta-state-n
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16702_|
    (##structure
     gx#syntax-quote::t
     'meta-state-open
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16703_|
    (##structure
     gx#syntax-quote::t
     'meta-state-blocks
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16704_|
    (##structure
     gx#syntax-quote::t
     'meta-state-src-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16705_|
    (##structure
     gx#syntax-quote::t
     'meta-state-n-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16706_|
    (##structure
     gx#syntax-quote::t
     'meta-state-open-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16707_|
    (##structure
     gx#syntax-quote::t
     'meta-state-blocks-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16708_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16709_|
    (##structure
     gx#syntax-quote::t
     'make-meta-state-block
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16710_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16711_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-ctx
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16712_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-phi
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16713_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-n
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16714_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-code
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16715_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-ctx-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16716_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-phi-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16717_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-n-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16718_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-code-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#defcompile-method|
      (lambda (_$stx4767_)
        (let* ((___stx1536015361_ _$stx4767_)
               (_g47734853_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx1536015361_))))
          (let ((___kont1536315364_
                 (lambda (_L5150_ _L5152_ _L5153_ _L5154_)
                   (cons _L5154_
                         (cons _L5153_ (cons (cons _L5152_ '()) _L5150_)))))
                (___kont1536515366_
                 (lambda (_L5062_ _L5064_ _L5065_ _L5066_)
                   (cons (gx#datum->syntax__0 '#f 'define)
                         (cons _L5066_
                               (cons (cons (gx#datum->syntax__0 '#f 'delay)
                                           (cons (cons (gx#datum->syntax__0
                                                        '#f
                                                        'let)
                                                       (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'tbl)
                           (cons (cons (gx#datum->syntax__0
                                        '#f
                                        'make-hash-table-eq)
                                       '())
                                 '()))
                     (foldr1 (lambda (_g50935099_ _g50945102_)
                               (cons (cons (gx#datum->syntax__0
                                            '#f
                                            'hash-copy!)
                                           (cons (gx#datum->syntax__0 '#f 'tbl)
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              'force)
                                                             (cons _g50935099_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _g50945102_))
                             (begin
                               (gx#syntax-check-splice-targets _L5062_ _L5064_)
                               (foldr2 (lambda (_g50955105_
                                                _g50965108_
                                                _g50975110_)
                                         (cons (cons (gx#datum->syntax__0
                                                      '#f
                                                      'hash-put!)
                                                     (cons (gx#datum->syntax__0
                                                            '#f
                                                            'tbl)
                                                           (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote)
                               (cons _g50965108_ '()))
                         (cons _g50955105_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g50975110_))
                                       (cons (gx#datum->syntax__0 '#f 'tbl)
                                             '())
                                       _L5062_
                                       _L5064_))
                             _L5065_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())))))
                (___kont1537115372_
                 (lambda (_L4900_ _L4902_ _L4903_ _L4904_ _L4905_)
                   (cons (gx#datum->syntax__0 '#f 'begin)
                         (cons (cons _L4905_
                                     (cons '#f
                                           (cons (cons _L4903_ _L4902_)
                                                 _L4900_)))
                               (cons (cons (gx#datum->syntax__0 '#f 'define)
                                           (cons (cons _L4904_
                                                       (cons (gx#datum->syntax__0
                                                              '#f
                                                              'stx)
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'args)))
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              'parameterize)
                                                             (cons (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        '#f
                                        'current-compile-methods)
                                       (cons (cons (gx#datum->syntax__0
                                                    '#f
                                                    'force)
                                                   (cons _L4903_ '()))
                                             '()))
                                 '())
                           (cons (cons (gx#datum->syntax__0 '#f 'apply)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'compile-e)
                                             (cons (gx#datum->syntax__0
                                                    '#f
                                                    'stx)
                                                   (cons (gx#datum->syntax__0
                                                          '#f
                                                          'args)
                                                         '()))))
                                 '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((___match1545315454_
                    (lambda (_e48364860_
                             _hd48374864_
                             _tl48384867_
                             _e48394870_
                             _hd48404874_
                             _tl48414877_
                             _e48424880_
                             _hd48434884_
                             _tl48444887_
                             _e48454890_
                             _hd48464894_
                             _tl48474897_)
                      (let ((_L4900_ _tl48444887_)
                            (_L4902_ _tl48474897_)
                            (_L4903_ _hd48464894_)
                            (_L4904_ _hd48404874_)
                            (_L4905_ _hd48374864_))
                        (if (gx#identifier? _L4904_)
                            (___kont1537115372_
                             _L4900_
                             _L4902_
                             _L4903_
                             _L4904_
                             _L4905_)
                            (_g47734853_)))))
                   (___match1542915430_
                    (lambda (_e47924934_
                             _hd47934938_
                             _tl47944941_
                             _e47954944_
                             _hd47964948_
                             _tl47974951_
                             _e47984954_
                             _e47994958_
                             _hd48004962_
                             _tl48014965_
                             _e48024968_
                             _hd48034972_
                             _tl48044975_
                             ___splice1536715368_
                             _target48054978_
                             _tl48074981_)
                      (letrec ((_loop48084984_
                                (lambda (_hd48064988_ _super48124991_)
                                  (if (gx#stx-pair? _hd48064988_)
                                      (let ((_e48094994_
                                             (gx#syntax-e _hd48064988_)))
                                        (let ((_lp-tl48115001_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e48094994_)))
                                              (_lp-hd48104998_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e48094994_))))
                                          (_loop48084984_
                                           _lp-tl48115001_
                                           (cons _lp-hd48104998_
                                                 _super48124991_))))
                                      (let ((_super48135004_
                                             (reverse _super48124991_)))
                                        (if (gx#stx-pair/null? _tl48014965_)
                                            (let ((___splice1536915370_
                                                   (gx#syntax-split-splice
                                                    _tl48014965_
                                                    '0)))
                                              (let ((_tl48165011_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice1536915370_
                                                        '1)))
                                                    (_target48145008_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice1536915370_
                                                        '0))))
                                                (if (gx#stx-null? _tl48165011_)
                                                    (letrec ((_loop48175014_
                                                              (lambda (_hd48155018_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _method48215021_
                               _symbol48225023_)
                        (if (gx#stx-pair? _hd48155018_)
                            (let ((_e48185026_ (gx#syntax-e _hd48155018_)))
                              (let ((_lp-tl48205033_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e48185026_)))
                                    (_lp-hd48195030_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e48185026_))))
                                (if (gx#stx-pair? _lp-hd48195030_)
                                    (let ((_e48255036_
                                           (gx#syntax-e _lp-hd48195030_)))
                                      (let ((_tl48275043_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e48255036_)))
                                            (_hd48265040_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e48255036_))))
                                        (if (gx#stx-pair? _tl48275043_)
                                            (let ((_e48285046_
                                                   (gx#syntax-e _tl48275043_)))
                                              (let ((_tl48305053_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e48285046_)))
                                                    (_hd48295050_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e48285046_))))
                                                (if (gx#stx-null? _tl48305053_)
                                                    (_loop48175014_
                                                     _lp-tl48205033_
                                                     (cons _hd48295050_
                                                           _method48215021_)
                                                     (cons _hd48265040_
                                                           _symbol48225023_))
                                                    (___match1545315454_
                                                     _e47924934_
                                                     _hd47934938_
                                                     _tl47944941_
                                                     _e47954944_
                                                     _hd47964948_
                                                     _tl47974951_
                                                     _e47994958_
                                                     _hd48004962_
                                                     _tl48014965_
                                                     _e48024968_
                                                     _hd48034972_
                                                     _tl48044975_))))
                                            (___match1545315454_
                                             _e47924934_
                                             _hd47934938_
                                             _tl47944941_
                                             _e47954944_
                                             _hd47964948_
                                             _tl47974951_
                                             _e47994958_
                                             _hd48004962_
                                             _tl48014965_
                                             _e48024968_
                                             _hd48034972_
                                             _tl48044975_))))
                                    (___match1545315454_
                                     _e47924934_
                                     _hd47934938_
                                     _tl47944941_
                                     _e47954944_
                                     _hd47964948_
                                     _tl47974951_
                                     _e47994958_
                                     _hd48004962_
                                     _tl48014965_
                                     _e48024968_
                                     _hd48034972_
                                     _tl48044975_))))
                            (let ((_symbol48245059_ (reverse _symbol48225023_))
                                  (_method48235056_
                                   (reverse _method48215021_)))
                              (___kont1536515366_
                               _method48235056_
                               _symbol48245059_
                               _super48135004_
                               _hd48034972_))))))
              (_loop48175014_ _target48145008_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match1545315454_
                                                     _e47924934_
                                                     _hd47934938_
                                                     _tl47944941_
                                                     _e47954944_
                                                     _hd47964948_
                                                     _tl47974951_
                                                     _e47994958_
                                                     _hd48004962_
                                                     _tl48014965_
                                                     _e48024968_
                                                     _hd48034972_
                                                     _tl48044975_))))
                                            (___match1545315454_
                                             _e47924934_
                                             _hd47934938_
                                             _tl47944941_
                                             _e47954944_
                                             _hd47964948_
                                             _tl47974951_
                                             _e47994958_
                                             _hd48004962_
                                             _tl48014965_
                                             _e48024968_
                                             _hd48034972_
                                             _tl48044975_)))))))
                        (_loop48084984_ _target48054978_ '()))))
                   (___match1539115392_
                    (lambda (_e47795120_
                             _hd47805124_
                             _tl47815127_
                             _e47825130_
                             _hd47835134_
                             _tl47845137_
                             _e47855140_
                             _hd47865144_
                             _tl47875147_)
                      (let ((_L5150_ _tl47875147_)
                            (_L5152_ _hd47865144_)
                            (_L5153_ _hd47835134_)
                            (_L5154_ _hd47805124_))
                        (if (gx#identifier? _L5152_)
                            (___kont1536315364_
                             _L5150_
                             _L5152_
                             _L5153_
                             _L5154_)
                            (if (gx#stx-datum? _hd47835134_)
                                (let ((_e47984954_ (gx#stx-e _hd47835134_)))
                                  (if (equal? _e47984954_ '#f)
                                      (if (gx#stx-pair? _hd47865144_)
                                          (let ((_e48024968_
                                                 (gx#syntax-e _hd47865144_)))
                                            (let ((_tl48044975_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e48024968_)))
                                                  (_hd48034972_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e48024968_))))
                                              (if (gx#stx-pair/null?
                                                   _tl48044975_)
                                                  (let ((___splice1536715368_
                                                         (gx#syntax-split-splice
                                                          _tl48044975_
                                                          '0)))
                                                    (let ((_tl48074981_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice1536715368_
                                                              '1)))
                                                          (_target48054978_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice1536715368_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl48074981_)
                                                          (___match1542915430_
                                                           _e47795120_
                                                           _hd47805124_
                                                           _tl47815127_
                                                           _e47825130_
                                                           _hd47835134_
                                                           _tl47845137_
                                                           _e47984954_
                                                           _e47855140_
                                                           _hd47865144_
                                                           _tl47875147_
                                                           _e48024968_
                                                           _hd48034972_
                                                           _tl48044975_
                                                           ___splice1536715368_
                                                           _target48054978_
                                                           _tl48074981_)
                                                          (___match1545315454_
                                                           _e47795120_
                                                           _hd47805124_
                                                           _tl47815127_
                                                           _e47825130_
                                                           _hd47835134_
                                                           _tl47845137_
                                                           _e47855140_
                                                           _hd47865144_
                                                           _tl47875147_
                                                           _e48024968_
                                                           _hd48034972_
                                                           _tl48044975_))))
                                                  (___match1545315454_
                                                   _e47795120_
                                                   _hd47805124_
                                                   _tl47815127_
                                                   _e47825130_
                                                   _hd47835134_
                                                   _tl47845137_
                                                   _e47855140_
                                                   _hd47865144_
                                                   _tl47875147_
                                                   _e48024968_
                                                   _hd48034972_
                                                   _tl48044975_))))
                                          (_g47734853_))
                                      (if (gx#stx-pair? _hd47865144_)
                                          (let ((_e48454890_
                                                 (gx#syntax-e _hd47865144_)))
                                            (let ((_tl48474897_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e48454890_)))
                                                  (_hd48464894_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e48454890_))))
                                              (___match1545315454_
                                               _e47795120_
                                               _hd47805124_
                                               _tl47815127_
                                               _e47825130_
                                               _hd47835134_
                                               _tl47845137_
                                               _e47855140_
                                               _hd47865144_
                                               _tl47875147_
                                               _e48454890_
                                               _hd48464894_
                                               _tl48474897_)))
                                          (_g47734853_))))
                                (if (gx#stx-pair? _hd47865144_)
                                    (let ((_e48454890_
                                           (gx#syntax-e _hd47865144_)))
                                      (let ((_tl48474897_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e48454890_)))
                                            (_hd48464894_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e48454890_))))
                                        (___match1545315454_
                                         _e47795120_
                                         _hd47805124_
                                         _tl47815127_
                                         _e47825130_
                                         _hd47835134_
                                         _tl47845137_
                                         _e47855140_
                                         _hd47865144_
                                         _tl47875147_
                                         _e48454890_
                                         _hd48464894_
                                         _tl48474897_)))
                                    (_g47734853_))))))))
              (if (gx#stx-pair? ___stx1536015361_)
                  (let ((_e47795120_ (gx#syntax-e ___stx1536015361_)))
                    (let ((_tl47815127_
                           (let () (declare (not safe)) (##cdr _e47795120_)))
                          (_hd47805124_
                           (let () (declare (not safe)) (##car _e47795120_))))
                      (if (gx#stx-pair? _tl47815127_)
                          (let ((_e47825130_ (gx#syntax-e _tl47815127_)))
                            (let ((_tl47845137_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e47825130_)))
                                  (_hd47835134_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e47825130_))))
                              (if (gx#stx-pair? _tl47845137_)
                                  (let ((_e47855140_
                                         (gx#syntax-e _tl47845137_)))
                                    (let ((_tl47875147_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e47855140_)))
                                          (_hd47865144_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e47855140_))))
                                      (___match1539115392_
                                       _e47795120_
                                       _hd47805124_
                                       _tl47815127_
                                       _e47825130_
                                       _hd47835134_
                                       _tl47845137_
                                       _e47855140_
                                       _hd47865144_
                                       _tl47875147_)))
                                  (if (gx#stx-datum? _hd47835134_)
                                      (let ((_e47984954_
                                             (gx#stx-e _hd47835134_)))
                                        (_g47734853_))
                                      (_g47734853_)))))
                          (_g47734853_))))
                  (_g47734853_)))))))
    (define |gxc[:0:]#with-primitive-bind+args|
      (lambda (_$stx5177_)
        (let* ((_g51815216_
                (lambda (_g51825212_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g51825212_)))
               (_g51805341_
                (lambda (_g51825220_)
                  (if (gx#stx-pair? _g51825220_)
                      (let ((_e51875223_ (gx#syntax-e _g51825220_)))
                        (let ((_hd51885227_
                               (let ()
                                 (declare (not safe))
                                 (##car _e51875223_)))
                              (_tl51895230_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e51875223_))))
                          (if (gx#stx-pair? _tl51895230_)
                              (let ((_e51905233_ (gx#syntax-e _tl51895230_)))
                                (let ((_hd51915237_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e51905233_)))
                                      (_tl51925240_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e51905233_))))
                                  (if (gx#stx-pair? _hd51915237_)
                                      (let ((_e51935243_
                                             (gx#syntax-e _hd51915237_)))
                                        (let ((_hd51945247_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e51935243_)))
                                              (_tl51955250_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e51935243_))))
                                          (if (gx#stx-pair? _tl51955250_)
                                              (let ((_e51965253_
                                                     (gx#syntax-e
                                                      _tl51955250_)))
                                                (let ((_hd51975257_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e51965253_)))
                                                      (_tl51985260_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e51965253_))))
                                                  (if (gx#stx-pair?
                                                       _tl51985260_)
                                                      (let ((_e51995263_
                                                             (gx#syntax-e
                                                              _tl51985260_)))
                                                        (let ((_hd52005267_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e51995263_)))
                      (_tl52015270_
                       (let () (declare (not safe)) (##cdr _e51995263_))))
                  (if (gx#stx-null? _tl52015270_)
                      (if (gx#stx-pair/null? _tl51925240_)
                          (let ((_g16695_
                                 (gx#syntax-split-splice _tl51925240_ '0)))
                            (begin
                              (let ((_g16696_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g16695_)
                                           (##vector-length _g16695_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g16696_ 2)))
                                    (error "Context expects 2 values"
                                           _g16696_)))
                              (let ((_target52025273_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g16695_ 0)))
                                    (_tl52045276_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g16695_ 1))))
                                (if (gx#stx-null? _tl52045276_)
                                    (letrec ((_loop52055279_
                                              (lambda (_hd52035283_
                                                       _body52095286_)
                                                (if (gx#stx-pair? _hd52035283_)
                                                    (let ((_e52065289_
                                                           (gx#syntax-e
                                                            _hd52035283_)))
                                                      (let ((_lp-hd52075293_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e52065289_)))
                    (_lp-tl52085296_
                     (let () (declare (not safe)) (##cdr _e52065289_))))
                (_loop52055279_
                 _lp-tl52085296_
                 (cons _lp-hd52075293_ _body52095286_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_body52105299_
                                                           (reverse _body52095286_)))
                                                      ((lambda (_L5303_
                                                                _L5305_
                                                                _L5306_
                                                                _L5307_)
                                                         (cons (gx#datum->syntax__0
                                                                '#f
                                                                'let)
                                                               (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lp)
                             (cons (cons (cons (gx#datum->syntax__0 '#f 'rest)
                                               (cons _L5305_ '()))
                                         (cons (cons _L5307_
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '@list)
                         '())
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons _L5306_
                                                           (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '@list)
                               '())
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   (cons (cons (gx#datum->syntax__0 '#f 'match)
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      'rest)
                                                     (cons (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '@list)
                               (cons (gx#datum->syntax__0 '#f 'e)
                                     (gx#datum->syntax__0 '#f 'rest)))
                         (cons (cons (gx#datum->syntax__0 '#f 'ast-case)
                                     (cons (gx#datum->syntax__0 '#f 'e)
                                           (cons (cons (gx#datum->syntax__0
                                                        '#f
                                                        '%#quote)
                                                       (cons (gx#datum->syntax__0
                                                              '#f
                                                              '%#ref)
                                                             '()))
                                                 (cons (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '%#ref)
                           (cons (gx#datum->syntax__0 '#f '_) '()))
                     (cons (cons (gx#datum->syntax__0 '#f 'lp)
                                 (cons (gx#datum->syntax__0 '#f 'rest)
                                       (cons _L5307_
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'cons)
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'compile-e)
                             (cons (gx#datum->syntax__0 '#f 'e) '()))
                       (cons _L5306_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))
               (cons (cons (cons (gx#datum->syntax__0 '#f '%#quote)
                                 (cons (gx#datum->syntax__0 '#f '_) '()))
                           (cons (cons (gx#datum->syntax__0 '#f 'lp)
                                       (cons (gx#datum->syntax__0 '#f 'rest)
                                             (cons _L5307_
                                                   (cons (cons (gx#datum->syntax__0
                                                                '#f
                                                                'cons)
                                                               (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'compile-e)
                                   (cons (gx#datum->syntax__0 '#f 'e) '()))
                             (cons _L5306_ '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     (cons (cons (gx#datum->syntax__0 '#f '_)
                                 (cons (cons (gx#datum->syntax__0 '#f 'let)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'tmp)
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'make-symbol)
                             (cons (cons (gx#datum->syntax__0 '#f 'gensym)
                                         (cons (cons (gx#datum->syntax__0
                                                      '#f
                                                      'quote)
                                                     (cons (gx#datum->syntax__0
                                                            '#f
                                                            '__tmp)
                                                           '()))
                                               '()))
                                   '()))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax__0
                                                                '#f
                                                                'lp)
                                                               (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'rest)
                             (cons (cons (gx#datum->syntax__0 '#f 'cons)
                                         (cons (cons (gx#datum->syntax__0
                                                      '#f
                                                      '@list)
                                                     (cons (gx#datum->syntax__0
                                                            '#f
                                                            'tmp)
                                                           (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'compile-e)
                               (cons (gx#datum->syntax__0 '#f 'e) '()))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _L5307_ '())))
                                   (cons (cons (gx#datum->syntax__0 '#f 'cons)
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      'tmp)
                                                     (cons _L5306_ '())))
                                         '()))))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               '()))
                   (cons (cons (gx#datum->syntax__0 '#f 'else)
                               (foldr1 (lambda (_g53325335_ _g53335338_)
                                         (cons _g53325335_ _g53335338_))
                                       '()
                                       _L5303_))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))))
               _body52105299_
               _hd52005267_
               _hd51975257_
               _hd51945247_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop52055279_ _target52025273_ '()))
                                    (_g51815216_ _g51825220_)))))
                          (_g51815216_ _g51825220_))
                      (_g51815216_ _g51825220_))))
              (_g51815216_ _g51825220_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g51815216_ _g51825220_))))
                                      (_g51815216_ _g51825220_))))
                              (_g51815216_ _g51825220_))))
                      (_g51815216_ _g51825220_)))))
          (_g51805341_ _$stx5177_))))
    (define |gxc[:0:]#with-inline-unsafe-primitives|
      (lambda (_$stx5346_)
        (let* ((_g53505368_
                (lambda (_g53515364_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g53515364_)))
               (_g53495423_
                (lambda (_g53515372_)
                  (if (gx#stx-pair? _g53515372_)
                      (let ((_e53545375_ (gx#syntax-e _g53515372_)))
                        (let ((_hd53555379_
                               (let ()
                                 (declare (not safe))
                                 (##car _e53545375_)))
                              (_tl53565382_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e53545375_))))
                          (if (gx#stx-pair? _tl53565382_)
                              (let ((_e53575385_ (gx#syntax-e _tl53565382_)))
                                (let ((_hd53585389_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e53575385_)))
                                      (_tl53595392_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e53575385_))))
                                  (if (gx#stx-pair? _tl53595392_)
                                      (let ((_e53605395_
                                             (gx#syntax-e _tl53595392_)))
                                        (let ((_hd53615399_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e53605395_)))
                                              (_tl53625402_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e53605395_))))
                                          (if (gx#stx-null? _tl53625402_)
                                              ((lambda (_L5405_ _L5407_)
                                                 (cons (gx#datum->syntax__0
                                                        '#f
                                                        'cond-expand)
                                                       (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'gambit-inline-unsafe-primitives)
                           (cons _L5407_ '()))
                     (cons (cons (gx#datum->syntax__0 '#f 'else)
                                 (cons (cons (gx#datum->syntax__0 '#f 'if)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'current-compile-decls-unsafe?)
                                                         '())
                                                   (cons _L5407_
                                                         (cons _L5405_ '()))))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd53615399_
                                               _hd53585389_)
                                              (_g53505368_ _g53515372_))))
                                      (_g53505368_ _g53515372_))))
                              (_g53505368_ _g53515372_))))
                      (_g53505368_ _g53515372_)))))
          (_g53495423_ _$stx5346_))))
    (define |gxc[:0:]#meta-state|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g16697_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g16697_|
                   (cons |gxc[1]#_g16698_|
                         (cons |gxc[1]#_g16699_|
                               (cons (cons |gxc[1]#_g16700_|
                                           (cons |gxc[1]#_g16701_|
                                                 (cons |gxc[1]#_g16702_|
                                                       (cons |gxc[1]#_g16703_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g16704_|
                                                 (cons |gxc[1]#_g16705_|
                                                       (cons |gxc[1]#_g16706_|
                                                             (cons |gxc[1]#_g16707_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gxc#meta-state::t
        '#f
        'meta-state
        ':init!
        '()
        '(src n open blocks))))
    (define |gxc[:0:]#meta-state-block|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g16708_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g16708_|
                   (cons |gxc[1]#_g16709_|
                         (cons |gxc[1]#_g16710_|
                               (cons (cons |gxc[1]#_g16711_|
                                           (cons |gxc[1]#_g16712_|
                                                 (cons |gxc[1]#_g16713_|
                                                       (cons |gxc[1]#_g16714_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g16715_|
                                                 (cons |gxc[1]#_g16716_|
                                                       (cons |gxc[1]#_g16717_|
                                                             (cons |gxc[1]#_g16718_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gxc#meta-state-block::t
        '#f
        'meta-state-block
        '#f
        '()
        '(ctx phi n code))))))
