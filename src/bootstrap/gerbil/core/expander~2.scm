(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/expander~SyntaxSugar[1]#_g4400_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/expander~SyntaxSugar[:0:]#syntax-rules|
      (lambda (_stx2831_)
        (let* ((_g28342858_
                (lambda (_g28352854_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g28352854_)))
               (_g28333164_
                (lambda (_g28352862_)
                  (if (gx#stx-pair? _g28352862_)
                      (let ((_e28402865_ (gx#syntax-e _g28352862_)))
                        (let ((_hd28392869_
                               (let ()
                                 (declare (not safe))
                                 (##car _e28402865_)))
                              (_tl28382872_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e28402865_))))
                          (if (gx#stx-pair? _tl28382872_)
                              (let ((_e28432875_ (gx#syntax-e _tl28382872_)))
                                (let ((_hd28422879_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e28432875_)))
                                      (_tl28412882_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e28432875_))))
                                  (if (gx#stx-pair/null? _tl28412882_)
                                      (let ((_g4386_ (gx#syntax-split-splice
                                                      _tl28412882_
                                                      '0)))
                                        (begin
                                          (let ((_g4387_ (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g4386_)
                                                               (##vector-length
                                                                _g4386_)
                                                               1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g4387_ 2)))
                                                (error "Context expects 2 values"
                                                       _g4387_)))
                                          (let ((_target28442885_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g4386_ 0)))
                                                (_tl28462888_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g4386_ 1))))
                                            (if (gx#stx-null? _tl28462888_)
                                                (letrec ((_loop28472891_
                                                          (lambda (_hd28452895_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clauses28512898_)
                    (if (gx#stx-pair? _hd28452895_)
                        (let ((_e28482901_ (gx#syntax-e _hd28452895_)))
                          (let ((_lp-hd28492905_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e28482901_)))
                                (_lp-tl28502908_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e28482901_))))
                            (_loop28472891_
                             _lp-tl28502908_
                             (cons _lp-hd28492905_ _clauses28512898_))))
                        (let ((_clauses28522911_ (reverse _clauses28512898_)))
                          ((lambda (_L2915_ _L2917_)
                             (if (gx#identifier-list? _L2917_)
                                 (let* ((_body3081_
                                         (gx#stx-map
                                          (lambda (_clause2938_)
                                            (let* ((___stx41234124_
                                                    _clause2938_)
                                                   (_g29422969_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx41234124_))))
                                              (let ((___kont41264127_
                                                     (lambda (_L3054_ _L3056_)
                                                       (cons _L3056_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'syntax)
                                 (cons _L3054_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont41284129_
                                                     (lambda (_L3006_
                                                              _L3008_
                                                              _L3009_)
                                                       (cons _L3009_
                                                             (cons _L3008_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'syntax)
                                       (cons _L3006_ '()))
                                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx41234124_)
                                                    (let ((_e29483034_
                                                           (gx#syntax-e
                                                            ___stx41234124_)))
                                                      (let ((_tl29463041_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e29483034_)))
                    (_hd29473038_
                     (let () (declare (not safe)) (##car _e29483034_))))
                (if (gx#stx-pair? _tl29463041_)
                    (let ((_e29513044_ (gx#syntax-e _tl29463041_)))
                      (let ((_tl29493051_
                             (let () (declare (not safe)) (##cdr _e29513044_)))
                            (_hd29503048_
                             (let ()
                               (declare (not safe))
                               (##car _e29513044_))))
                        (if (gx#stx-null? _tl29493051_)
                            (___kont41264127_ _hd29503048_ _hd29473038_)
                            (if (gx#stx-pair? _tl29493051_)
                                (let ((_e29632996_ (gx#syntax-e _tl29493051_)))
                                  (let ((_tl29613003_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e29632996_)))
                                        (_hd29623000_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e29632996_))))
                                    (if (gx#stx-null? _tl29613003_)
                                        (___kont41284129_
                                         _hd29623000_
                                         _hd29503048_
                                         _hd29473038_)
                                        (let ()
                                          (declare (not safe))
                                          (_g29422969_)))))
                                (let () (declare (not safe)) (_g29422969_))))))
                    (let () (declare (not safe)) (_g29422969_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g29422969_))))))
                                          (let ((__tmp4388
                                                 (lambda (_g30723075_
                                                          _g30733078_)
                                                   (cons _g30723075_
                                                         _g30733078_))))
                                            (declare (not safe))
                                            (__foldr1 __tmp4388 '() _L2915_))))
                                        (_g30843101_
                                         (lambda (_g30853097_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g30853097_)))
                                        (_g30833160_
                                         (lambda (_g30853105_)
                                           (if (gx#stx-pair/null? _g30853105_)
                                               (let ((_g4389_ (gx#syntax-split-splice
                                                               _g30853105_
                                                               '0)))
                                                 (begin
                                                   (let ((_g4390_ (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (if (##values? _g4389_)
                                (##vector-length _g4389_)
                                1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g4390_ 2)))
                 (error "Context expects 2 values" _g4390_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target30873108_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g4389_
                                                             0)))
                                                         (_tl30893111_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g4389_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _tl30893111_)
                                                         (letrec ((_loop30903114_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd30883118_ _clause30943121_)
                             (if (gx#stx-pair? _hd30883118_)
                                 (let ((_e30913124_
                                        (gx#syntax-e _hd30883118_)))
                                   (let ((_lp-hd30923128_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e30913124_)))
                                         (_lp-tl30933131_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e30913124_))))
                                     (_loop30903114_
                                      _lp-tl30933131_
                                      (cons _lp-hd30923128_
                                            _clause30943121_))))
                                 (let ((_clause30953134_
                                        (reverse _clause30943121_)))
                                   ((lambda (_L3138_)
                                      (cons (gx#datum->syntax '#f 'lambda%)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '$stx)
                                                        '())
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'syntax-case)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '$stx)
                            (cons _L2917_
                                  (let ((__tmp4391
                                         (lambda (_g31513154_ _g31523157_)
                                           (cons _g31513154_ _g31523157_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp4391 '() _L3138_)))))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _clause30953134_))))))
                   (_loop30903114_ _target30873108_ '()))
                 (_g30843101_ _g30853105_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g30843101_ _g30853105_)))))
                                   (_g30833160_ _body3081_))
                                 (_g28342858_ _g28352862_)))
                           _clauses28522911_
                           _hd28422879_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop28472891_
                                                   _target28442885_
                                                   '()))
                                                (_g28342858_ _g28352862_)))))
                                      (_g28342858_ _g28352862_))))
                              (_g28342858_ _g28352862_))))
                      (_g28342858_ _g28352862_)))))
          (_g28333164_ _stx2831_))))
    (define |gerbil/core/expander~SyntaxSugar[:0:]#with-syntax|
      (lambda (_stx3170_)
        (let* ((___stx41674168_ _stx3170_)
               (_g31753260_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx41674168_))))
          (let ((___kont41704171_
                 (lambda (_L3600_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons '()
                               (let ((__tmp4392
                                      (lambda (_g36163619_ _g36173622_)
                                        (cons _g36163619_ _g36173622_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp4392 '() _L3600_))))))
                (___kont41744175_
                 (lambda (_L3508_ _L3510_ _L3511_)
                   (cons (gx#datum->syntax '#f 'syntax-case)
                         (cons _L3510_
                               (cons '()
                                     (cons (cons _L3511_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'let-values)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp4393
                                  (lambda (_g35343537_ _g35353540_)
                                    (cons _g35343537_ _g35353540_))))
                             (declare (not safe))
                             (__foldr1 __tmp4393 '() _L3508_))))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
                (___kont41784179_
                 (lambda (_L3371_ _L3373_ _L3374_)
                   (cons (gx#datum->syntax '#f 'syntax-case)
                         (cons (cons (gx#datum->syntax '#f 'list)
                                     (let ((__tmp4394
                                            (lambda (_g34003403_ _g34013406_)
                                              (cons _g34003403_ _g34013406_))))
                                       (declare (not safe))
                                       (__foldr1 __tmp4394 '() _L3373_)))
                               (cons '()
                                     (cons (cons (let ((__tmp4395
                                                        (lambda (_g33983409_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g33993412_)
                  (cons _g33983409_ _g33993412_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp4395
                                                    '()
                                                    _L3374_))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'let-values)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp4396
                                  (lambda (_g33963415_ _g33973418_)
                                    (cons _g33963415_ _g33973418_))))
                             (declare (not safe))
                             (__foldr1 __tmp4396 '() _L3371_))))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))))
            (let* ((___match42684269_
                    (lambda (_e32253267_
                             _hd32243271_
                             _tl32233274_
                             _e32283277_
                             _hd32273281_
                             _tl32263284_
                             ___splice41804181_
                             _target32293287_
                             _tl32313290_)
                      (letrec ((_loop32323293_
                                (lambda (_hd32303297_
                                         _e32363300_
                                         _pat32373302_)
                                  (if (gx#stx-pair? _hd32303297_)
                                      (let ((_e32333305_
                                             (gx#syntax-e _hd32303297_)))
                                        (let ((_lp-tl32353312_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e32333305_)))
                                              (_lp-hd32343309_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e32333305_))))
                                          (if (gx#stx-pair? _lp-hd32343309_)
                                              (let ((_e32423315_
                                                     (gx#syntax-e
                                                      _lp-hd32343309_)))
                                                (let ((_tl32403322_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e32423315_)))
                                                      (_hd32413319_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e32423315_))))
                                                  (if (gx#stx-pair?
                                                       _tl32403322_)
                                                      (let ((_e32453325_
                                                             (gx#syntax-e
                                                              _tl32403322_)))
                                                        (let ((_tl32433332_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e32453325_)))
                      (_hd32443329_
                       (let () (declare (not safe)) (##car _e32453325_))))
                  (if (gx#stx-null? _tl32433332_)
                      (_loop32323293_
                       _lp-tl32353312_
                       (cons _hd32443329_ _e32363300_)
                       (cons _hd32413319_ _pat32373302_))
                      (let () (declare (not safe)) (_g31753260_)))))
              (let () (declare (not safe)) (_g31753260_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g31753260_)))))
                                      (let ((_pat32393338_
                                             (reverse _pat32373302_))
                                            (_e32383335_
                                             (reverse _e32363300_)))
                                        (if (gx#stx-pair/null? _tl32263284_)
                                            (let ((___splice41824183_
                                                   (gx#syntax-split-splice
                                                    _tl32263284_
                                                    '0)))
                                              (let ((_tl32483344_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice41824183_
                                                        '1)))
                                                    (_target32463341_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice41824183_
                                                        '0))))
                                                (if (gx#stx-null? _tl32483344_)
                                                    (letrec ((_loop32493347_
                                                              (lambda (_hd32473351_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body32533354_)
                        (if (gx#stx-pair? _hd32473351_)
                            (let ((_e32503357_ (gx#syntax-e _hd32473351_)))
                              (let ((_lp-tl32523364_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e32503357_)))
                                    (_lp-hd32513361_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e32503357_))))
                                (_loop32493347_
                                 _lp-tl32523364_
                                 (cons _lp-hd32513361_ _body32533354_))))
                            (let ((_body32543367_ (reverse _body32533354_)))
                              (___kont41784179_
                               _body32543367_
                               _e32383335_
                               _pat32393338_))))))
              (_loop32493347_ _target32463341_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g31753260_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g31753260_))))))))
                        (_loop32323293_ _target32293287_ '() '()))))
                   (___match42484249_
                    (lambda (_e31983428_
                             _hd31973432_
                             _tl31963435_
                             _e32013438_
                             _hd32003442_
                             _tl31993445_
                             _e32043448_
                             _hd32033452_
                             _tl32023455_
                             _e32073458_
                             _hd32063462_
                             _tl32053465_
                             _e32103468_
                             _hd32093472_
                             _tl32083475_
                             ___splice41764177_
                             _target32113478_
                             _tl32133481_)
                      (letrec ((_loop32143484_
                                (lambda (_hd32123488_ _body32183491_)
                                  (if (gx#stx-pair? _hd32123488_)
                                      (let ((_e32153494_
                                             (gx#syntax-e _hd32123488_)))
                                        (let ((_lp-tl32173501_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e32153494_)))
                                              (_lp-hd32163498_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e32153494_))))
                                          (_loop32143484_
                                           _lp-tl32173501_
                                           (cons _lp-hd32163498_
                                                 _body32183491_))))
                                      (let ((_body32193504_
                                             (reverse _body32183491_)))
                                        (___kont41744175_
                                         _body32193504_
                                         _hd32093472_
                                         _hd32063462_))))))
                        (_loop32143484_ _target32113478_ '()))))
                   (___match42064207_
                    (lambda (_e31803550_
                             _hd31793554_
                             _tl31783557_
                             _e31833560_
                             _hd31823564_
                             _tl31813567_
                             ___splice41724173_
                             _target31843570_
                             _tl31863573_)
                      (letrec ((_loop31873576_
                                (lambda (_hd31853580_ _body31913583_)
                                  (if (gx#stx-pair? _hd31853580_)
                                      (let ((_e31883586_
                                             (gx#syntax-e _hd31853580_)))
                                        (let ((_lp-tl31903593_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e31883586_)))
                                              (_lp-hd31893590_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e31883586_))))
                                          (_loop31873576_
                                           _lp-tl31903593_
                                           (cons _lp-hd31893590_
                                                 _body31913583_))))
                                      (let ((_body31923596_
                                             (reverse _body31913583_)))
                                        (___kont41704171_ _body31923596_))))))
                        (_loop31873576_ _target31843570_ '())))))
              (if (gx#stx-pair? ___stx41674168_)
                  (let ((_e31803550_ (gx#syntax-e ___stx41674168_)))
                    (let ((_tl31783557_
                           (let () (declare (not safe)) (##cdr _e31803550_)))
                          (_hd31793554_
                           (let () (declare (not safe)) (##car _e31803550_))))
                      (if (gx#stx-pair? _tl31783557_)
                          (let ((_e31833560_ (gx#syntax-e _tl31783557_)))
                            (let ((_tl31813567_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e31833560_)))
                                  (_hd31823564_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e31833560_))))
                              (if (gx#stx-null? _hd31823564_)
                                  (if (gx#stx-pair/null? _tl31813567_)
                                      (let ((___splice41724173_
                                             (gx#syntax-split-splice
                                              _tl31813567_
                                              '0)))
                                        (let ((_tl31863573_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice41724173_
                                                  '1)))
                                              (_target31843570_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice41724173_
                                                  '0))))
                                          (if (gx#stx-null? _tl31863573_)
                                              (___match42064207_
                                               _e31803550_
                                               _hd31793554_
                                               _tl31783557_
                                               _e31833560_
                                               _hd31823564_
                                               _tl31813567_
                                               ___splice41724173_
                                               _target31843570_
                                               _tl31863573_)
                                              (if (gx#stx-pair/null?
                                                   _hd31823564_)
                                                  (let ((___splice41804181_
                                                         (gx#syntax-split-splice
                                                          _hd31823564_
                                                          '0)))
                                                    (let ((_tl32313290_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice41804181_
                                                              '1)))
                                                          (_target32293287_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice41804181_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl32313290_)
                                                          (___match42684269_
                                                           _e31803550_
                                                           _hd31793554_
                                                           _tl31783557_
                                                           _e31833560_
                                                           _hd31823564_
                                                           _tl31813567_
                                                           ___splice41804181_
                                                           _target32293287_
                                                           _tl32313290_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g31753260_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g31753260_))))))
                                      (if (gx#stx-pair/null? _hd31823564_)
                                          (let ((___splice41804181_
                                                 (gx#syntax-split-splice
                                                  _hd31823564_
                                                  '0)))
                                            (let ((_tl32313290_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice41804181_
                                                      '1)))
                                                  (_target32293287_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice41804181_
                                                      '0))))
                                              (if (gx#stx-null? _tl32313290_)
                                                  (___match42684269_
                                                   _e31803550_
                                                   _hd31793554_
                                                   _tl31783557_
                                                   _e31833560_
                                                   _hd31823564_
                                                   _tl31813567_
                                                   ___splice41804181_
                                                   _target32293287_
                                                   _tl32313290_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g31753260_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g31753260_))))
                                  (if (gx#stx-pair? _hd31823564_)
                                      (let ((_e32043448_
                                             (gx#syntax-e _hd31823564_)))
                                        (let ((_tl32023455_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e32043448_)))
                                              (_hd32033452_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e32043448_))))
                                          (if (gx#stx-pair? _hd32033452_)
                                              (let ((_e32073458_
                                                     (gx#syntax-e
                                                      _hd32033452_)))
                                                (let ((_tl32053465_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e32073458_)))
                                                      (_hd32063462_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e32073458_))))
                                                  (if (gx#stx-pair?
                                                       _tl32053465_)
                                                      (let ((_e32103468_
                                                             (gx#syntax-e
                                                              _tl32053465_)))
                                                        (let ((_tl32083475_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e32103468_)))
                      (_hd32093472_
                       (let () (declare (not safe)) (##car _e32103468_))))
                  (if (gx#stx-null? _tl32083475_)
                      (if (gx#stx-null? _tl32023455_)
                          (if (gx#stx-pair/null? _tl31813567_)
                              (let ((___splice41764177_
                                     (gx#syntax-split-splice _tl31813567_ '0)))
                                (let ((_tl32133481_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref ___splice41764177_ '1)))
                                      (_target32113478_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice41764177_
                                          '0))))
                                  (if (gx#stx-null? _tl32133481_)
                                      (___match42484249_
                                       _e31803550_
                                       _hd31793554_
                                       _tl31783557_
                                       _e31833560_
                                       _hd31823564_
                                       _tl31813567_
                                       _e32043448_
                                       _hd32033452_
                                       _tl32023455_
                                       _e32073458_
                                       _hd32063462_
                                       _tl32053465_
                                       _e32103468_
                                       _hd32093472_
                                       _tl32083475_
                                       ___splice41764177_
                                       _target32113478_
                                       _tl32133481_)
                                      (if (gx#stx-pair/null? _hd31823564_)
                                          (let ((___splice41804181_
                                                 (gx#syntax-split-splice
                                                  _hd31823564_
                                                  '0)))
                                            (let ((_tl32313290_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice41804181_
                                                      '1)))
                                                  (_target32293287_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice41804181_
                                                      '0))))
                                              (if (gx#stx-null? _tl32313290_)
                                                  (___match42684269_
                                                   _e31803550_
                                                   _hd31793554_
                                                   _tl31783557_
                                                   _e31833560_
                                                   _hd31823564_
                                                   _tl31813567_
                                                   ___splice41804181_
                                                   _target32293287_
                                                   _tl32313290_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g31753260_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g31753260_))))))
                              (if (gx#stx-pair/null? _hd31823564_)
                                  (let ((___splice41804181_
                                         (gx#syntax-split-splice
                                          _hd31823564_
                                          '0)))
                                    (let ((_tl32313290_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice41804181_
                                              '1)))
                                          (_target32293287_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice41804181_
                                              '0))))
                                      (if (gx#stx-null? _tl32313290_)
                                          (___match42684269_
                                           _e31803550_
                                           _hd31793554_
                                           _tl31783557_
                                           _e31833560_
                                           _hd31823564_
                                           _tl31813567_
                                           ___splice41804181_
                                           _target32293287_
                                           _tl32313290_)
                                          (let ()
                                            (declare (not safe))
                                            (_g31753260_)))))
                                  (let () (declare (not safe)) (_g31753260_))))
                          (if (gx#stx-pair/null? _hd31823564_)
                              (let ((___splice41804181_
                                     (gx#syntax-split-splice _hd31823564_ '0)))
                                (let ((_tl32313290_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref ___splice41804181_ '1)))
                                      (_target32293287_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice41804181_
                                          '0))))
                                  (if (gx#stx-null? _tl32313290_)
                                      (___match42684269_
                                       _e31803550_
                                       _hd31793554_
                                       _tl31783557_
                                       _e31833560_
                                       _hd31823564_
                                       _tl31813567_
                                       ___splice41804181_
                                       _target32293287_
                                       _tl32313290_)
                                      (let ()
                                        (declare (not safe))
                                        (_g31753260_)))))
                              (let () (declare (not safe)) (_g31753260_))))
                      (if (gx#stx-pair/null? _hd31823564_)
                          (let ((___splice41804181_
                                 (gx#syntax-split-splice _hd31823564_ '0)))
                            (let ((_tl32313290_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice41804181_ '1)))
                                  (_target32293287_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice41804181_ '0))))
                              (if (gx#stx-null? _tl32313290_)
                                  (___match42684269_
                                   _e31803550_
                                   _hd31793554_
                                   _tl31783557_
                                   _e31833560_
                                   _hd31823564_
                                   _tl31813567_
                                   ___splice41804181_
                                   _target32293287_
                                   _tl32313290_)
                                  (let ()
                                    (declare (not safe))
                                    (_g31753260_)))))
                          (let () (declare (not safe)) (_g31753260_))))))
              (if (gx#stx-pair/null? _hd31823564_)
                  (let ((___splice41804181_
                         (gx#syntax-split-splice _hd31823564_ '0)))
                    (let ((_tl32313290_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice41804181_ '1)))
                          (_target32293287_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice41804181_ '0))))
                      (if (gx#stx-null? _tl32313290_)
                          (___match42684269_
                           _e31803550_
                           _hd31793554_
                           _tl31783557_
                           _e31833560_
                           _hd31823564_
                           _tl31813567_
                           ___splice41804181_
                           _target32293287_
                           _tl32313290_)
                          (let () (declare (not safe)) (_g31753260_)))))
                  (let () (declare (not safe)) (_g31753260_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _hd31823564_)
                                                  (let ((___splice41804181_
                                                         (gx#syntax-split-splice
                                                          _hd31823564_
                                                          '0)))
                                                    (let ((_tl32313290_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice41804181_
                                                              '1)))
                                                          (_target32293287_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice41804181_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl32313290_)
                                                          (___match42684269_
                                                           _e31803550_
                                                           _hd31793554_
                                                           _tl31783557_
                                                           _e31833560_
                                                           _hd31823564_
                                                           _tl31813567_
                                                           ___splice41804181_
                                                           _target32293287_
                                                           _tl32313290_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g31753260_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g31753260_))))))
                                      (if (gx#stx-pair/null? _hd31823564_)
                                          (let ((___splice41804181_
                                                 (gx#syntax-split-splice
                                                  _hd31823564_
                                                  '0)))
                                            (let ((_tl32313290_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice41804181_
                                                      '1)))
                                                  (_target32293287_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice41804181_
                                                      '0))))
                                              (if (gx#stx-null? _tl32313290_)
                                                  (___match42684269_
                                                   _e31803550_
                                                   _hd31793554_
                                                   _tl31783557_
                                                   _e31833560_
                                                   _hd31823564_
                                                   _tl31813567_
                                                   ___splice41804181_
                                                   _target32293287_
                                                   _tl32313290_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g31753260_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g31753260_)))))))
                          (let () (declare (not safe)) (_g31753260_)))))
                  (let () (declare (not safe)) (_g31753260_))))))))
    (define |gerbil/core/expander~SyntaxSugar[:0:]#with-syntax*|
      (lambda (_stx3633_)
        (let* ((___stx42714272_ _stx3633_)
               (_g36383715_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx42714272_))))
          (let ((___kont42744275_
                 (lambda (_L4011_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons '()
                               (let ((__tmp4397
                                      (lambda (_g40274030_ _g40284033_)
                                        (cons _g40274030_ _g40284033_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp4397 '() _L4011_))))))
                (___kont42784279_
                 (lambda (_L3913_ _L3915_ _L3916_ _L3917_ _L3918_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons (cons (cons _L3917_ (cons _L3916_ '())) '())
                               (cons (cons _L3918_
                                           (cons _L3915_
                                                 (let ((__tmp4398
                                                        (lambda (_g39453948_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g39463951_)
                  (cons _g39453948_ _g39463951_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp4398
                                                    '()
                                                    _L3913_))))
                                     '())))))
                (___kont42824283_
                 (lambda (_L3782_ _L3784_ _L3785_ _L3786_)
                   (cons (gx#datum->syntax '#f 'with-syntax)
                         (cons (cons _L3785_ '())
                               (cons (cons _L3786_
                                           (cons _L3784_
                                                 (let ((__tmp4399
                                                        (lambda (_g38073810_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g38083813_)
                  (cons _g38073810_ _g38083813_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp4399
                                                    '()
                                                    _L3782_))))
                                     '()))))))
            (let* ((___match43844385_
                    (lambda (_e36943722_
                             _hd36933726_
                             _tl36923729_
                             _e36973732_
                             _hd36963736_
                             _tl36953739_
                             _e37003742_
                             _hd36993746_
                             _tl36983749_
                             ___splice42844285_
                             _target37013752_
                             _tl37033755_)
                      (letrec ((_loop37043758_
                                (lambda (_hd37023762_ _body37083765_)
                                  (if (gx#stx-pair? _hd37023762_)
                                      (let ((_e37053768_
                                             (gx#syntax-e _hd37023762_)))
                                        (let ((_lp-tl37073775_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e37053768_)))
                                              (_lp-hd37063772_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e37053768_))))
                                          (_loop37043758_
                                           _lp-tl37073775_
                                           (cons _lp-hd37063772_
                                                 _body37083765_))))
                                      (let ((_body37093778_
                                             (reverse _body37083765_)))
                                        (___kont42824283_
                                         _body37093778_
                                         _tl36983749_
                                         _hd36993746_
                                         _hd36933726_))))))
                        (_loop37043758_ _target37013752_ '()))))
                   (___match43584359_
                    (lambda (_e36633823_
                             _hd36623827_
                             _tl36613830_
                             _e36663833_
                             _hd36653837_
                             _tl36643840_
                             _e36693843_
                             _hd36683847_
                             _tl36673850_
                             _e36723853_
                             _hd36713857_
                             _tl36703860_
                             _e36753863_
                             _hd36743867_
                             _tl36733870_
                             _e36783873_
                             _hd36773877_
                             _tl36763880_
                             ___splice42804281_
                             _target36793883_
                             _tl36813886_)
                      (letrec ((_loop36823889_
                                (lambda (_hd36803893_ _body36863896_)
                                  (if (gx#stx-pair? _hd36803893_)
                                      (let ((_e36833899_
                                             (gx#syntax-e _hd36803893_)))
                                        (let ((_lp-tl36853906_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e36833899_)))
                                              (_lp-hd36843903_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e36833899_))))
                                          (_loop36823889_
                                           _lp-tl36853906_
                                           (cons _lp-hd36843903_
                                                 _body36863896_))))
                                      (let ((_body36873909_
                                             (reverse _body36863896_)))
                                        (___kont42784279_
                                         _body36873909_
                                         _tl36673850_
                                         _hd36773877_
                                         _tl36733870_
                                         _hd36623827_))))))
                        (_loop36823889_ _target36793883_ '()))))
                   (___match43084309_
                    (lambda (_e36433961_
                             _hd36423965_
                             _tl36413968_
                             _e36463971_
                             _hd36453975_
                             _tl36443978_
                             ___splice42764277_
                             _target36473981_
                             _tl36493984_)
                      (letrec ((_loop36503987_
                                (lambda (_hd36483991_ _body36543994_)
                                  (if (gx#stx-pair? _hd36483991_)
                                      (let ((_e36513997_
                                             (gx#syntax-e _hd36483991_)))
                                        (let ((_lp-tl36534004_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e36513997_)))
                                              (_lp-hd36524001_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e36513997_))))
                                          (_loop36503987_
                                           _lp-tl36534004_
                                           (cons _lp-hd36524001_
                                                 _body36543994_))))
                                      (let ((_body36554007_
                                             (reverse _body36543994_)))
                                        (___kont42744275_ _body36554007_))))))
                        (_loop36503987_ _target36473981_ '())))))
              (if (gx#stx-pair? ___stx42714272_)
                  (let ((_e36433961_ (gx#syntax-e ___stx42714272_)))
                    (let ((_tl36413968_
                           (let () (declare (not safe)) (##cdr _e36433961_)))
                          (_hd36423965_
                           (let () (declare (not safe)) (##car _e36433961_))))
                      (if (gx#stx-pair? _tl36413968_)
                          (let ((_e36463971_ (gx#syntax-e _tl36413968_)))
                            (let ((_tl36443978_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e36463971_)))
                                  (_hd36453975_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e36463971_))))
                              (if (gx#stx-null? _hd36453975_)
                                  (if (gx#stx-pair/null? _tl36443978_)
                                      (let ((___splice42764277_
                                             (gx#syntax-split-splice
                                              _tl36443978_
                                              '0)))
                                        (let ((_tl36493984_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice42764277_
                                                  '1)))
                                              (_target36473981_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice42764277_
                                                  '0))))
                                          (if (gx#stx-null? _tl36493984_)
                                              (___match43084309_
                                               _e36433961_
                                               _hd36423965_
                                               _tl36413968_
                                               _e36463971_
                                               _hd36453975_
                                               _tl36443978_
                                               ___splice42764277_
                                               _target36473981_
                                               _tl36493984_)
                                              (let ()
                                                (declare (not safe))
                                                (_g36383715_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g36383715_)))
                                  (if (gx#stx-pair? _hd36453975_)
                                      (let ((_e36693843_
                                             (gx#syntax-e _hd36453975_)))
                                        (let ((_tl36673850_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e36693843_)))
                                              (_hd36683847_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e36693843_))))
                                          (if (gx#stx-pair? _hd36683847_)
                                              (let ((_e36723853_
                                                     (gx#syntax-e
                                                      _hd36683847_)))
                                                (let ((_tl36703860_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e36723853_)))
                                                      (_hd36713857_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e36723853_))))
                                                  (if (gx#stx-pair?
                                                       _hd36713857_)
                                                      (let ((_e36753863_
                                                             (gx#syntax-e
                                                              _hd36713857_)))
                                                        (let ((_tl36733870_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e36753863_)))
                      (_hd36743867_
                       (let () (declare (not safe)) (##car _e36753863_))))
                  (if (gx#identifier? _hd36743867_)
                      (if (gx#free-identifier=?
                           |gerbil/core/expander~SyntaxSugar[1]#_g4400_|
                           _hd36743867_)
                          (if (gx#stx-pair? _tl36703860_)
                              (let ((_e36783873_ (gx#syntax-e _tl36703860_)))
                                (let ((_tl36763880_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e36783873_)))
                                      (_hd36773877_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e36783873_))))
                                  (if (gx#stx-null? _tl36763880_)
                                      (if (gx#stx-pair/null? _tl36443978_)
                                          (let ((___splice42804281_
                                                 (gx#syntax-split-splice
                                                  _tl36443978_
                                                  '0)))
                                            (let ((_tl36813886_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice42804281_
                                                      '1)))
                                                  (_target36793883_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice42804281_
                                                      '0))))
                                              (if (gx#stx-null? _tl36813886_)
                                                  (___match43584359_
                                                   _e36433961_
                                                   _hd36423965_
                                                   _tl36413968_
                                                   _e36463971_
                                                   _hd36453975_
                                                   _tl36443978_
                                                   _e36693843_
                                                   _hd36683847_
                                                   _tl36673850_
                                                   _e36723853_
                                                   _hd36713857_
                                                   _tl36703860_
                                                   _e36753863_
                                                   _hd36743867_
                                                   _tl36733870_
                                                   _e36783873_
                                                   _hd36773877_
                                                   _tl36763880_
                                                   ___splice42804281_
                                                   _target36793883_
                                                   _tl36813886_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g36383715_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g36383715_)))
                                      (if (gx#stx-pair/null? _tl36443978_)
                                          (let ((___splice42844285_
                                                 (gx#syntax-split-splice
                                                  _tl36443978_
                                                  '0)))
                                            (let ((_tl37033755_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice42844285_
                                                      '1)))
                                                  (_target37013752_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice42844285_
                                                      '0))))
                                              (if (gx#stx-null? _tl37033755_)
                                                  (___match43844385_
                                                   _e36433961_
                                                   _hd36423965_
                                                   _tl36413968_
                                                   _e36463971_
                                                   _hd36453975_
                                                   _tl36443978_
                                                   _e36693843_
                                                   _hd36683847_
                                                   _tl36673850_
                                                   ___splice42844285_
                                                   _target37013752_
                                                   _tl37033755_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g36383715_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g36383715_))))))
                              (if (gx#stx-pair/null? _tl36443978_)
                                  (let ((___splice42844285_
                                         (gx#syntax-split-splice
                                          _tl36443978_
                                          '0)))
                                    (let ((_tl37033755_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice42844285_
                                              '1)))
                                          (_target37013752_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice42844285_
                                              '0))))
                                      (if (gx#stx-null? _tl37033755_)
                                          (___match43844385_
                                           _e36433961_
                                           _hd36423965_
                                           _tl36413968_
                                           _e36463971_
                                           _hd36453975_
                                           _tl36443978_
                                           _e36693843_
                                           _hd36683847_
                                           _tl36673850_
                                           ___splice42844285_
                                           _target37013752_
                                           _tl37033755_)
                                          (let ()
                                            (declare (not safe))
                                            (_g36383715_)))))
                                  (let () (declare (not safe)) (_g36383715_))))
                          (if (gx#stx-pair/null? _tl36443978_)
                              (let ((___splice42844285_
                                     (gx#syntax-split-splice _tl36443978_ '0)))
                                (let ((_tl37033755_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref ___splice42844285_ '1)))
                                      (_target37013752_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice42844285_
                                          '0))))
                                  (if (gx#stx-null? _tl37033755_)
                                      (___match43844385_
                                       _e36433961_
                                       _hd36423965_
                                       _tl36413968_
                                       _e36463971_
                                       _hd36453975_
                                       _tl36443978_
                                       _e36693843_
                                       _hd36683847_
                                       _tl36673850_
                                       ___splice42844285_
                                       _target37013752_
                                       _tl37033755_)
                                      (let ()
                                        (declare (not safe))
                                        (_g36383715_)))))
                              (let () (declare (not safe)) (_g36383715_))))
                      (if (gx#stx-pair/null? _tl36443978_)
                          (let ((___splice42844285_
                                 (gx#syntax-split-splice _tl36443978_ '0)))
                            (let ((_tl37033755_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice42844285_ '1)))
                                  (_target37013752_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice42844285_ '0))))
                              (if (gx#stx-null? _tl37033755_)
                                  (___match43844385_
                                   _e36433961_
                                   _hd36423965_
                                   _tl36413968_
                                   _e36463971_
                                   _hd36453975_
                                   _tl36443978_
                                   _e36693843_
                                   _hd36683847_
                                   _tl36673850_
                                   ___splice42844285_
                                   _target37013752_
                                   _tl37033755_)
                                  (let ()
                                    (declare (not safe))
                                    (_g36383715_)))))
                          (let () (declare (not safe)) (_g36383715_))))))
              (if (gx#stx-pair/null? _tl36443978_)
                  (let ((___splice42844285_
                         (gx#syntax-split-splice _tl36443978_ '0)))
                    (let ((_tl37033755_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice42844285_ '1)))
                          (_target37013752_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice42844285_ '0))))
                      (if (gx#stx-null? _tl37033755_)
                          (___match43844385_
                           _e36433961_
                           _hd36423965_
                           _tl36413968_
                           _e36463971_
                           _hd36453975_
                           _tl36443978_
                           _e36693843_
                           _hd36683847_
                           _tl36673850_
                           ___splice42844285_
                           _target37013752_
                           _tl37033755_)
                          (let () (declare (not safe)) (_g36383715_)))))
                  (let () (declare (not safe)) (_g36383715_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _tl36443978_)
                                                  (let ((___splice42844285_
                                                         (gx#syntax-split-splice
                                                          _tl36443978_
                                                          '0)))
                                                    (let ((_tl37033755_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice42844285_
                                                              '1)))
                                                          (_target37013752_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice42844285_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl37033755_)
                                                          (___match43844385_
                                                           _e36433961_
                                                           _hd36423965_
                                                           _tl36413968_
                                                           _e36463971_
                                                           _hd36453975_
                                                           _tl36443978_
                                                           _e36693843_
                                                           _hd36683847_
                                                           _tl36673850_
                                                           ___splice42844285_
                                                           _target37013752_
                                                           _tl37033755_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g36383715_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g36383715_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g36383715_))))))
                          (let () (declare (not safe)) (_g36383715_)))))
                  (let () (declare (not safe)) (_g36383715_))))))))
    (define |gerbil/core/expander~SyntaxSugar[:0:]#syntax/loc|
      (lambda (_stx4043_)
        (let* ((_g40464064_
                (lambda (_g40474060_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g40474060_)))
               (_g40454119_
                (lambda (_g40474068_)
                  (if (gx#stx-pair? _g40474068_)
                      (let ((_e40524071_ (gx#syntax-e _g40474068_)))
                        (let ((_hd40514075_
                               (let ()
                                 (declare (not safe))
                                 (##car _e40524071_)))
                              (_tl40504078_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e40524071_))))
                          (if (gx#stx-pair? _tl40504078_)
                              (let ((_e40554081_ (gx#syntax-e _tl40504078_)))
                                (let ((_hd40544085_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e40554081_)))
                                      (_tl40534088_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e40554081_))))
                                  (if (gx#stx-pair? _tl40534088_)
                                      (let ((_e40584091_
                                             (gx#syntax-e _tl40534088_)))
                                        (let ((_hd40574095_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e40584091_)))
                                              (_tl40564098_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e40584091_))))
                                          (if (gx#stx-null? _tl40564098_)
                                              ((lambda (_L4101_ _L4103_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'stx-wrap-source)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax)
                           (cons _L4101_ '()))
                     (cons (cons (gx#datum->syntax '#f 'stx-source)
                                 (cons _L4103_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd40574095_
                                               _hd40544085_)
                                              (_g40464064_ _g40474068_))))
                                      (_g40464064_ _g40474068_))))
                              (_g40464064_ _g40474068_))))
                      (_g40464064_ _g40474068_)))))
          (_g40454119_ _stx4043_))))))
