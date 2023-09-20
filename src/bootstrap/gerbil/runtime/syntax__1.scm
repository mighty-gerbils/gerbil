(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g7367_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g7370_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g7371_|
    (##structure
     gx#syntax-quote::t
     'Exception::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g7372_|
    (##structure
     gx#syntax-quote::t
     'make-SyntaxError
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g7373_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g7374_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-message
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g7375_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-irritants
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g7376_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-where
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g7377_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-context
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g7378_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-phi
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g7379_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-marks
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g7380_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-message-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g7381_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-irritants-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g7382_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-where-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g7383_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-context-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g7384_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-phi-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g7385_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-marks-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g7386_|
    (##structure
     gx#syntax-quote::t
     'Exception
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g7387_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g7388_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g7389_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g7390_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g7391_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g7392_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g7393_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#core-ast-case|
      (lambda (_$stx5776_)
        (let* ((_g57805804_
                (lambda (_g57815800_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g57815800_)))
               (_g57795890_
                (lambda (_g57815808_)
                  (if (gx#stx-pair? _g57815808_)
                      (let ((_e57845811_ (gx#syntax-e _g57815808_)))
                        (let ((_hd57855815_
                               (let ()
                                 (declare (not safe))
                                 (##car _e57845811_)))
                              (_tl57865818_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e57845811_))))
                          (if (gx#stx-pair? _tl57865818_)
                              (let ((_e57875821_ (gx#syntax-e _tl57865818_)))
                                (let ((_hd57885825_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e57875821_)))
                                      (_tl57895828_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e57875821_))))
                                  (if (gx#stx-pair/null? _tl57895828_)
                                      (let ((_g7363_ (gx#syntax-split-splice
                                                      _tl57895828_
                                                      '0)))
                                        (begin
                                          (let ((_g7364_ (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g7363_)
                                                               (##vector-length
                                                                _g7363_)
                                                               1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g7364_ 2)))
                                                (error "Context expects 2 values"
                                                       _g7364_)))
                                          (let ((_target57905831_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g7363_ 0)))
                                                (_tl57925834_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g7363_ 1))))
                                            (if (gx#stx-null? _tl57925834_)
                                                (letrec ((_loop57935837_
                                                          (lambda (_hd57915841_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body57975844_)
                    (if (gx#stx-pair? _hd57915841_)
                        (let ((_e57945847_ (gx#syntax-e _hd57915841_)))
                          (let ((_lp-hd57955851_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e57945847_)))
                                (_lp-tl57965854_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e57945847_))))
                            (_loop57935837_
                             _lp-tl57965854_
                             (cons _lp-hd57955851_ _body57975844_))))
                        (let ((_body57985857_ (reverse _body57975844_)))
                          ((lambda (_L5861_ _L5863_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons (gx#datum->syntax '#f '$e)
                                               (cons _L5863_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'core-ast-case%)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            '$e)
                                                           (foldr (lambda (_g58815884_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g58825887_)
                            (cons _g58815884_ _g58825887_))
                          '()
                          _L5861_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _body57985857_
                           _hd57885825_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop57935837_
                                                   _target57905831_
                                                   '()))
                                                (_g57805804_ _g57815808_)))))
                                      (_g57805804_ _g57815808_))))
                              (_g57805804_ _g57815808_))))
                      (_g57805804_ _g57815808_)))))
          (_g57795890_ _$stx5776_))))
    (define |[:0:]#core-ast-case%|
      (lambda (_stx5895_)
        (letrec ((_generate15898_
                  (lambda (_hd6439_ _tgt6441_ _K6442_ _E6443_ _kws6444_)
                    (let* ((_g64466454_
                            (lambda (_g64476450_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g64476450_)))
                           (_g64456881_
                            (lambda (_g64476458_)
                              ((lambda (_L6461_)
                                 (let ()
                                   (let* ((_g64756489_
                                           (lambda (_g64766485_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g64766485_)))
                                          (_g64746571_
                                           (lambda (_g64766493_)
                                             ((lambda (_L6496_)
                                                (let* ((_g65076522_
                                                        (lambda (_g65086518_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g65086518_)))
                                                       (_g65066567_
                                                        (lambda (_g65086526_)
                                                          (if (gx#stx-pair?
                                                               _g65086526_)
                                                              (let ((_e65116529_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _g65086526_)))
                        (let ((_hd65126533_
                               (let ()
                                 (declare (not safe))
                                 (##car _e65116529_)))
                              (_tl65136536_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e65116529_))))
                          (if (gx#stx-pair? _tl65136536_)
                              (let ((_e65146539_ (gx#syntax-e _tl65136536_)))
                                (let ((_hd65156543_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e65146539_)))
                                      (_tl65166546_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e65146539_))))
                                  (if (gx#stx-null? _tl65166546_)
                                      ((lambda (_L6549_ _L6551_)
                                         (let ()
                                           (cons (gx#datum->syntax '#f 'if)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'equal?)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '__AST-e)
                                 (cons _L6461_ '()))
                           (cons (cons (gx#datum->syntax '#f 'quote)
                                       (cons _L6496_ '()))
                                 '())))
               (cons _L6551_ (cons _L6549_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd65156543_
                                       _hd65126533_)
                                      (_g65076522_ _g65086526_))))
                              (_g65076522_ _g65086526_))))
                      (_g65076522_ _g65086526_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g65066567_
                                                   (list _K6442_ _E6443_))))
                                              _g64766493_)))
                                          (_g64736686_
                                           (lambda (_g64766575_)
                                             ((lambda (_L6578_)
                                                (if (gx#identifier? _L6578_)
                                                    (if (gx#underscore?
                                                         _L6578_)
                                                        _K6442_
                                                        (if (find (lambda (_g65866588_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#bound-identifier=? _g65866588_ _L6578_))
                          (gx#syntax->list _kws6444_))
                    (let* ((_g65926607_
                            (lambda (_g65936603_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g65936603_)))
                           (_g65916652_
                            (lambda (_g65936611_)
                              (if (gx#stx-pair? _g65936611_)
                                  (let ((_e65966614_
                                         (gx#syntax-e _g65936611_)))
                                    (let ((_hd65976618_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e65966614_)))
                                          (_tl65986621_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e65966614_))))
                                      (if (gx#stx-pair? _tl65986621_)
                                          (let ((_e65996624_
                                                 (gx#syntax-e _tl65986621_)))
                                            (let ((_hd66006628_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e65996624_)))
                                                  (_tl66016631_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e65996624_))))
                                              (if (gx#stx-null? _tl66016631_)
                                                  ((lambda (_L6634_ _L6636_)
                                                     (let ()
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'if)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'and)
                                 (cons (cons (gx#datum->syntax '#f '__AST-id?)
                                             (cons _L6461_ '()))
                                       (cons (cons (gx#datum->syntax '#f 'eq?)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '__AST-e)
                                                               (cons _L6461_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'quote) (cons _L6578_ '()))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))
                           (cons _L6636_ (cons _L6634_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _hd66006628_
                                                   _hd65976618_)
                                                  (_g65926607_ _g65936611_))))
                                          (_g65926607_ _g65936611_))))
                                  (_g65926607_ _g65936611_)))))
                      (_g65916652_ (list _K6442_ _E6443_)))
                    (let* ((_g66566664_
                            (lambda (_g66576660_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g66576660_)))
                           (_g66556682_
                            (lambda (_g66576668_)
                              ((lambda (_L6671_)
                                 (let ()
                                   (cons (gx#datum->syntax '#f 'let)
                                         (cons (cons (cons _L6578_
                                                           (cons _L6461_ '()))
                                                     '())
                                               (cons _L6671_ '())))))
                               _g66576668_))))
                      (_g66556682_ _K6442_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g64746571_ _g64766575_)))
                                              _g64766575_)))
                                          (_g64726877_
                                           (lambda (_g64766690_)
                                             (if (gx#stx-pair? _g64766690_)
                                                 (let ((_e64796693_
                                                        (gx#syntax-e
                                                         _g64766690_)))
                                                   (let ((_hd64806697_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e64796693_)))
                                                         (_tl64816700_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e64796693_))))
                                                     ((lambda (_L6703_ _L6705_)
                                                        (let* ((_g67166724_
                                                                (lambda (_g67176720_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g67176720_)))
                       (_g67156873_
                        (lambda (_g67176728_)
                          ((lambda (_L6731_)
                             (let ()
                               (let* ((_g67436751_
                                       (lambda (_g67446747_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g67446747_)))
                                      (_g67426869_
                                       (lambda (_g67446755_)
                                         ((lambda (_L6758_)
                                            (let ()
                                              (let* ((_g67716779_
                                                      (lambda (_g67726775_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g67726775_)))
                                                     (_g67706865_
                                                      (lambda (_g67726783_)
                                                        ((lambda (_L6786_)
                                                           (let ()
                                                             (let* ((_g67996807_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g68006803_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g68006803_)))
                            (_g67986861_
                             (lambda (_g68006811_)
                               ((lambda (_L6814_)
                                  (let ()
                                    (let* ((_g68276835_
                                            (lambda (_g68286831_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g68286831_)))
                                           (_g68266857_
                                            (lambda (_g68286839_)
                                              ((lambda (_L6842_)
                                                 (let ()
                                                   (let ()
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '__AST-pair?)
                               (cons _L6461_ '()))
                         (cons (cons (gx#datum->syntax '#f 'let*)
                                     (cons (cons (cons _L6731_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '__AST-e)
                           (cons _L6461_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L6758_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '##car)
                                 (cons _L6731_ '()))
                           '()))
               (cons (cons _L6786_
                           (cons (cons (gx#datum->syntax '#f '##cdr)
                                       (cons _L6731_ '()))
                                 '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _L6814_ '())))
                               (cons _L6842_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g68286839_))))
                                      (_g68266857_ _E6443_))))
                                _g68006811_))))
                       (_g67986861_
                        (_generate15898_
                         _L6705_
                         _L6758_
                         (_generate15898_
                          _L6703_
                          _L6786_
                          _K6442_
                          _E6443_
                          _kws6444_)
                         _E6443_
                         _kws6444_)))))
                 _g67726783_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g67706865_
                                                 (gx#genident '$tl)))))
                                          _g67446755_))))
                                 (_g67426869_ (gx#genident '$hd)))))
                           _g67176728_))))
                  (_g67156873_ (gx#genident '$tgt))))
              _tl64816700_
              _hd64806697_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g64736686_ _g64766690_)))))
                                     (_g64726877_ _hd6439_))))
                               _g64476458_))))
                      (_g64456881_ _tgt6441_)))))
          (let* ((_g59015929_
                  (lambda (_g59025925_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g59025925_)))
                 (_g59006435_
                  (lambda (_g59025933_)
                    (if (gx#stx-pair? _g59025933_)
                        (let ((_e59065936_ (gx#syntax-e _g59025933_)))
                          (let ((_hd59075940_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e59065936_)))
                                (_tl59085943_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e59065936_))))
                            (if (gx#stx-pair? _tl59085943_)
                                (let ((_e59095946_ (gx#syntax-e _tl59085943_)))
                                  (let ((_hd59105950_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e59095946_)))
                                        (_tl59115953_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e59095946_))))
                                    (if (gx#stx-pair? _tl59115953_)
                                        (let ((_e59125956_
                                               (gx#syntax-e _tl59115953_)))
                                          (let ((_hd59135960_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e59125956_)))
                                                (_tl59145963_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e59125956_))))
                                            (if (gx#stx-pair/null?
                                                 _tl59145963_)
                                                (let ((_g7365_ (gx#syntax-split-splice
                                                                _tl59145963_
                                                                '0)))
                                                  (begin
                                                    (let ((_g7366_ (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (if (##values? _g7365_)
                                 (##vector-length _g7365_)
                                 1))))
              (if (not (let () (declare (not safe)) (##fx= _g7366_ 2)))
                  (error "Context expects 2 values" _g7366_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target59155966_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g7365_
                                                              0)))
                                                          (_tl59175969_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g7365_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl59175969_)
                                                          (letrec ((_loop59185972_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd59165976_ _clause59225979_)
                              (if (gx#stx-pair? _hd59165976_)
                                  (let ((_e59195982_
                                         (gx#syntax-e _hd59165976_)))
                                    (let ((_lp-hd59205986_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e59195982_)))
                                          (_lp-tl59215989_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e59195982_))))
                                      (_loop59185972_
                                       _lp-tl59215989_
                                       (cons _lp-hd59205986_
                                             _clause59225979_))))
                                  (let ((_clause59235992_
                                         (reverse _clause59225979_)))
                                    ((lambda (_L5996_ _L5998_ _L5999_)
                                       (let _recur6021_ ((_rest6024_
                                                          (foldr (lambda (_g64266429_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g64276432_)
                           (cons _g64266429_ _g64276432_))
                         '()
                         _L5996_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (let* ((_rest60266035_ _rest6024_)
                                                (_E60296041_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _rest60266035_)))
                                                (_try-match60286053_
                                                 (lambda ()
                                                   (let ((_K60306049_
                                                          (lambda ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '__raise-syntax-error)
                          (cons '#f
                                (cons '"Bad syntax" (cons _L5999_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##null? _rest60266035_))
                                                         (_K60306049_)
                                                         (_E60296041_)))))
                                                (_K60316411_
                                                 (lambda (_rest6057_ _hd6059_)
                                                   (let* ((_g60616069_
                                                           (lambda (_g60626065_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g60626065_)))
                                                          (_g60606407_
                                                           (lambda (_g60626073_)
                                                             ((lambda (_L6076_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g60946102_
                                  (lambda (_g60956098_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g60956098_)))
                                 (_g60936403_
                                  (lambda (_g60956106_)
                                    ((lambda (_L6109_)
                                       (let ()
                                         (let* ((_g61226130_
                                                 (lambda (_g61236126_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g61236126_)))
                                                (_g61216399_
                                                 (lambda (_g61236134_)
                                                   ((lambda (_L6137_)
                                                      (let ()
                                                        (let* ((_g61506158_
                                                                (lambda (_g61516154_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g61516154_)))
                       (_g61496180_
                        (lambda (_g61516162_)
                          ((lambda (_L6165_)
                             (let ()
                               (let ()
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons _L6076_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'lambda)
                                                               (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L6137_ '())))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons _L6165_ '()))))))
                           _g61516162_))))
                  (_g61496180_
                   (let* ((_g61866226_
                           (lambda (_g61876222_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g61876222_)))
                          (_g61856283_
                           (lambda (_g61876230_)
                             (if (gx#stx-pair? _g61876230_)
                                 (let ((_e62126233_ (gx#syntax-e _g61876230_)))
                                   (let ((_hd62136237_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e62126233_)))
                                         (_tl62146240_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e62126233_))))
                                     (if (gx#stx-pair? _tl62146240_)
                                         (let ((_e62156243_
                                                (gx#syntax-e _tl62146240_)))
                                           (let ((_hd62166247_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e62156243_)))
                                                 (_tl62176250_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e62156243_))))
                                             (if (gx#stx-pair? _tl62176250_)
                                                 (let ((_e62186253_
                                                        (gx#syntax-e
                                                         _tl62176250_)))
                                                   (let ((_hd62196257_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e62186253_)))
                                                         (_tl62206260_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e62186253_))))
                                                     (if (gx#stx-null?
                                                          _tl62206260_)
                                                         ((lambda (_L6263_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L6265_
                           _L6266_)
                    (_generate15898_
                     _L6266_
                     _L5999_
                     (cons (gx#datum->syntax '#f 'if)
                           (cons _L6265_ (cons _L6263_ (cons _L6109_ '()))))
                     _L6109_
                     _L5998_))
                  _hd62196257_
                  _hd62166247_
                  _hd62136237_)
                 (_g61866226_ _g61876230_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g61866226_ _g61876230_))))
                                         (_g61866226_ _g61876230_))))
                                 (_g61866226_ _g61876230_))))
                          (_g61846325_
                           (lambda (_g61876287_)
                             (if (gx#stx-pair? _g61876287_)
                                 (let ((_e62036290_ (gx#syntax-e _g61876287_)))
                                   (let ((_hd62046294_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e62036290_)))
                                         (_tl62056297_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e62036290_))))
                                     (if (gx#stx-pair? _tl62056297_)
                                         (let ((_e62066300_
                                                (gx#syntax-e _tl62056297_)))
                                           (let ((_hd62076304_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e62066300_)))
                                                 (_tl62086307_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e62066300_))))
                                             (if (gx#stx-null? _tl62086307_)
                                                 ((lambda (_L6310_ _L6312_)
                                                    (_generate15898_
                                                     _L6312_
                                                     _L5999_
                                                     _L6310_
                                                     _L6109_
                                                     _L5998_))
                                                  _hd62076304_
                                                  _hd62046294_)
                                                 (_g61856283_ _g61876287_))))
                                         (_g61856283_ _g61876287_))))
                                 (_g61856283_ _g61876287_))))
                          (_g61836395_
                           (lambda (_g61876329_)
                             (if (gx#stx-pair? _g61876329_)
                                 (let ((_e61896332_ (gx#syntax-e _g61876329_)))
                                   (let ((_hd61906336_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e61896332_)))
                                         (_tl61916339_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e61896332_))))
                                     (if (gx#identifier? _hd61906336_)
                                         (if (gx#free-identifier=?
                                              |[1]#_g7367_|
                                              _hd61906336_)
                                             (if (gx#stx-pair/null?
                                                  _tl61916339_)
                                                 (let ((_g7368_ (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl61916339_
                         '0)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (begin
                                                     (let ((_g7369_ (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (if (##values? _g7368_)
                                  (##vector-length _g7368_)
                                  1))))
               (if (not (let () (declare (not safe)) (##fx= _g7369_ 2)))
                   (error "Context expects 2 values" _g7369_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target61926342_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g7368_
                                                               0)))
                                                           (_tl61946345_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g7368_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _tl61946345_)
                                                           (letrec ((_loop61956348_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd61936352_ _expr61996355_)
                               (if (gx#stx-pair? _hd61936352_)
                                   (let ((_e61966358_
                                          (gx#syntax-e _hd61936352_)))
                                     (let ((_lp-hd61976362_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e61966358_)))
                                           (_lp-tl61986365_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e61966358_))))
                                       (_loop61956348_
                                        _lp-tl61986365_
                                        (cons _lp-hd61976362_
                                              _expr61996355_))))
                                   (let ((_expr62006368_
                                          (reverse _expr61996355_)))
                                     ((lambda (_L6372_)
                                        (cons (gx#datum->syntax '#f 'begin)
                                              (foldr (lambda (_g63866389_
                                                              _g63876392_)
                                                       (cons _g63866389_
                                                             _g63876392_))
                                                     '()
                                                     _L6372_)))
                                      _expr62006368_))))))
                     (_loop61956348_ _target61926342_ '()))
                   (_g61846325_ _g61876329_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g61846325_ _g61876329_))
                                             (_g61846325_ _g61876329_))
                                         (_g61846325_ _g61876329_))))
                                 (_g61846325_ _g61876329_)))))
                     (_g61836395_ _hd6059_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g61236134_))))
                                           (_g61216399_
                                            (_recur6021_ _rest6057_)))))
                                     _g60956106_))))
                            (_g60936403_ (cons _L6076_ '())))))
                      _g60626073_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g60606407_
                                                      (gx#genident '$E))))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##pair? _rest60266035_))
                                               (let ((_hd60326415_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _rest60266035_)))
                                                     (_tl60336418_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _rest60266035_))))
                                                 (let* ((_hd6421_ _hd60326415_)
                                                        (_rest6424_
                                                         _tl60336418_))
                                                   (_K60316411_
                                                    _rest6424_
                                                    _hd6421_)))
                                               (_try-match60286053_)))))
                                     _clause59235992_
                                     _hd59135960_
                                     _hd59105950_))))))
                    (_loop59185972_ _target59155966_ '()))
                  (_g59015929_ _g59025933_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g59015929_ _g59025933_))))
                                        (_g59015929_ _g59025933_))))
                                (_g59015929_ _g59025933_))))
                        (_g59015929_ _g59025933_)))))
            (_g59006435_ _stx5895_)))))
    (define |[:0:]#SyntaxError|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |[1]#_g7370_|
       'expander-identifiers:
       (cons (cons |[1]#_g7371_| '())
             (cons |[1]#_g7370_|
                   (cons |[1]#_g7372_|
                         (cons |[1]#_g7373_|
                               (cons (cons |[1]#_g7374_|
                                           (cons |[1]#_g7375_|
                                                 (cons |[1]#_g7376_|
                                                       (cons |[1]#_g7377_|
                                                             (cons |[1]#_g7378_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons |[1]#_g7379_| '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons |[1]#_g7380_|
                                                 (cons |[1]#_g7381_|
                                                       (cons |[1]#_g7382_|
                                                             (cons |[1]#_g7383_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons |[1]#_g7384_| (cons |[1]#_g7385_| '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        '#f
        (list |[1]#_g7386_|)
        'SyntaxError
        '#f
        '((final: . #t))
        '(message irritants where context phi marks))))
    (define |[:0:]#AST|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |[1]#_g7387_|
       'expander-identifiers:
       (cons '#f
             (cons |[1]#_g7387_|
                   (cons |[1]#_g7388_|
                         (cons |[1]#_g7389_|
                               (cons (cons |[1]#_g7390_|
                                           (cons |[1]#_g7391_| '()))
                                     (cons (cons |[1]#_g7392_|
                                                 (cons |[1]#_g7393_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gerbil#AST::t
        '#f
        'syntax
        '#f
        '()
        '(e source))))))
