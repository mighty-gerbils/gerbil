(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g79683_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79685_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79687_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79689_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79690_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79692_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79693_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79695_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79696_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79698_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79699_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79702_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj79679
             (let ()
               (declare (not safe))
               (##structure
                gerbil/core/mop~MOP-2#class-type-info::t
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj79679 'gerbil#AST::t '1 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj79679 'syntax '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj79679 '(e source) '4 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj79679 '() '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj79679 '#t '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj79679 '#f '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj79679 '#f '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj79679 '#f '9 '#f '#f))
        (let ((__tmp79682 |gx[1]#_g79683_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj79679 __tmp79682 '10 '#f '#f))
        (let ((__tmp79684 |gx[1]#_g79685_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj79679 __tmp79684 '11 '#f '#f))
        (let ((__tmp79686 |gx[1]#_g79687_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj79679 __tmp79686 '12 '#f '#f))
        (let ((__tmp79688
               (cons (cons 'e |gx[1]#_g79689_|)
                     (cons (cons 'source |gx[1]#_g79690_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj79679 __tmp79688 '13 '#f '#f))
        (let ((__tmp79691
               (cons (cons 'e |gx[1]#_g79692_|)
                     (cons (cons 'source |gx[1]#_g79693_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj79679 __tmp79691 '14 '#f '#f))
        (let ((__tmp79694
               (cons (cons 'e |gx[1]#_g79695_|)
                     (cons (cons 'source |gx[1]#_g79696_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj79679 __tmp79694 '15 '#f '#f))
        (let ((__tmp79697
               (cons (cons 'e |gx[1]#_g79698_|)
                     (cons (cons 'source |gx[1]#_g79699_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj79679 __tmp79697 '16 '#f '#f))
        __obj79679))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx78299_)
        (let* ((_g7830378317_
                (lambda (_g7830478313_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g7830478313_)))
               (_g7830278359_
                (lambda (_g7830478321_)
                  (if (gx#stx-pair? _g7830478321_)
                      (let ((_e7830878324_ (gx#syntax-e _g7830478321_)))
                        (let ((_hd7830778328_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7830878324_)))
                              (_tl7830678331_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7830878324_))))
                          (if (gx#stx-pair? _tl7830678331_)
                              (let ((_e7831178334_
                                     (gx#syntax-e _tl7830678331_)))
                                (let ((_hd7831078338_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7831178334_)))
                                      (_tl7830978341_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7831178334_))))
                                  (if (gx#stx-null? _tl7830978341_)
                                      ((lambda (_L78344_)
                                         (cons (gx#datum->syntax '#f 'unless)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'procedure?)
                                                           (cons _L78344_ '()))
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'error)
                         (cons '"expected procedure" (cons _L78344_ '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd7831078338_)
                                      (_g7830378317_ _g7830478321_))))
                              (_g7830378317_ _g7830478321_))))
                      (_g7830378317_ _g7830478321_)))))
          (_g7830278359_ _$stx78299_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx78363_)
        (letrec ((_generate78366_
                  (lambda (_tgt78515_ _kws78517_ _clauses78518_)
                    (letrec ((_generate-clause78520_
                              (lambda (_hd79430_ _E79432_)
                                (let* ((___stx7958279583_ _hd79430_)
                                       (_g7943679463_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx7958279583_))))
                                  (let ((___kont7958579586_
                                         (lambda (_L79559_ _L79561_)
                                           (_generate178522_
                                            _hd79430_
                                            _L79561_
                                            '#t
                                            _L79559_
                                            _E79432_)))
                                        (___kont7958779588_
                                         (lambda (_L79511_ _L79513_ _L79514_)
                                           (_generate178522_
                                            _hd79430_
                                            _L79514_
                                            _L79513_
                                            _L79511_
                                            _E79432_)))
                                        (___kont7958979590_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx78363_
                                            _hd79430_))))
                                    (if (gx#stx-pair? ___stx7958279583_)
                                        (let ((_e7944279539_
                                               (gx#syntax-e
                                                ___stx7958279583_)))
                                          (let ((_tl7944079546_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e7944279539_)))
                                                (_hd7944179543_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e7944279539_))))
                                            (if (gx#stx-pair? _tl7944079546_)
                                                (let ((_e7944579549_
                                                       (gx#syntax-e
                                                        _tl7944079546_)))
                                                  (let ((_tl7944379556_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e7944579549_)))
                                                        (_hd7944479553_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e7944579549_))))
                                                    (if (gx#stx-null?
                                                         _tl7944379556_)
                                                        (___kont7958579586_
                                                         _hd7944479553_
                                                         _hd7944179543_)
                                                        (if (gx#stx-pair?
                                                             _tl7944379556_)
                                                            (let ((_e7945779501_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl7944379556_)))
                      (let ((_tl7945579508_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7945779501_)))
                            (_hd7945679505_
                             (let ()
                               (declare (not safe))
                               (##car _e7945779501_))))
                        (if (gx#stx-null? _tl7945579508_)
                            (___kont7958779588_
                             _hd7945679505_
                             _hd7944479553_
                             _hd7944179543_)
                            (___kont7958979590_))))
                    (___kont7958979590_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont7958979590_))))
                                        (___kont7958979590_))))))
                             (_generate178522_
                              (lambda (_where78908_
                                       _hd78910_
                                       _fender78911_
                                       _body78912_
                                       _E78913_)
                                (letrec ((_recur78915_
                                          (lambda (_hd78918_
                                                   _tgt78920_
                                                   _K78921_)
                                            (let* ((___stx7962879629_
                                                    _hd78918_)
                                                   (_g7892478936_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx7962879629_))))
                                              (let ((___kont7963179632_
                                                     (lambda (_L79220_
                                                              _L79222_)
                                                       (let* ((_g7923379241_
                                                               (lambda (_g7923479237_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g7923479237_)))
                      (_g7923279422_
                       (lambda (_g7923479245_)
                         ((lambda (_L79248_)
                            (let ()
                              (let* ((_g7926079268_
                                      (lambda (_g7926179264_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g7926179264_)))
                                     (_g7925979418_
                                      (lambda (_g7926179272_)
                                        ((lambda (_L79275_)
                                           (let ()
                                             (let* ((_g7928879296_
                                                     (lambda (_g7928979292_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g7928979292_)))
                                                    (_g7928779414_
                                                     (lambda (_g7928979300_)
                                                       ((lambda (_L79303_)
                                                          (let ()
                                                            (let* ((_g7931679324_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g7931779320_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g7931779320_)))
                           (_g7931579410_
                            (lambda (_g7931779328_)
                              ((lambda (_L79331_)
                                 (let ()
                                   (let* ((_g7934479352_
                                           (lambda (_g7934579348_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g7934579348_)))
                                          (_g7934379406_
                                           (lambda (_g7934579356_)
                                             ((lambda (_L79359_)
                                                (let ()
                                                  (let* ((_g7937279380_
                                                          (lambda (_g7937379376_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g7937379376_)))
                                                         (_g7937179402_
                                                          (lambda (_g7937379384_)
                                                            ((lambda (_L79387_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (cons (gx#datum->syntax '#f 'if)
                                 (cons (cons (gx#datum->syntax '#f 'stx-pair?)
                                             (cons _L79248_ '()))
                                       (cons (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons (cons _L79275_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'syntax-e)
                                         (cons _L79248_ '()))
                                   '()))
                       '())
                 (cons (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (cons _L79303_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '##car)
                                                           (cons _L79275_ '()))
                                                     '()))
                                         (cons (cons _L79331_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##cdr)
                         (cons _L79275_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons _L79359_ '())))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons _L79387_ '())))))))
                     _g7937379384_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g7937179402_ _E78913_))))
                                              _g7934579356_))))
                                     (_g7934379406_
                                      (_recur78915_
                                       _L79222_
                                       _L79303_
                                       (_recur78915_
                                        _L79220_
                                        _L79331_
                                        _K78921_))))))
                               _g7931779328_))))
                      (_g7931579410_ (gx#genident 'tl)))))
                _g7928979300_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g7928779414_
                                                (gx#genident 'hd)))))
                                         _g7926179272_))))
                                (_g7925979418_ (gx#genident 'e)))))
                          _g7923479245_))))
                 (_g7923279422_ _tgt78920_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont7963379634_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd78918_)
                                                           (if (gx#underscore?
                                                                _hd78918_)
                                                               _K78921_
                                                               (if (let ((__tmp79700
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g7894678948_)
                                    (gx#bound-identifier=?
                                     _g7894678948_
                                     _hd78918_))))
                             (declare (not safe))
                             (__find __tmp79700 _kws78517_))
                           (let* ((_g7895278967_
                                   (lambda (_g7895378963_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g7895378963_)))
                                  (_g7895179018_
                                   (lambda (_g7895378971_)
                                     (if (gx#stx-pair? _g7895378971_)
                                         (let ((_e7895878974_
                                                (gx#syntax-e _g7895378971_)))
                                           (let ((_hd7895778978_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e7895878974_)))
                                                 (_tl7895678981_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e7895878974_))))
                                             (if (gx#stx-pair? _tl7895678981_)
                                                 (let ((_e7896178984_
                                                        (gx#syntax-e
                                                         _tl7895678981_)))
                                                   (let ((_hd7896078988_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e7896178984_)))
                                                         (_tl7895978991_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e7896178984_))))
                                                     (if (gx#stx-null?
                                                          _tl7895978991_)
                                                         ((lambda (_L78994_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L78996_)
                    (let ()
                      (cons (gx#datum->syntax '#f 'if)
                            (cons (cons (gx#datum->syntax '#f 'and)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'identifier?)
                                                    (cons _L78996_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'core-identifier=?)
                                                          (cons _L78996_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     'quote)
                                    (cons _L78994_ '()))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (cons _K78921_ (cons _E78913_ '()))))))
                  _hd7896078988_
                  _hd7895778978_)
                 (_g7895278967_ _g7895378971_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g7895278967_
                                                  _g7895378971_))))
                                         (_g7895278967_ _g7895378971_)))))
                             (_g7895179018_ (list _tgt78920_ _hd78918_)))
                           (let* ((_g7902279037_
                                   (lambda (_g7902379033_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g7902379033_)))
                                  (_g7902179081_
                                   (lambda (_g7902379041_)
                                     (if (gx#stx-pair? _g7902379041_)
                                         (let ((_e7902879044_
                                                (gx#syntax-e _g7902379041_)))
                                           (let ((_hd7902779048_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e7902879044_)))
                                                 (_tl7902679051_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e7902879044_))))
                                             (if (gx#stx-pair? _tl7902679051_)
                                                 (let ((_e7903179054_
                                                        (gx#syntax-e
                                                         _tl7902679051_)))
                                                   (let ((_hd7903079058_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e7903179054_)))
                                                         (_tl7902979061_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e7903179054_))))
                                                     (if (gx#stx-null?
                                                          _tl7902979061_)
                                                         ((lambda (_L79064_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L79066_)
                    (let ()
                      (cons (gx#datum->syntax '#f 'let)
                            (cons (cons (cons _L79064_ (cons _L79066_ '()))
                                        '())
                                  (cons _K78921_ '())))))
                  _hd7903079058_
                  _hd7902779048_)
                 (_g7902279037_ _g7902379041_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g7902279037_
                                                  _g7902379041_))))
                                         (_g7902279037_ _g7902379041_)))))
                             (_g7902179081_ (list _tgt78920_ _hd78918_)))))
                   (if (gx#stx-null? _hd78918_)
                       (let* ((_g7908579093_
                               (lambda (_g7908679089_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g7908679089_)))
                              (_g7908479111_
                               (lambda (_g7908679097_)
                                 ((lambda (_L79100_)
                                    (let ()
                                      (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'stx-null?)
                                                        (cons _L79100_ '()))
                                                  (cons _K78921_
                                                        (cons _E78913_
                                                              '()))))))
                                  _g7908679097_))))
                         (_g7908479111_ _tgt78920_))
                       (if (gx#stx-datum? _hd78918_)
                           (let* ((_g7911579134_
                                   (lambda (_g7911679130_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g7911679130_)))
                                  (_g7911479192_
                                   (lambda (_g7911679138_)
                                     (if (gx#stx-pair? _g7911679138_)
                                         (let ((_e7912279141_
                                                (gx#syntax-e _g7911679138_)))
                                           (let ((_hd7912179145_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e7912279141_)))
                                                 (_tl7912079148_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e7912279141_))))
                                             (if (gx#stx-pair? _tl7912079148_)
                                                 (let ((_e7912579151_
                                                        (gx#syntax-e
                                                         _tl7912079148_)))
                                                   (let ((_hd7912479155_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e7912579151_)))
                                                         (_tl7912379158_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e7912579151_))))
                                                     (if (gx#stx-pair?
                                                          _tl7912379158_)
                                                         (let ((_e7912879161_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl7912379158_)))
                   (let ((_hd7912779165_
                          (let () (declare (not safe)) (##car _e7912879161_)))
                         (_tl7912679168_
                          (let () (declare (not safe)) (##cdr _e7912879161_))))
                     (if (gx#stx-null? _tl7912679168_)
                         ((lambda (_L79171_ _L79173_ _L79174_)
                            (let ()
                              (cons (gx#datum->syntax '#f 'if)
                                    (cons (cons _L79171_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'stx-e)
                                                            (cons _L79174_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons (gx#datum->syntax '#f 'quote) (cons _L79173_ '()))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons _K78921_
                                                (cons _E78913_ '()))))))
                          _hd7912779165_
                          _hd7912479155_
                          _hd7912179145_)
                         (_g7911579134_ _g7911679138_))))
                 (_g7911579134_ _g7911679138_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g7911579134_
                                                  _g7911679138_))))
                                         (_g7911579134_ _g7911679138_)))))
                             (_g7911479192_
                              (list _tgt78920_
                                    _hd78918_
                                    (let ((_e79196_ (gx#stx-e _hd78918_)))
                                      (if (or (let ()
                                                (declare (not safe))
                                                (keyword? _e79196_))
                                              (let ()
                                                (declare (not safe))
                                                (__immediate? _e79196_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e79196_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx78363_
                            _where78908_
                            _hd78918_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx7962879629_)
                                                    (let ((_e7893079210_
                                                           (gx#syntax-e
                                                            ___stx7962879629_)))
                                                      (let ((_tl7892879217_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e7893079210_)))
                    (_hd7892979214_
                     (let () (declare (not safe)) (##car _e7893079210_))))
                (___kont7963179632_ _tl7892879217_ _hd7892979214_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont7963379634_)))))))
                                  (_recur78915_
                                   _hd78910_
                                   _tgt78515_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _fender78911_
                                               (cons _body78912_
                                                     (cons _E78913_ '()))))))))
                             (_generate-clauses78523_
                              (lambda (_clauses78646_)
                                (let _lp78649_ ((_rest78652_ _clauses78646_)
                                                (_E78654_ (gx#genident 'E))
                                                (_r78655_ '()))
                                  (let* ((___stx7966479665_ _rest78652_)
                                         (_g7865878670_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx7966479665_))))
                                    (let ((___kont7966779668_
                                           (lambda (_L78735_ _L78737_)
                                             (let* ((___stx7964479645_
                                                     _L78737_)
                                                    (_g7874978760_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx7964479645_))))
                                               (let ((___kont7964779648_
                                                      (lambda (_L78889_)
                                                        (if (gx#stx-null?
                                                             _L78735_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L78889_)
                             (let ((__tmp79701 (gx#stx-null? _L78889_)))
                               (declare (not safe))
                               (not __tmp79701)))
                        (cons (cons _E78654_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _L78889_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _L78737_))
                                          '()))
                              _r78655_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx78363_
                         _L78737_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx78363_
                     _L78737_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont7964979650_
                                                      (lambda ()
                                                        (let* ((_g7877178779_
                                                                (lambda (_g7877278775_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g7877278775_)))
                       (_g7877078868_
                        (lambda (_g7877278783_)
                          ((lambda (_L78786_)
                             (let ()
                               (let* ((_g7880278810_
                                       (lambda (_g7880378806_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g7880378806_)))
                                      (_g7880178864_
                                       (lambda (_g7880378814_)
                                         ((lambda (_L78817_)
                                            (let ()
                                              (let* ((_g7883078838_
                                                      (lambda (_g7883178834_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g7883178834_)))
                                                     (_g7882978860_
                                                      (lambda (_g7883178842_)
                                                        ((lambda (_L78845_)
                                                           (let ()
                                                             (let ()
                                                               (_lp78649_
                                                                _L78735_
                                                                _L78786_
                                                                (cons (cons _E78654_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _L78845_ '()))
                              _r78655_)))))
                 _g7883178842_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g7882978860_
                                                 (gx#stx-wrap-source
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda)
                                                        (cons '()
                                                              (cons _L78817_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _L78737_))))))
                                          _g7880378814_))))
                                 (_g7880178864_
                                  (_generate-clause78520_
                                   _L78737_
                                   (cons _L78786_ '()))))))
                           _g7877278783_))))
                  (_g7877078868_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx7964479645_)
                                                     (let ((_e7875478879_
                                                            (gx#syntax-e
                                                             ___stx7964479645_)))
                                                       (let ((_tl7875278886_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e7875478879_)))
                     (_hd7875378883_
                      (let () (declare (not safe)) (##car _e7875478879_))))
                 (if (gx#identifier? _hd7875378883_)
                     (if (gx#free-identifier=? |gx[1]#_g79702_| _hd7875378883_)
                         (___kont7964779648_ _tl7875278886_)
                         (___kont7964979650_))
                     (___kont7964979650_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont7964979650_))))))
                                          (___kont7966979670_
                                           (lambda ()
                                             (let* ((_g7868178689_
                                                     (lambda (_g7868278685_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g7868278685_)))
                                                    (_g7868078714_
                                                     (lambda (_g7868278693_)
                                                       ((lambda (_L78696_)
                                                          (let ()
                                                            (cons (cons _E78654_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (gx#stx-wrap-source
                                       (cons (gx#datum->syntax '#f 'lambda)
                                             (cons '()
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'raise-syntax-error)
                                                               (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '"Bad syntax; invalid syntax-case clause"
                                   (cons _L78696_ '()))))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (gx#stx-source _stx78363_))
                                      '()))
                          _r78655_)))
                _g7868278693_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g7868078714_ _tgt78515_)))))
                                      (if (gx#stx-pair? ___stx7966479665_)
                                          (let ((_e7866478725_
                                                 (gx#syntax-e
                                                  ___stx7966479665_)))
                                            (let ((_tl7866278732_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e7866478725_)))
                                                  (_hd7866378729_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e7866478725_))))
                                              (___kont7966779668_
                                               _tl7866278732_
                                               _hd7866378729_)))
                                          (___kont7966979670_))))))))
                      (let* ((_bind78525_
                              (_generate-clauses78523_ _clauses78518_))
                             (_g7852878545_
                              (lambda (_g7852978541_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g7852978541_)))
                             (_g7852778642_
                              (lambda (_g7852978549_)
                                (if (gx#stx-pair/null? _g7852978549_)
                                    (let ((_g79703_
                                           (gx#syntax-split-splice
                                            _g7852978549_
                                            '0)))
                                      (begin
                                        (let ((_g79704_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g79703_)
                                                     (##vector-length _g79703_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g79704_ 2)))
                                              (error "Context expects 2 values"
                                                     _g79704_)))
                                        (let ((_target7853178552_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g79703_ 0)))
                                              (_tl7853378555_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g79703_ 1))))
                                          (if (gx#stx-null? _tl7853378555_)
                                              (letrec ((_loop7853478558_
                                                        (lambda (_hd7853278562_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try7853878565_)
                  (if (gx#stx-pair? _hd7853278562_)
                      (let ((_e7853578568_ (gx#syntax-e _hd7853278562_)))
                        (let ((_lp-hd7853678572_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7853578568_)))
                              (_lp-tl7853778575_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7853578568_))))
                          (_loop7853478558_
                           _lp-tl7853778575_
                           (cons _lp-hd7853678572_ _bind-try7853878565_))))
                      (let ((_bind-try7853978578_
                             (reverse _bind-try7853878565_)))
                        ((lambda (_L78582_)
                           (let ()
                             (let* ((_g7860078608_
                                     (lambda (_g7860178604_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g7860178604_)))
                                    (_g7859978638_
                                     (lambda (_g7860178612_)
                                       ((lambda (_L78615_)
                                          (let ()
                                            (let ()
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'let*)
                                                    (cons (let ((__tmp79705
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g7862978632_ _g7863078635_)
                           (cons _g7862978632_ _g7863078635_))))
                    (declare (not safe))
                    (__foldr1 __tmp79705 '() _L78582_))
                  (cons (cons _L78615_ '()) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g7860178612_))))
                               (_g7859978638_ (car (last _bind78525_))))))
                         _bind-try7853978578_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop7853478558_
                                                 _target7853178552_
                                                 '()))
                                              (_g7852878545_ _g7852978549_)))))
                                    (_g7852878545_ _g7852978549_)))))
                        (_g7852778642_ _bind78525_))))))
          (let* ((_g7836978388_
                  (lambda (_g7837078384_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g7837078384_)))
                 (_g7836878511_
                  (lambda (_g7837078392_)
                    (if (gx#stx-pair? _g7837078392_)
                        (let ((_e7837678395_ (gx#syntax-e _g7837078392_)))
                          (let ((_hd7837578399_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7837678395_)))
                                (_tl7837478402_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7837678395_))))
                            (if (gx#stx-pair? _tl7837478402_)
                                (let ((_e7837978405_
                                       (gx#syntax-e _tl7837478402_)))
                                  (let ((_hd7837878409_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e7837978405_)))
                                        (_tl7837778412_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e7837978405_))))
                                    (if (gx#stx-pair? _tl7837778412_)
                                        (let ((_e7838278415_
                                               (gx#syntax-e _tl7837778412_)))
                                          (let ((_hd7838178419_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e7838278415_)))
                                                (_tl7838078422_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e7838278415_))))
                                            ((lambda (_L78425_
                                                      _L78427_
                                                      _L78428_)
                                               (if (and (gx#identifier-list?
                                                         _L78427_)
                                                        (gx#stx-list?
                                                         _L78425_))
                                                   (let* ((_g7844678454_
                                                           (lambda (_g7844778450_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g7844778450_)))
                                                          (_g7844578507_
                                                           (lambda (_g7844778458_)
                                                             ((lambda (_L78461_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g7847378481_
                                  (lambda (_g7847478477_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g7847478477_)))
                                 (_g7847278503_
                                  (lambda (_g7847478485_)
                                    ((lambda (_L78488_)
                                       (let ()
                                         (let ()
                                           (cons (gx#datum->syntax '#f 'let)
                                                 (cons (cons (cons _L78461_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _L78428_ '()))
                     '())
               (cons _L78488_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _g7847478485_))))
                            (_g7847278503_
                             (_generate78366_
                              _L78461_
                              (gx#syntax->list _L78427_)
                              _L78425_)))))
                      _g7844778458_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g7844578507_
                                                      (gx#genident 'e)))
                                                   (_g7836978388_
                                                    _g7837078392_)))
                                             _tl7838078422_
                                             _hd7838178419_
                                             _hd7837878409_)))
                                        (_g7836978388_ _g7837078392_))))
                                (_g7836978388_ _g7837078392_))))
                        (_g7836978388_ _g7837078392_)))))
            (_g7836878511_ _stx78363_)))))))
