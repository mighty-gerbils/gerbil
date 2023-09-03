(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g16716_|
    (##structure
     gx#syntax-quote::t
     'meta-state::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16717_|
    (##structure
     gx#syntax-quote::t
     'make-meta-state
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16718_|
    (##structure
     gx#syntax-quote::t
     'meta-state?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16719_|
    (##structure
     gx#syntax-quote::t
     'meta-state-src
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16720_|
    (##structure
     gx#syntax-quote::t
     'meta-state-n
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16721_|
    (##structure
     gx#syntax-quote::t
     'meta-state-open
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16722_|
    (##structure
     gx#syntax-quote::t
     'meta-state-blocks
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16723_|
    (##structure
     gx#syntax-quote::t
     'meta-state-src-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16724_|
    (##structure
     gx#syntax-quote::t
     'meta-state-n-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16725_|
    (##structure
     gx#syntax-quote::t
     'meta-state-open-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16726_|
    (##structure
     gx#syntax-quote::t
     'meta-state-blocks-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16727_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16728_|
    (##structure
     gx#syntax-quote::t
     'make-meta-state-block
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16729_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16730_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-ctx
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16731_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-phi
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16732_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-n
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16733_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-code
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16734_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-ctx-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16735_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-phi-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16736_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-n-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g16737_|
    (##structure
     gx#syntax-quote::t
     'meta-state-block-code-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#defcompile-method|
      (lambda (_$stx4786_)
        (let* ((___stx1537915380_ _$stx4786_)
               (_g47924872_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx1537915380_))))
          (let ((___kont1538215383_
                 (lambda (_L5169_ _L5171_ _L5172_ _L5173_)
                   (cons _L5173_
                         (cons _L5172_ (cons (cons _L5171_ '()) _L5169_)))))
                (___kont1538415385_
                 (lambda (_L5081_ _L5083_ _L5084_ _L5085_)
                   (cons (gx#datum->syntax__0 '#f 'define)
                         (cons _L5085_
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
                     (foldr1 (lambda (_g51125118_ _g51135121_)
                               (cons (cons (gx#datum->syntax__0
                                            '#f
                                            'hash-copy!)
                                           (cons (gx#datum->syntax__0 '#f 'tbl)
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              'force)
                                                             (cons _g51125118_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _g51135121_))
                             (begin
                               (gx#syntax-check-splice-targets _L5081_ _L5083_)
                               (foldr2 (lambda (_g51145124_
                                                _g51155127_
                                                _g51165129_)
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
                               (cons _g51155127_ '()))
                         (cons _g51145124_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g51165129_))
                                       (cons (gx#datum->syntax__0 '#f 'tbl)
                                             '())
                                       _L5081_
                                       _L5083_))
                             _L5084_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())))))
                (___kont1539015391_
                 (lambda (_L4919_ _L4921_ _L4922_ _L4923_ _L4924_)
                   (cons (gx#datum->syntax__0 '#f 'begin)
                         (cons (cons _L4924_
                                     (cons '#f
                                           (cons (cons _L4922_ _L4921_)
                                                 _L4919_)))
                               (cons (cons (gx#datum->syntax__0 '#f 'define)
                                           (cons (cons _L4923_
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
                                                   (cons _L4922_ '()))
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
            (let* ((___match1547215473_
                    (lambda (_e48554879_
                             _hd48564883_
                             _tl48574886_
                             _e48584889_
                             _hd48594893_
                             _tl48604896_
                             _e48614899_
                             _hd48624903_
                             _tl48634906_
                             _e48644909_
                             _hd48654913_
                             _tl48664916_)
                      (let ((_L4919_ _tl48634906_)
                            (_L4921_ _tl48664916_)
                            (_L4922_ _hd48654913_)
                            (_L4923_ _hd48594893_)
                            (_L4924_ _hd48564883_))
                        (if (gx#identifier? _L4923_)
                            (___kont1539015391_
                             _L4919_
                             _L4921_
                             _L4922_
                             _L4923_
                             _L4924_)
                            (_g47924872_)))))
                   (___match1544815449_
                    (lambda (_e48114953_
                             _hd48124957_
                             _tl48134960_
                             _e48144963_
                             _hd48154967_
                             _tl48164970_
                             _e48174973_
                             _e48184977_
                             _hd48194981_
                             _tl48204984_
                             _e48214987_
                             _hd48224991_
                             _tl48234994_
                             ___splice1538615387_
                             _target48244997_
                             _tl48265000_)
                      (letrec ((_loop48275003_
                                (lambda (_hd48255007_ _super48315010_)
                                  (if (gx#stx-pair? _hd48255007_)
                                      (let ((_e48285013_
                                             (gx#syntax-e _hd48255007_)))
                                        (let ((_lp-tl48305020_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e48285013_)))
                                              (_lp-hd48295017_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e48285013_))))
                                          (_loop48275003_
                                           _lp-tl48305020_
                                           (cons _lp-hd48295017_
                                                 _super48315010_))))
                                      (let ((_super48325023_
                                             (reverse _super48315010_)))
                                        (if (gx#stx-pair/null? _tl48204984_)
                                            (let ((___splice1538815389_
                                                   (gx#syntax-split-splice
                                                    _tl48204984_
                                                    '0)))
                                              (let ((_tl48355030_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice1538815389_
                                                        '1)))
                                                    (_target48335027_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice1538815389_
                                                        '0))))
                                                (if (gx#stx-null? _tl48355030_)
                                                    (letrec ((_loop48365033_
                                                              (lambda (_hd48345037_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _method48405040_
                               _symbol48415042_)
                        (if (gx#stx-pair? _hd48345037_)
                            (let ((_e48375045_ (gx#syntax-e _hd48345037_)))
                              (let ((_lp-tl48395052_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e48375045_)))
                                    (_lp-hd48385049_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e48375045_))))
                                (if (gx#stx-pair? _lp-hd48385049_)
                                    (let ((_e48445055_
                                           (gx#syntax-e _lp-hd48385049_)))
                                      (let ((_tl48465062_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e48445055_)))
                                            (_hd48455059_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e48445055_))))
                                        (if (gx#stx-pair? _tl48465062_)
                                            (let ((_e48475065_
                                                   (gx#syntax-e _tl48465062_)))
                                              (let ((_tl48495072_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e48475065_)))
                                                    (_hd48485069_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e48475065_))))
                                                (if (gx#stx-null? _tl48495072_)
                                                    (_loop48365033_
                                                     _lp-tl48395052_
                                                     (cons _hd48485069_
                                                           _method48405040_)
                                                     (cons _hd48455059_
                                                           _symbol48415042_))
                                                    (___match1547215473_
                                                     _e48114953_
                                                     _hd48124957_
                                                     _tl48134960_
                                                     _e48144963_
                                                     _hd48154967_
                                                     _tl48164970_
                                                     _e48184977_
                                                     _hd48194981_
                                                     _tl48204984_
                                                     _e48214987_
                                                     _hd48224991_
                                                     _tl48234994_))))
                                            (___match1547215473_
                                             _e48114953_
                                             _hd48124957_
                                             _tl48134960_
                                             _e48144963_
                                             _hd48154967_
                                             _tl48164970_
                                             _e48184977_
                                             _hd48194981_
                                             _tl48204984_
                                             _e48214987_
                                             _hd48224991_
                                             _tl48234994_))))
                                    (___match1547215473_
                                     _e48114953_
                                     _hd48124957_
                                     _tl48134960_
                                     _e48144963_
                                     _hd48154967_
                                     _tl48164970_
                                     _e48184977_
                                     _hd48194981_
                                     _tl48204984_
                                     _e48214987_
                                     _hd48224991_
                                     _tl48234994_))))
                            (let ((_symbol48435078_ (reverse _symbol48415042_))
                                  (_method48425075_
                                   (reverse _method48405040_)))
                              (___kont1538415385_
                               _method48425075_
                               _symbol48435078_
                               _super48325023_
                               _hd48224991_))))))
              (_loop48365033_ _target48335027_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match1547215473_
                                                     _e48114953_
                                                     _hd48124957_
                                                     _tl48134960_
                                                     _e48144963_
                                                     _hd48154967_
                                                     _tl48164970_
                                                     _e48184977_
                                                     _hd48194981_
                                                     _tl48204984_
                                                     _e48214987_
                                                     _hd48224991_
                                                     _tl48234994_))))
                                            (___match1547215473_
                                             _e48114953_
                                             _hd48124957_
                                             _tl48134960_
                                             _e48144963_
                                             _hd48154967_
                                             _tl48164970_
                                             _e48184977_
                                             _hd48194981_
                                             _tl48204984_
                                             _e48214987_
                                             _hd48224991_
                                             _tl48234994_)))))))
                        (_loop48275003_ _target48244997_ '()))))
                   (___match1541015411_
                    (lambda (_e47985139_
                             _hd47995143_
                             _tl48005146_
                             _e48015149_
                             _hd48025153_
                             _tl48035156_
                             _e48045159_
                             _hd48055163_
                             _tl48065166_)
                      (let ((_L5169_ _tl48065166_)
                            (_L5171_ _hd48055163_)
                            (_L5172_ _hd48025153_)
                            (_L5173_ _hd47995143_))
                        (if (gx#identifier? _L5171_)
                            (___kont1538215383_
                             _L5169_
                             _L5171_
                             _L5172_
                             _L5173_)
                            (if (gx#stx-datum? _hd48025153_)
                                (let ((_e48174973_ (gx#stx-e _hd48025153_)))
                                  (if (equal? _e48174973_ '#f)
                                      (if (gx#stx-pair? _hd48055163_)
                                          (let ((_e48214987_
                                                 (gx#syntax-e _hd48055163_)))
                                            (let ((_tl48234994_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e48214987_)))
                                                  (_hd48224991_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e48214987_))))
                                              (if (gx#stx-pair/null?
                                                   _tl48234994_)
                                                  (let ((___splice1538615387_
                                                         (gx#syntax-split-splice
                                                          _tl48234994_
                                                          '0)))
                                                    (let ((_tl48265000_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice1538615387_
                                                              '1)))
                                                          (_target48244997_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice1538615387_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl48265000_)
                                                          (___match1544815449_
                                                           _e47985139_
                                                           _hd47995143_
                                                           _tl48005146_
                                                           _e48015149_
                                                           _hd48025153_
                                                           _tl48035156_
                                                           _e48174973_
                                                           _e48045159_
                                                           _hd48055163_
                                                           _tl48065166_
                                                           _e48214987_
                                                           _hd48224991_
                                                           _tl48234994_
                                                           ___splice1538615387_
                                                           _target48244997_
                                                           _tl48265000_)
                                                          (___match1547215473_
                                                           _e47985139_
                                                           _hd47995143_
                                                           _tl48005146_
                                                           _e48015149_
                                                           _hd48025153_
                                                           _tl48035156_
                                                           _e48045159_
                                                           _hd48055163_
                                                           _tl48065166_
                                                           _e48214987_
                                                           _hd48224991_
                                                           _tl48234994_))))
                                                  (___match1547215473_
                                                   _e47985139_
                                                   _hd47995143_
                                                   _tl48005146_
                                                   _e48015149_
                                                   _hd48025153_
                                                   _tl48035156_
                                                   _e48045159_
                                                   _hd48055163_
                                                   _tl48065166_
                                                   _e48214987_
                                                   _hd48224991_
                                                   _tl48234994_))))
                                          (_g47924872_))
                                      (if (gx#stx-pair? _hd48055163_)
                                          (let ((_e48644909_
                                                 (gx#syntax-e _hd48055163_)))
                                            (let ((_tl48664916_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e48644909_)))
                                                  (_hd48654913_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e48644909_))))
                                              (___match1547215473_
                                               _e47985139_
                                               _hd47995143_
                                               _tl48005146_
                                               _e48015149_
                                               _hd48025153_
                                               _tl48035156_
                                               _e48045159_
                                               _hd48055163_
                                               _tl48065166_
                                               _e48644909_
                                               _hd48654913_
                                               _tl48664916_)))
                                          (_g47924872_))))
                                (if (gx#stx-pair? _hd48055163_)
                                    (let ((_e48644909_
                                           (gx#syntax-e _hd48055163_)))
                                      (let ((_tl48664916_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e48644909_)))
                                            (_hd48654913_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e48644909_))))
                                        (___match1547215473_
                                         _e47985139_
                                         _hd47995143_
                                         _tl48005146_
                                         _e48015149_
                                         _hd48025153_
                                         _tl48035156_
                                         _e48045159_
                                         _hd48055163_
                                         _tl48065166_
                                         _e48644909_
                                         _hd48654913_
                                         _tl48664916_)))
                                    (_g47924872_))))))))
              (if (gx#stx-pair? ___stx1537915380_)
                  (let ((_e47985139_ (gx#syntax-e ___stx1537915380_)))
                    (let ((_tl48005146_
                           (let () (declare (not safe)) (##cdr _e47985139_)))
                          (_hd47995143_
                           (let () (declare (not safe)) (##car _e47985139_))))
                      (if (gx#stx-pair? _tl48005146_)
                          (let ((_e48015149_ (gx#syntax-e _tl48005146_)))
                            (let ((_tl48035156_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e48015149_)))
                                  (_hd48025153_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e48015149_))))
                              (if (gx#stx-pair? _tl48035156_)
                                  (let ((_e48045159_
                                         (gx#syntax-e _tl48035156_)))
                                    (let ((_tl48065166_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e48045159_)))
                                          (_hd48055163_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e48045159_))))
                                      (___match1541015411_
                                       _e47985139_
                                       _hd47995143_
                                       _tl48005146_
                                       _e48015149_
                                       _hd48025153_
                                       _tl48035156_
                                       _e48045159_
                                       _hd48055163_
                                       _tl48065166_)))
                                  (if (gx#stx-datum? _hd48025153_)
                                      (let ((_e48174973_
                                             (gx#stx-e _hd48025153_)))
                                        (_g47924872_))
                                      (_g47924872_)))))
                          (_g47924872_))))
                  (_g47924872_)))))))
    (define |gxc[:0:]#with-primitive-bind+args|
      (lambda (_$stx5196_)
        (let* ((_g52005235_
                (lambda (_g52015231_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g52015231_)))
               (_g51995360_
                (lambda (_g52015239_)
                  (if (gx#stx-pair? _g52015239_)
                      (let ((_e52065242_ (gx#syntax-e _g52015239_)))
                        (let ((_hd52075246_
                               (let ()
                                 (declare (not safe))
                                 (##car _e52065242_)))
                              (_tl52085249_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e52065242_))))
                          (if (gx#stx-pair? _tl52085249_)
                              (let ((_e52095252_ (gx#syntax-e _tl52085249_)))
                                (let ((_hd52105256_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e52095252_)))
                                      (_tl52115259_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e52095252_))))
                                  (if (gx#stx-pair? _hd52105256_)
                                      (let ((_e52125262_
                                             (gx#syntax-e _hd52105256_)))
                                        (let ((_hd52135266_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e52125262_)))
                                              (_tl52145269_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e52125262_))))
                                          (if (gx#stx-pair? _tl52145269_)
                                              (let ((_e52155272_
                                                     (gx#syntax-e
                                                      _tl52145269_)))
                                                (let ((_hd52165276_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e52155272_)))
                                                      (_tl52175279_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e52155272_))))
                                                  (if (gx#stx-pair?
                                                       _tl52175279_)
                                                      (let ((_e52185282_
                                                             (gx#syntax-e
                                                              _tl52175279_)))
                                                        (let ((_hd52195286_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e52185282_)))
                      (_tl52205289_
                       (let () (declare (not safe)) (##cdr _e52185282_))))
                  (if (gx#stx-null? _tl52205289_)
                      (if (gx#stx-pair/null? _tl52115259_)
                          (let ((_g16714_
                                 (gx#syntax-split-splice _tl52115259_ '0)))
                            (begin
                              (let ((_g16715_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g16714_)
                                           (##vector-length _g16714_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g16715_ 2)))
                                    (error "Context expects 2 values"
                                           _g16715_)))
                              (let ((_target52215292_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g16714_ 0)))
                                    (_tl52235295_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g16714_ 1))))
                                (if (gx#stx-null? _tl52235295_)
                                    (letrec ((_loop52245298_
                                              (lambda (_hd52225302_
                                                       _body52285305_)
                                                (if (gx#stx-pair? _hd52225302_)
                                                    (let ((_e52255308_
                                                           (gx#syntax-e
                                                            _hd52225302_)))
                                                      (let ((_lp-hd52265312_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e52255308_)))
                    (_lp-tl52275315_
                     (let () (declare (not safe)) (##cdr _e52255308_))))
                (_loop52245298_
                 _lp-tl52275315_
                 (cons _lp-hd52265312_ _body52285305_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_body52295318_
                                                           (reverse _body52285305_)))
                                                      ((lambda (_L5322_
                                                                _L5324_
                                                                _L5325_
                                                                _L5326_)
                                                         (cons (gx#datum->syntax__0
                                                                '#f
                                                                'let)
                                                               (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lp)
                             (cons (cons (cons (gx#datum->syntax__0 '#f 'rest)
                                               (cons _L5324_ '()))
                                         (cons (cons _L5326_
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '@list)
                         '())
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons _L5325_
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
                                       (cons _L5326_
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'cons)
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'compile-e)
                             (cons (gx#datum->syntax__0 '#f 'e) '()))
                       (cons _L5325_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))
               (cons (cons (cons (gx#datum->syntax__0 '#f '%#quote)
                                 (cons (gx#datum->syntax__0 '#f '_) '()))
                           (cons (cons (gx#datum->syntax__0 '#f 'lp)
                                       (cons (gx#datum->syntax__0 '#f 'rest)
                                             (cons _L5326_
                                                   (cons (cons (gx#datum->syntax__0
                                                                '#f
                                                                'cons)
                                                               (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'compile-e)
                                   (cons (gx#datum->syntax__0 '#f 'e) '()))
                             (cons _L5325_ '())))
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
                                               (cons _L5326_ '())))
                                   (cons (cons (gx#datum->syntax__0 '#f 'cons)
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      'tmp)
                                                     (cons _L5325_ '())))
                                         '()))))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               '()))
                   (cons (cons (gx#datum->syntax__0 '#f 'else)
                               (foldr1 (lambda (_g53515354_ _g53525357_)
                                         (cons _g53515354_ _g53525357_))
                                       '()
                                       _L5322_))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))))
               _body52295318_
               _hd52195286_
               _hd52165276_
               _hd52135266_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop52245298_ _target52215292_ '()))
                                    (_g52005235_ _g52015239_)))))
                          (_g52005235_ _g52015239_))
                      (_g52005235_ _g52015239_))))
              (_g52005235_ _g52015239_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g52005235_ _g52015239_))))
                                      (_g52005235_ _g52015239_))))
                              (_g52005235_ _g52015239_))))
                      (_g52005235_ _g52015239_)))))
          (_g51995360_ _$stx5196_))))
    (define |gxc[:0:]#with-inline-unsafe-primitives|
      (lambda (_$stx5365_)
        (let* ((_g53695387_
                (lambda (_g53705383_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g53705383_)))
               (_g53685442_
                (lambda (_g53705391_)
                  (if (gx#stx-pair? _g53705391_)
                      (let ((_e53735394_ (gx#syntax-e _g53705391_)))
                        (let ((_hd53745398_
                               (let ()
                                 (declare (not safe))
                                 (##car _e53735394_)))
                              (_tl53755401_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e53735394_))))
                          (if (gx#stx-pair? _tl53755401_)
                              (let ((_e53765404_ (gx#syntax-e _tl53755401_)))
                                (let ((_hd53775408_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e53765404_)))
                                      (_tl53785411_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e53765404_))))
                                  (if (gx#stx-pair? _tl53785411_)
                                      (let ((_e53795414_
                                             (gx#syntax-e _tl53785411_)))
                                        (let ((_hd53805418_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e53795414_)))
                                              (_tl53815421_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e53795414_))))
                                          (if (gx#stx-null? _tl53815421_)
                                              ((lambda (_L5424_ _L5426_)
                                                 (cons (gx#datum->syntax__0
                                                        '#f
                                                        'cond-expand)
                                                       (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'gambit-inline-unsafe-primitives)
                           (cons _L5426_ '()))
                     (cons (cons (gx#datum->syntax__0 '#f 'else)
                                 (cons (cons (gx#datum->syntax__0 '#f 'if)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'current-compile-decls-unsafe?)
                                                         '())
                                                   (cons _L5426_
                                                         (cons _L5424_ '()))))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd53805418_
                                               _hd53775408_)
                                              (_g53695387_ _g53705391_))))
                                      (_g53695387_ _g53705391_))))
                              (_g53695387_ _g53705391_))))
                      (_g53695387_ _g53705391_)))))
          (_g53685442_ _$stx5365_))))
    (define |gxc[:0:]#meta-state|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gxc[1]#_g16716_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g16716_|
                   (cons |gxc[1]#_g16717_|
                         (cons |gxc[1]#_g16718_|
                               (cons (cons |gxc[1]#_g16719_|
                                           (cons |gxc[1]#_g16720_|
                                                 (cons |gxc[1]#_g16721_|
                                                       (cons |gxc[1]#_g16722_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g16723_|
                                                 (cons |gxc[1]#_g16724_|
                                                       (cons |gxc[1]#_g16725_|
                                                             (cons |gxc[1]#_g16726_|
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
       |gxc[1]#_g16727_|
       'expander-identifiers:
       (cons '#f
             (cons |gxc[1]#_g16727_|
                   (cons |gxc[1]#_g16728_|
                         (cons |gxc[1]#_g16729_|
                               (cons (cons |gxc[1]#_g16730_|
                                           (cons |gxc[1]#_g16731_|
                                                 (cons |gxc[1]#_g16732_|
                                                       (cons |gxc[1]#_g16733_|
                                                             '()))))
                                     (cons (cons |gxc[1]#_g16734_|
                                                 (cons |gxc[1]#_g16735_|
                                                       (cons |gxc[1]#_g16736_|
                                                             (cons |gxc[1]#_g16737_|
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
