(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar~Sugar-1[1]#_g23135_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-1[1]#_g23136_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-1[1]#_g23145_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-1[1]#_g23146_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/sugar~Sugar-1[:0:]#defrules|
      (lambda (_$stx4404_)
        (let* ((_g44084436_
                (lambda (_g44094432_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g44094432_)))
               (_g44074537_
                (lambda (_g44094440_)
                  (if (gx#stx-pair? _g44094440_)
                      (let ((_e44154443_ (gx#syntax-e _g44094440_)))
                        (let ((_hd44144447_
                               (let ()
                                 (declare (not safe))
                                 (##car _e44154443_)))
                              (_tl44134450_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e44154443_))))
                          (if (gx#stx-pair? _tl44134450_)
                              (let ((_e44184453_ (gx#syntax-e _tl44134450_)))
                                (let ((_hd44174457_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e44184453_)))
                                      (_tl44164460_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e44184453_))))
                                  (if (gx#stx-pair? _tl44164460_)
                                      (let ((_e44214463_
                                             (gx#syntax-e _tl44164460_)))
                                        (let ((_hd44204467_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e44214463_)))
                                              (_tl44194470_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e44214463_))))
                                          (if (gx#stx-pair/null? _tl44194470_)
                                              (let ((_g23115_
                                                     (gx#syntax-split-splice
                                                      _tl44194470_
                                                      '0)))
                                                (begin
                                                  (let ((_g23116_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g23115_)
                                                               (##vector-length
                                                                _g23115_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g23116_ 2)))
                (error "Context expects 2 values" _g23116_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target44224473_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g23115_
                                                            0)))
                                                        (_tl44244476_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g23115_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _tl44244476_)
                                                        (letrec ((_loop44254479_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd44234483_ _clauses44294486_)
                            (if (gx#stx-pair? _hd44234483_)
                                (let ((_e44264489_ (gx#syntax-e _hd44234483_)))
                                  (let ((_lp-hd44274493_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e44264489_)))
                                        (_lp-tl44284496_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e44264489_))))
                                    (_loop44254479_
                                     _lp-tl44284496_
                                     (cons _lp-hd44274493_
                                           _clauses44294486_))))
                                (let ((_clauses44304499_
                                       (reverse _clauses44294486_)))
                                  ((lambda (_L4503_ _L4505_ _L4506_)
                                     (if (gx#identifier? _L4506_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'define-syntax)
                                               (cons _L4506_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'syntax-rules)
                         (cons _L4505_
                               (let ((__tmp23117
                                      (lambda (_g45284531_ _g45294534_)
                                        (cons _g45284531_ _g45294534_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp23117 '() _L4503_))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_g44084436_ _g44094440_)))
                                   _clauses44304499_
                                   _hd44204467_
                                   _hd44174457_))))))
                  (_loop44254479_ _target44224473_ '()))
                (_g44084436_ _g44094440_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g44084436_ _g44094440_))))
                                      (_g44084436_ _g44094440_))))
                              (_g44084436_ _g44094440_))))
                      (_g44084436_ _g44094440_)))))
          (_g44074537_ _$stx4404_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#defsyntax%|
      (lambda (_$stx4542_)
        (let* ((___stx2076420765_ _$stx4542_)
               (_g45474586_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2076420765_))))
          (let ((___kont2076720768_
                 (lambda (_L4708_ _L4710_ _L4711_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _L4711_
                               (cons (cons (gx#datum->syntax '#f 'lambda%)
                                           (cons _L4710_
                                                 (let ((__tmp23118
                                                        (lambda (_g47304733_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g47314736_)
                  (cons _g47304733_ _g47314736_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp23118
                                                    '()
                                                    _L4708_))))
                                     '())))))
                (___kont2077120772_
                 (lambda (_L4623_ _L4625_)
                   (cons (gx#datum->syntax '#f 'define-syntax)
                         (cons _L4625_ (cons _L4623_ '()))))))
            (let* ((___match2081920820_
                    (lambda (_e45744593_
                             _hd45734597_
                             _tl45724600_
                             _e45774603_
                             _hd45764607_
                             _tl45754610_
                             _e45804613_
                             _hd45794617_
                             _tl45784620_)
                      (let ((_L4623_ _hd45794617_) (_L4625_ _hd45764607_))
                        (if (gx#identifier? _L4625_)
                            (___kont2077120772_ _L4623_ _L4625_)
                            (let () (declare (not safe)) (_g45474586_))))))
                   (___match2081120812_
                    (lambda (_e45744593_
                             _hd45734597_
                             _tl45724600_
                             _e45774603_
                             _hd45764607_
                             _tl45754610_)
                      (if (gx#stx-pair? _tl45754610_)
                          (let ((_e45804613_ (gx#syntax-e _tl45754610_)))
                            (let ((_tl45784620_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e45804613_)))
                                  (_hd45794617_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e45804613_))))
                              (if (gx#stx-null? _tl45784620_)
                                  (___match2081920820_
                                   _e45744593_
                                   _hd45734597_
                                   _tl45724600_
                                   _e45774603_
                                   _hd45764607_
                                   _tl45754610_
                                   _e45804613_
                                   _hd45794617_
                                   _tl45784620_)
                                  (let ()
                                    (declare (not safe))
                                    (_g45474586_)))))
                          (let () (declare (not safe)) (_g45474586_)))))
                   (___match2079920800_
                    (lambda (_e45544648_
                             _hd45534652_
                             _tl45524655_
                             _e45574658_
                             _hd45564662_
                             _tl45554665_
                             _e45604668_
                             _hd45594672_
                             _tl45584675_
                             ___splice2076920770_
                             _target45614678_
                             _tl45634681_)
                      (letrec ((_loop45644684_
                                (lambda (_hd45624688_ _body45684691_)
                                  (if (gx#stx-pair? _hd45624688_)
                                      (let ((_e45654694_
                                             (gx#syntax-e _hd45624688_)))
                                        (let ((_lp-tl45674701_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e45654694_)))
                                              (_lp-hd45664698_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e45654694_))))
                                          (_loop45644684_
                                           _lp-tl45674701_
                                           (cons _lp-hd45664698_
                                                 _body45684691_))))
                                      (let ((_body45694704_
                                             (reverse _body45684691_)))
                                        (let ((_L4708_ _body45694704_)
                                              (_L4710_ _tl45584675_)
                                              (_L4711_ _hd45594672_))
                                          (if (gx#identifier? _L4711_)
                                              (___kont2076720768_
                                               _L4708_
                                               _L4710_
                                               _L4711_)
                                              (___match2081120812_
                                               _e45544648_
                                               _hd45534652_
                                               _tl45524655_
                                               _e45574658_
                                               _hd45564662_
                                               _tl45554665_))))))))
                        (_loop45644684_ _target45614678_ '())))))
              (if (gx#stx-pair? ___stx2076420765_)
                  (let ((_e45544648_ (gx#syntax-e ___stx2076420765_)))
                    (let ((_tl45524655_
                           (let () (declare (not safe)) (##cdr _e45544648_)))
                          (_hd45534652_
                           (let () (declare (not safe)) (##car _e45544648_))))
                      (if (gx#stx-pair? _tl45524655_)
                          (let ((_e45574658_ (gx#syntax-e _tl45524655_)))
                            (let ((_tl45554665_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e45574658_)))
                                  (_hd45564662_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e45574658_))))
                              (if (gx#stx-pair? _hd45564662_)
                                  (let ((_e45604668_
                                         (gx#syntax-e _hd45564662_)))
                                    (let ((_tl45584675_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e45604668_)))
                                          (_hd45594672_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e45604668_))))
                                      (if (gx#stx-pair/null? _tl45554665_)
                                          (let ((___splice2076920770_
                                                 (gx#syntax-split-splice
                                                  _tl45554665_
                                                  '0)))
                                            (let ((_tl45634681_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2076920770_
                                                      '1)))
                                                  (_target45614678_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2076920770_
                                                      '0))))
                                              (if (gx#stx-null? _tl45634681_)
                                                  (___match2079920800_
                                                   _e45544648_
                                                   _hd45534652_
                                                   _tl45524655_
                                                   _e45574658_
                                                   _hd45564662_
                                                   _tl45554665_
                                                   _e45604668_
                                                   _hd45594672_
                                                   _tl45584675_
                                                   ___splice2076920770_
                                                   _target45614678_
                                                   _tl45634681_)
                                                  (if (gx#stx-pair?
                                                       _tl45554665_)
                                                      (let ((_e45804613_
                                                             (gx#syntax-e
                                                              _tl45554665_)))
                                                        (let ((_tl45784620_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e45804613_)))
                      (_hd45794617_
                       (let () (declare (not safe)) (##car _e45804613_))))
                  (if (gx#stx-null? _tl45784620_)
                      (___match2081920820_
                       _e45544648_
                       _hd45534652_
                       _tl45524655_
                       _e45574658_
                       _hd45564662_
                       _tl45554665_
                       _e45804613_
                       _hd45794617_
                       _tl45784620_)
                      (let () (declare (not safe)) (_g45474586_)))))
              (let () (declare (not safe)) (_g45474586_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl45554665_)
                                              (let ((_e45804613_
                                                     (gx#syntax-e
                                                      _tl45554665_)))
                                                (let ((_tl45784620_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e45804613_)))
                                                      (_hd45794617_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e45804613_))))
                                                  (if (gx#stx-null?
                                                       _tl45784620_)
                                                      (___match2081920820_
                                                       _e45544648_
                                                       _hd45534652_
                                                       _tl45524655_
                                                       _e45574658_
                                                       _hd45564662_
                                                       _tl45554665_
                                                       _e45804613_
                                                       _hd45794617_
                                                       _tl45784620_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g45474586_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g45474586_))))))
                                  (if (gx#stx-pair? _tl45554665_)
                                      (let ((_e45804613_
                                             (gx#syntax-e _tl45554665_)))
                                        (let ((_tl45784620_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e45804613_)))
                                              (_hd45794617_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e45804613_))))
                                          (if (gx#stx-null? _tl45784620_)
                                              (___match2081920820_
                                               _e45544648_
                                               _hd45534652_
                                               _tl45524655_
                                               _e45574658_
                                               _hd45564662_
                                               _tl45554665_
                                               _e45804613_
                                               _hd45794617_
                                               _tl45784620_)
                                              (let ()
                                                (declare (not safe))
                                                (_g45474586_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g45474586_))))))
                          (let () (declare (not safe)) (_g45474586_)))))
                  (let () (declare (not safe)) (_g45474586_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#define|
      (lambda (_$stx4744_)
        (let* ((___stx2082220823_ _$stx4744_)
               (_g47494788_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2082220823_))))
          (let ((___kont2082520826_
                 (lambda (_L4910_ _L4912_ _L4913_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _L4913_ '())
                               (cons (cons (gx#datum->syntax '#f 'lambda%)
                                           (cons _L4912_
                                                 (let ((__tmp23119
                                                        (lambda (_g49324935_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g49334938_)
                  (cons _g49324935_ _g49334938_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp23119
                                                    '()
                                                    _L4910_))))
                                     '())))))
                (___kont2082920830_
                 (lambda (_L4825_ _L4827_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _L4827_ '()) (cons _L4825_ '()))))))
            (let* ((___match2087720878_
                    (lambda (_e47764795_
                             _hd47754799_
                             _tl47744802_
                             _e47794805_
                             _hd47784809_
                             _tl47774812_
                             _e47824815_
                             _hd47814819_
                             _tl47804822_)
                      (let ((_L4825_ _hd47814819_) (_L4827_ _hd47784809_))
                        (if (gx#identifier? _L4827_)
                            (___kont2082920830_ _L4825_ _L4827_)
                            (let () (declare (not safe)) (_g47494788_))))))
                   (___match2086920870_
                    (lambda (_e47764795_
                             _hd47754799_
                             _tl47744802_
                             _e47794805_
                             _hd47784809_
                             _tl47774812_)
                      (if (gx#stx-pair? _tl47774812_)
                          (let ((_e47824815_ (gx#syntax-e _tl47774812_)))
                            (let ((_tl47804822_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e47824815_)))
                                  (_hd47814819_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e47824815_))))
                              (if (gx#stx-null? _tl47804822_)
                                  (___match2087720878_
                                   _e47764795_
                                   _hd47754799_
                                   _tl47744802_
                                   _e47794805_
                                   _hd47784809_
                                   _tl47774812_
                                   _e47824815_
                                   _hd47814819_
                                   _tl47804822_)
                                  (let ()
                                    (declare (not safe))
                                    (_g47494788_)))))
                          (let () (declare (not safe)) (_g47494788_)))))
                   (___match2085720858_
                    (lambda (_e47564850_
                             _hd47554854_
                             _tl47544857_
                             _e47594860_
                             _hd47584864_
                             _tl47574867_
                             _e47624870_
                             _hd47614874_
                             _tl47604877_
                             ___splice2082720828_
                             _target47634880_
                             _tl47654883_)
                      (letrec ((_loop47664886_
                                (lambda (_hd47644890_ _body47704893_)
                                  (if (gx#stx-pair? _hd47644890_)
                                      (let ((_e47674896_
                                             (gx#syntax-e _hd47644890_)))
                                        (let ((_lp-tl47694903_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e47674896_)))
                                              (_lp-hd47684900_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e47674896_))))
                                          (_loop47664886_
                                           _lp-tl47694903_
                                           (cons _lp-hd47684900_
                                                 _body47704893_))))
                                      (let ((_body47714906_
                                             (reverse _body47704893_)))
                                        (let ((_L4910_ _body47714906_)
                                              (_L4912_ _tl47604877_)
                                              (_L4913_ _hd47614874_))
                                          (if (gx#identifier? _L4913_)
                                              (___kont2082520826_
                                               _L4910_
                                               _L4912_
                                               _L4913_)
                                              (___match2086920870_
                                               _e47564850_
                                               _hd47554854_
                                               _tl47544857_
                                               _e47594860_
                                               _hd47584864_
                                               _tl47574867_))))))))
                        (_loop47664886_ _target47634880_ '())))))
              (if (gx#stx-pair? ___stx2082220823_)
                  (let ((_e47564850_ (gx#syntax-e ___stx2082220823_)))
                    (let ((_tl47544857_
                           (let () (declare (not safe)) (##cdr _e47564850_)))
                          (_hd47554854_
                           (let () (declare (not safe)) (##car _e47564850_))))
                      (if (gx#stx-pair? _tl47544857_)
                          (let ((_e47594860_ (gx#syntax-e _tl47544857_)))
                            (let ((_tl47574867_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e47594860_)))
                                  (_hd47584864_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e47594860_))))
                              (if (gx#stx-pair? _hd47584864_)
                                  (let ((_e47624870_
                                         (gx#syntax-e _hd47584864_)))
                                    (let ((_tl47604877_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e47624870_)))
                                          (_hd47614874_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e47624870_))))
                                      (if (gx#stx-pair/null? _tl47574867_)
                                          (let ((___splice2082720828_
                                                 (gx#syntax-split-splice
                                                  _tl47574867_
                                                  '0)))
                                            (let ((_tl47654883_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2082720828_
                                                      '1)))
                                                  (_target47634880_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2082720828_
                                                      '0))))
                                              (if (gx#stx-null? _tl47654883_)
                                                  (___match2085720858_
                                                   _e47564850_
                                                   _hd47554854_
                                                   _tl47544857_
                                                   _e47594860_
                                                   _hd47584864_
                                                   _tl47574867_
                                                   _e47624870_
                                                   _hd47614874_
                                                   _tl47604877_
                                                   ___splice2082720828_
                                                   _target47634880_
                                                   _tl47654883_)
                                                  (if (gx#stx-pair?
                                                       _tl47574867_)
                                                      (let ((_e47824815_
                                                             (gx#syntax-e
                                                              _tl47574867_)))
                                                        (let ((_tl47804822_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e47824815_)))
                      (_hd47814819_
                       (let () (declare (not safe)) (##car _e47824815_))))
                  (if (gx#stx-null? _tl47804822_)
                      (___match2087720878_
                       _e47564850_
                       _hd47554854_
                       _tl47544857_
                       _e47594860_
                       _hd47584864_
                       _tl47574867_
                       _e47824815_
                       _hd47814819_
                       _tl47804822_)
                      (let () (declare (not safe)) (_g47494788_)))))
              (let () (declare (not safe)) (_g47494788_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl47574867_)
                                              (let ((_e47824815_
                                                     (gx#syntax-e
                                                      _tl47574867_)))
                                                (let ((_tl47804822_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e47824815_)))
                                                      (_hd47814819_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e47824815_))))
                                                  (if (gx#stx-null?
                                                       _tl47804822_)
                                                      (___match2087720878_
                                                       _e47564850_
                                                       _hd47554854_
                                                       _tl47544857_
                                                       _e47594860_
                                                       _hd47584864_
                                                       _tl47574867_
                                                       _e47824815_
                                                       _hd47814819_
                                                       _tl47804822_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g47494788_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g47494788_))))))
                                  (if (gx#stx-pair? _tl47574867_)
                                      (let ((_e47824815_
                                             (gx#syntax-e _tl47574867_)))
                                        (let ((_tl47804822_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e47824815_)))
                                              (_hd47814819_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e47824815_))))
                                          (if (gx#stx-null? _tl47804822_)
                                              (___match2087720878_
                                               _e47564850_
                                               _hd47554854_
                                               _tl47544857_
                                               _e47594860_
                                               _hd47584864_
                                               _tl47574867_
                                               _e47824815_
                                               _hd47814819_
                                               _tl47804822_)
                                              (let ()
                                                (declare (not safe))
                                                (_g47494788_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g47494788_))))))
                          (let () (declare (not safe)) (_g47494788_)))))
                  (let () (declare (not safe)) (_g47494788_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#let*-values|
      (lambda (_$stx4946_)
        (let* ((___stx2088020881_ _$stx4946_)
               (_g49514996_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2088020881_))))
          (let ((___kont2088320884_
                 (lambda (_L5154_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons '()
                               (let ((__tmp23120
                                      (lambda (_g51705173_ _g51715176_)
                                        (cons _g51705173_ _g51715176_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp23120 '() _L5154_))))))
                (___kont2088720888_
                 (lambda (_L5063_ _L5065_ _L5066_ _L5067_)
                   (cons (gx#datum->syntax '#f 'let-values)
                         (cons (cons _L5066_ '())
                               (cons (cons _L5067_
                                           (cons _L5065_
                                                 (let ((__tmp23121
                                                        (lambda (_g50885091_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g50895094_)
                  (cons _g50885091_ _g50895094_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp23121
                                                    '()
                                                    _L5063_))))
                                     '()))))))
            (let* ((___match2093920940_
                    (lambda (_e49755003_
                             _hd49745007_
                             _tl49735010_
                             _e49785013_
                             _hd49775017_
                             _tl49765020_
                             _e49815023_
                             _hd49805027_
                             _tl49795030_
                             ___splice2088920890_
                             _target49825033_
                             _tl49845036_)
                      (letrec ((_loop49855039_
                                (lambda (_hd49835043_ _body49895046_)
                                  (if (gx#stx-pair? _hd49835043_)
                                      (let ((_e49865049_
                                             (gx#syntax-e _hd49835043_)))
                                        (let ((_lp-tl49885056_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e49865049_)))
                                              (_lp-hd49875053_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e49865049_))))
                                          (_loop49855039_
                                           _lp-tl49885056_
                                           (cons _lp-hd49875053_
                                                 _body49895046_))))
                                      (let ((_body49905059_
                                             (reverse _body49895046_)))
                                        (___kont2088720888_
                                         _body49905059_
                                         _tl49795030_
                                         _hd49805027_
                                         _hd49745007_))))))
                        (_loop49855039_ _target49825033_ '()))))
                   (___match2091320914_
                    (lambda (_e49565104_
                             _hd49555108_
                             _tl49545111_
                             _e49595114_
                             _hd49585118_
                             _tl49575121_
                             ___splice2088520886_
                             _target49605124_
                             _tl49625127_)
                      (letrec ((_loop49635130_
                                (lambda (_hd49615134_ _body49675137_)
                                  (if (gx#stx-pair? _hd49615134_)
                                      (let ((_e49645140_
                                             (gx#syntax-e _hd49615134_)))
                                        (let ((_lp-tl49665147_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e49645140_)))
                                              (_lp-hd49655144_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e49645140_))))
                                          (_loop49635130_
                                           _lp-tl49665147_
                                           (cons _lp-hd49655144_
                                                 _body49675137_))))
                                      (let ((_body49685150_
                                             (reverse _body49675137_)))
                                        (___kont2088320884_
                                         _body49685150_))))))
                        (_loop49635130_ _target49605124_ '())))))
              (if (gx#stx-pair? ___stx2088020881_)
                  (let ((_e49565104_ (gx#syntax-e ___stx2088020881_)))
                    (let ((_tl49545111_
                           (let () (declare (not safe)) (##cdr _e49565104_)))
                          (_hd49555108_
                           (let () (declare (not safe)) (##car _e49565104_))))
                      (if (gx#stx-pair? _tl49545111_)
                          (let ((_e49595114_ (gx#syntax-e _tl49545111_)))
                            (let ((_tl49575121_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e49595114_)))
                                  (_hd49585118_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e49595114_))))
                              (if (gx#stx-null? _hd49585118_)
                                  (if (gx#stx-pair/null? _tl49575121_)
                                      (let ((___splice2088520886_
                                             (gx#syntax-split-splice
                                              _tl49575121_
                                              '0)))
                                        (let ((_tl49625127_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2088520886_
                                                  '1)))
                                              (_target49605124_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2088520886_
                                                  '0))))
                                          (if (gx#stx-null? _tl49625127_)
                                              (___match2091320914_
                                               _e49565104_
                                               _hd49555108_
                                               _tl49545111_
                                               _e49595114_
                                               _hd49585118_
                                               _tl49575121_
                                               ___splice2088520886_
                                               _target49605124_
                                               _tl49625127_)
                                              (let ()
                                                (declare (not safe))
                                                (_g49514996_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g49514996_)))
                                  (if (gx#stx-pair? _hd49585118_)
                                      (let ((_e49815023_
                                             (gx#syntax-e _hd49585118_)))
                                        (let ((_tl49795030_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e49815023_)))
                                              (_hd49805027_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e49815023_))))
                                          (if (gx#stx-pair/null? _tl49575121_)
                                              (let ((___splice2088920890_
                                                     (gx#syntax-split-splice
                                                      _tl49575121_
                                                      '0)))
                                                (let ((_tl49845036_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2088920890_
                                                          '1)))
                                                      (_target49825033_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2088920890_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl49845036_)
                                                      (___match2093920940_
                                                       _e49565104_
                                                       _hd49555108_
                                                       _tl49545111_
                                                       _e49595114_
                                                       _hd49585118_
                                                       _tl49575121_
                                                       _e49815023_
                                                       _hd49805027_
                                                       _tl49795030_
                                                       ___splice2088920890_
                                                       _target49825033_
                                                       _tl49845036_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g49514996_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g49514996_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g49514996_))))))
                          (let () (declare (not safe)) (_g49514996_)))))
                  (let () (declare (not safe)) (_g49514996_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#let|
      (lambda (_$stx5185_)
        (let* ((___stx2094220943_ _$stx5185_)
               (_g51905254_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2094220943_))))
          (let ((___kont2094520946_
                 (lambda (_L5460_ _L5462_ _L5463_ _L5464_ _L5465_)
                   (cons (cons (gx#datum->syntax '#f 'letrec-values)
                               (cons (cons (cons (cons _L5465_ '())
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda%)
                                                             (cons (let ((__tmp23122
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g54945497_ _g54955500_)
                                    (cons _g54945497_ _g54955500_))))
                             (declare (not safe))
                             (__foldr1 __tmp23122 _L5462_ _L5464_))
                           (let ((__tmp23123
                                  (lambda (_g54925503_ _g54935506_)
                                    (cons _g54925503_ _g54935506_))))
                             (declare (not safe))
                             (__foldr1 __tmp23123 '() _L5460_))))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons _L5465_ '())))
                         (let ((__tmp23124
                                (lambda (_g54905509_ _g54915512_)
                                  (cons _g54905509_ _g54915512_))))
                           (declare (not safe))
                           (__foldr1 __tmp23124 '() _L5463_)))))
                (___kont2095120952_
                 (lambda (_L5311_ _L5313_)
                   (cons (gx#datum->syntax '#f '~let)
                         (cons (gx#datum->syntax '#f 'let-values)
                               (cons _L5313_
                                     (let ((__tmp23125
                                            (lambda (_g53305333_ _g53315336_)
                                              (cons _g53305333_ _g53315336_))))
                                       (declare (not safe))
                                       (__foldr1 __tmp23125 '() _L5311_))))))))
            (let* ((___match2099921000_
                    (lambda (_e52365261_
                             _hd52355265_
                             _tl52345268_
                             _e52395271_
                             _hd52385275_
                             _tl52375278_
                             ___splice2095320954_
                             _target52405281_
                             _tl52425284_)
                      (letrec ((_loop52435287_
                                (lambda (_hd52415291_ _body52475294_)
                                  (if (gx#stx-pair? _hd52415291_)
                                      (let ((_e52445297_
                                             (gx#syntax-e _hd52415291_)))
                                        (let ((_lp-tl52465304_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e52445297_)))
                                              (_lp-hd52455301_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e52445297_))))
                                          (_loop52435287_
                                           _lp-tl52465304_
                                           (cons _lp-hd52455301_
                                                 _body52475294_))))
                                      (let ((_body52485307_
                                             (reverse _body52475294_)))
                                        (___kont2095120952_
                                         _body52485307_
                                         _hd52385275_))))))
                        (_loop52435287_ _target52405281_ '()))))
                   (___match2099120992_
                    (lambda (_e52365261_
                             _hd52355265_
                             _tl52345268_
                             _e52395271_
                             _hd52385275_
                             _tl52375278_)
                      (if (gx#stx-pair/null? _tl52375278_)
                          (let ((___splice2095320954_
                                 (gx#syntax-split-splice _tl52375278_ '0)))
                            (let ((_tl52425284_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice2095320954_ '1)))
                                  (_target52405281_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice2095320954_ '0))))
                              (if (gx#stx-null? _tl52425284_)
                                  (___match2099921000_
                                   _e52365261_
                                   _hd52355265_
                                   _tl52345268_
                                   _e52395271_
                                   _hd52385275_
                                   _tl52375278_
                                   ___splice2095320954_
                                   _target52405281_
                                   _tl52425284_)
                                  (let ()
                                    (declare (not safe))
                                    (_g51905254_)))))
                          (let () (declare (not safe)) (_g51905254_)))))
                   (___match2097920980_
                    (lambda (_e51995346_
                             _hd51985350_
                             _tl51975353_
                             _e52025356_
                             _hd52015360_
                             _tl52005363_
                             _e52055366_
                             _hd52045370_
                             _tl52035373_
                             ___splice2094720948_
                             _target52065376_
                             _tl52085379_)
                      (letrec ((_loop52095382_
                                (lambda (_hd52075386_
                                         _arg52135389_
                                         _var52145391_)
                                  (if (gx#stx-pair? _hd52075386_)
                                      (let ((_e52105394_
                                             (gx#syntax-e _hd52075386_)))
                                        (let ((_lp-tl52125401_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e52105394_)))
                                              (_lp-hd52115398_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e52105394_))))
                                          (if (gx#stx-pair? _lp-hd52115398_)
                                              (let ((_e52195404_
                                                     (gx#syntax-e
                                                      _lp-hd52115398_)))
                                                (let ((_tl52175411_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e52195404_)))
                                                      (_hd52185408_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e52195404_))))
                                                  (if (gx#stx-pair?
                                                       _tl52175411_)
                                                      (let ((_e52225414_
                                                             (gx#syntax-e
                                                              _tl52175411_)))
                                                        (let ((_tl52205421_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e52225414_)))
                      (_hd52215418_
                       (let () (declare (not safe)) (##car _e52225414_))))
                  (if (gx#stx-null? _tl52205421_)
                      (_loop52095382_
                       _lp-tl52125401_
                       (cons _hd52215418_ _arg52135389_)
                       (cons _hd52185408_ _var52145391_))
                      (___match2099120992_
                       _e51995346_
                       _hd51985350_
                       _tl51975353_
                       _e52025356_
                       _hd52015360_
                       _tl52005363_))))
              (___match2099120992_
               _e51995346_
               _hd51985350_
               _tl51975353_
               _e52025356_
               _hd52015360_
               _tl52005363_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match2099120992_
                                               _e51995346_
                                               _hd51985350_
                                               _tl51975353_
                                               _e52025356_
                                               _hd52015360_
                                               _tl52005363_))))
                                      (let ((_var52165427_
                                             (reverse _var52145391_))
                                            (_arg52155424_
                                             (reverse _arg52135389_)))
                                        (if (gx#stx-pair/null? _tl52035373_)
                                            (let ((___splice2094920950_
                                                   (gx#syntax-split-splice
                                                    _tl52035373_
                                                    '0)))
                                              (let ((_tl52255433_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice2094920950_
                                                        '1)))
                                                    (_target52235430_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice2094920950_
                                                        '0))))
                                                (if (gx#stx-null? _tl52255433_)
                                                    (letrec ((_loop52265436_
                                                              (lambda (_hd52245440_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body52305443_)
                        (if (gx#stx-pair? _hd52245440_)
                            (let ((_e52275446_ (gx#syntax-e _hd52245440_)))
                              (let ((_lp-tl52295453_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e52275446_)))
                                    (_lp-hd52285450_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e52275446_))))
                                (_loop52265436_
                                 _lp-tl52295453_
                                 (cons _lp-hd52285450_ _body52305443_))))
                            (let ((_body52315456_ (reverse _body52305443_)))
                              (let ((_L5460_ _body52315456_)
                                    (_L5462_ _tl52085379_)
                                    (_L5463_ _arg52155424_)
                                    (_L5464_ _var52165427_)
                                    (_L5465_ _hd52015360_))
                                (if (gx#identifier? _L5465_)
                                    (___kont2094520946_
                                     _L5460_
                                     _L5462_
                                     _L5463_
                                     _L5464_
                                     _L5465_)
                                    (___match2099120992_
                                     _e51995346_
                                     _hd51985350_
                                     _tl51975353_
                                     _e52025356_
                                     _hd52015360_
                                     _tl52005363_))))))))
              (_loop52265436_ _target52235430_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2099120992_
                                                     _e51995346_
                                                     _hd51985350_
                                                     _tl51975353_
                                                     _e52025356_
                                                     _hd52015360_
                                                     _tl52005363_))))
                                            (___match2099120992_
                                             _e51995346_
                                             _hd51985350_
                                             _tl51975353_
                                             _e52025356_
                                             _hd52015360_
                                             _tl52005363_)))))))
                        (_loop52095382_ _target52065376_ '() '())))))
              (if (gx#stx-pair? ___stx2094220943_)
                  (let ((_e51995346_ (gx#syntax-e ___stx2094220943_)))
                    (let ((_tl51975353_
                           (let () (declare (not safe)) (##cdr _e51995346_)))
                          (_hd51985350_
                           (let () (declare (not safe)) (##car _e51995346_))))
                      (if (gx#stx-pair? _tl51975353_)
                          (let ((_e52025356_ (gx#syntax-e _tl51975353_)))
                            (let ((_tl52005363_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e52025356_)))
                                  (_hd52015360_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e52025356_))))
                              (if (gx#stx-pair? _tl52005363_)
                                  (let ((_e52055366_
                                         (gx#syntax-e _tl52005363_)))
                                    (let ((_tl52035373_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e52055366_)))
                                          (_hd52045370_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e52055366_))))
                                      (if (gx#stx-pair/null? _hd52045370_)
                                          (let ((___splice2094720948_
                                                 (gx#syntax-split-splice
                                                  _hd52045370_
                                                  '0)))
                                            (let ((_tl52085379_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2094720948_
                                                      '1)))
                                                  (_target52065376_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2094720948_
                                                      '0))))
                                              (___match2097920980_
                                               _e51995346_
                                               _hd51985350_
                                               _tl51975353_
                                               _e52025356_
                                               _hd52015360_
                                               _tl52005363_
                                               _e52055366_
                                               _hd52045370_
                                               _tl52035373_
                                               ___splice2094720948_
                                               _target52065376_
                                               _tl52085379_)))
                                          (if (gx#stx-pair/null? _tl52005363_)
                                              (let ((___splice2095320954_
                                                     (gx#syntax-split-splice
                                                      _tl52005363_
                                                      '0)))
                                                (let ((_tl52425284_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2095320954_
                                                          '1)))
                                                      (_target52405281_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2095320954_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl52425284_)
                                                      (___match2099921000_
                                                       _e51995346_
                                                       _hd51985350_
                                                       _tl51975353_
                                                       _e52025356_
                                                       _hd52015360_
                                                       _tl52005363_
                                                       ___splice2095320954_
                                                       _target52405281_
                                                       _tl52425284_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g51905254_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g51905254_))))))
                                  (if (gx#stx-pair/null? _tl52005363_)
                                      (let ((___splice2095320954_
                                             (gx#syntax-split-splice
                                              _tl52005363_
                                              '0)))
                                        (let ((_tl52425284_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2095320954_
                                                  '1)))
                                              (_target52405281_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2095320954_
                                                  '0))))
                                          (if (gx#stx-null? _tl52425284_)
                                              (___match2099921000_
                                               _e51995346_
                                               _hd51985350_
                                               _tl51975353_
                                               _e52025356_
                                               _hd52015360_
                                               _tl52005363_
                                               ___splice2095320954_
                                               _target52405281_
                                               _tl52425284_)
                                              (let ()
                                                (declare (not safe))
                                                (_g51905254_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g51905254_))))))
                          (let () (declare (not safe)) (_g51905254_)))))
                  (let () (declare (not safe)) (_g51905254_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#let*|
      (lambda (_$stx5522_)
        (let* ((_g55265550_
                (lambda (_g55275546_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g55275546_)))
               (_g55255635_
                (lambda (_g55275554_)
                  (if (gx#stx-pair? _g55275554_)
                      (let ((_e55325557_ (gx#syntax-e _g55275554_)))
                        (let ((_hd55315561_
                               (let ()
                                 (declare (not safe))
                                 (##car _e55325557_)))
                              (_tl55305564_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e55325557_))))
                          (if (gx#stx-pair? _tl55305564_)
                              (let ((_e55355567_ (gx#syntax-e _tl55305564_)))
                                (let ((_hd55345571_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e55355567_)))
                                      (_tl55335574_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e55355567_))))
                                  (if (gx#stx-pair/null? _tl55335574_)
                                      (let ((_g23126_
                                             (gx#syntax-split-splice
                                              _tl55335574_
                                              '0)))
                                        (begin
                                          (let ((_g23127_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g23126_)
                                                       (##vector-length
                                                        _g23126_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g23127_ 2)))
                                                (error "Context expects 2 values"
                                                       _g23127_)))
                                          (let ((_target55365577_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g23126_ 0)))
                                                (_tl55385580_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g23126_ 1))))
                                            (if (gx#stx-null? _tl55385580_)
                                                (letrec ((_loop55395583_
                                                          (lambda (_hd55375587_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body55435590_)
                    (if (gx#stx-pair? _hd55375587_)
                        (let ((_e55405593_ (gx#syntax-e _hd55375587_)))
                          (let ((_lp-hd55415597_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e55405593_)))
                                (_lp-tl55425600_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e55405593_))))
                            (_loop55395583_
                             _lp-tl55425600_
                             (cons _lp-hd55415597_ _body55435590_))))
                        (let ((_body55445603_ (reverse _body55435590_)))
                          ((lambda (_L5607_ _L5609_)
                             (cons (gx#datum->syntax '#f '~let)
                                   (cons (gx#datum->syntax '#f 'let*-values)
                                         (cons _L5609_
                                               (let ((__tmp23128
                                                      (lambda (_g56265629_
                                                               _g56275632_)
                                                        (cons _g56265629_
                                                              _g56275632_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp23128
                                                  '()
                                                  _L5607_))))))
                           _body55445603_
                           _hd55345571_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop55395583_
                                                   _target55365577_
                                                   '()))
                                                (_g55265550_ _g55275554_)))))
                                      (_g55265550_ _g55275554_))))
                              (_g55265550_ _g55275554_))))
                      (_g55265550_ _g55275554_)))))
          (_g55255635_ _$stx5522_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#letrec|
      (lambda (_$stx5640_)
        (let* ((_g56445668_
                (lambda (_g56455664_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g56455664_)))
               (_g56435753_
                (lambda (_g56455672_)
                  (if (gx#stx-pair? _g56455672_)
                      (let ((_e56505675_ (gx#syntax-e _g56455672_)))
                        (let ((_hd56495679_
                               (let ()
                                 (declare (not safe))
                                 (##car _e56505675_)))
                              (_tl56485682_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e56505675_))))
                          (if (gx#stx-pair? _tl56485682_)
                              (let ((_e56535685_ (gx#syntax-e _tl56485682_)))
                                (let ((_hd56525689_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e56535685_)))
                                      (_tl56515692_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e56535685_))))
                                  (if (gx#stx-pair/null? _tl56515692_)
                                      (let ((_g23129_
                                             (gx#syntax-split-splice
                                              _tl56515692_
                                              '0)))
                                        (begin
                                          (let ((_g23130_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g23129_)
                                                       (##vector-length
                                                        _g23129_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g23130_ 2)))
                                                (error "Context expects 2 values"
                                                       _g23130_)))
                                          (let ((_target56545695_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g23129_ 0)))
                                                (_tl56565698_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g23129_ 1))))
                                            (if (gx#stx-null? _tl56565698_)
                                                (letrec ((_loop56575701_
                                                          (lambda (_hd56555705_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body56615708_)
                    (if (gx#stx-pair? _hd56555705_)
                        (let ((_e56585711_ (gx#syntax-e _hd56555705_)))
                          (let ((_lp-hd56595715_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e56585711_)))
                                (_lp-tl56605718_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e56585711_))))
                            (_loop56575701_
                             _lp-tl56605718_
                             (cons _lp-hd56595715_ _body56615708_))))
                        (let ((_body56625721_ (reverse _body56615708_)))
                          ((lambda (_L5725_ _L5727_)
                             (cons (gx#datum->syntax '#f '~let)
                                   (cons (gx#datum->syntax '#f 'letrec-values)
                                         (cons _L5727_
                                               (let ((__tmp23131
                                                      (lambda (_g57445747_
                                                               _g57455750_)
                                                        (cons _g57445747_
                                                              _g57455750_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp23131
                                                  '()
                                                  _L5725_))))))
                           _body56625721_
                           _hd56525689_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop56575701_
                                                   _target56545695_
                                                   '()))
                                                (_g56445668_ _g56455672_)))))
                                      (_g56445668_ _g56455672_))))
                              (_g56445668_ _g56455672_))))
                      (_g56445668_ _g56455672_)))))
          (_g56435753_ _$stx5640_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#letrec*|
      (lambda (_$stx5758_)
        (let* ((_g57625786_
                (lambda (_g57635782_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g57635782_)))
               (_g57615871_
                (lambda (_g57635790_)
                  (if (gx#stx-pair? _g57635790_)
                      (let ((_e57685793_ (gx#syntax-e _g57635790_)))
                        (let ((_hd57675797_
                               (let ()
                                 (declare (not safe))
                                 (##car _e57685793_)))
                              (_tl57665800_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e57685793_))))
                          (if (gx#stx-pair? _tl57665800_)
                              (let ((_e57715803_ (gx#syntax-e _tl57665800_)))
                                (let ((_hd57705807_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e57715803_)))
                                      (_tl57695810_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e57715803_))))
                                  (if (gx#stx-pair/null? _tl57695810_)
                                      (let ((_g23132_
                                             (gx#syntax-split-splice
                                              _tl57695810_
                                              '0)))
                                        (begin
                                          (let ((_g23133_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g23132_)
                                                       (##vector-length
                                                        _g23132_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g23133_ 2)))
                                                (error "Context expects 2 values"
                                                       _g23133_)))
                                          (let ((_target57725813_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g23132_ 0)))
                                                (_tl57745816_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g23132_ 1))))
                                            (if (gx#stx-null? _tl57745816_)
                                                (letrec ((_loop57755819_
                                                          (lambda (_hd57735823_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body57795826_)
                    (if (gx#stx-pair? _hd57735823_)
                        (let ((_e57765829_ (gx#syntax-e _hd57735823_)))
                          (let ((_lp-hd57775833_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e57765829_)))
                                (_lp-tl57785836_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e57765829_))))
                            (_loop57755819_
                             _lp-tl57785836_
                             (cons _lp-hd57775833_ _body57795826_))))
                        (let ((_body57805839_ (reverse _body57795826_)))
                          ((lambda (_L5843_ _L5845_)
                             (cons (gx#datum->syntax '#f '~let)
                                   (cons (gx#datum->syntax '#f 'letrec*-values)
                                         (cons _L5845_
                                               (let ((__tmp23134
                                                      (lambda (_g58625865_
                                                               _g58635868_)
                                                        (cons _g58625865_
                                                              _g58635868_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp23134
                                                  '()
                                                  _L5843_))))))
                           _body57805839_
                           _hd57705807_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop57755819_
                                                   _target57725813_
                                                   '()))
                                                (_g57625786_ _g57635790_)))))
                                      (_g57625786_ _g57635790_))))
                              (_g57625786_ _g57635790_))))
                      (_g57625786_ _g57635790_)))))
          (_g57615871_ _$stx5758_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#~let|
      (lambda (_stx5876_)
        (letrec ((_let-head?5879_
                  (lambda (_x6359_)
                    (let* ((___stx2100221003_ _x6359_)
                           (_g63636374_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx2100221003_))))
                      (let ((___kont2100521006_
                             (lambda (_L6402_)
                               (gx#stx-andmap gx#identifier? _L6402_)))
                            (___kont2100721008_
                             (lambda () (gx#identifier? _x6359_))))
                        (if (gx#stx-pair? ___stx2100221003_)
                            (let ((_e63686392_
                                   (gx#syntax-e ___stx2100221003_)))
                              (let ((_tl63666399_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e63686392_)))
                                    (_hd63676396_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e63686392_))))
                                (if (gx#identifier? _hd63676396_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-1[1]#_g23135_|
                                         _hd63676396_)
                                        (___kont2100521006_ _tl63666399_)
                                        (___kont2100721008_))
                                    (___kont2100721008_))))
                            (___kont2100721008_))))))
                 (_let-head5881_
                  (lambda (_x6299_)
                    (let* ((___stx2102221023_ _x6299_)
                           (_g63036314_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx2102221023_))))
                      (let ((___kont2102521026_ (lambda (_L6342_) _L6342_))
                            (___kont2102721028_ (lambda () (list _x6299_))))
                        (if (gx#stx-pair? ___stx2102221023_)
                            (let ((_e63086332_
                                   (gx#syntax-e ___stx2102221023_)))
                              (let ((_tl63066339_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e63086332_)))
                                    (_hd63076336_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e63086332_))))
                                (if (gx#identifier? _hd63076336_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-1[1]#_g23136_|
                                         _hd63076336_)
                                        (___kont2102521026_ _tl63066339_)
                                        (___kont2102721028_))
                                    (___kont2102721028_))))
                            (___kont2102721028_)))))))
          (let* ((___stx2104221043_ _stx5876_)
                 (_g58845950_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx2104221043_))))
            (let ((___kont2104521046_
                   (lambda (_L6268_ _L6270_ _L6271_ _L6272_ _L6273_)
                     (cons _L6273_
                           (cons _L6272_
                                 (cons (cons (cons _L6271_ (cons _L6270_ '()))
                                             '())
                                       _L6268_)))))
                  (___kont2104721048_
                   (lambda (_L6071_ _L6073_ _L6074_ _L6075_)
                     (let* ((_g61106127_
                             (lambda (_g61116123_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g61116123_)))
                            (_g61096199_
                             (lambda (_g61116131_)
                               (if (gx#stx-pair/null? _g61116131_)
                                   (let ((_g23137_
                                          (gx#syntax-split-splice
                                           _g61116131_
                                           '0)))
                                     (begin
                                       (let ((_g23138_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g23137_)
                                                    (##vector-length _g23137_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g23138_ 2)))
                                             (error "Context expects 2 values"
                                                    _g23138_)))
                                       (let ((_target61136134_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g23137_ 0)))
                                             (_tl61156137_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g23137_ 1))))
                                         (if (gx#stx-null? _tl61156137_)
                                             (letrec ((_loop61166140_
                                                       (lambda (_hd61146144_
                                                                _hd-bind61206147_)
                                                         (if (gx#stx-pair?
                                                              _hd61146144_)
                                                             (let ((_e61176150_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _hd61146144_)))
                       (let ((_lp-hd61186154_
                              (let ()
                                (declare (not safe))
                                (##car _e61176150_)))
                             (_lp-tl61196157_
                              (let ()
                                (declare (not safe))
                                (##cdr _e61176150_))))
                         (_loop61166140_
                          _lp-tl61196157_
                          (cons _lp-hd61186154_ _hd-bind61206147_))))
                     (let ((_hd-bind61216160_ (reverse _hd-bind61206147_)))
                       ((lambda (_L6164_)
                          (let ()
                            (cons _L6075_
                                  (cons (begin
                                          (gx#syntax-check-splice-targets
                                           _L6073_
                                           _L6164_)
                                          (let ((__tmp23139
                                                 (lambda (_g61816185_
                                                          _g61826188_
                                                          _g61836190_)
                                                   (cons (cons _g61826188_
                                                               (cons _g61816185_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _g61836190_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (__foldr2
                                             __tmp23139
                                             '()
                                             _L6073_
                                             _L6164_)))
                                        (let ((__tmp23140
                                               (lambda (_g61796193_
                                                        _g61806196_)
                                                 (cons _g61796193_
                                                       _g61806196_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp23140
                                           '()
                                           _L6071_))))))
                        _hd-bind61216160_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop61166140_
                                                _target61136134_
                                                '()))
                                             (_g61106127_ _g61116131_)))))
                                   (_g61106127_ _g61116131_)))))
                       (_g61096199_
                        (gx#stx-map
                         _let-head5881_
                         (let ((__tmp23141
                                (lambda (_g62026205_ _g62036208_)
                                  (cons _g62026205_ _g62036208_))))
                           (declare (not safe))
                           (__foldr1 __tmp23141 '() _L6074_))))))))
              (let* ((___match2111121112_
                      (lambda (_e59125957_
                               _hd59115961_
                               _tl59105964_
                               _e59155967_
                               _hd59145971_
                               _tl59135974_
                               _e59185977_
                               _hd59175981_
                               _tl59165984_
                               ___splice2104921050_
                               _target59195987_
                               _tl59215990_)
                        (letrec ((_loop59225993_
                                  (lambda (_hd59205997_
                                           _e59266000_
                                           _hd59276002_)
                                    (if (gx#stx-pair? _hd59205997_)
                                        (let ((_e59236005_
                                               (gx#syntax-e _hd59205997_)))
                                          (let ((_lp-tl59256012_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e59236005_)))
                                                (_lp-hd59246009_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e59236005_))))
                                            (if (gx#stx-pair? _lp-hd59246009_)
                                                (let ((_e59326015_
                                                       (gx#syntax-e
                                                        _lp-hd59246009_)))
                                                  (let ((_tl59306022_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e59326015_)))
                                                        (_hd59316019_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e59326015_))))
                                                    (if (gx#stx-pair?
                                                         _tl59306022_)
                                                        (let ((_e59356025_
                                                               (gx#syntax-e
                                                                _tl59306022_)))
                                                          (let ((_tl59336032_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e59356025_)))
                        (_hd59346029_
                         (let () (declare (not safe)) (##car _e59356025_))))
                    (if (gx#stx-null? _tl59336032_)
                        (_loop59225993_
                         _lp-tl59256012_
                         (cons _hd59346029_ _e59266000_)
                         (cons _hd59316019_ _hd59276002_))
                        (let () (declare (not safe)) (_g58845950_)))))
                (let () (declare (not safe)) (_g58845950_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g58845950_)))))
                                        (let ((_hd59296038_
                                               (reverse _hd59276002_))
                                              (_e59286035_
                                               (reverse _e59266000_)))
                                          (if (gx#stx-pair/null? _tl59165984_)
                                              (let ((___splice2105121052_
                                                     (gx#syntax-split-splice
                                                      _tl59165984_
                                                      '0)))
                                                (let ((_tl59386044_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2105121052_
                                                          '1)))
                                                      (_target59366041_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2105121052_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl59386044_)
                                                      (letrec ((_loop59396047_
                                                                (lambda (_hd59376051_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _body59436054_)
                          (if (gx#stx-pair? _hd59376051_)
                              (let ((_e59406057_ (gx#syntax-e _hd59376051_)))
                                (let ((_lp-tl59426064_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e59406057_)))
                                      (_lp-hd59416061_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e59406057_))))
                                  (_loop59396047_
                                   _lp-tl59426064_
                                   (cons _lp-hd59416061_ _body59436054_))))
                              (let ((_body59446067_ (reverse _body59436054_)))
                                (let ((_L6071_ _body59446067_)
                                      (_L6073_ _e59286035_)
                                      (_L6074_ _hd59296038_)
                                      (_L6075_ _hd59145971_))
                                  (if (gx#stx-andmap
                                       _let-head?5879_
                                       (let ((__tmp23142
                                              (lambda (_g61016104_ _g61026107_)
                                                (cons _g61016104_
                                                      _g61026107_))))
                                         (declare (not safe))
                                         (__foldr1 __tmp23142 '() _L6074_)))
                                      (___kont2104721048_
                                       _L6071_
                                       _L6073_
                                       _L6074_
                                       _L6075_)
                                      (let ()
                                        (declare (not safe))
                                        (_g58845950_)))))))))
                (_loop59396047_ _target59366041_ '()))
              (let () (declare (not safe)) (_g58845950_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g58845950_))))))))
                          (_loop59225993_ _target59195987_ '() '()))))
                     (___match2108521086_
                      (lambda (_e58936218_
                               _hd58926222_
                               _tl58916225_
                               _e58966228_
                               _hd58956232_
                               _tl58946235_
                               _e58996238_
                               _hd58986242_
                               _tl58976245_
                               _e59026248_
                               _hd59016252_
                               _tl59006255_
                               _e59056258_
                               _hd59046262_
                               _tl59036265_)
                        (let ((_L6268_ _tl58976245_)
                              (_L6270_ _hd59046262_)
                              (_L6271_ _hd59016252_)
                              (_L6272_ _hd58956232_)
                              (_L6273_ _hd58926222_))
                          (if (_let-head?5879_ _L6271_)
                              (___kont2104521046_
                               _L6268_
                               _L6270_
                               _L6271_
                               _L6272_
                               _L6273_)
                              (if (gx#stx-pair/null? _hd58986242_)
                                  (let ((___splice2104921050_
                                         (gx#syntax-split-splice
                                          _hd58986242_
                                          '0)))
                                    (let ((_tl59215990_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice2104921050_
                                              '1)))
                                          (_target59195987_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice2104921050_
                                              '0))))
                                      (if (gx#stx-null? _tl59215990_)
                                          (___match2111121112_
                                           _e58936218_
                                           _hd58926222_
                                           _tl58916225_
                                           _e58966228_
                                           _hd58956232_
                                           _tl58946235_
                                           _e58996238_
                                           _hd58986242_
                                           _tl58976245_
                                           ___splice2104921050_
                                           _target59195987_
                                           _tl59215990_)
                                          (let ()
                                            (declare (not safe))
                                            (_g58845950_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g58845950_))))))))
                (if (gx#stx-pair? ___stx2104221043_)
                    (let ((_e58936218_ (gx#syntax-e ___stx2104221043_)))
                      (let ((_tl58916225_
                             (let () (declare (not safe)) (##cdr _e58936218_)))
                            (_hd58926222_
                             (let ()
                               (declare (not safe))
                               (##car _e58936218_))))
                        (if (gx#stx-pair? _tl58916225_)
                            (let ((_e58966228_ (gx#syntax-e _tl58916225_)))
                              (let ((_tl58946235_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e58966228_)))
                                    (_hd58956232_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e58966228_))))
                                (if (gx#stx-pair? _tl58946235_)
                                    (let ((_e58996238_
                                           (gx#syntax-e _tl58946235_)))
                                      (let ((_tl58976245_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e58996238_)))
                                            (_hd58986242_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e58996238_))))
                                        (if (gx#stx-pair? _hd58986242_)
                                            (let ((_e59026248_
                                                   (gx#syntax-e _hd58986242_)))
                                              (let ((_tl59006255_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e59026248_)))
                                                    (_hd59016252_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e59026248_))))
                                                (if (gx#stx-pair? _tl59006255_)
                                                    (let ((_e59056258_
                                                           (gx#syntax-e
                                                            _tl59006255_)))
                                                      (let ((_tl59036265_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e59056258_)))
                    (_hd59046262_
                     (let () (declare (not safe)) (##car _e59056258_))))
                (if (gx#stx-null? _tl59036265_)
                    (___match2108521086_
                     _e58936218_
                     _hd58926222_
                     _tl58916225_
                     _e58966228_
                     _hd58956232_
                     _tl58946235_
                     _e58996238_
                     _hd58986242_
                     _tl58976245_
                     _e59026248_
                     _hd59016252_
                     _tl59006255_
                     _e59056258_
                     _hd59046262_
                     _tl59036265_)
                    (if (gx#stx-pair/null? _hd58986242_)
                        (let ((___splice2104921050_
                               (gx#syntax-split-splice _hd58986242_ '0)))
                          (let ((_tl59215990_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice2104921050_ '1)))
                                (_target59195987_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice2104921050_ '0))))
                            (if (gx#stx-null? _tl59215990_)
                                (___match2111121112_
                                 _e58936218_
                                 _hd58926222_
                                 _tl58916225_
                                 _e58966228_
                                 _hd58956232_
                                 _tl58946235_
                                 _e58996238_
                                 _hd58986242_
                                 _tl58976245_
                                 ___splice2104921050_
                                 _target59195987_
                                 _tl59215990_)
                                (let () (declare (not safe)) (_g58845950_)))))
                        (let () (declare (not safe)) (_g58845950_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _hd58986242_)
                                                        (let ((___splice2104921050_
                                                               (gx#syntax-split-splice
                                                                _hd58986242_
                                                                '0)))
                                                          (let ((_tl59215990_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice2104921050_ '1)))
                        (_target59195987_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice2104921050_ '0))))
                    (if (gx#stx-null? _tl59215990_)
                        (___match2111121112_
                         _e58936218_
                         _hd58926222_
                         _tl58916225_
                         _e58966228_
                         _hd58956232_
                         _tl58946235_
                         _e58996238_
                         _hd58986242_
                         _tl58976245_
                         ___splice2104921050_
                         _target59195987_
                         _tl59215990_)
                        (let () (declare (not safe)) (_g58845950_)))))
                (let () (declare (not safe)) (_g58845950_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair/null?
                                                 _hd58986242_)
                                                (let ((___splice2104921050_
                                                       (gx#syntax-split-splice
                                                        _hd58986242_
                                                        '0)))
                                                  (let ((_tl59215990_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice2104921050_
                                                            '1)))
                                                        (_target59195987_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice2104921050_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl59215990_)
                                                        (___match2111121112_
                                                         _e58936218_
                                                         _hd58926222_
                                                         _tl58916225_
                                                         _e58966228_
                                                         _hd58956232_
                                                         _tl58946235_
                                                         _e58996238_
                                                         _hd58986242_
                                                         _tl58976245_
                                                         ___splice2104921050_
                                                         _target59195987_
                                                         _tl59215990_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g58845950_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g58845950_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_g58845950_)))))
                            (let () (declare (not safe)) (_g58845950_)))))
                    (let () (declare (not safe)) (_g58845950_)))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#and|
      (lambda (_$stx6422_)
        (let* ((___stx2111421115_ _$stx6422_)
               (_g64286454_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2111421115_))))
          (let ((___kont2111721118_ (lambda () '#t))
                (___kont2111921120_ (lambda (_L6526_) _L6526_))
                (___kont2112121122_
                 (lambda (_L6481_ _L6483_ _L6484_)
                   (cons (gx#datum->syntax '#f 'if)
                         (cons _L6483_
                               (cons (cons _L6484_ _L6481_)
                                     (cons '#f '())))))))
            (if (gx#stx-pair? ___stx2111421115_)
                (let ((_e64326546_ (gx#syntax-e ___stx2111421115_)))
                  (let ((_tl64306553_
                         (let () (declare (not safe)) (##cdr _e64326546_)))
                        (_hd64316550_
                         (let () (declare (not safe)) (##car _e64326546_))))
                    (if (gx#stx-null? _tl64306553_)
                        (___kont2111721118_)
                        (if (gx#stx-pair? _tl64306553_)
                            (let ((_e64396516_ (gx#syntax-e _tl64306553_)))
                              (let ((_tl64376523_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e64396516_)))
                                    (_hd64386520_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e64396516_))))
                                (if (gx#stx-null? _tl64376523_)
                                    (___kont2111921120_ _hd64386520_)
                                    (___kont2112121122_
                                     _tl64376523_
                                     _hd64386520_
                                     _hd64316550_))))
                            (let () (declare (not safe)) (_g64286454_))))))
                (let () (declare (not safe)) (_g64286454_)))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#or|
      (lambda (_$stx6564_)
        (let* ((___stx2116021161_ _$stx6564_)
               (_g65706596_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2116021161_))))
          (let ((___kont2116321164_ (lambda () '#f))
                (___kont2116521166_ (lambda (_L6668_) _L6668_))
                (___kont2116721168_
                 (lambda (_L6623_ _L6625_ _L6626_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$e)
                                     (cons _L6625_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (gx#datum->syntax '#f '$e)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$e)
                                                       (cons (cons _L6626_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L6623_)
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (gx#stx-pair? ___stx2116021161_)
                (let ((_e65746688_ (gx#syntax-e ___stx2116021161_)))
                  (let ((_tl65726695_
                         (let () (declare (not safe)) (##cdr _e65746688_)))
                        (_hd65736692_
                         (let () (declare (not safe)) (##car _e65746688_))))
                    (if (gx#stx-null? _tl65726695_)
                        (___kont2116321164_)
                        (if (gx#stx-pair? _tl65726695_)
                            (let ((_e65816658_ (gx#syntax-e _tl65726695_)))
                              (let ((_tl65796665_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e65816658_)))
                                    (_hd65806662_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e65816658_))))
                                (if (gx#stx-null? _tl65796665_)
                                    (___kont2116521166_ _hd65806662_)
                                    (___kont2116721168_
                                     _tl65796665_
                                     _hd65806662_
                                     _hd65736692_))))
                            (let () (declare (not safe)) (_g65706596_))))))
                (let () (declare (not safe)) (_g65706596_)))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#cond|
      (lambda (_$stx6706_)
        (let* ((___stx2120621207_ _$stx6706_)
               (_g67156806_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2120621207_))))
          (let ((___kont2120921210_ (lambda () '#!void))
                (___kont2121121212_
                 (lambda (_L7153_)
                   (cons (gx#datum->syntax '#f '%#expression)
                         (cons (cons (gx#datum->syntax '#f 'begin)
                                     (let ((__tmp23143
                                            (lambda (_g71727175_ _g71737178_)
                                              (cons _g71727175_ _g71737178_))))
                                       (declare (not safe))
                                       (__foldr1 __tmp23143 '() _L7153_)))
                               '()))))
                (___kont2121521216_
                 (lambda ()
                   (cons (gx#datum->syntax '#f 'syntax-error)
                         (cons '"bad syntax; misplaced else" '()))))
                (___kont2121721218_
                 (lambda (_L7026_ _L7028_ _L7029_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$e)
                                     (cons _L7028_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (gx#datum->syntax '#f '$e)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$e)
                                                       (cons (cons _L7029_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L7026_)
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont2121921220_
                 (lambda (_L6964_ _L6966_ _L6967_ _L6968_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$e)
                                     (cons _L6967_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (gx#datum->syntax '#f '$e)
                                                 (cons (cons _L6966_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$e)
                           '()))
               (cons (cons _L6968_ _L6964_) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont2122121222_
                 (lambda (_L6873_ _L6875_ _L6876_ _L6877_)
                   (cons (gx#datum->syntax '#f 'if)
                         (cons _L6876_
                               (cons (cons (gx#datum->syntax '#f 'begin)
                                           (let ((__tmp23144
                                                  (lambda (_g68986901_
                                                           _g68996904_)
                                                    (cons _g68986901_
                                                          _g68996904_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp23144
                                              '()
                                              _L6875_)))
                                     (cons (cons _L6877_ _L6873_) '())))))))
            (let* ((___match2136721368_
                    (lambda (_e67856813_
                             _hd67846817_
                             _tl67836820_
                             _e67886823_
                             _hd67876827_
                             _tl67866830_
                             _e67916833_
                             _hd67906837_
                             _tl67896840_
                             ___splice2122321224_
                             _target67926843_
                             _tl67946846_)
                      (letrec ((_loop67956849_
                                (lambda (_hd67936853_ _body67996856_)
                                  (if (gx#stx-pair? _hd67936853_)
                                      (let ((_e67966859_
                                             (gx#syntax-e _hd67936853_)))
                                        (let ((_lp-tl67986866_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e67966859_)))
                                              (_lp-hd67976863_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e67966859_))))
                                          (_loop67956849_
                                           _lp-tl67986866_
                                           (cons _lp-hd67976863_
                                                 _body67996856_))))
                                      (let ((_body68006869_
                                             (reverse _body67996856_)))
                                        (___kont2122121222_
                                         _tl67866830_
                                         _body68006869_
                                         _hd67906837_
                                         _hd67846817_))))))
                        (_loop67956849_ _target67926843_ '()))))
                   (___match2126321264_
                    (lambda (_e67237093_
                             _hd67227097_
                             _tl67217100_
                             _e67267103_
                             _hd67257107_
                             _tl67247110_
                             _e67297113_
                             _hd67287117_
                             _tl67277120_
                             ___splice2121321214_
                             _target67307123_
                             _tl67327126_)
                      (letrec ((_loop67337129_
                                (lambda (_hd67317133_ _body67377136_)
                                  (if (gx#stx-pair? _hd67317133_)
                                      (let ((_e67347139_
                                             (gx#syntax-e _hd67317133_)))
                                        (let ((_lp-tl67367146_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e67347139_)))
                                              (_lp-hd67357143_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e67347139_))))
                                          (_loop67337129_
                                           _lp-tl67367146_
                                           (cons _lp-hd67357143_
                                                 _body67377136_))))
                                      (let ((_body67387149_
                                             (reverse _body67377136_)))
                                        (if (gx#stx-null? _tl67247110_)
                                            (___kont2121121212_ _body67387149_)
                                            (___kont2121521216_)))))))
                        (_loop67337129_ _target67307123_ '())))))
              (if (gx#stx-pair? ___stx2120621207_)
                  (let ((_e67197188_ (gx#syntax-e ___stx2120621207_)))
                    (let ((_tl67177195_
                           (let () (declare (not safe)) (##cdr _e67197188_)))
                          (_hd67187192_
                           (let () (declare (not safe)) (##car _e67197188_))))
                      (if (gx#stx-null? _tl67177195_)
                          (___kont2120921210_)
                          (if (gx#stx-pair? _tl67177195_)
                              (let ((_e67267103_ (gx#syntax-e _tl67177195_)))
                                (let ((_tl67247110_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e67267103_)))
                                      (_hd67257107_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e67267103_))))
                                  (if (gx#stx-pair? _hd67257107_)
                                      (let ((_e67297113_
                                             (gx#syntax-e _hd67257107_)))
                                        (let ((_tl67277120_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e67297113_)))
                                              (_hd67287117_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e67297113_))))
                                          (if (gx#identifier? _hd67287117_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar~Sugar-1[1]#_g23145_|
                                                   _hd67287117_)
                                                  (if (gx#stx-pair/null?
                                                       _tl67277120_)
                                                      (let ((___splice2121321214_
                                                             (gx#syntax-split-splice
                                                              _tl67277120_
                                                              '0)))
                                                        (let ((_tl67327126_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref ___splice2121321214_ '1)))
                      (_target67307123_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice2121321214_ '0))))
                  (if (gx#stx-null? _tl67327126_)
                      (___match2126321264_
                       _e67197188_
                       _hd67187192_
                       _tl67177195_
                       _e67267103_
                       _hd67257107_
                       _tl67247110_
                       _e67297113_
                       _hd67287117_
                       _tl67277120_
                       ___splice2121321214_
                       _target67307123_
                       _tl67327126_)
                      (___kont2121521216_))))
              (___kont2121521216_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-null?
                                                       _tl67277120_)
                                                      (___kont2121721218_
                                                       _tl67247110_
                                                       _hd67287117_
                                                       _hd67187192_)
                                                      (if (gx#stx-pair?
                                                           _tl67277120_)
                                                          (let ((_e67756944_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl67277120_)))
                    (let ((_tl67736951_
                           (let () (declare (not safe)) (##cdr _e67756944_)))
                          (_hd67746948_
                           (let () (declare (not safe)) (##car _e67756944_))))
                      (if (gx#identifier? _hd67746948_)
                          (if (gx#free-identifier=?
                               |gerbil/core/sugar~Sugar-1[1]#_g23146_|
                               _hd67746948_)
                              (if (gx#stx-pair? _tl67736951_)
                                  (let ((_e67786954_
                                         (gx#syntax-e _tl67736951_)))
                                    (let ((_tl67766961_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e67786954_)))
                                          (_hd67776958_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e67786954_))))
                                      (if (gx#stx-null? _tl67766961_)
                                          (___kont2121921220_
                                           _tl67247110_
                                           _hd67776958_
                                           _hd67287117_
                                           _hd67187192_)
                                          (if (gx#stx-pair/null? _tl67277120_)
                                              (let ((___splice2122321224_
                                                     (gx#syntax-split-splice
                                                      _tl67277120_
                                                      '0)))
                                                (let ((_tl67946846_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2122321224_
                                                          '1)))
                                                      (_target67926843_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2122321224_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl67946846_)
                                                      (___match2136721368_
                                                       _e67197188_
                                                       _hd67187192_
                                                       _tl67177195_
                                                       _e67267103_
                                                       _hd67257107_
                                                       _tl67247110_
                                                       _e67297113_
                                                       _hd67287117_
                                                       _tl67277120_
                                                       ___splice2122321224_
                                                       _target67926843_
                                                       _tl67946846_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g67156806_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g67156806_))))))
                                  (if (gx#stx-pair/null? _tl67277120_)
                                      (let ((___splice2122321224_
                                             (gx#syntax-split-splice
                                              _tl67277120_
                                              '0)))
                                        (let ((_tl67946846_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2122321224_
                                                  '1)))
                                              (_target67926843_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2122321224_
                                                  '0))))
                                          (if (gx#stx-null? _tl67946846_)
                                              (___match2136721368_
                                               _e67197188_
                                               _hd67187192_
                                               _tl67177195_
                                               _e67267103_
                                               _hd67257107_
                                               _tl67247110_
                                               _e67297113_
                                               _hd67287117_
                                               _tl67277120_
                                               ___splice2122321224_
                                               _target67926843_
                                               _tl67946846_)
                                              (let ()
                                                (declare (not safe))
                                                (_g67156806_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g67156806_))))
                              (if (gx#stx-pair/null? _tl67277120_)
                                  (let ((___splice2122321224_
                                         (gx#syntax-split-splice
                                          _tl67277120_
                                          '0)))
                                    (let ((_tl67946846_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice2122321224_
                                              '1)))
                                          (_target67926843_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice2122321224_
                                              '0))))
                                      (if (gx#stx-null? _tl67946846_)
                                          (___match2136721368_
                                           _e67197188_
                                           _hd67187192_
                                           _tl67177195_
                                           _e67267103_
                                           _hd67257107_
                                           _tl67247110_
                                           _e67297113_
                                           _hd67287117_
                                           _tl67277120_
                                           ___splice2122321224_
                                           _target67926843_
                                           _tl67946846_)
                                          (let ()
                                            (declare (not safe))
                                            (_g67156806_)))))
                                  (let () (declare (not safe)) (_g67156806_))))
                          (if (gx#stx-pair/null? _tl67277120_)
                              (let ((___splice2122321224_
                                     (gx#syntax-split-splice _tl67277120_ '0)))
                                (let ((_tl67946846_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice2122321224_
                                          '1)))
                                      (_target67926843_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice2122321224_
                                          '0))))
                                  (if (gx#stx-null? _tl67946846_)
                                      (___match2136721368_
                                       _e67197188_
                                       _hd67187192_
                                       _tl67177195_
                                       _e67267103_
                                       _hd67257107_
                                       _tl67247110_
                                       _e67297113_
                                       _hd67287117_
                                       _tl67277120_
                                       ___splice2122321224_
                                       _target67926843_
                                       _tl67946846_)
                                      (let ()
                                        (declare (not safe))
                                        (_g67156806_)))))
                              (let () (declare (not safe)) (_g67156806_))))))
                  (if (gx#stx-pair/null? _tl67277120_)
                      (let ((___splice2122321224_
                             (gx#syntax-split-splice _tl67277120_ '0)))
                        (let ((_tl67946846_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice2122321224_ '1)))
                              (_target67926843_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice2122321224_ '0))))
                          (if (gx#stx-null? _tl67946846_)
                              (___match2136721368_
                               _e67197188_
                               _hd67187192_
                               _tl67177195_
                               _e67267103_
                               _hd67257107_
                               _tl67247110_
                               _e67297113_
                               _hd67287117_
                               _tl67277120_
                               ___splice2122321224_
                               _target67926843_
                               _tl67946846_)
                              (let () (declare (not safe)) (_g67156806_)))))
                      (let () (declare (not safe)) (_g67156806_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null? _tl67277120_)
                                                  (___kont2121721218_
                                                   _tl67247110_
                                                   _hd67287117_
                                                   _hd67187192_)
                                                  (if (gx#stx-pair?
                                                       _tl67277120_)
                                                      (let ((_e67756944_
                                                             (gx#syntax-e
                                                              _tl67277120_)))
                                                        (let ((_tl67736951_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e67756944_)))
                      (_hd67746948_
                       (let () (declare (not safe)) (##car _e67756944_))))
                  (if (gx#identifier? _hd67746948_)
                      (if (gx#free-identifier=?
                           |gerbil/core/sugar~Sugar-1[1]#_g23146_|
                           _hd67746948_)
                          (if (gx#stx-pair? _tl67736951_)
                              (let ((_e67786954_ (gx#syntax-e _tl67736951_)))
                                (let ((_tl67766961_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e67786954_)))
                                      (_hd67776958_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e67786954_))))
                                  (if (gx#stx-null? _tl67766961_)
                                      (___kont2121921220_
                                       _tl67247110_
                                       _hd67776958_
                                       _hd67287117_
                                       _hd67187192_)
                                      (if (gx#stx-pair/null? _tl67277120_)
                                          (let ((___splice2122321224_
                                                 (gx#syntax-split-splice
                                                  _tl67277120_
                                                  '0)))
                                            (let ((_tl67946846_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2122321224_
                                                      '1)))
                                                  (_target67926843_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2122321224_
                                                      '0))))
                                              (if (gx#stx-null? _tl67946846_)
                                                  (___match2136721368_
                                                   _e67197188_
                                                   _hd67187192_
                                                   _tl67177195_
                                                   _e67267103_
                                                   _hd67257107_
                                                   _tl67247110_
                                                   _e67297113_
                                                   _hd67287117_
                                                   _tl67277120_
                                                   ___splice2122321224_
                                                   _target67926843_
                                                   _tl67946846_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g67156806_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g67156806_))))))
                              (if (gx#stx-pair/null? _tl67277120_)
                                  (let ((___splice2122321224_
                                         (gx#syntax-split-splice
                                          _tl67277120_
                                          '0)))
                                    (let ((_tl67946846_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice2122321224_
                                              '1)))
                                          (_target67926843_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice2122321224_
                                              '0))))
                                      (if (gx#stx-null? _tl67946846_)
                                          (___match2136721368_
                                           _e67197188_
                                           _hd67187192_
                                           _tl67177195_
                                           _e67267103_
                                           _hd67257107_
                                           _tl67247110_
                                           _e67297113_
                                           _hd67287117_
                                           _tl67277120_
                                           ___splice2122321224_
                                           _target67926843_
                                           _tl67946846_)
                                          (let ()
                                            (declare (not safe))
                                            (_g67156806_)))))
                                  (let () (declare (not safe)) (_g67156806_))))
                          (if (gx#stx-pair/null? _tl67277120_)
                              (let ((___splice2122321224_
                                     (gx#syntax-split-splice _tl67277120_ '0)))
                                (let ((_tl67946846_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice2122321224_
                                          '1)))
                                      (_target67926843_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice2122321224_
                                          '0))))
                                  (if (gx#stx-null? _tl67946846_)
                                      (___match2136721368_
                                       _e67197188_
                                       _hd67187192_
                                       _tl67177195_
                                       _e67267103_
                                       _hd67257107_
                                       _tl67247110_
                                       _e67297113_
                                       _hd67287117_
                                       _tl67277120_
                                       ___splice2122321224_
                                       _target67926843_
                                       _tl67946846_)
                                      (let ()
                                        (declare (not safe))
                                        (_g67156806_)))))
                              (let () (declare (not safe)) (_g67156806_))))
                      (if (gx#stx-pair/null? _tl67277120_)
                          (let ((___splice2122321224_
                                 (gx#syntax-split-splice _tl67277120_ '0)))
                            (let ((_tl67946846_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice2122321224_ '1)))
                                  (_target67926843_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice2122321224_ '0))))
                              (if (gx#stx-null? _tl67946846_)
                                  (___match2136721368_
                                   _e67197188_
                                   _hd67187192_
                                   _tl67177195_
                                   _e67267103_
                                   _hd67257107_
                                   _tl67247110_
                                   _e67297113_
                                   _hd67287117_
                                   _tl67277120_
                                   ___splice2122321224_
                                   _target67926843_
                                   _tl67946846_)
                                  (let ()
                                    (declare (not safe))
                                    (_g67156806_)))))
                          (let () (declare (not safe)) (_g67156806_))))))
              (if (gx#stx-pair/null? _tl67277120_)
                  (let ((___splice2122321224_
                         (gx#syntax-split-splice _tl67277120_ '0)))
                    (let ((_tl67946846_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice2122321224_ '1)))
                          (_target67926843_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice2122321224_ '0))))
                      (if (gx#stx-null? _tl67946846_)
                          (___match2136721368_
                           _e67197188_
                           _hd67187192_
                           _tl67177195_
                           _e67267103_
                           _hd67257107_
                           _tl67247110_
                           _e67297113_
                           _hd67287117_
                           _tl67277120_
                           ___splice2122321224_
                           _target67926843_
                           _tl67946846_)
                          (let () (declare (not safe)) (_g67156806_)))))
                  (let () (declare (not safe)) (_g67156806_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ()
                                        (declare (not safe))
                                        (_g67156806_)))))
                              (let () (declare (not safe)) (_g67156806_))))))
                  (let () (declare (not safe)) (_g67156806_))))))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#when|
      (lambda (_$stx7208_)
        (let* ((_g72127236_
                (lambda (_g72137232_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g72137232_)))
               (_g72117321_
                (lambda (_g72137240_)
                  (if (gx#stx-pair? _g72137240_)
                      (let ((_e72187243_ (gx#syntax-e _g72137240_)))
                        (let ((_hd72177247_
                               (let ()
                                 (declare (not safe))
                                 (##car _e72187243_)))
                              (_tl72167250_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e72187243_))))
                          (if (gx#stx-pair? _tl72167250_)
                              (let ((_e72217253_ (gx#syntax-e _tl72167250_)))
                                (let ((_hd72207257_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e72217253_)))
                                      (_tl72197260_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e72217253_))))
                                  (if (gx#stx-pair/null? _tl72197260_)
                                      (let ((_g23147_
                                             (gx#syntax-split-splice
                                              _tl72197260_
                                              '0)))
                                        (begin
                                          (let ((_g23148_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g23147_)
                                                       (##vector-length
                                                        _g23147_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g23148_ 2)))
                                                (error "Context expects 2 values"
                                                       _g23148_)))
                                          (let ((_target72227263_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g23147_ 0)))
                                                (_tl72247266_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g23147_ 1))))
                                            (if (gx#stx-null? _tl72247266_)
                                                (letrec ((_loop72257269_
                                                          (lambda (_hd72237273_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr72297276_)
                    (if (gx#stx-pair? _hd72237273_)
                        (let ((_e72267279_ (gx#syntax-e _hd72237273_)))
                          (let ((_lp-hd72277283_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e72267279_)))
                                (_lp-tl72287286_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e72267279_))))
                            (_loop72257269_
                             _lp-tl72287286_
                             (cons _lp-hd72277283_ _expr72297276_))))
                        (let ((_expr72307289_ (reverse _expr72297276_)))
                          ((lambda (_L7293_ _L7295_)
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons _L7295_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'begin)
                                                     (let ((__tmp23149
                                                            (lambda (_g73127315_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g73137318_)
                      (cons _g73127315_ _g73137318_))))
               (declare (not safe))
               (__foldr1 __tmp23149 '() _L7293_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons '#!void '())))))
                           _expr72307289_
                           _hd72207257_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop72257269_
                                                   _target72227263_
                                                   '()))
                                                (_g72127236_ _g72137240_)))))
                                      (_g72127236_ _g72137240_))))
                              (_g72127236_ _g72137240_))))
                      (_g72127236_ _g72137240_)))))
          (_g72117321_ _$stx7208_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#unless|
      (lambda (_$stx7326_)
        (let* ((_g73307354_
                (lambda (_g73317350_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g73317350_)))
               (_g73297439_
                (lambda (_g73317358_)
                  (if (gx#stx-pair? _g73317358_)
                      (let ((_e73367361_ (gx#syntax-e _g73317358_)))
                        (let ((_hd73357365_
                               (let ()
                                 (declare (not safe))
                                 (##car _e73367361_)))
                              (_tl73347368_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e73367361_))))
                          (if (gx#stx-pair? _tl73347368_)
                              (let ((_e73397371_ (gx#syntax-e _tl73347368_)))
                                (let ((_hd73387375_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e73397371_)))
                                      (_tl73377378_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e73397371_))))
                                  (if (gx#stx-pair/null? _tl73377378_)
                                      (let ((_g23150_
                                             (gx#syntax-split-splice
                                              _tl73377378_
                                              '0)))
                                        (begin
                                          (let ((_g23151_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g23150_)
                                                       (##vector-length
                                                        _g23150_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g23151_ 2)))
                                                (error "Context expects 2 values"
                                                       _g23151_)))
                                          (let ((_target73407381_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g23150_ 0)))
                                                (_tl73427384_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g23150_ 1))))
                                            (if (gx#stx-null? _tl73427384_)
                                                (letrec ((_loop73437387_
                                                          (lambda (_hd73417391_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr73477394_)
                    (if (gx#stx-pair? _hd73417391_)
                        (let ((_e73447397_ (gx#syntax-e _hd73417391_)))
                          (let ((_lp-hd73457401_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e73447397_)))
                                (_lp-tl73467404_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e73447397_))))
                            (_loop73437387_
                             _lp-tl73467404_
                             (cons _lp-hd73457401_ _expr73477394_))))
                        (let ((_expr73487407_ (reverse _expr73477394_)))
                          ((lambda (_L7411_ _L7413_)
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons _L7413_
                                         (cons '#!void
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'begin)
                                                           (let ((__tmp23152
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g74307433_ _g74317436_)
                            (cons _g74307433_ _g74317436_))))
                     (declare (not safe))
                     (__foldr1 __tmp23152 '() _L7411_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                           _expr73487407_
                           _hd73387375_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop73437387_
                                                   _target73407381_
                                                   '()))
                                                (_g73307354_ _g73317358_)))))
                                      (_g73307354_ _g73317358_))))
                              (_g73307354_ _g73317358_))))
                      (_g73307354_ _g73317358_)))))
          (_g73297439_ _$stx7326_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#syntax-error|
      (lambda (_stx7444_)
        (let* ((_g74477471_
                (lambda (_g74487467_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g74487467_)))
               (_g74467556_
                (lambda (_g74487475_)
                  (if (gx#stx-pair? _g74487475_)
                      (let ((_e74537478_ (gx#syntax-e _g74487475_)))
                        (let ((_hd74527482_
                               (let ()
                                 (declare (not safe))
                                 (##car _e74537478_)))
                              (_tl74517485_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e74537478_))))
                          (if (gx#stx-pair? _tl74517485_)
                              (let ((_e74567488_ (gx#syntax-e _tl74517485_)))
                                (let ((_hd74557492_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e74567488_)))
                                      (_tl74547495_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e74567488_))))
                                  (if (gx#stx-pair/null? _tl74547495_)
                                      (let ((_g23153_
                                             (gx#syntax-split-splice
                                              _tl74547495_
                                              '0)))
                                        (begin
                                          (let ((_g23154_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g23153_)
                                                       (##vector-length
                                                        _g23153_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g23154_ 2)))
                                                (error "Context expects 2 values"
                                                       _g23154_)))
                                          (let ((_target74577498_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g23153_ 0)))
                                                (_tl74597501_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g23153_ 1))))
                                            (if (gx#stx-null? _tl74597501_)
                                                (letrec ((_loop74607504_
                                                          (lambda (_hd74587508_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _detail74647511_)
                    (if (gx#stx-pair? _hd74587508_)
                        (let ((_e74617514_ (gx#syntax-e _hd74587508_)))
                          (let ((_lp-hd74627518_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e74617514_)))
                                (_lp-tl74637521_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e74617514_))))
                            (_loop74607504_
                             _lp-tl74637521_
                             (cons _lp-hd74627518_ _detail74647511_))))
                        (let ((_detail74657524_ (reverse _detail74647511_)))
                          ((lambda (_L7528_ _L7530_)
                             (if (gx#stx-string? _L7530_)
                                 (apply gx#raise-syntax-error
                                        '#f
                                        (gx#stx-e _L7530_)
                                        _stx7444_
                                        (gx#syntax->list
                                         (let ((__tmp23155
                                                (lambda (_g75477550_
                                                         _g75487553_)
                                                  (cons _g75477550_
                                                        _g75487553_))))
                                           (declare (not safe))
                                           (__foldr1 __tmp23155 '() _L7528_))))
                                 (_g74477471_ _g74487475_)))
                           _detail74657524_
                           _hd74557492_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop74607504_
                                                   _target74577498_
                                                   '()))
                                                (_g74477471_ _g74487475_)))))
                                      (_g74477471_ _g74487475_))))
                              (_g74477471_ _g74487475_))))
                      (_g74477471_ _g74487475_)))))
          (_g74467556_ _stx7444_))))
    (define |gerbil/core/sugar~Sugar-1[:0:]#defmutable|
      (lambda (_$stx7561_)
        (let* ((_g75657583_
                (lambda (_g75667579_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g75667579_)))
               (_g75647638_
                (lambda (_g75667587_)
                  (if (gx#stx-pair? _g75667587_)
                      (let ((_e75717590_ (gx#syntax-e _g75667587_)))
                        (let ((_hd75707594_
                               (let ()
                                 (declare (not safe))
                                 (##car _e75717590_)))
                              (_tl75697597_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e75717590_))))
                          (if (gx#stx-pair? _tl75697597_)
                              (let ((_e75747600_ (gx#syntax-e _tl75697597_)))
                                (let ((_hd75737604_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e75747600_)))
                                      (_tl75727607_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e75747600_))))
                                  (if (gx#stx-pair? _tl75727607_)
                                      (let ((_e75777610_
                                             (gx#syntax-e _tl75727607_)))
                                        (let ((_hd75767614_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e75777610_)))
                                              (_tl75757617_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e75777610_))))
                                          (if (gx#stx-null? _tl75757617_)
                                              ((lambda (_L7620_ _L7622_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'def)
                           (cons _L7622_ (cons _L7620_ '())))
                     (cons (cons (gx#datum->syntax '#f '%#set!)
                                 (cons _L7622_ (cons _L7622_ '())))
                           (cons (cons (gx#datum->syntax '#f 'void) '())
                                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd75767614_
                                               _hd75737604_)
                                              (_g75657583_ _g75667587_))))
                                      (_g75657583_ _g75667587_))))
                              (_g75657583_ _g75667587_))))
                      (_g75657583_ _g75667587_)))))
          (_g75647638_ _$stx7561_))))))
