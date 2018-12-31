(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<match>[1]#_g41958_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41959_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41960_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g41961_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g41962_|
    (##structure
     gx#syntax-quote::t
     'apply
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g41963_|
    (##structure gx#syntax-quote::t '? #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41964_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41965_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41966_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41967_|
    (##structure
     gx#syntax-quote::t
     'cons
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g41968_|
    (##structure
     gx#syntax-quote::t
     'cons*
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g41969_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g41970_|
    (##structure gx#syntax-quote::t 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41971_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g41972_|
    (##structure
     gx#syntax-quote::t
     'vector
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g41981_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g41986_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g41987_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41988_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g41993_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41994_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41995_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41996_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41997_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
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
      (lambda _$args30077_
        (apply make-class-instance
               |gerbil/core$<match>[1]#match-macro::t|
               _$args30077_)))
    (define |gerbil/core$<match>[1]#syntax-local-match-macro?|
      (lambda (_stx30074_)
        (if (gx#identifier? _stx30074_)
            (|gerbil/core$<match>[1]#match-macro?|
             (gx#syntax-local-value _stx30074_ false))
            '#f)))
    (define |gerbil/core$<match>[1]#parse-match-pattern__%|
      (lambda (_stx28380_ _match-stx28382_)
        (letrec ((_parse128384_
                  (lambda (_hd28737_)
                    (let* ((___stx3922739228_ _hd28737_)
                           (_g2876328905_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3922739228_))))
                      (let ((___kont3923039231_
                             (lambda (_L29837_ _L29839_)
                               (let* ((___stx3914739148_ _L29837_)
                                      (_g2985629889_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx3914739148_))))
                                 (let ((___kont3915039151_
                                        (lambda ()
                                          (cons '?: (cons _L29839_ '()))))
                                       (___kont3915239153_
                                        (lambda (_L30030_)
                                          (cons '?:
                                                (cons _L29839_
                                                      (cons (_parse128384_
                                                             _L30030_)
                                                            '())))))
                                       (___kont3915439155_
                                        (lambda (_L30000_)
                                          (cons '?:
                                                (cons _L29839_
                                                      (cons '=>:
                                                            (cons (_parse128384_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L30000_)
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (___kont3915639157_
                                        (lambda (_L29951_ _L29953_)
                                          (cons '?:
                                                (cons _L29839_
                                                      (cons '::
                                                            (cons _L29953_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '=>: (cons (_parse128384_ _L29951_) '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (___kont3915839159_
                                        (lambda ()
                                          (_parse-error28391_ _hd28737_))))
                                   (let ((_g2985230041_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 ___stx3914739148_)
                                                (let ((_e2985930020_
                                                       (gx#syntax-e
                                                        ___stx3914739148_)))
                                                  (let ((_tl2986130027_
                                                         (##cdr _e2985930020_))
                                                        (_hd2986030024_
                                                         (##car _e2985930020_)))
                                                    (if (gx#stx-null?
                                                         _tl2986130027_)
                                                        (___kont3915239153_
                                                         _hd2986030024_)
                                                        (if (gx#identifier?
                                                             _hd2986030024_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core$<match>[1]#_g41958_|
                         _hd2986030024_)
                        (if (gx#stx-pair? _tl2986130027_)
                            (let ((_e2986629990_ (gx#syntax-e _tl2986130027_)))
                              (let ((_tl2986829997_ (##cdr _e2986629990_))
                                    (_hd2986729994_ (##car _e2986629990_)))
                                (if (gx#stx-null? _tl2986829997_)
                                    (___kont3915439155_ _hd2986729994_)
                                    (___kont3915839159_))))
                            (___kont3915839159_))
                        (___kont3915839159_))
                    (if (gx#stx-datum? _hd2986030024_)
                        (let ((_e2987429917_ (gx#stx-e _hd2986030024_)))
                          (if (equal? _e2987429917_ '::)
                              (if (gx#stx-pair? _tl2986130027_)
                                  (let ((_e2987529921_
                                         (gx#syntax-e _tl2986130027_)))
                                    (let ((_tl2987729928_
                                           (##cdr _e2987529921_))
                                          (_hd2987629925_
                                           (##car _e2987529921_)))
                                      (if (gx#stx-pair? _tl2987729928_)
                                          (let ((_e2987829931_
                                                 (gx#syntax-e _tl2987729928_)))
                                            (let ((_tl2988029938_
                                                   (##cdr _e2987829931_))
                                                  (_hd2987929935_
                                                   (##car _e2987829931_)))
                                              (if (gx#identifier?
                                                   _hd2987929935_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g41959_|
                                                       _hd2987929935_)
                                                      (if (gx#stx-pair?
                                                           _tl2988029938_)
                                                          (let ((_e2988129941_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2988029938_)))
                    (let ((_tl2988329948_ (##cdr _e2988129941_))
                          (_hd2988229945_ (##car _e2988129941_)))
                      (if (gx#stx-null? _tl2988329948_)
                          (___kont3915639157_ _hd2988229945_ _hd2987629925_)
                          (___kont3915839159_))))
                  (___kont3915839159_))
              (___kont3915839159_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont3915839159_))))
                                          (___kont3915839159_))))
                                  (___kont3915839159_))
                              (___kont3915839159_)))
                        (___kont3915839159_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont3915839159_)))))
                                     (if (gx#stx-null? ___stx3914739148_)
                                         (___kont3915039151_)
                                         (_g2985230041_)))))))
                            (___kont3923239233_
                             (lambda (_L29742_)
                               (let* ((___stx3912939130_ _L29742_)
                                      (_g2975429765_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx3912939130_))))
                                 (let ((___kont3913239133_
                                        (lambda (_L29793_)
                                          (_parse128384_ _L29793_)))
                                       (___kont3913439135_
                                        (lambda ()
                                          (cons 'and:
                                                (gx#stx-map
                                                 _parse128384_
                                                 _L29742_)))))
                                   (if (gx#stx-pair? ___stx3912939130_)
                                       (let ((_e2975729783_
                                              (gx#syntax-e ___stx3912939130_)))
                                         (let ((_tl2975929790_
                                                (##cdr _e2975729783_))
                                               (_hd2975829787_
                                                (##car _e2975729783_)))
                                           (if (gx#stx-null? _tl2975929790_)
                                               (___kont3913239133_
                                                _hd2975829787_)
                                               (___kont3913439135_))))
                                       (___kont3913439135_))))))
                            (___kont3923439235_
                             (lambda (_L29657_)
                               (let* ((___stx3911139112_ _L29657_)
                                      (_g2966929680_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx3911139112_))))
                                 (let ((___kont3911439115_
                                        (lambda (_L29708_)
                                          (_parse128384_ _L29708_)))
                                       (___kont3911639117_
                                        (lambda ()
                                          (cons 'or:
                                                (gx#stx-map
                                                 _parse128384_
                                                 _L29657_)))))
                                   (if (gx#stx-pair? ___stx3911139112_)
                                       (let ((_e2967229698_
                                              (gx#syntax-e ___stx3911139112_)))
                                         (let ((_tl2967429705_
                                                (##cdr _e2967229698_))
                                               (_hd2967329702_
                                                (##car _e2967229698_)))
                                           (if (gx#stx-null? _tl2967429705_)
                                               (___kont3911439115_
                                                _hd2967329702_)
                                               (___kont3911639117_))))
                                       (___kont3911639117_))))))
                            (___kont3923639237_
                             (lambda (_L29627_)
                               (cons 'not:
                                     (cons (_parse128384_ _L29627_) '()))))
                            (___kont3923839239_
                             (lambda (_L29583_ _L29585_)
                               (cons 'cons:
                                     (cons (_parse128384_ _L29585_)
                                           (cons (_parse128384_ _L29583_)
                                                 '())))))
                            (___kont3924039241_
                             (lambda (_L29527_ _L29529_ _L29530_)
                               (if (gx#stx-null? _L29527_)
                                   (cons 'cons:
                                         (cons (_parse128384_ _L29530_)
                                               (cons (_parse128384_ _L29529_)
                                                     '())))
                                   (cons 'cons:
                                         (cons (_parse128384_ _L29530_)
                                               (cons (_parse128384_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'cons*)
                                                            (cons _L29529_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L29527_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                            (___kont3924239243_
                             (lambda (_L29479_) (_parse-list28386_ _L29479_)))
                            (___kont3924439245_
                             (lambda (_L29449_)
                               (cons 'box:
                                     (cons (_parse128384_ _L29449_) '()))))
                            (___kont3924639247_
                             (lambda (_L29412_)
                               (cons 'box:
                                     (cons (_parse128384_ _L29412_) '()))))
                            (___kont3924839249_
                             (lambda (_L29388_) (_parse128384_ _L29388_)))
                            (___kont3925039251_
                             (lambda (_L29350_)
                               (cons 'values:
                                     (cons (_parse-vector28387_ _L29350_)
                                           '()))))
                            (___kont3925239253_
                             (lambda (_L29322_)
                               (cons 'vector:
                                     (cons (_parse-vector28387_ _L29322_)
                                           '()))))
                            (___kont3925439255_
                             (lambda (_L29283_)
                               (cons 'vector:
                                     (cons (_parse-vector28387_
                                            (foldr (lambda (_g2929629299_
                                                            _g2929729302_)
                                                     (cons _g2929629299_
                                                           _g2929729302_))
                                                   '()
                                                   _L29283_))
                                           '()))))
                            (___kont3925839259_
                             (lambda (_L29229_ _L29231_)
                               (cons 'struct:
                                     (cons (gx#syntax-local-value _L29231_)
                                           (cons (_parse-vector28387_ _L29229_)
                                                 '())))))
                            (___kont3926039261_
                             (lambda (_L29199_ _L29201_)
                               (cons 'class:
                                     (cons (gx#syntax-local-value _L29201_)
                                           (cons (_parse-class-body28389_
                                                  _L29199_)
                                                 '())))))
                            (___kont3926239263_
                             (lambda (_L29159_ _L29161_)
                               (cons '?:
                                     (cons (cons (gx#datum->syntax '#f 'cut)
                                                 (cons _L29161_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '<>)
                                                             (cons _L29159_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                            (___kont3926439265_
                             (lambda (_L29119_)
                               (cons 'datum: (cons (gx#stx-e _L29119_) '()))))
                            (___kont3926639267_
                             (lambda (_L29079_) (_parse-qq28390_ _L29079_)))
                            (___kont3926839269_
                             (lambda (_L29035_ _L29037_)
                               (cons 'apply:
                                     (cons _L29037_
                                           (cons (_parse128384_ _L29035_)
                                                 '())))))
                            (___kont3927039271_
                             (lambda (_L28983_)
                               (_parse128384_
                                (gx#core-apply-expander
                                 (gx#syntax-local-e _L28983_)
                                 (gx#stx-wrap-source
                                  (cons 'match: _hd28737_)
                                  (let ((_$e28994_ (gx#stx-source _hd28737_)))
                                    (if _$e28994_
                                        _$e28994_
                                        (gx#stx-source _stx28380_))))))))
                            (___kont3927239273_
                             (lambda (_L28957_) (cons 'any: '())))
                            (___kont3927439275_
                             (lambda (_L28941_)
                               (cons 'var: (cons _L28941_ '()))))
                            (___kont3927639277_
                             (lambda (_L28923_)
                               (cons 'datum: (cons (gx#stx-e _L28923_) '()))))
                            (___kont3927839279_
                             (lambda () (_parse-error28391_ _hd28737_))))
                        (let* ((_g2876128934_
                                (lambda ()
                                  (let ((_L28923_ ___stx3922739228_))
                                    (if (gx#stx-datum? _L28923_)
                                        (___kont3927639277_ _L28923_)
                                        (___kont3927839279_)))))
                               (_g2876028950_
                                (lambda ()
                                  (let ((_L28941_ ___stx3922739228_))
                                    (if (and (gx#identifier? _L28941_)
                                             (not (gx#ellipsis? _L28941_)))
                                        (___kont3927439275_ _L28941_)
                                        (_g2876128934_)))))
                               (_g2875928966_
                                (lambda ()
                                  (let ((_L28957_ ___stx3922739228_))
                                    (if (gx#underscore? _L28957_)
                                        (___kont3927239273_ _L28957_)
                                        (_g2876028950_)))))
                               (___match3955439555_
                                (lambda (_e2889428973_
                                         _hd2889528977_
                                         _tl2889628980_)
                                  (let ((_L28983_ _hd2889528977_))
                                    (if (|gerbil/core$<match>[1]#syntax-local-match-macro?|
                                         _L28983_)
                                        (___kont3927039271_ _L28983_)
                                        (_g2875928966_)))))
                               (___match3948839489_
                                (lambda (_e2886229139_
                                         _hd2886329143_
                                         _tl2886429146_
                                         _e2886529149_
                                         _hd2886629153_
                                         _tl2886729156_)
                                  (let ((_L29159_ _hd2886629153_)
                                        (_L29161_ _hd2886329143_))
                                    (if (and (gx#identifier? _L29161_)
                                             (or (gx#free-identifier=?
                                                  _L29161_
                                                  (gx#datum->syntax '#f 'eq?))
                                                 (gx#free-identifier=?
                                                  _L29161_
                                                  (gx#datum->syntax '#f 'eqv?))
                                                 (gx#free-identifier=?
                                                  _L29161_
                                                  (gx#datum->syntax
                                                   '#f
                                                   'equal?))))
                                        (___kont3926239263_ _L29159_ _L29161_)
                                        (if (gx#identifier? _hd2886329143_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core$<match>[1]#_g41960_|
                                                 _hd2886329143_)
                                                (___kont3926439265_
                                                 _hd2886629153_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core$<match>[1]#_g41961_|
                                                     _hd2886329143_)
                                                    (___kont3926639267_
                                                     _hd2886629153_)
                                                    (___match3955439555_
                                                     _e2886229139_
                                                     _hd2886329143_
                                                     _tl2886429146_)))
                                            (___match3955439555_
                                             _e2886229139_
                                             _hd2886329143_
                                             _tl2886429146_))))))
                               (___match3947439475_
                                (lambda (_e2885729189_
                                         _hd2885829193_
                                         _tl2885929196_)
                                  (let ((_L29199_ _tl2885929196_)
                                        (_L29201_ _hd2885829193_))
                                    (if (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-class-info?|
                                         _L29201_)
                                        (___kont3926039261_ _L29199_ _L29201_)
                                        (if (gx#stx-pair? _tl2885929196_)
                                            (let ((_e2886529149_
                                                   (gx#syntax-e
                                                    _tl2885929196_)))
                                              (let ((_tl2886729156_
                                                     (##cdr _e2886529149_))
                                                    (_hd2886629153_
                                                     (##car _e2886529149_)))
                                                (if (gx#stx-null?
                                                     _tl2886729156_)
                                                    (___match3948839489_
                                                     _e2885729189_
                                                     _hd2885829193_
                                                     _tl2885929196_
                                                     _e2886529149_
                                                     _hd2886629153_
                                                     _tl2886729156_)
                                                    (if (gx#identifier?
                                                         _hd2885829193_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core$<match>[1]#_g41960_|
                                                             _hd2885829193_)
                                                            (___match3955439555_
                                                             _e2885729189_
                                                             _hd2885829193_
                                                             _tl2885929196_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core$<match>[1]#_g41961_|
                         _hd2885829193_)
                        (___match3955439555_
                         _e2885729189_
                         _hd2885829193_
                         _tl2885929196_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g41962_|
                             _hd2885829193_)
                            (if (gx#stx-pair? _tl2886729156_)
                                (let ((_e2889029025_
                                       (gx#syntax-e _tl2886729156_)))
                                  (let ((_tl2889229032_ (##cdr _e2889029025_))
                                        (_hd2889129029_ (##car _e2889029025_)))
                                    (if (gx#stx-null? _tl2889229032_)
                                        (___kont3926839269_
                                         _hd2889129029_
                                         _hd2886629153_)
                                        (___match3955439555_
                                         _e2885729189_
                                         _hd2885829193_
                                         _tl2885929196_))))
                                (___match3955439555_
                                 _e2885729189_
                                 _hd2885829193_
                                 _tl2885929196_))
                            (___match3955439555_
                             _e2885729189_
                             _hd2885829193_
                             _tl2885929196_))))
                (___match3955439555_
                 _e2885729189_
                 _hd2885829193_
                 _tl2885929196_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___match3955439555_
                                             _e2885729189_
                                             _hd2885829193_
                                             _tl2885929196_))))))
                               (___match3946839469_
                                (lambda (_e2885229219_
                                         _hd2885329223_
                                         _tl2885429226_)
                                  (let ((_L29229_ _tl2885429226_)
                                        (_L29231_ _hd2885329223_))
                                    (if (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
                                         _L29231_)
                                        (___kont3925839259_ _L29229_ _L29231_)
                                        (___match3947439475_
                                         _e2885229219_
                                         _hd2885329223_
                                         _tl2885429226_)))))
                               (___match3946239463_
                                (lambda (_e2884029249_
                                         ___splice3925639257_
                                         _target2884129253_
                                         _tl2884329256_)
                                  (letrec ((_loop2884429259_
                                            (lambda (_hd2884229263_
                                                     _body2884829266_)
                                              (if (gx#stx-pair? _hd2884229263_)
                                                  (let ((_e2884529269_
                                                         (gx#syntax-e
                                                          _hd2884229263_)))
                                                    (let ((_lp-tl2884729276_
                                                           (##cdr _e2884529269_))
                                                          (_lp-hd2884629273_
                                                           (##car _e2884529269_)))
                                                      (_loop2884429259_
                                                       _lp-tl2884729276_
                                                       (cons _lp-hd2884629273_
                                                             _body2884829266_))))
                                                  (let ((_body2884929279_
                                                         (reverse _body2884829266_)))
                                                    (___kont3925439255_
                                                     _body2884929279_))))))
                                    (_loop2884429259_
                                     _target2884129253_
                                     '()))))
                               (_g2875129305_
                                (lambda ()
                                  (if (gx#stx-vector? ___stx3922739228_)
                                      (let ((_e2884029249_
                                             (vector->list
                                              (gx#syntax-e
                                               ___stx3922739228_))))
                                        (if (gx#stx-pair/null? _e2884029249_)
                                            (let ((___splice3925639257_
                                                   (gx#syntax-split-splice
                                                    _e2884029249_
                                                    '0)))
                                              (let ((_tl2884329256_
                                                     (##vector-ref
                                                      ___splice3925639257_
                                                      '1))
                                                    (_target2884129253_
                                                     (##vector-ref
                                                      ___splice3925639257_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl2884329256_)
                                                    (___match3946239463_
                                                     _e2884029249_
                                                     ___splice3925639257_
                                                     _target2884129253_
                                                     _tl2884329256_)
                                                    (_g2875928966_))))
                                            (_g2875928966_)))
                                      (_g2875928966_))))
                               (_g2874729422_
                                (lambda ()
                                  (if (gx#stx-box? ___stx3922739228_)
                                      (let ((_e2882329408_
                                             (unbox (gx#syntax-e
                                                     ___stx3922739228_))))
                                        (___kont3924639247_ _e2882329408_))
                                      (_g2875129305_))))
                               (___match3931639317_
                                (lambda (_e2877829647_
                                         _hd2877929651_
                                         _tl2878029654_)
                                  (let ((_L29657_ _tl2878029654_))
                                    (if (gx#stx-list? _L29657_)
                                        (___kont3923439235_ _L29657_)
                                        (___match3946839469_
                                         _e2877829647_
                                         _hd2877929651_
                                         _tl2878029654_)))))
                               (___match3930639307_
                                (lambda (_e2877429732_
                                         _hd2877529736_
                                         _tl2877629739_)
                                  (let ((_L29742_ _tl2877629739_))
                                    (if (gx#stx-list? _L29742_)
                                        (___kont3923239233_ _L29742_)
                                        (___match3946839469_
                                         _e2877429732_
                                         _hd2877529736_
                                         _tl2877629739_))))))
                          (if (gx#stx-pair? ___stx3922739228_)
                              (let ((_e2876729817_
                                     (gx#syntax-e ___stx3922739228_)))
                                (let ((_tl2876929824_ (##cdr _e2876729817_))
                                      (_hd2876829821_ (##car _e2876729817_)))
                                  (if (gx#identifier? _hd2876829821_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g41963_|
                                           _hd2876829821_)
                                          (if (gx#stx-pair? _tl2876929824_)
                                              (let ((_e2877029827_
                                                     (gx#syntax-e
                                                      _tl2876929824_)))
                                                (let ((_tl2877229834_
                                                       (##cdr _e2877029827_))
                                                      (_hd2877129831_
                                                       (##car _e2877029827_)))
                                                  (___kont3923039231_
                                                   _tl2877229834_
                                                   _hd2877129831_)))
                                              (___match3946839469_
                                               _e2876729817_
                                               _hd2876829821_
                                               _tl2876929824_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g41964_|
                                               _hd2876829821_)
                                              (___match3930639307_
                                               _e2876729817_
                                               _hd2876829821_
                                               _tl2876929824_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g41965_|
                                                   _hd2876829821_)
                                                  (___match3931639317_
                                                   _e2876729817_
                                                   _hd2876829821_
                                                   _tl2876929824_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g41966_|
                                                       _hd2876829821_)
                                                      (if (gx#stx-pair?
                                                           _tl2876929824_)
                                                          (let ((_e2878529617_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2876929824_)))
                    (let ((_tl2878729624_ (##cdr _e2878529617_))
                          (_hd2878629621_ (##car _e2878529617_)))
                      (if (gx#stx-null? _tl2878729624_)
                          (___kont3923639237_ _hd2878629621_)
                          (___match3946839469_
                           _e2876729817_
                           _hd2876829821_
                           _tl2876929824_))))
                  (___match3946839469_
                   _e2876729817_
                   _hd2876829821_
                   _tl2876929824_))
              (if (gx#free-identifier=?
                   |gerbil/core$<match>[1]#_g41967_|
                   _hd2876829821_)
                  (if (gx#stx-pair? _tl2876929824_)
                      (let ((_e2879329563_ (gx#syntax-e _tl2876929824_)))
                        (let ((_tl2879529570_ (##cdr _e2879329563_))
                              (_hd2879429567_ (##car _e2879329563_)))
                          (if (gx#stx-pair? _tl2879529570_)
                              (let ((_e2879629573_
                                     (gx#syntax-e _tl2879529570_)))
                                (let ((_tl2879829580_ (##cdr _e2879629573_))
                                      (_hd2879729577_ (##car _e2879629573_)))
                                  (if (gx#stx-null? _tl2879829580_)
                                      (___kont3923839239_
                                       _hd2879729577_
                                       _hd2879429567_)
                                      (___match3946839469_
                                       _e2876729817_
                                       _hd2876829821_
                                       _tl2876929824_))))
                              (___match3946839469_
                               _e2876729817_
                               _hd2876829821_
                               _tl2876929824_))))
                      (___match3946839469_
                       _e2876729817_
                       _hd2876829821_
                       _tl2876929824_))
                  (if (gx#free-identifier=?
                       |gerbil/core$<match>[1]#_g41968_|
                       _hd2876829821_)
                      (if (gx#stx-pair? _tl2876929824_)
                          (let ((_e2880529507_ (gx#syntax-e _tl2876929824_)))
                            (let ((_tl2880729514_ (##cdr _e2880529507_))
                                  (_hd2880629511_ (##car _e2880529507_)))
                              (if (gx#stx-pair? _tl2880729514_)
                                  (let ((_e2880829517_
                                         (gx#syntax-e _tl2880729514_)))
                                    (let ((_tl2881029524_
                                           (##cdr _e2880829517_))
                                          (_hd2880929521_
                                           (##car _e2880829517_)))
                                      (___kont3924039241_
                                       _tl2881029524_
                                       _hd2880929521_
                                       _hd2880629511_)))
                                  (___match3946839469_
                                   _e2876729817_
                                   _hd2876829821_
                                   _tl2876929824_))))
                          (___match3946839469_
                           _e2876729817_
                           _hd2876829821_
                           _tl2876929824_))
                      (if (gx#free-identifier=?
                           |gerbil/core$<match>[1]#_g41969_|
                           _hd2876829821_)
                          (___kont3924239243_ _tl2876929824_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g41970_|
                               _hd2876829821_)
                              (if (gx#stx-pair? _tl2876929824_)
                                  (let ((_e2881929439_
                                         (gx#syntax-e _tl2876929824_)))
                                    (let ((_tl2882129446_
                                           (##cdr _e2881929439_))
                                          (_hd2882029443_
                                           (##car _e2881929439_)))
                                      (if (gx#stx-null? _tl2882129446_)
                                          (___kont3924439245_ _hd2882029443_)
                                          (___match3946839469_
                                           _e2876729817_
                                           _hd2876829821_
                                           _tl2876929824_))))
                                  (___match3946839469_
                                   _e2876729817_
                                   _hd2876829821_
                                   _tl2876929824_))
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g41971_|
                                   _hd2876829821_)
                                  (if (gx#stx-pair? _tl2876929824_)
                                      (let ((_e2882829378_
                                             (gx#syntax-e _tl2876929824_)))
                                        (let ((_tl2883029385_
                                               (##cdr _e2882829378_))
                                              (_hd2882929382_
                                               (##car _e2882829378_)))
                                          (if (gx#stx-null? _tl2883029385_)
                                              (___kont3924839249_
                                               _hd2882929382_)
                                              (___kont3925039251_
                                               _tl2876929824_))))
                                      (___kont3925039251_ _tl2876929824_))
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g41972_|
                                       _hd2876829821_)
                                      (___kont3925239253_ _tl2876929824_)
                                      (___match3946839469_
                                       _e2876729817_
                                       _hd2876829821_
                                       _tl2876929824_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (___match3946839469_
                                       _e2876729817_
                                       _hd2876829821_
                                       _tl2876929824_))))
                              (_g2874729422_)))))))
                 (_parse-list28386_
                  (lambda (_body28566_)
                    (let* ((___stx3955739558_ _body28566_)
                           (_g2857228601_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3955739558_))))
                      (let ((___kont3956039561_
                             (lambda (_L28719_) (_parse128384_ _L28719_)))
                            (___kont3956239563_
                             (lambda (_L28671_ _L28673_ _L28674_)
                               (cons 'splice:
                                     (cons (_parse128384_ _L28674_)
                                           (cons (_parse-list28386_ _L28671_)
                                                 '())))))
                            (___kont3956439565_
                             (lambda (_L28629_ _L28631_)
                               (cons 'cons:
                                     (cons (_parse128384_ _L28631_)
                                           (cons (_parse-list28386_ _L28629_)
                                                 '())))))
                            (___kont3956639567_
                             (lambda ()
                               (if (gx#stx-null? _body28566_)
                                   (cons 'null: '())
                                   (if (not (gx#stx-pair? _body28566_))
                                       (_parse128384_ _body28566_)
                                       (_parse-error28391_ _body28566_))))))
                        (let* ((___match3960639607_
                                (lambda (_e2859328619_
                                         _hd2859428623_
                                         _tl2859528626_)
                                  (let ((_L28629_ _tl2859528626_)
                                        (_L28631_ _hd2859428623_))
                                    (if (not (gx#ellipsis? _L28631_))
                                        (___kont3956439565_ _L28629_ _L28631_)
                                        (___kont3956639567_)))))
                               (___match3960039601_
                                (lambda (_e2858528651_
                                         _hd2858628655_
                                         _tl2858728658_
                                         _e2858828661_
                                         _hd2858928665_
                                         _tl2859028668_)
                                  (let ((_L28671_ _tl2859028668_)
                                        (_L28673_ _hd2858928665_)
                                        (_L28674_ _hd2858628655_))
                                    (if (gx#ellipsis? _L28673_)
                                        (___kont3956239563_
                                         _L28671_
                                         _L28673_
                                         _L28674_)
                                        (___match3960639607_
                                         _e2858528651_
                                         _hd2858628655_
                                         _tl2858728658_))))))
                          (if (gx#stx-pair? ___stx3955739558_)
                              (let ((_e2857528695_
                                     (gx#syntax-e ___stx3955739558_)))
                                (let ((_tl2857728702_ (##cdr _e2857528695_))
                                      (_hd2857628699_ (##car _e2857528695_)))
                                  (if (gx#stx-datum? _hd2857628699_)
                                      (let ((_e2857828705_
                                             (gx#stx-e _hd2857628699_)))
                                        (if (equal? _e2857828705_ '::)
                                            (if (gx#stx-pair? _tl2857728702_)
                                                (let ((_e2857928709_
                                                       (gx#syntax-e
                                                        _tl2857728702_)))
                                                  (let ((_tl2858128716_
                                                         (##cdr _e2857928709_))
                                                        (_hd2858028713_
                                                         (##car _e2857928709_)))
                                                    (if (gx#stx-null?
                                                         _tl2858128716_)
                                                        (___kont3956039561_
                                                         _hd2858028713_)
                                                        (___match3960039601_
                                                         _e2857528695_
                                                         _hd2857628699_
                                                         _tl2857728702_
                                                         _e2857928709_
                                                         _hd2858028713_
                                                         _tl2858128716_))))
                                                (___match3960639607_
                                                 _e2857528695_
                                                 _hd2857628699_
                                                 _tl2857728702_))
                                            (if (gx#stx-pair? _tl2857728702_)
                                                (let ((_e2858828661_
                                                       (gx#syntax-e
                                                        _tl2857728702_)))
                                                  (let ((_tl2859028668_
                                                         (##cdr _e2858828661_))
                                                        (_hd2858928665_
                                                         (##car _e2858828661_)))
                                                    (___match3960039601_
                                                     _e2857528695_
                                                     _hd2857628699_
                                                     _tl2857728702_
                                                     _e2858828661_
                                                     _hd2858928665_
                                                     _tl2859028668_)))
                                                (___match3960639607_
                                                 _e2857528695_
                                                 _hd2857628699_
                                                 _tl2857728702_))))
                                      (if (gx#stx-pair? _tl2857728702_)
                                          (let ((_e2858828661_
                                                 (gx#syntax-e _tl2857728702_)))
                                            (let ((_tl2859028668_
                                                   (##cdr _e2858828661_))
                                                  (_hd2858928665_
                                                   (##car _e2858828661_)))
                                              (___match3960039601_
                                               _e2857528695_
                                               _hd2857628699_
                                               _tl2857728702_
                                               _e2858828661_
                                               _hd2858928665_
                                               _tl2859028668_)))
                                          (___match3960639607_
                                           _e2857528695_
                                           _hd2857628699_
                                           _tl2857728702_)))))
                              (___kont3956639567_)))))))
                 (_parse-vector28387_
                  (lambda (_body28563_)
                    (if (_simple-vector?28388_ _body28563_)
                        (cons 'simple:
                              (cons (gx#stx-map _parse128384_ _body28563_)
                                    '()))
                        (cons 'list:
                              (cons (_parse-list28386_ _body28563_) '())))))
                 (_simple-vector?28388_
                  (lambda (_body28500_)
                    (let* ((___stx3960939610_ _body28500_)
                           (_g2850428516_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3960939610_))))
                      (let ((___kont3961239613_
                             (lambda (_L28544_ _L28546_)
                               (if (not (gx#ellipsis? _L28546_))
                                   (_simple-vector?28388_ _L28544_)
                                   '#f)))
                            (___kont3961439615_
                             (lambda () (gx#stx-null? _body28500_))))
                        (if (gx#stx-pair? ___stx3960939610_)
                            (let ((_e2850828534_
                                   (gx#syntax-e ___stx3960939610_)))
                              (let ((_tl2851028541_ (##cdr _e2850828534_))
                                    (_hd2850928538_ (##car _e2850828534_)))
                                (___kont3961239613_
                                 _tl2851028541_
                                 _hd2850928538_)))
                            (___kont3961439615_))))))
                 (_parse-class-body28389_
                  (lambda (_body28409_)
                    (let _recur28412_ ((_rest28415_ _body28409_))
                      (let* ((___stx3962539626_ _rest28415_)
                             (_g2841928435_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx3962539626_))))
                        (let ((___kont3962839629_
                               (lambda (_L28473_ _L28475_ _L28476_)
                                 (cons* _L28476_
                                        (_parse128384_ _L28475_)
                                        (_recur28412_ _L28473_))))
                              (___kont3963039631_
                               (lambda ()
                                 (if (gx#stx-null? _rest28415_)
                                     '()
                                     (_parse-error28391_ _rest28415_)))))
                          (let ((___match3964439645_
                                 (lambda (_e2842428453_
                                          _hd2842528457_
                                          _tl2842628460_
                                          _e2842728463_
                                          _hd2842828467_
                                          _tl2842928470_)
                                   (let ((_L28473_ _tl2842928470_)
                                         (_L28475_ _hd2842828467_)
                                         (_L28476_ _hd2842528457_))
                                     (if (gx#stx-keyword? _L28476_)
                                         (___kont3962839629_
                                          _L28473_
                                          _L28475_
                                          _L28476_)
                                         (___kont3963039631_))))))
                            (if (gx#stx-pair? ___stx3962539626_)
                                (let ((_e2842428453_
                                       (gx#syntax-e ___stx3962539626_)))
                                  (let ((_tl2842628460_ (##cdr _e2842428453_))
                                        (_hd2842528457_ (##car _e2842428453_)))
                                    (if (gx#stx-pair? _tl2842628460_)
                                        (let ((_e2842728463_
                                               (gx#syntax-e _tl2842628460_)))
                                          (let ((_tl2842928470_
                                                 (##cdr _e2842728463_))
                                                (_hd2842828467_
                                                 (##car _e2842728463_)))
                                            (___match3964439645_
                                             _e2842428453_
                                             _hd2842528457_
                                             _tl2842628460_
                                             _e2842728463_
                                             _hd2842828467_
                                             _tl2842928470_)))
                                        (___kont3963039631_))))
                                (___kont3963039631_))))))))
                 (_parse-qq28390_
                  (lambda (_hd28396_)
                    (let ((_g2839828405_
                           (lambda (_g2839928401_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2839928401_))))
                      (_g2839828405_ _hd28396_))))
                 (_parse-error28391_
                  (lambda (_hd28393_)
                    (apply gx#raise-syntax-error
                           '#f
                           '"Bad syntax; illegal pattern"
                           (if _match-stx28382_
                               (cons _match-stx28382_
                                     (cons _stx28380_ (cons _hd28393_ '())))
                               (cons _stx28380_ (cons _hd28393_ '())))))))
          (_parse128384_ _stx28380_))))
    (define |gerbil/core$<match>[1]#parse-match-pattern__0|
      (lambda (_stx30064_)
        (let ((_match-stx30067_ '#f))
          (|gerbil/core$<match>[1]#parse-match-pattern__%|
           _stx30064_
           _match-stx30067_))))
    (define |gerbil/core$<match>[1]#parse-match-pattern|
      (lambda _g41974_
        (let ((_g41973_ (length _g41974_)))
          (cond ((##fx= _g41973_ 1)
                 (apply |gerbil/core$<match>[1]#parse-match-pattern__0|
                        _g41974_))
                ((##fx= _g41973_ 2)
                 (apply |gerbil/core$<match>[1]#parse-match-pattern__%|
                        _g41974_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core$<match>[1]#parse-match-pattern|
                  _g41974_))))))
    (define |gerbil/core$<match>[1]#match-pattern?|
      (lambda (_stx28364_)
        (call-with-escape
         (lambda (_E28368_)
           (with-exception-handler
            (let ((_E!28371_ (current-exception-handler)))
              (lambda (_e28374_)
                (if (gx#syntax-error? _e28374_)
                    (_E28368_ '#f)
                    (_E!28371_ _e28374_))))
            (lambda ()
              (|gerbil/core$<match>[1]#parse-match-pattern__0| _stx28364_)
              '#t))))))
    (define |gerbil/core$<match>[1]#match-pattern-vars|
      (lambda (_ptree27069_)
        (letrec ((_loop27072_
                  (lambda (_ptree27359_ _vars27361_ _K27362_)
                    (let* ((___stx3975539756_ _ptree27359_)
                           (_g2737527485_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3975539756_))))
                      (let ((___kont3975839759_
                             (lambda (_L28115_)
                               (let* ((___stx3966339664_ _L28115_)
                                      (_g2813228172_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx3966339664_))))
                                 (let ((___kont3966639667_
                                        (lambda (_L28345_)
                                          (_loop27072_
                                           _L28345_
                                           _vars27361_
                                           _K27362_)))
                                       (___kont3966839669_
                                        (lambda (_L28312_)
                                          (_loop27072_
                                           _L28312_
                                           _vars27361_
                                           _K27362_)))
                                       (___kont3967039671_
                                        (lambda (_L28248_)
                                          (_loop27072_
                                           _L28248_
                                           _vars27361_
                                           _K27362_)))
                                       (___kont3967239673_
                                        (lambda () (_K27362_ _vars27361_))))
                                   (if (gx#stx-pair? ___stx3966339664_)
                                       (let ((_e2813528335_
                                              (gx#syntax-e ___stx3966339664_)))
                                         (let ((_tl2813728342_
                                                (##cdr _e2813528335_))
                                               (_hd2813628339_
                                                (##car _e2813528335_)))
                                           (if (gx#stx-null? _tl2813728342_)
                                               (___kont3966639667_
                                                _hd2813628339_)
                                               (if (gx#stx-pair?
                                                    _tl2813728342_)
                                                   (let ((_e2814228288_
                                                          (gx#syntax-e
                                                           _tl2813728342_)))
                                                     (let ((_tl2814428295_
                                                            (##cdr _e2814228288_))
                                                           (_hd2814328292_
                                                            (##car _e2814228288_)))
                                                       (if (gx#stx-datum?
                                                            _hd2814328292_)
                                                           (let ((_e2814528298_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd2814328292_)))
                     (if (equal? _e2814528298_ '=>:)
                         (if (gx#stx-pair? _tl2814428295_)
                             (let ((_e2814628302_
                                    (gx#syntax-e _tl2814428295_)))
                               (let ((_tl2814828309_ (##cdr _e2814628302_))
                                     (_hd2814728306_ (##car _e2814628302_)))
                                 (if (gx#stx-null? _tl2814828309_)
                                     (___kont3966839669_ _hd2814728306_)
                                     (___kont3967239673_))))
                             (___kont3967239673_))
                         (if (equal? _e2814528298_ '::)
                             (if (gx#stx-pair? _tl2814428295_)
                                 (let ((_e2815728214_
                                        (gx#syntax-e _tl2814428295_)))
                                   (let ((_tl2815928221_ (##cdr _e2815728214_))
                                         (_hd2815828218_
                                          (##car _e2815728214_)))
                                     (if (gx#stx-pair? _tl2815928221_)
                                         (let ((_e2816028224_
                                                (gx#syntax-e _tl2815928221_)))
                                           (let ((_tl2816228231_
                                                  (##cdr _e2816028224_))
                                                 (_hd2816128228_
                                                  (##car _e2816028224_)))
                                             (if (gx#stx-datum? _hd2816128228_)
                                                 (let ((_e2816328234_
                                                        (gx#stx-e
                                                         _hd2816128228_)))
                                                   (if (equal? _e2816328234_
                                                               '=>:)
                                                       (if (gx#stx-pair?
                                                            _tl2816228231_)
                                                           (let ((_e2816428238_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl2816228231_)))
                     (let ((_tl2816628245_ (##cdr _e2816428238_))
                           (_hd2816528242_ (##car _e2816428238_)))
                       (if (gx#stx-null? _tl2816628245_)
                           (___kont3967039671_ _hd2816528242_)
                           (___kont3967239673_))))
                   (___kont3967239673_))
               (___kont3967239673_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont3967239673_))))
                                         (___kont3967239673_))))
                                 (___kont3967239673_))
                             (___kont3967239673_))))
                   (___kont3967239673_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont3967239673_)))))
                                       (___kont3967239673_))))))
                            (___kont3976039761_
                             (lambda (_L28002_ _L28004_)
                               (let* ((___stx3964739648_ _L28002_)
                                      (_g2802028032_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx3964739648_))))
                                 (let ((___kont3965039651_
                                        (lambda (_L28060_ _L28062_)
                                          (_loop27072_
                                           _L28062_
                                           _vars27361_
                                           (lambda (_g2807428076_)
                                             (_loop27072_
                                              (cons _L28004_ _L28060_)
                                              _g2807428076_
                                              _K27362_)))))
                                       (___kont3965239653_
                                        (lambda () (_K27362_ _vars27361_))))
                                   (if (gx#stx-pair? ___stx3964739648_)
                                       (let ((_e2802428050_
                                              (gx#syntax-e ___stx3964739648_)))
                                         (let ((_tl2802628057_
                                                (##cdr _e2802428050_))
                                               (_hd2802528054_
                                                (##car _e2802428050_)))
                                           (___kont3965039651_
                                            _tl2802628057_
                                            _hd2802528054_)))
                                       (___kont3965239653_))))))
                            (___kont3976239763_
                             (lambda (_L27971_)
                               (_loop27072_ _L27971_ _vars27361_ _K27362_)))
                            (___kont3976439765_
                             (lambda (_L27917_ _L27919_)
                               (_loop27072_
                                _L27919_
                                _vars27361_
                                (lambda (_g2793427936_)
                                  (_loop27072_
                                   _L27917_
                                   _g2793427936_
                                   _K27362_)))))
                            (___kont3976639767_
                             (lambda (_L27853_ _L27855_)
                               (_loop27072_
                                _L27855_
                                _vars27361_
                                (lambda (_g2787027872_)
                                  (_loop27072_
                                   _L27853_
                                   _g2787027872_
                                   _K27362_)))))
                            (___kont3976839769_
                             (lambda (_L27798_)
                               (_loop27072_ _L27798_ _vars27361_ _K27362_)))
                            (___kont3977039771_
                             (lambda (_L27748_ _L27750_)
                               (_loop-vector27074_
                                _L27748_
                                _vars27361_
                                _K27362_)))
                            (___kont3977239773_
                             (lambda (_L27705_)
                               (_loop-vector27074_
                                _L27705_
                                _vars27361_
                                _K27362_)))
                            (___kont3977439775_
                             (lambda (_L27648_)
                               (_loop-class-list27076_
                                _L27648_
                                _vars27361_
                                _K27362_)))
                            (___kont3977639777_
                             (lambda (_L27589_ _L27591_)
                               (_loop27072_ _L27589_ _vars27361_ _K27362_)))
                            (___kont3977839779_
                             (lambda (_L27527_)
                               (if (find (lambda (_g2754227544_)
                                           (gx#bound-identifier=?
                                            _g2754227544_
                                            _L27527_))
                                         _vars27361_)
                                   (_K27362_ _vars27361_)
                                   (_K27362_ (cons _L27527_ _vars27361_)))))
                            (___kont3978039781_
                             (lambda () (_K27362_ _vars27361_))))
                        (let* ((___match3991239913_
                                (lambda (_e2743227728_
                                         _hd2743327732_
                                         _tl2743427735_
                                         _e2743527738_
                                         _hd2743627742_
                                         _tl2743727745_)
                                  (let ((_L27748_ _hd2743627742_)
                                        (_L27750_ _hd2743327732_))
                                    (if (or (gx#stx-eq? 'values: _L27750_)
                                            (gx#stx-eq? 'vector: _L27750_))
                                        (___kont3977039771_ _L27748_ _L27750_)
                                        (if (gx#stx-datum? _hd2743327732_)
                                            (let ((_e2744227681_
                                                   (gx#stx-e _hd2743327732_)))
                                              (if (equal? _e2744227681_
                                                          'struct:)
                                                  (___kont3978039781_)
                                                  (if (equal? _e2744227681_
                                                              'class:)
                                                      (___kont3978039781_)
                                                      (if (equal? _e2744227681_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'apply:)
                  (___kont3978039781_)
                  (if (equal? _e2744227681_ 'var:)
                      (___kont3977839779_ _hd2743627742_)
                      (___kont3978039781_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont3978039781_))))))
                               (___match3980639807_
                                (lambda (_e2738727992_
                                         _hd2738827996_
                                         _tl2738927999_)
                                  (let ((_L28002_ _tl2738927999_)
                                        (_L28004_ _hd2738827996_))
                                    (if (or (gx#stx-eq? 'and: _L28004_)
                                            (gx#stx-eq? 'or: _L28004_))
                                        (___kont3976039761_ _L28002_ _L28004_)
                                        (if (gx#stx-datum? _hd2738827996_)
                                            (let ((_e2739427957_
                                                   (gx#stx-e _hd2738827996_)))
                                              (if (equal? _e2739427957_ 'not:)
                                                  (if (gx#stx-pair?
                                                       _tl2738927999_)
                                                      (let ((_e2739527961_
                                                             (gx#syntax-e
                                                              _tl2738927999_)))
                                                        (let ((_tl2739727968_
                                                               (##cdr _e2739527961_))
                                                              (_hd2739627965_
                                                               (##car _e2739527961_)))
                                                          (if (gx#stx-null?
                                                               _tl2739727968_)
                                                              (___kont3976239763_
                                                               _hd2739627965_)
                                                              (___kont3978039781_))))
                                                      (___kont3978039781_))
                                                  (if (equal? _e2739427957_
                                                              'cons:)
                                                      (if (gx#stx-pair?
                                                           _tl2738927999_)
                                                          (let ((_e2740427897_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2738927999_)))
                    (let ((_tl2740627904_ (##cdr _e2740427897_))
                          (_hd2740527901_ (##car _e2740427897_)))
                      (if (gx#stx-pair? _tl2740627904_)
                          (let ((_e2740727907_ (gx#syntax-e _tl2740627904_)))
                            (let ((_tl2740927914_ (##cdr _e2740727907_))
                                  (_hd2740827911_ (##car _e2740727907_)))
                              (if (gx#stx-null? _tl2740927914_)
                                  (___kont3976439765_
                                   _hd2740827911_
                                   _hd2740527901_)
                                  (___kont3978039781_))))
                          (if (gx#stx-null? _tl2740627904_)
                              (___match3991239913_
                               _e2738727992_
                               _hd2738827996_
                               _tl2738927999_
                               _e2740427897_
                               _hd2740527901_
                               _tl2740627904_)
                              (___kont3978039781_)))))
                  (___kont3978039781_))
              (if (equal? _e2739427957_ 'splice:)
                  (if (gx#stx-pair? _tl2738927999_)
                      (let ((_e2741627833_ (gx#syntax-e _tl2738927999_)))
                        (let ((_tl2741827840_ (##cdr _e2741627833_))
                              (_hd2741727837_ (##car _e2741627833_)))
                          (if (gx#stx-pair? _tl2741827840_)
                              (let ((_e2741927843_
                                     (gx#syntax-e _tl2741827840_)))
                                (let ((_tl2742127850_ (##cdr _e2741927843_))
                                      (_hd2742027847_ (##car _e2741927843_)))
                                  (if (gx#stx-null? _tl2742127850_)
                                      (___kont3976639767_
                                       _hd2742027847_
                                       _hd2741727837_)
                                      (___kont3978039781_))))
                              (if (gx#stx-null? _tl2741827840_)
                                  (___match3991239913_
                                   _e2738727992_
                                   _hd2738827996_
                                   _tl2738927999_
                                   _e2741627833_
                                   _hd2741727837_
                                   _tl2741827840_)
                                  (___kont3978039781_)))))
                      (___kont3978039781_))
                  (if (equal? _e2739427957_ 'box:)
                      (if (gx#stx-pair? _tl2738927999_)
                          (let ((_e2742727788_ (gx#syntax-e _tl2738927999_)))
                            (let ((_tl2742927795_ (##cdr _e2742727788_))
                                  (_hd2742827792_ (##car _e2742727788_)))
                              (if (gx#stx-null? _tl2742927795_)
                                  (___kont3976839769_ _hd2742827792_)
                                  (___kont3978039781_))))
                          (___kont3978039781_))
                      (if (gx#stx-pair? _tl2738927999_)
                          (let ((_e2743527738_ (gx#syntax-e _tl2738927999_)))
                            (let ((_tl2743727745_ (##cdr _e2743527738_))
                                  (_hd2743627742_ (##car _e2743527738_)))
                              (if (gx#stx-null? _tl2743727745_)
                                  (___match3991239913_
                                   _e2738727992_
                                   _hd2738827996_
                                   _tl2738927999_
                                   _e2743527738_
                                   _hd2743627742_
                                   _tl2743727745_)
                                  (if (equal? _e2739427957_ 'struct:)
                                      (if (gx#stx-pair? _tl2743727745_)
                                          (let ((_e2744627695_
                                                 (gx#syntax-e _tl2743727745_)))
                                            (let ((_tl2744827702_
                                                   (##cdr _e2744627695_))
                                                  (_hd2744727699_
                                                   (##car _e2744627695_)))
                                              (if (gx#stx-null? _tl2744827702_)
                                                  (___kont3977239773_
                                                   _hd2744727699_)
                                                  (___kont3978039781_))))
                                          (___kont3978039781_))
                                      (if (equal? _e2739427957_ 'class:)
                                          (if (gx#stx-pair? _tl2743727745_)
                                              (let ((_e2745727638_
                                                     (gx#syntax-e
                                                      _tl2743727745_)))
                                                (let ((_tl2745927645_
                                                       (##cdr _e2745727638_))
                                                      (_hd2745827642_
                                                       (##car _e2745727638_)))
                                                  (if (gx#stx-null?
                                                       _tl2745927645_)
                                                      (___kont3977439775_
                                                       _hd2745827642_)
                                                      (___kont3978039781_))))
                                              (___kont3978039781_))
                                          (if (equal? _e2739427957_ 'apply:)
                                              (if (gx#stx-pair? _tl2743727745_)
                                                  (let ((_e2746927579_
                                                         (gx#syntax-e
                                                          _tl2743727745_)))
                                                    (let ((_tl2747127586_
                                                           (##cdr _e2746927579_))
                                                          (_hd2747027583_
                                                           (##car _e2746927579_)))
                                                      (if (gx#stx-null?
                                                           _tl2747127586_)
                                                          (___kont3977639777_
                                                           _hd2747027583_
                                                           _hd2743627742_)
                                                          (___kont3978039781_))))
                                                  (___kont3978039781_))
                                              (___kont3978039781_)))))))
                          (___kont3978039781_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _tl2738927999_)
                                                (let ((_e2743527738_
                                                       (gx#syntax-e
                                                        _tl2738927999_)))
                                                  (let ((_tl2743727745_
                                                         (##cdr _e2743527738_))
                                                        (_hd2743627742_
                                                         (##car _e2743527738_)))
                                                    (if (gx#stx-null?
                                                         _tl2743727745_)
                                                        (___match3991239913_
                                                         _e2738727992_
                                                         _hd2738827996_
                                                         _tl2738927999_
                                                         _e2743527738_
                                                         _hd2743627742_
                                                         _tl2743727745_)
                                                        (___kont3978039781_))))
                                                (___kont3978039781_))))))))
                          (if (gx#stx-pair? ___stx3975539756_)
                              (let ((_e2737828091_
                                     (gx#syntax-e ___stx3975539756_)))
                                (let ((_tl2738028098_ (##cdr _e2737828091_))
                                      (_hd2737928095_ (##car _e2737828091_)))
                                  (if (gx#stx-datum? _hd2737928095_)
                                      (let ((_e2738128101_
                                             (gx#stx-e _hd2737928095_)))
                                        (if (equal? _e2738128101_ '?:)
                                            (if (gx#stx-pair? _tl2738028098_)
                                                (let ((_e2738228105_
                                                       (gx#syntax-e
                                                        _tl2738028098_)))
                                                  (let ((_tl2738428112_
                                                         (##cdr _e2738228105_))
                                                        (_hd2738328109_
                                                         (##car _e2738228105_)))
                                                    (___kont3975839759_
                                                     _tl2738428112_)))
                                                (___match3980639807_
                                                 _e2737828091_
                                                 _hd2737928095_
                                                 _tl2738028098_))
                                            (___match3980639807_
                                             _e2737828091_
                                             _hd2737928095_
                                             _tl2738028098_)))
                                      (___match3980639807_
                                       _e2737828091_
                                       _hd2737928095_
                                       _tl2738028098_))))
                              (___kont3978039781_)))))))
                 (_loop-vector27074_
                  (lambda (_body27235_ _vars27237_ _K27238_)
                    (let* ((___stx4001340014_ _body27235_)
                           (_g2724127264_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx4001340014_))))
                      (let ((___kont4001640017_
                             (lambda (_L27341_)
                               (_loop-list27075_
                                _L27341_
                                _vars27237_
                                _K27238_)))
                            (___kont4001840019_
                             (lambda (_L27295_)
                               (_loop27072_ _L27295_ _vars27237_ _K27238_))))
                        (if (gx#stx-pair? ___stx4001340014_)
                            (let ((_e2724427317_
                                   (gx#syntax-e ___stx4001340014_)))
                              (let ((_tl2724627324_ (##cdr _e2724427317_))
                                    (_hd2724527321_ (##car _e2724427317_)))
                                (if (gx#stx-datum? _hd2724527321_)
                                    (let ((_e2724727327_
                                           (gx#stx-e _hd2724527321_)))
                                      (if (equal? _e2724727327_ 'simple:)
                                          (if (gx#stx-pair? _tl2724627324_)
                                              (let ((_e2724827331_
                                                     (gx#syntax-e
                                                      _tl2724627324_)))
                                                (let ((_tl2725027338_
                                                       (##cdr _e2724827331_))
                                                      (_hd2724927335_
                                                       (##car _e2724827331_)))
                                                  (if (gx#stx-null?
                                                       _tl2725027338_)
                                                      (___kont4001640017_
                                                       _hd2724927335_)
                                                      (_g2724127264_))))
                                              (_g2724127264_))
                                          (if (equal? _e2724727327_ 'list:)
                                              (if (gx#stx-pair? _tl2724627324_)
                                                  (let ((_e2725627285_
                                                         (gx#syntax-e
                                                          _tl2724627324_)))
                                                    (let ((_tl2725827292_
                                                           (##cdr _e2725627285_))
                                                          (_hd2725727289_
                                                           (##car _e2725627285_)))
                                                      (if (gx#stx-null?
                                                           _tl2725827292_)
                                                          (___kont4001840019_
                                                           _hd2725727289_)
                                                          (_g2724127264_))))
                                                  (_g2724127264_))
                                              (_g2724127264_))))
                                    (_g2724127264_))))
                            (_g2724127264_))))))
                 (_loop-list27075_
                  (lambda (_rest27165_ _vars27167_ _K27168_)
                    (let* ((___stx4006340064_ _rest27165_)
                           (_g2717127183_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx4006340064_))))
                      (let ((___kont4006640067_
                             (lambda (_L27211_ _L27213_)
                               (_loop27072_
                                _L27213_
                                _vars27167_
                                (lambda (_g2722527227_)
                                  (_loop-list27075_
                                   _L27211_
                                   _g2722527227_
                                   _K27168_)))))
                            (___kont4006840069_
                             (lambda () (_K27168_ _vars27167_))))
                        (if (gx#stx-pair? ___stx4006340064_)
                            (let ((_e2717527201_
                                   (gx#syntax-e ___stx4006340064_)))
                              (let ((_tl2717727208_ (##cdr _e2717527201_))
                                    (_hd2717627205_ (##car _e2717527201_)))
                                (___kont4006640067_
                                 _tl2717727208_
                                 _hd2717627205_)))
                            (___kont4006840069_))))))
                 (_loop-class-list27076_
                  (lambda (_rest27078_ _vars27080_ _K27081_)
                    (let* ((___stx4007940080_ _rest27078_)
                           (_g2708427099_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx4007940080_))))
                      (let ((___kont4008240083_
                             (lambda (_L27137_ _L27139_)
                               (_loop27072_
                                _L27139_
                                _vars27080_
                                (lambda (_g2715527157_)
                                  (_loop-class-list27076_
                                   _L27137_
                                   _g2715527157_
                                   _K27081_)))))
                            (___kont4008440085_
                             (lambda () (_K27081_ _vars27080_))))
                        (if (gx#stx-pair? ___stx4007940080_)
                            (let ((_e2708827117_
                                   (gx#syntax-e ___stx4007940080_)))
                              (let ((_tl2709027124_ (##cdr _e2708827117_))
                                    (_hd2708927121_ (##car _e2708827117_)))
                                (if (gx#stx-pair? _tl2709027124_)
                                    (let ((_e2709127127_
                                           (gx#syntax-e _tl2709027124_)))
                                      (let ((_tl2709327134_
                                             (##cdr _e2709127127_))
                                            (_hd2709227131_
                                             (##car _e2709127127_)))
                                        (___kont4008240083_
                                         _tl2709327134_
                                         _hd2709227131_)))
                                    (___kont4008440085_))))
                            (___kont4008440085_)))))))
          (_loop27072_ _ptree27069_ '() values))))
    (define |gerbil/core$<match>[1]#generate-match1|
      (lambda (_stx23652_ _tgt23654_ _ptree23655_ _K23656_ _E23657_)
        (letrec ((_generate123659_
                  (lambda (_tgt25282_ _ptree25284_ _K25285_ _E25286_)
                    (let* ((_g2528825296_
                            (lambda (_g2528925292_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2528925292_)))
                           (_g2528727065_
                            (lambda (_g2528925300_)
                              ((lambda (_L25303_)
                                 (let ()
                                   (let* ((___stx4031540316_ _ptree25284_)
                                          (_g2533025472_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              ___stx4031540316_))))
                                     (let ((___kont4031840319_
                                            (lambda (_L26780_ _L26782_)
                                              (let* ((___stx4023340234_
                                                      _L26780_)
                                                     (_g2679926834_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         ___stx4023340234_))))
                                                (let ((___kont4023640237_
                                                       (lambda ()
                                                         (cons 'if
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '?)
                                   (cons _L26782_ (cons _L25303_ '())))
                             (cons _K25285_ (cons _E25286_ '()))))))
              (___kont4023840239_
               (lambda (_L27035_)
                 (cons 'if
                       (cons (cons (gx#datum->syntax '#f '?)
                                   (cons _L26782_ (cons _L25303_ '())))
                             (cons (_generate123659_
                                    _tgt25282_
                                    _L27035_
                                    _K25285_
                                    _E25286_)
                                   (cons _E25286_ '()))))))
              (___kont4024040241_
               (lambda (_L26973_)
                 (let* ((_g2698726995_
                         (lambda (_g2698826991_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2698826991_)))
                        (_g2698627014_
                         (lambda (_g2698826999_)
                           ((lambda (_L27002_)
                              (let ()
                                (cons 'let
                                      (cons (cons (cons _L27002_
                                                        (cons (cons _L26782_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _L25303_ '()))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())
                                            (cons (cons 'if
                                                        (cons _L27002_
                                                              (cons (_generate123659_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L27002_
                             _L26973_
                             _K25285_
                             _E25286_)
                            (cons _E25286_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                            _g2698826999_))))
                   (_g2698627014_ (gx#genident 'e)))))
              (___kont4024240243_
               (lambda (_L26889_ _L26891_)
                 (let* ((_g2691126919_
                         (lambda (_g2691226915_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2691226915_)))
                        (_g2691026938_
                         (lambda (_g2691226923_)
                           ((lambda (_L26926_)
                              (let ()
                                (cons 'if
                                      (cons (cons (gx#datum->syntax '#f '?)
                                                  (cons _L26782_
                                                        (cons _L25303_ '())))
                                            (cons (cons 'let
                                                        (cons (cons (cons _L26926_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (cons _L26891_ (cons _L25303_ '()))
                                        '()))
                            '())
                      (cons (_generate123659_
                             _L26926_
                             _L26889_
                             _K25285_
                             _E25286_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _E25286_ '()))))))
                            _g2691226923_))))
                   (_g2691026938_ (gx#genident 'e))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g2679627046_
                                                         (lambda ()
                                                           (if (gx#stx-pair?
                                                                ___stx4023340234_)
                                                               (let ((_e2680227025_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e ___stx4023340234_)))
                         (let ((_tl2680427032_ (##cdr _e2680227025_))
                               (_hd2680327029_ (##car _e2680227025_)))
                           (if (gx#stx-null? _tl2680427032_)
                               (___kont4023840239_ _hd2680327029_)
                               (if (gx#stx-datum? _hd2680327029_)
                                   (let ((_e2680926959_
                                          (gx#stx-e _hd2680327029_)))
                                     (if (equal? _e2680926959_ '=>:)
                                         (if (gx#stx-pair? _tl2680427032_)
                                             (let ((_e2681026963_
                                                    (gx#syntax-e
                                                     _tl2680427032_)))
                                               (let ((_tl2681226970_
                                                      (##cdr _e2681026963_))
                                                     (_hd2681126967_
                                                      (##car _e2681026963_)))
                                                 (if (gx#stx-null?
                                                      _tl2681226970_)
                                                     (___kont4024040241_
                                                      _hd2681126967_)
                                                     (_g2679926834_))))
                                             (_g2679926834_))
                                         (if (equal? _e2680926959_ '::)
                                             (if (gx#stx-pair? _tl2680427032_)
                                                 (let ((_e2681926855_
                                                        (gx#syntax-e
                                                         _tl2680427032_)))
                                                   (let ((_tl2682126862_
                                                          (##cdr _e2681926855_))
                                                         (_hd2682026859_
                                                          (##car _e2681926855_)))
                                                     (if (gx#stx-pair?
                                                          _tl2682126862_)
                                                         (let ((_e2682226865_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2682126862_)))
                   (let ((_tl2682426872_ (##cdr _e2682226865_))
                         (_hd2682326869_ (##car _e2682226865_)))
                     (if (gx#stx-datum? _hd2682326869_)
                         (let ((_e2682526875_ (gx#stx-e _hd2682326869_)))
                           (if (equal? _e2682526875_ '=>:)
                               (if (gx#stx-pair? _tl2682426872_)
                                   (let ((_e2682626879_
                                          (gx#syntax-e _tl2682426872_)))
                                     (let ((_tl2682826886_
                                            (##cdr _e2682626879_))
                                           (_hd2682726883_
                                            (##car _e2682626879_)))
                                       (if (gx#stx-null? _tl2682826886_)
                                           (___kont4024240243_
                                            _hd2682726883_
                                            _hd2682026859_)
                                           (_g2679926834_))))
                                   (_g2679926834_))
                               (_g2679926834_)))
                         (_g2679926834_))))
                 (_g2679926834_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2679926834_))
                                             (_g2679926834_))))
                                   (_g2679926834_)))))
                       (_g2679926834_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         ___stx4023340234_)
                                                        (___kont4023640237_)
                                                        (_g2679627046_)))))))
                                           (___kont4032040321_
                                            (lambda (_L26677_)
                                              (let* ((___stx4021740218_
                                                      _L26677_)
                                                     (_g2669026702_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         ___stx4021740218_))))
                                                (let ((___kont4022040221_
                                                       (lambda (_L26730_
                                                                _L26732_)
                                                         (_generate123659_
                                                          _tgt25282_
                                                          _L26732_
                                                          (_generate123659_
                                                           _tgt25282_
                                                           (cons 'and:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L26730_)
                   _K25285_
                   _E25286_)
                  _E25286_)))
              (___kont4022240223_ (lambda () _K25285_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4021740218_)
                                                      (let ((_e2669426720_
                                                             (gx#syntax-e
                                                              ___stx4021740218_)))
                                                        (let ((_tl2669626727_
                                                               (##cdr _e2669426720_))
                                                              (_hd2669526724_
                                                               (##car _e2669426720_)))
                                                          (___kont4022040221_
                                                           _tl2669626727_
                                                           _hd2669526724_)))
                                                      (___kont4022240223_))))))
                                           (___kont4032240323_
                                            (lambda (_L26584_)
                                              (let* ((___stx4020140202_
                                                      _L26584_)
                                                     (_g2659726609_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         ___stx4020140202_))))
                                                (let ((___kont4020440205_
                                                       (lambda (_L26637_
                                                                _L26639_)
                                                         (_generate123659_
                                                          _tgt25282_
                                                          _L26639_
                                                          _K25285_
                                                          (_generate123659_
                                                           _tgt25282_
                                                           (cons 'or: _L26637_)
                                                           _K25285_
                                                           _E25286_))))
                                                      (___kont4020640207_
                                                       (lambda () _E25286_)))
                                                  (if (gx#stx-pair?
                                                       ___stx4020140202_)
                                                      (let ((_e2660126627_
                                                             (gx#syntax-e
                                                              ___stx4020140202_)))
                                                        (let ((_tl2660326634_
                                                               (##cdr _e2660126627_))
                                                              (_hd2660226631_
                                                               (##car _e2660126627_)))
                                                          (___kont4020440205_
                                                           _tl2660326634_
                                                           _hd2660226631_)))
                                                      (___kont4020640207_))))))
                                           (___kont4032440325_
                                            (lambda (_L26549_)
                                              (_generate123659_
                                               _tgt25282_
                                               _L26549_
                                               _E25286_
                                               _K25285_)))
                                           (___kont4032640327_
                                            (lambda (_L26431_ _L26433_)
                                              (let* ((_g2645026465_
                                                      (lambda (_g2645126461_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g2645126461_)))
                                                     (_g2644926514_
                                                      (lambda (_g2645126469_)
                                                        (if (gx#stx-pair?
                                                             _g2645126469_)
                                                            (let ((_e2645426472_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _g2645126469_)))
                      (let ((_hd2645526476_ (##car _e2645426472_))
                            (_tl2645626479_ (##cdr _e2645426472_)))
                        (if (gx#stx-pair? _tl2645626479_)
                            (let ((_e2645726482_ (gx#syntax-e _tl2645626479_)))
                              (let ((_hd2645826486_ (##car _e2645726482_))
                                    (_tl2645926489_ (##cdr _e2645726482_)))
                                (if (gx#stx-null? _tl2645926489_)
                                    ((lambda (_L26492_ _L26494_)
                                       (let ()
                                         (cons 'if
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '##pair?)
                                                           (cons _L25303_ '()))
                                                     (cons (let ((_hd-pat26510_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _L26433_))
                         (_tl-pat26512_ (gx#stx-e _L26431_)))
                     (if (and (equal? _hd-pat26510_ '(any:))
                              (equal? _tl-pat26512_ '(any:)))
                         _K25285_
                         (if (equal? _tl-pat26512_ '(any:))
                             (cons 'let
                                   (cons (cons (cons _L26494_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##car)
                         (cons _L25303_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons (_generate123659_
                                                _L26494_
                                                _L26433_
                                                _K25285_
                                                _E25286_)
                                               '())))
                             (if (equal? _hd-pat26510_ '(any:))
                                 (cons 'let
                                       (cons (cons (cons _L26492_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '##cdr)
                             (cons _L25303_ '()))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())
                                             (cons (_generate123659_
                                                    _L26492_
                                                    _L26431_
                                                    _K25285_
                                                    _E25286_)
                                                   '())))
                                 (cons 'let
                                       (cons (cons (cons _L26494_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '##car)
                             (cons _L25303_ '()))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons _L26492_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '##cdr)
                                   (cons _L25303_ '()))
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (_generate123659_
                                                    _L26494_
                                                    _L26433_
                                                    (_generate123659_
                                                     _L26492_
                                                     _L26431_
                                                     _K25285_
                                                     _E25286_)
                                                    _E25286_)
                                                   '())))))))
                   (cons _E25286_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _hd2645826486_
                                     _hd2645526476_)
                                    (_g2645026465_ _g2645126469_))))
                            (_g2645026465_ _g2645126469_))))
                    (_g2645026465_ _g2645126469_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2644926514_
                                                 (list (gx#genident 'hd)
                                                       (gx#genident 'tl))))))
                                           (___kont4032840329_
                                            (lambda ()
                                              (cons 'if
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##null?)
                        (cons _L25303_ '()))
                  (cons _K25285_ (cons _E25286_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4033040331_
                                            (lambda (_L26347_ _L26349_)
                                              (_generate-splice23661_
                                               _tgt25282_
                                               _L26349_
                                               _L26347_
                                               _K25285_
                                               _E25286_)))
                                           (___kont4033240333_
                                            (lambda (_L26261_)
                                              (let* ((_g2627526283_
                                                      (lambda (_g2627626279_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g2627626279_)))
                                                     (_g2627426302_
                                                      (lambda (_g2627626287_)
                                                        ((lambda (_L26290_)
                                                           (let ()
                                                             (cons 'if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f '##box?)
                                       (cons _L25303_ '()))
                                 (cons (cons 'let
                                             (cons (cons (cons _L26290_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '##unbox)
                                   (cons _L25303_ '()))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (_generate123659_
                                                          _L26290_
                                                          _L26261_
                                                          _K25285_
                                                          _E25286_)
                                                         '())))
                                       (cons _E25286_ '()))))))
                 _g2627626287_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2627426302_
                                                 (gx#genident 'e)))))
                                           (___kont4033440335_
                                            (lambda (_L26066_)
                                              (let* ((___stx4015140152_
                                                      _L26066_)
                                                     (_g2608126104_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         ___stx4015140152_))))
                                                (let ((___kont4015440155_
                                                       (lambda (_L26181_)
                                                         (let* ((_g2619526203_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2619626199_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2619626199_)))
                        (_g2619426222_
                         (lambda (_g2619626207_)
                           ((lambda (_L26210_)
                              (let ()
                                (cons 'if
                                      (cons (cons (gx#datum->syntax '#f '##fx=)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'values-count)
                                                              (cons _L25303_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _L26210_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (_generate-simple-vector23662_
                                                   _tgt25282_
                                                   _L26181_
                                                   '0
                                                   _K25285_
                                                   _E25286_)
                                                  (cons _E25286_ '()))))))
                            _g2619626207_))))
                   (_g2619426222_ (gx#stx-length _L26181_)))))
              (___kont4015640157_
               (lambda (_L26135_)
                 (_generate-list-vector23663_
                  _tgt25282_
                  _L26135_
                  'values->list
                  _K25285_
                  _E25286_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4015140152_)
                                                      (let ((_e2608426157_
                                                             (gx#syntax-e
                                                              ___stx4015140152_)))
                                                        (let ((_tl2608626164_
                                                               (##cdr _e2608426157_))
                                                              (_hd2608526161_
                                                               (##car _e2608426157_)))
                                                          (if (gx#stx-datum?
                                                               _hd2608526161_)
                                                              (let ((_e2608726167_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd2608526161_)))
                        (if (equal? _e2608726167_ 'simple:)
                            (if (gx#stx-pair? _tl2608626164_)
                                (let ((_e2608826171_
                                       (gx#syntax-e _tl2608626164_)))
                                  (let ((_tl2609026178_ (##cdr _e2608826171_))
                                        (_hd2608926175_ (##car _e2608826171_)))
                                    (if (gx#stx-null? _tl2609026178_)
                                        (___kont4015440155_ _hd2608926175_)
                                        (_g2608126104_))))
                                (_g2608126104_))
                            (if (equal? _e2608726167_ 'list:)
                                (if (gx#stx-pair? _tl2608626164_)
                                    (let ((_e2609626125_
                                           (gx#syntax-e _tl2608626164_)))
                                      (let ((_tl2609826132_
                                             (##cdr _e2609626125_))
                                            (_hd2609726129_
                                             (##car _e2609626125_)))
                                        (if (gx#stx-null? _tl2609826132_)
                                            (___kont4015640157_ _hd2609726129_)
                                            (_g2608126104_))))
                                    (_g2608126104_))
                                (_g2608126104_))))
                      (_g2608126104_))))
              (_g2608126104_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4033640337_
                                            (lambda (_L25871_)
                                              (let* ((___stx4010140102_
                                                      _L25871_)
                                                     (_g2588625909_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         ___stx4010140102_))))
                                                (let ((___kont4010440105_
                                                       (lambda (_L25986_)
                                                         (let* ((_g2600026008_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2600126004_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2600126004_)))
                        (_g2599926027_
                         (lambda (_g2600126012_)
                           ((lambda (_L26015_)
                              (let ()
                                (cons 'if
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   '##vector?)
                                                  (cons _L25303_ '()))
                                            (cons (cons 'if
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '##fx=)
                            (cons (cons (gx#datum->syntax '#f '##vector-length)
                                        (cons _L25303_ '()))
                                  (cons _L26015_ '())))
                      (cons (_generate-simple-vector23662_
                             _tgt25282_
                             _L25986_
                             '0
                             _K25285_
                             _E25286_)
                            (cons _E25286_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _E25286_ '()))))))
                            _g2600126012_))))
                   (_g2599926027_ (gx#stx-length _L25986_)))))
              (___kont4010640107_
               (lambda (_L25940_)
                 (cons 'if
                       (cons (cons (gx#datum->syntax '#f '##vector?)
                                   (cons _L25303_ '()))
                             (cons (_generate-list-vector23663_
                                    _tgt25282_
                                    _L25940_
                                    'vector->list
                                    _K25285_
                                    _E25286_)
                                   (cons _E25286_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4010140102_)
                                                      (let ((_e2588925962_
                                                             (gx#syntax-e
                                                              ___stx4010140102_)))
                                                        (let ((_tl2589125969_
                                                               (##cdr _e2588925962_))
                                                              (_hd2589025966_
                                                               (##car _e2588925962_)))
                                                          (if (gx#stx-datum?
                                                               _hd2589025966_)
                                                              (let ((_e2589225972_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd2589025966_)))
                        (if (equal? _e2589225972_ 'simple:)
                            (if (gx#stx-pair? _tl2589125969_)
                                (let ((_e2589325976_
                                       (gx#syntax-e _tl2589125969_)))
                                  (let ((_tl2589525983_ (##cdr _e2589325976_))
                                        (_hd2589425980_ (##car _e2589325976_)))
                                    (if (gx#stx-null? _tl2589525983_)
                                        (___kont4010440105_ _hd2589425980_)
                                        (_g2588625909_))))
                                (_g2588625909_))
                            (if (equal? _e2589225972_ 'list:)
                                (if (gx#stx-pair? _tl2589125969_)
                                    (let ((_e2590125930_
                                           (gx#syntax-e _tl2589125969_)))
                                      (let ((_tl2590325937_
                                             (##cdr _e2590125930_))
                                            (_hd2590225934_
                                             (##car _e2590125930_)))
                                        (if (gx#stx-null? _tl2590325937_)
                                            (___kont4010640107_ _hd2590225934_)
                                            (_g2588625909_))))
                                    (_g2588625909_))
                                (_g2588625909_))))
                      (_g2588625909_))))
              (_g2588625909_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4033840339_
                                            (lambda (_L25822_ _L25824_)
                                              (_generate-struct23664_
                                               (gx#stx-e _L25824_)
                                               _tgt25282_
                                               _L25822_
                                               _K25285_
                                               _E25286_)))
                                           (___kont4034040341_
                                            (lambda (_L25763_ _L25765_)
                                              (_generate-class23665_
                                               (gx#stx-e _L25765_)
                                               _tgt25282_
                                               _L25763_
                                               _K25285_
                                               _E25286_)))
                                           (___kont4034240343_
                                            (lambda (_L25666_)
                                              (let* ((_g2568025688_
                                                      (lambda (_g2568125684_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g2568125684_)))
                                                     (_g2567925707_
                                                      (lambda (_g2568125692_)
                                                        ((lambda (_L25695_)
                                                           (let ()
                                                             (cons 'if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _L25695_
                                       (cons _L25303_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'quote)
                                                         (cons _L25666_ '()))
                                                   '())))
                                 (cons _K25285_ (cons _E25286_ '()))))))
                 _g2568125692_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2567925707_
                                                 (let ((_e25711_
                                                        (gx#stx-e _L25666_)))
                                                   (if (or (symbol? _e25711_)
                                                           (keyword? _e25711_)
                                                           (immediate?
                                                            _e25711_))
                                                       '##eq?
                                                       (if (number? _e25711_)
                                                           'eqv?
                                                           'equal?)))))))
                                           (___kont4034440345_
                                            (lambda (_L25586_ _L25588_)
                                              (let* ((_g2560425612_
                                                      (lambda (_g2560525608_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g2560525608_)))
                                                     (_g2560325631_
                                                      (lambda (_g2560525616_)
                                                        ((lambda (_L25619_)
                                                           (let ()
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _L25619_
                                             (cons (cons _L25588_
                                                         (cons _L25303_ '()))
                                                   '()))
                                       '())
                                 (cons (_generate123659_
                                        _L25619_
                                        _L25586_
                                        _K25285_
                                        _E25286_)
                                       '())))))
                 _g2560525616_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2560325631_
                                                 (gx#genident 'e)))))
                                           (___kont4034640347_
                                            (lambda (_L25528_)
                                              (cons 'let
                                                    (cons (cons (cons _L25528_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _L25303_ '()))
                        '())
                  (cons _K25285_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4034840349_
                                            (lambda () _K25285_)))
                                       (if (gx#stx-pair? ___stx4031540316_)
                                           (let ((_e2533426756_
                                                  (gx#syntax-e
                                                   ___stx4031540316_)))
                                             (let ((_tl2533626763_
                                                    (##cdr _e2533426756_))
                                                   (_hd2533526760_
                                                    (##car _e2533426756_)))
                                               (if (gx#stx-datum?
                                                    _hd2533526760_)
                                                   (let ((_e2533726766_
                                                          (gx#stx-e
                                                           _hd2533526760_)))
                                                     (if (equal? _e2533726766_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '?:)
                 (if (gx#stx-pair? _tl2533626763_)
                     (let ((_e2533826770_ (gx#syntax-e _tl2533626763_)))
                       (let ((_tl2534026777_ (##cdr _e2533826770_))
                             (_hd2533926774_ (##car _e2533826770_)))
                         (___kont4031840319_ _tl2534026777_ _hd2533926774_)))
                     (_g2533025472_))
                 (if (equal? _e2533726766_ 'and:)
                     (___kont4032040321_ _tl2533626763_)
                     (if (equal? _e2533726766_ 'or:)
                         (___kont4032240323_ _tl2533626763_)
                         (if (equal? _e2533726766_ 'not:)
                             (if (gx#stx-pair? _tl2533626763_)
                                 (let ((_e2535626539_
                                        (gx#syntax-e _tl2533626763_)))
                                   (let ((_tl2535826546_ (##cdr _e2535626539_))
                                         (_hd2535726543_
                                          (##car _e2535626539_)))
                                     (if (gx#stx-null? _tl2535826546_)
                                         (___kont4032440325_ _hd2535726543_)
                                         (_g2533025472_))))
                                 (_g2533025472_))
                             (if (equal? _e2533726766_ 'cons:)
                                 (if (gx#stx-pair? _tl2533626763_)
                                     (let ((_e2536526411_
                                            (gx#syntax-e _tl2533626763_)))
                                       (let ((_tl2536726418_
                                              (##cdr _e2536526411_))
                                             (_hd2536626415_
                                              (##car _e2536526411_)))
                                         (if (gx#stx-pair? _tl2536726418_)
                                             (let ((_e2536826421_
                                                    (gx#syntax-e
                                                     _tl2536726418_)))
                                               (let ((_tl2537026428_
                                                      (##cdr _e2536826421_))
                                                     (_hd2536926425_
                                                      (##car _e2536826421_)))
                                                 (if (gx#stx-null?
                                                      _tl2537026428_)
                                                     (___kont4032640327_
                                                      _hd2536926425_
                                                      _hd2536626415_)
                                                     (_g2533025472_))))
                                             (_g2533025472_))))
                                     (_g2533025472_))
                                 (if (equal? _e2533726766_ 'null:)
                                     (if (gx#stx-null? _tl2533626763_)
                                         (___kont4032840329_)
                                         (_g2533025472_))
                                     (if (equal? _e2533726766_ 'splice:)
                                         (if (gx#stx-pair? _tl2533626763_)
                                             (let ((_e2538126327_
                                                    (gx#syntax-e
                                                     _tl2533626763_)))
                                               (let ((_tl2538326334_
                                                      (##cdr _e2538126327_))
                                                     (_hd2538226331_
                                                      (##car _e2538126327_)))
                                                 (if (gx#stx-pair?
                                                      _tl2538326334_)
                                                     (let ((_e2538426337_
                                                            (gx#syntax-e
                                                             _tl2538326334_)))
                                                       (let ((_tl2538626344_
                                                              (##cdr _e2538426337_))
                                                             (_hd2538526341_
                                                              (##car _e2538426337_)))
                                                         (if (gx#stx-null?
                                                              _tl2538626344_)
                                                             (___kont4033040331_
                                                              _hd2538526341_
                                                              _hd2538226331_)
                                                             (_g2533025472_))))
                                                     (_g2533025472_))))
                                             (_g2533025472_))
                                         (if (equal? _e2533726766_ 'box:)
                                             (if (gx#stx-pair? _tl2533626763_)
                                                 (let ((_e2539226251_
                                                        (gx#syntax-e
                                                         _tl2533626763_)))
                                                   (let ((_tl2539426258_
                                                          (##cdr _e2539226251_))
                                                         (_hd2539326255_
                                                          (##car _e2539226251_)))
                                                     (if (gx#stx-null?
                                                          _tl2539426258_)
                                                         (___kont4033240333_
                                                          _hd2539326255_)
                                                         (_g2533025472_))))
                                                 (_g2533025472_))
                                             (if (equal? _e2533726766_
                                                         'values:)
                                                 (if (gx#stx-pair?
                                                      _tl2533626763_)
                                                     (let ((_e2540026056_
                                                            (gx#syntax-e
                                                             _tl2533626763_)))
                                                       (let ((_tl2540226063_
                                                              (##cdr _e2540026056_))
                                                             (_hd2540126060_
                                                              (##car _e2540026056_)))
                                                         (if (gx#stx-null?
                                                              _tl2540226063_)
                                                             (___kont4033440335_
                                                              _hd2540126060_)
                                                             (_g2533025472_))))
                                                     (_g2533025472_))
                                                 (if (equal? _e2533726766_
                                                             'vector:)
                                                     (if (gx#stx-pair?
                                                          _tl2533626763_)
                                                         (let ((_e2540825861_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2533626763_)))
                   (let ((_tl2541025868_ (##cdr _e2540825861_))
                         (_hd2540925865_ (##car _e2540825861_)))
                     (if (gx#stx-null? _tl2541025868_)
                         (___kont4033640337_ _hd2540925865_)
                         (_g2533025472_))))
                 (_g2533025472_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (equal? _e2533726766_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'struct:)
                 (if (gx#stx-pair? _tl2533626763_)
                     (let ((_e2541725802_ (gx#syntax-e _tl2533626763_)))
                       (let ((_tl2541925809_ (##cdr _e2541725802_))
                             (_hd2541825806_ (##car _e2541725802_)))
                         (if (gx#stx-pair? _tl2541925809_)
                             (let ((_e2542025812_
                                    (gx#syntax-e _tl2541925809_)))
                               (let ((_tl2542225819_ (##cdr _e2542025812_))
                                     (_hd2542125816_ (##car _e2542025812_)))
                                 (if (gx#stx-null? _tl2542225819_)
                                     (___kont4033840339_
                                      _hd2542125816_
                                      _hd2541825806_)
                                     (_g2533025472_))))
                             (_g2533025472_))))
                     (_g2533025472_))
                 (if (equal? _e2533726766_ 'class:)
                     (if (gx#stx-pair? _tl2533626763_)
                         (let ((_e2542925743_ (gx#syntax-e _tl2533626763_)))
                           (let ((_tl2543125750_ (##cdr _e2542925743_))
                                 (_hd2543025747_ (##car _e2542925743_)))
                             (if (gx#stx-pair? _tl2543125750_)
                                 (let ((_e2543225753_
                                        (gx#syntax-e _tl2543125750_)))
                                   (let ((_tl2543425760_ (##cdr _e2543225753_))
                                         (_hd2543325757_
                                          (##car _e2543225753_)))
                                     (if (gx#stx-null? _tl2543425760_)
                                         (___kont4034040341_
                                          _hd2543325757_
                                          _hd2543025747_)
                                         (_g2533025472_))))
                                 (_g2533025472_))))
                         (_g2533025472_))
                     (if (equal? _e2533726766_ 'datum:)
                         (if (gx#stx-pair? _tl2533626763_)
                             (let ((_e2544025656_
                                    (gx#syntax-e _tl2533626763_)))
                               (let ((_tl2544225663_ (##cdr _e2544025656_))
                                     (_hd2544125660_ (##car _e2544025656_)))
                                 (if (gx#stx-null? _tl2544225663_)
                                     (___kont4034240343_ _hd2544125660_)
                                     (_g2533025472_))))
                             (_g2533025472_))
                         (if (equal? _e2533726766_ 'apply:)
                             (if (gx#stx-pair? _tl2533626763_)
                                 (let ((_e2544925566_
                                        (gx#syntax-e _tl2533626763_)))
                                   (let ((_tl2545125573_ (##cdr _e2544925566_))
                                         (_hd2545025570_
                                          (##car _e2544925566_)))
                                     (if (gx#stx-pair? _tl2545125573_)
                                         (let ((_e2545225576_
                                                (gx#syntax-e _tl2545125573_)))
                                           (let ((_tl2545425583_
                                                  (##cdr _e2545225576_))
                                                 (_hd2545325580_
                                                  (##car _e2545225576_)))
                                             (if (gx#stx-null? _tl2545425583_)
                                                 (___kont4034440345_
                                                  _hd2545325580_
                                                  _hd2545025570_)
                                                 (_g2533025472_))))
                                         (_g2533025472_))))
                                 (_g2533025472_))
                             (if (equal? _e2533726766_ 'var:)
                                 (if (gx#stx-pair? _tl2533626763_)
                                     (let ((_e2546025518_
                                            (gx#syntax-e _tl2533626763_)))
                                       (let ((_tl2546225525_
                                              (##cdr _e2546025518_))
                                             (_hd2546125522_
                                              (##car _e2546025518_)))
                                         (if (gx#stx-null? _tl2546225525_)
                                             (___kont4034640347_
                                              _hd2546125522_)
                                             (_g2533025472_))))
                                     (_g2533025472_))
                                 (if (equal? _e2533726766_ 'any:)
                                     (if (gx#stx-null? _tl2533626763_)
                                         (___kont4034840349_)
                                         (_g2533025472_))
                                     (_g2533025472_))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2533025472_))))
                                           (_g2533025472_))))))
                               _g2528925300_))))
                      (_g2528727065_ _tgt25282_))))
                 (_generate-splice23661_
                  (lambda (_tgt24654_ _hd24656_ _rest24657_ _K24658_ _E24659_)
                    (let* ((_g2466124678_
                            (lambda (_g2466224674_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2466224674_)))
                           (_g2466025278_
                            (lambda (_g2466224682_)
                              (if (gx#stx-pair/null? _g2466224682_)
                                  (let ((_g41975_
                                         (gx#syntax-split-splice
                                          _g2466224682_
                                          '0)))
                                    (begin
                                      (let ((_g41976_
                                             (if (##values? _g41975_)
                                                 (##vector-length _g41975_)
                                                 1)))
                                        (if (not (##fx= _g41976_ 2))
                                            (error "Context expects 2 values"
                                                   _g41976_)))
                                      (let ((_target2466424685_
                                             (##vector-ref _g41975_ 0))
                                            (_tl2466624688_
                                             (##vector-ref _g41975_ 1)))
                                        (if (gx#stx-null? _tl2466624688_)
                                            (letrec ((_loop2466724691_
                                                      (lambda (_hd2466524695_
                                                               _var2467124698_)
                                                        (if (gx#stx-pair?
                                                             _hd2466524695_)
                                                            (let ((_e2466824701_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd2466524695_)))
                      (let ((_lp-hd2466924705_ (##car _e2466824701_))
                            (_lp-tl2467024708_ (##cdr _e2466824701_)))
                        (_loop2466724691_
                         _lp-tl2467024708_
                         (cons _lp-hd2466924705_ _var2467124698_))))
                    (let ((_var2467224711_ (reverse _var2467124698_)))
                      ((lambda (_L24715_)
                         (let ()
                           (let* ((_g2473124748_
                                   (lambda (_g2473224744_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2473224744_)))
                                  (_g2473025266_
                                   (lambda (_g2473224752_)
                                     (if (gx#stx-pair/null? _g2473224752_)
                                         (let ((_g41977_
                                                (gx#syntax-split-splice
                                                 _g2473224752_
                                                 '0)))
                                           (begin
                                             (let ((_g41978_
                                                    (if (##values? _g41977_)
                                                        (##vector-length
                                                         _g41977_)
                                                        1)))
                                               (if (not (##fx= _g41978_ 2))
                                                   (error "Context expects 2 values"
                                                          _g41978_)))
                                             (let ((_target2473424755_
                                                    (##vector-ref _g41977_ 0))
                                                   (_tl2473624758_
                                                    (##vector-ref _g41977_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2473624758_)
                                                   (letrec ((_loop2473724761_
                                                             (lambda (_hd2473524765_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _var-r2474124768_)
                       (if (gx#stx-pair? _hd2473524765_)
                           (let ((_e2473824771_ (gx#syntax-e _hd2473524765_)))
                             (let ((_lp-hd2473924775_ (##car _e2473824771_))
                                   (_lp-tl2474024778_ (##cdr _e2473824771_)))
                               (_loop2473724761_
                                _lp-tl2474024778_
                                (cons _lp-hd2473924775_ _var-r2474124768_))))
                           (let ((_var-r2474224781_
                                  (reverse _var-r2474124768_)))
                             ((lambda (_L24785_)
                                (let ()
                                  (let* ((_g2480224819_
                                          (lambda (_g2480324815_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g2480324815_)))
                                         (_g2480125254_
                                          (lambda (_g2480324823_)
                                            (if (gx#stx-pair/null?
                                                 _g2480324823_)
                                                (let ((_g41979_
                                                       (gx#syntax-split-splice
                                                        _g2480324823_
                                                        '0)))
                                                  (begin
                                                    (let ((_g41980_
                                                           (if (##values?
                                                                _g41979_)
                                                               (##vector-length
                                                                _g41979_)
                                                               1)))
                                                      (if (not (##fx= _g41980_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                  (error "Context expects 2 values" _g41980_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2480524826_
                                                           (##vector-ref
                                                            _g41979_
                                                            0))
                                                          (_tl2480724829_
                                                           (##vector-ref
                                                            _g41979_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl2480724829_)
                                                          (letrec ((_loop2480824832_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2480624836_ _init2481224839_)
                              (if (gx#stx-pair? _hd2480624836_)
                                  (let ((_e2480924842_
                                         (gx#syntax-e _hd2480624836_)))
                                    (let ((_lp-hd2481024846_
                                           (##car _e2480924842_))
                                          (_lp-tl2481124849_
                                           (##cdr _e2480924842_)))
                                      (_loop2480824832_
                                       _lp-tl2481124849_
                                       (cons _lp-hd2481024846_
                                             _init2481224839_))))
                                  (let ((_init2481324852_
                                         (reverse _init2481224839_)))
                                    ((lambda (_L24856_)
                                       (let ()
                                         (let* ((_g2487324881_
                                                 (lambda (_g2487424877_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g2487424877_)))
                                                (_g2487225250_
                                                 (lambda (_g2487424885_)
                                                   ((lambda (_L24888_)
                                                      (let ()
                                                        (let* ((_g2490124909_
                                                                (lambda (_g2490224905_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g2490224905_)))
                       (_g2490025246_
                        (lambda (_g2490224913_)
                          ((lambda (_L24916_)
                             (let ()
                               (let* ((_g2492924937_
                                       (lambda (_g2493024933_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2493024933_)))
                                      (_g2492825242_
                                       (lambda (_g2493024941_)
                                         ((lambda (_L24944_)
                                            (let ()
                                              (let* ((_g2495724965_
                                                      (lambda (_g2495824961_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g2495824961_)))
                                                     (_g2495625238_
                                                      (lambda (_g2495824969_)
                                                        ((lambda (_L24972_)
                                                           (let ()
                                                             (let* ((_g2498524993_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g2498624989_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g2498624989_)))
                            (_g2498425234_
                             (lambda (_g2498624997_)
                               ((lambda (_L25000_)
                                  (let ()
                                    (let* ((_g2501325021_
                                            (lambda (_g2501425017_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2501425017_)))
                                           (_g2501225230_
                                            (lambda (_g2501425025_)
                                              ((lambda (_L25028_)
                                                 (let ()
                                                   (let* ((_g2504125049_
                                                           (lambda (_g2504225045_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g2504225045_)))
                                                          (_g2504025226_
                                                           (lambda (_g2504225053_)
                                                             ((lambda (_L25056_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g2506925077_
                                  (lambda (_g2507025073_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g2507025073_)))
                                 (_g2506825211_
                                  (lambda (_g2507025081_)
                                    ((lambda (_L25084_)
                                       (let ()
                                         (let* ((_g2509725105_
                                                 (lambda (_g2509825101_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g2509825101_)))
                                                (_g2509625199_
                                                 (lambda (_g2509825109_)
                                                   ((lambda (_L25112_)
                                                      (let ()
                                                        (let* ((_g2512525133_
                                                                (lambda (_g2512625129_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g2512625129_)))
                       (_g2512425195_
                        (lambda (_g2512625137_)
                          ((lambda (_L25140_)
                             (let ()
                               (let ()
                                 (cons (gx#datum->syntax '#f 'letrec)
                                       (cons (cons (cons _L24916_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lambda)
                             (cons (cons _L25028_
                                         (foldr (lambda (_g2515425165_
                                                         _g2515525168_)
                                                  (cons _g2515425165_
                                                        _g2515525168_))
                                                '()
                                                _L24715_))
                                   (cons _L25056_ '())))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons _L24972_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'lambda)
                                   (cons (cons _L25000_
                                               (cons _L25028_
                                                     (foldr (lambda (_g2515625171_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g2515725174_)
                      (cons _g2515625171_ _g2515725174_))
                    '()
                    _L24785_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons _L25140_ '())))
                             '()))
                 (cons (cons _L24944_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons (cons _L25028_
                                                     (foldr (lambda (_g2515825177_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g2515925180_)
                      (cons _g2515825177_ _g2515925180_))
                    '()
                    _L24785_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'pair?)
                               (cons _L25028_ '()))
                         (cons (cons _L24972_
                                     (cons (cons (gx#datum->syntax '#f '##car)
                                                 (cons _L25028_ '()))
                                           (cons _L25028_
                                                 (foldr (lambda (_g2516025183_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2516125186_)
                  (cons _g2516025183_ _g2516125186_))
                '()
                _L24785_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _L25112_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   '()))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _L24944_
                                                         (cons _L24888_
                                                               (foldr (lambda (_g2516225189_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g2516325192_)
                                (cons _g2516225189_ _g2516325192_))
                              '()
                              _L24856_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))))
                           _g2512625137_))))
                  (_g2512425195_
                   (_generate123659_ _L25000_ _hd24656_ _L25084_ _L25112_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2509825109_))))
                                           (_g2509625199_
                                            (cons _L24916_
                                                  (cons _L25028_
                                                        (foldr (lambda (_g2520225205_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2520325208_)
                         (cons (cons (gx#datum->syntax '#f 'reverse)
                                     (cons _g2520225205_ '()))
                               _g2520325208_))
                       '()
                       _L24785_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _g2507025081_))))
                            (_g2506825211_
                             (cons _L24944_
                                   (cons (cons (gx#datum->syntax '#f '##cdr)
                                               (cons _L25028_ '()))
                                         (begin
                                           (gx#syntax-check-splice-targets
                                            _L24785_
                                            _L24715_)
                                           (foldr (lambda (_g2521425218_
                                                           _g2521525221_
                                                           _g2521625223_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'cons)
                        (cons _g2521525221_ (cons _g2521425218_ '())))
                  _g2521625223_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()
                                                  _L24785_
                                                  _L24715_))))))))
                      _g2504225053_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2504025226_
                                                      (_generate123659_
                                                       _L25028_
                                                       _rest24657_
                                                       _K24658_
                                                       _E24659_)))))
                                               _g2501425025_))))
                                      (_g2501225230_ (gx#genident 'rest)))))
                                _g2498624997_))))
                       (_g2498425234_ (gx#genident 'hd)))))
                 _g2495824969_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2495625238_
                                                 (gx#genident 'splice-try)))))
                                          _g2493024941_))))
                                 (_g2492825242_ (gx#genident 'splice-loop)))))
                           _g2490224913_))))
                  (_g2490025246_ (gx#genident 'splice-rest)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2487424885_))))
                                           (_g2487225250_ _tgt24654_))))
                                     _init2481324852_))))))
                    (_loop2480824832_ _target2480524826_ '()))
                  (_g2480224819_ _g2480324823_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2480224819_
                                                 _g2480324823_)))))
                                    (_g2480125254_
                                     (make-list
                                      (gx#stx-length
                                       (foldr (lambda (_g2525725260_
                                                       _g2525825263_)
                                                (cons _g2525725260_
                                                      _g2525825263_))
                                              '()
                                              _L24715_))
                                      (cons (gx#datum->syntax '#f '@list)
                                            '()))))))
                              _var-r2474224781_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2473724761_
                                                      _target2473424755_
                                                      '()))
                                                   (_g2473124748_
                                                    _g2473224752_)))))
                                         (_g2473124748_ _g2473224752_)))))
                             (_g2473025266_
                              (gx#gentemps
                               (foldr (lambda (_g2526925272_ _g2527025275_)
                                        (cons _g2526925272_ _g2527025275_))
                                      '()
                                      _L24715_))))))
                       _var2467224711_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop2466724691_
                                               _target2466424685_
                                               '()))
                                            (_g2466124678_ _g2466224682_)))))
                                  (_g2466124678_ _g2466224682_)))))
                      (_g2466025278_
                       (|gerbil/core$<match>[1]#match-pattern-vars|
                        _hd24656_)))))
                 (_generate-simple-vector23662_
                  (lambda (_tgt24496_
                           _body24498_
                           _start24499_
                           _K24500_
                           _E24501_)
                    (let _recur24503_ ((_rest24506_ _body24498_)
                                       (_off24508_ _start24499_))
                      (let* ((___stx4067340674_ _rest24506_)
                             (_g2451124523_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx4067340674_))))
                        (let ((___kont4067640677_
                               (lambda (_L24551_ _L24553_)
                                 (let* ((_g2456824587_
                                         (lambda (_g2456924583_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g2456924583_)))
                                        (_g2456724646_
                                         (lambda (_g2456924591_)
                                           (if (gx#stx-pair? _g2456924591_)
                                               (let ((_e2457324594_
                                                      (gx#syntax-e
                                                       _g2456924591_)))
                                                 (let ((_hd2457424598_
                                                        (##car _e2457324594_))
                                                       (_tl2457524601_
                                                        (##cdr _e2457324594_)))
                                                   (if (gx#stx-pair?
                                                        _tl2457524601_)
                                                       (let ((_e2457624604_
                                                              (gx#syntax-e
                                                               _tl2457524601_)))
                                                         (let ((_hd2457724608_
                                                                (##car _e2457624604_))
                                                               (_tl2457824611_
                                                                (##cdr _e2457624604_)))
                                                           (if (gx#stx-pair?
                                                                _tl2457824611_)
                                                               (let ((_e2457924614_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2457824611_)))
                         (let ((_hd2458024618_ (##car _e2457924614_))
                               (_tl2458124621_ (##cdr _e2457924614_)))
                           (if (gx#stx-null? _tl2458124621_)
                               ((lambda (_L24624_ _L24626_ _L24627_)
                                  (let ()
                                    (cons 'let
                                          (cons (cons (cons _L24627_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '##vector-ref)
                                (cons _L24626_ (cons _L24624_ '())))
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (_generate123659_
                                                       _L24627_
                                                       _L24553_
                                                       (_recur24503_
                                                        _L24551_
                                                        (fx1+ _off24508_))
                                                       _E24501_)
                                                      '())))))
                                _hd2458024618_
                                _hd2457724608_
                                _hd2457424598_)
                               (_g2456824587_ _g2456924591_))))
                       (_g2456824587_ _g2456924591_))))
               (_g2456824587_ _g2456924591_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2456824587_
                                                _g2456924591_)))))
                                   (_g2456724646_
                                    (list (gx#genident 'e)
                                          _tgt24496_
                                          _off24508_)))))
                              (___kont4067840679_ (lambda () _K24500_)))
                          (if (gx#stx-pair? ___stx4067340674_)
                              (let ((_e2451524541_
                                     (gx#syntax-e ___stx4067340674_)))
                                (let ((_tl2451724548_ (##cdr _e2451524541_))
                                      (_hd2451624545_ (##car _e2451524541_)))
                                  (___kont4067640677_
                                   _tl2451724548_
                                   _hd2451624545_)))
                              (___kont4067840679_)))))))
                 (_generate-list-vector23663_
                  (lambda (_tgt24388_
                           _body24390_
                           _->list24391_
                           _K24392_
                           _E24393_)
                    (let* ((_g2439524403_
                            (lambda (_g2439624399_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2439624399_)))
                           (_g2439424492_
                            (lambda (_g2439624407_)
                              ((lambda (_L24410_)
                                 (let ()
                                   (let* ((_g2442224430_
                                           (lambda (_g2442324426_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g2442324426_)))
                                          (_g2442124488_
                                           (lambda (_g2442324434_)
                                             ((lambda (_L24437_)
                                                (let ()
                                                  (let* ((_g2445024458_
                                                          (lambda (_g2445124454_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g2445124454_)))
                                                         (_g2444924480_
                                                          (lambda (_g2445124462_)
                                                            ((lambda (_L24465_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (cons 'let
                                 (cons (cons (cons _L24410_
                                                   (cons _L24465_ '()))
                                             '())
                                       (cons (_generate123659_
                                              _L24410_
                                              _body24390_
                                              _K24392_
                                              _E24393_)
                                             '()))))))
                     _g2445124462_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2444924480_
                                                     (let ((_$e24484_
                                                            _->list24391_))
                                                       (if (eq? 'values->list
                                                                _$e24484_)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'values->list)
                         (cons _L24437_ '()))
                   (if (eq? 'vector->list _$e24484_)
                       (cons (gx#datum->syntax '#f '##vector->list)
                             (cons _L24437_ '()))
                       (if (eq? 'struct->list _$e24484_)
                           (cons (gx#datum->syntax '#f '##cdr)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              '##vector->list)
                                             (cons _L24437_ '()))
                                       '()))
                           (gx#raise-syntax-error
                            '#f
                            '"Unexpected list conversion"
                            _stx23652_
                            _->list24391_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _g2442324434_))))
                                     (_g2442124488_ _tgt24388_))))
                               _g2439624407_))))
                      (_g2439424492_ (gx#genident 'e)))))
                 (_generate-struct23664_
                  (lambda (_info24046_
                           _tgt24048_
                           _body24049_
                           _K24050_
                           _E24051_)
                    (let* ((_rtd24053_
                            (if (|gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info?|
                                 _info24046_)
                                (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
                                 _info24046_)
                                '#f))
                           (_fields24063_
                            (let _lp24056_ ((_rtd24059_ _rtd24053_)
                                            (_k24061_ '0))
                              (if _rtd24059_
                                  (_lp24056_
                                   (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
                                    (##structure-ref
                                     _rtd24059_
                                     '2
                                     |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
                                     '#f))
                                   (fx+ (length (##structure-ref
                                                 _rtd24059_
                                                 '6
                                                 |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|
                                                 '#f))
                                        _k24061_))
                                  _k24061_)))
                           (_final?24066_
                            (if _rtd24053_
                                (assgetq 'final:
                                         (##structure-ref
                                          _rtd24053_
                                          '5
                                          |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
                                          '#f))
                                '#f))
                           (_g2406924077_
                            (lambda (_g2407024073_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2407024073_)))
                           (_g2406824384_
                            (lambda (_g2407024081_)
                              ((lambda (_L24084_)
                                 (let ()
                                   (let* ((_g2409924107_
                                           (lambda (_g2410024103_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g2410024103_)))
                                          (_g2409824286_
                                           (lambda (_g2410024111_)
                                             ((lambda (_L24114_)
                                                (let ()
                                                  (let ()
                                                    (let* ((___stx4068940690_
                                                            _body24049_)
                                                           (_g2413024153_
                                                            (lambda ()
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               ___stx4068940690_))))
                                                      (let ((___kont4069240693_
                                                             (lambda (_L24232_)
                                                               (let ((_K24246_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (_generate-simple-vector23662_
                               _tgt24048_
                               _L24232_
                               '1
                               _K24050_
                               _E24051_))
                             (_len24248_ (gx#stx-length _L24232_)))
                         (if (and _rtd24053_ (fx<= _len24248_ _fields24063_))
                             (cons 'if
                                   (cons _L24114_
                                         (cons _K24246_ (cons _E24051_ '()))))
                             (let* ((_g2425024258_
                                     (lambda (_g2425124254_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g2425124254_)))
                                    (_g2424924278_
                                     (lambda (_g2425124262_)
                                       ((lambda (_L24265_)
                                          (let ()
                                            (cons 'if
                                                  (cons _L24114_
                                                        (cons (cons 'if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f '##fx<)
                                        (cons _L24265_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '##vector-length)
                                                          (cons _L24084_ '()))
                                                    '())))
                                  (cons _K24246_ (cons _E24051_ '()))))
                      (cons _E24051_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g2425124262_))))
                               (_g2424924278_ _len24248_))))))
                    (___kont4069440695_
                     (lambda (_L24184_)
                       (cons 'if
                             (cons _L24114_
                                   (cons (_generate-list-vector23663_
                                          _tgt24048_
                                          _L24184_
                                          'struct->list
                                          _K24050_
                                          _E24051_)
                                         (cons _E24051_ '())))))))
                (if (gx#stx-pair? ___stx4068940690_)
                    (let ((_e2413324208_ (gx#syntax-e ___stx4068940690_)))
                      (let ((_tl2413524215_ (##cdr _e2413324208_))
                            (_hd2413424212_ (##car _e2413324208_)))
                        (if (gx#stx-datum? _hd2413424212_)
                            (let ((_e2413624218_ (gx#stx-e _hd2413424212_)))
                              (if (equal? _e2413624218_ 'simple:)
                                  (if (gx#stx-pair? _tl2413524215_)
                                      (let ((_e2413724222_
                                             (gx#syntax-e _tl2413524215_)))
                                        (let ((_tl2413924229_
                                               (##cdr _e2413724222_))
                                              (_hd2413824226_
                                               (##car _e2413724222_)))
                                          (if (gx#stx-null? _tl2413924229_)
                                              (___kont4069240693_
                                               _hd2413824226_)
                                              (_g2413024153_))))
                                      (_g2413024153_))
                                  (if (equal? _e2413624218_ 'list:)
                                      (if (gx#stx-pair? _tl2413524215_)
                                          (let ((_e2414524174_
                                                 (gx#syntax-e _tl2413524215_)))
                                            (let ((_tl2414724181_
                                                   (##cdr _e2414524174_))
                                                  (_hd2414624178_
                                                   (##car _e2414524174_)))
                                              (if (gx#stx-null? _tl2414724181_)
                                                  (___kont4069440695_
                                                   _hd2414624178_)
                                                  (_g2413024153_))))
                                          (_g2413024153_))
                                      (_g2413024153_))))
                            (_g2413024153_))))
                    (_g2413024153_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _g2410024111_))))
                                     (_g2409824286_
                                      (if (|gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info?|
                                           _info24046_)
                                          (let* ((_g2429024298_
                                                  (lambda (_g2429124294_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2429124294_)))
                                                 (_g2428924317_
                                                  (lambda (_g2429124302_)
                                                    ((lambda (_L24305_)
                                                       (let ()
                                                         (cons _L24305_
                                                               (cons _L24084_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2429124302_))))
                                            (_g2428924317_
                                             (cadddr (|gerbil/core$<MOP>$<MOP:2>[1]#expander-type-identifiers|
                                                      _info24046_))))
                                          (let* ((_g2432124336_
                                                  (lambda (_g2432224332_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2432224332_)))
                                                 (_g2432024380_
                                                  (lambda (_g2432224340_)
                                                    (if (gx#stx-pair?
                                                         _g2432224340_)
                                                        (let ((_e2432524343_
                                                               (gx#syntax-e
                                                                _g2432224340_)))
                                                          (let ((_hd2432624347_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2432524343_))
                        (_tl2432724350_ (##cdr _e2432524343_)))
                    (if (gx#stx-pair? _tl2432724350_)
                        (let ((_e2432824353_ (gx#syntax-e _tl2432724350_)))
                          (let ((_hd2432924357_ (##car _e2432824353_))
                                (_tl2433024360_ (##cdr _e2432824353_)))
                            (if (gx#stx-null? _tl2433024360_)
                                ((lambda (_L24363_ _L24365_)
                                   (let ()
                                     (cons _L24363_
                                           (cons _L24365_
                                                 (cons _L24084_ '())))))
                                 _hd2432924357_
                                 _hd2432624347_)
                                (_g2432124336_ _g2432224340_))))
                        (_g2432124336_ _g2432224340_))))
                (_g2432124336_ _g2432224340_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2432024380_
                                             (list (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                    _info24046_)
                                                   (if _final?24066_
                                                       (gx#datum->syntax
                                                        '#f
                                                        'direct-instance?)
                                                       (gx#datum->syntax
                                                        '#f
                                                        'struct-instance?))))))))))
                               _g2407024081_))))
                      (_g2406824384_ _tgt24048_))))
                 (_generate-class23665_
                  (lambda (_info23667_
                           _tgt23669_
                           _body23670_
                           _K23671_
                           _E23672_)
                    (letrec* ((_rtd23674_
                               (if (|gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info?|
                                    _info23667_)
                                   (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
                                    _info23667_)
                                   '#f))
                              (_known-slot?23676_
                               (if _rtd23674_
                                   (lambda (_key24040_)
                                     (let ((_slot24043_
                                            (keyword->symbol
                                             (gx#stx-e _key24040_))))
                                       (_rtd-known-slot?23678_
                                        _rtd23674_
                                        _slot24043_)))
                                   false))
                              (_final?23677_
                               (if _rtd23674_
                                   (assgetq 'final:
                                            (##structure-ref
                                             _rtd23674_
                                             '5
                                             |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
                                             '#f))
                                   '#f))
                              (_rtd-known-slot?23678_
                               (lambda (_rtd24027_ _slot24029_)
                                 (if _rtd24027_
                                     (let ((_$e24031_
                                            (memq _slot24029_
                                                  (##structure-ref
                                                   _rtd24027_
                                                   '6
                                                   |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
                                                   '#f))))
                                       (if _$e24031_
                                           _$e24031_
                                           (ormap (lambda (_g2403424036_)
                                                    (_rtd-known-slot?23678_
                                                     _g2403424036_
                                                     _slot24029_))
                                                  (map |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
                                                       (##structure-ref
                                                        _rtd24027_
                                                        '2
                                                        |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
                                                        '#f)))))
                                     '#f)))
                              (_recur23679_
                               (lambda (_klass23813_ _rest23815_)
                                 (let* ((___stx4073940740_ _rest23815_)
                                        (_g2381823834_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx4073940740_))))
                                   (let ((___kont4074240743_
                                          (lambda (_L23872_ _L23874_ _L23875_)
                                            (let* ((_g2389123899_
                                                    (lambda (_g2389223895_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g2389223895_)))
                                                   (_g2389024019_
                                                    (lambda (_g2389223903_)
                                                      ((lambda (_L23906_)
                                                         (let ()
                                                           (let* ((_g2391823926_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g2391923922_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2391923922_)))
                          (_g2391724015_
                           (lambda (_g2391923930_)
                             ((lambda (_L23933_)
                                (let ()
                                  (let* ((_g2394623954_
                                          (lambda (_g2394723950_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g2394723950_)))
                                         (_g2394524011_
                                          (lambda (_g2394723958_)
                                            ((lambda (_L23961_)
                                               (let ()
                                                 (let* ((_g2397423982_
                                                         (lambda (_g2397523978_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2397523978_)))
                                                        (_g2397324007_
                                                         (lambda (_g2397523986_)
                                                           ((lambda (_L23989_)
                                                              (let ()
                                                                (let ((_K24002_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons 'let
                                     (cons (cons (cons _L23989_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##vector-ref)
                           (cons _L23906_
                                 (cons (cons (gx#datum->syntax '#f 'fx1+)
                                             (cons _L23961_ '()))
                                       '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (_generate123659_
                                                  _L23989_
                                                  _L23874_
                                                  (_recur23679_
                                                   _klass23813_
                                                   _L23872_)
                                                  _E23672_)
                                                 '())))))
                          (if (_known-slot?23676_ _L23875_)
                              (cons 'let
                                    (cons (cons (cons _L23961_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'class-slot-offset)
                          (cons _L23933_ (cons _L23875_ '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons _K24002_ '())))
                              (cons 'let
                                    (cons (cons (cons _L23961_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'class-slot-offset)
                          (cons _L23933_ (cons _L23875_ '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons 'if
                                                      (cons _L23961_
                                                            (cons _K24002_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _E23672_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))))))
                    _g2397523986_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2397324007_
                                                    (gx#genident 'e)))))
                                             _g2394723958_))))
                                    (_g2394524011_ (gx#genident 'slot)))))
                              _g2391923930_))))
                     (_g2391724015_ _klass23813_))))
               _g2389223903_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2389024019_ _tgt23669_))))
                                         (___kont4074440745_
                                          (lambda () _K23671_)))
                                     (if (gx#stx-pair? ___stx4073940740_)
                                         (let ((_e2382323852_
                                                (gx#syntax-e
                                                 ___stx4073940740_)))
                                           (let ((_tl2382523859_
                                                  (##cdr _e2382323852_))
                                                 (_hd2382423856_
                                                  (##car _e2382323852_)))
                                             (if (gx#stx-pair? _tl2382523859_)
                                                 (let ((_e2382623862_
                                                        (gx#syntax-e
                                                         _tl2382523859_)))
                                                   (let ((_tl2382823869_
                                                          (##cdr _e2382623862_))
                                                         (_hd2382723866_
                                                          (##car _e2382623862_)))
                                                     (___kont4074240743_
                                                      _tl2382823869_
                                                      _hd2382723866_
                                                      _hd2382423856_)))
                                                 (___kont4074440745_))))
                                         (___kont4074440745_)))))))
                      (let* ((_g2368123689_
                              (lambda (_g2368223685_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2368223685_)))
                             (_g2368023809_
                              (lambda (_g2368223693_)
                                ((lambda (_L23696_)
                                   (let ()
                                     (let* ((_g2371123719_
                                             (lambda (_g2371223715_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2371223715_)))
                                            (_g2371023805_
                                             (lambda (_g2371223723_)
                                               ((lambda (_L23726_)
                                                  (let ()
                                                    (let* ((_g2373923747_
                                                            (lambda (_g2374023743_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g2374023743_)))
                                                           (_g2373823801_
                                                            (lambda (_g2374023751_)
                                                              ((lambda (_L23754_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2376723775_
                                   (lambda (_g2376823771_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2376823771_)))
                                  (_g2376623797_
                                   (lambda (_g2376823779_)
                                     ((lambda (_L23782_)
                                        (let ()
                                          (let ()
                                            (cons 'if
                                                  (cons (cons _L23782_
                                                              (cons _L23754_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _L23726_ '())))
                (cons (cons 'let
                            (cons (cons (cons _L23696_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'object-type)
                                                          (cons _L23726_ '()))
                                                    '()))
                                        '())
                                  (cons (_recur23679_ _L23696_ _body23670_)
                                        '())))
                      (cons _E23672_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2376823779_))))
                             (_g2376623797_
                              (if _final?23677_
                                  (gx#datum->syntax '#f 'direct-instance?)
                                  (gx#datum->syntax '#f 'class-instance?))))))
                       _g2374023751_))))
              (_g2373823801_
               (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                _info23667_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2371223723_))))
                                       (_g2371023805_ _tgt23669_))))
                                 _g2368223693_))))
                        (_g2368023809_ (gx#genident 'class)))))))
          (_generate123659_ _tgt23654_ _ptree23655_ _K23656_ _E23657_))))
    (define |gerbil/core$<match>[1]#generate-match*|
      (lambda (_stx22548_ _tgt-lst22550_ _clauses22551_)
        (letrec ((_parse-body22553_
                  (lambda (_hd-len23474_)
                    (let _lp23477_ ((_rest23480_ _clauses22551_)
                                    (_r23482_ '()))
                      (let* ((___stx4078940790_ _rest23480_)
                             (_g2348523497_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx4078940790_))))
                        (let ((___kont4079240793_
                               (lambda (_L23525_ _L23527_)
                                 (let* ((___stx4076140762_ _L23527_)
                                        (_g2354423560_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx4076140762_))))
                                   (let ((___kont4076440765_
                                          (lambda (_L23629_)
                                            (if (gx#stx-null? _L23525_)
                                                (cons (cons (gx#genident 'else)
                                                            (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'begin) _L23629_)
                                 (let ((_$e23640_ (gx#stx-source _L23527_)))
                                   (if _$e23640_
                                       _$e23640_
                                       (gx#stx-source _stx22548_))))
                                '())))
              _r23482_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; misplaced else"
                                                 _stx22548_
                                                 _L23527_))))
                                         (___kont4076640767_
                                          (lambda (_L23588_ _L23590_)
                                            (_lp23477_
                                             _L23525_
                                             (cons (cons (gx#genident
                                                          'try-match)
                                                         (cons (gx#stx-map
                                                                (lambda (_g2360223604_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (|gerbil/core$<match>[1]#parse-match-pattern__%|
                           _g2360223604_
                           _stx22548_))
                        _L23590_)
                       (cons (gx#stx-wrap-source
                              (cons (gx#datum->syntax '#f 'begin) _L23588_)
                              (let ((_$e23608_ (gx#stx-source _L23527_)))
                                (if _$e23608_
                                    _$e23608_
                                    (gx#stx-source _stx22548_))))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _r23482_))))
                                         (___kont4076840769_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; illegal match clause"
                                             _stx22548_
                                             _L23527_))))
                                     (let* ((___match4078640787_
                                             (lambda (_e2355223578_
                                                      _hd2355323582_
                                                      _tl2355423585_)
                                               (let ((_L23588_ _tl2355423585_)
                                                     (_L23590_ _hd2355323582_))
                                                 (if (and (gx#stx-list?
                                                           _L23590_)
                                                          (fx= (gx#stx-length
                                                                _L23590_)
                                                               _hd-len23474_)
                                                          (gx#stx-list?
                                                           _L23588_)
                                                          (not (gx#stx-null?
                                                                _L23588_)))
                                                     (___kont4076640767_
                                                      _L23588_
                                                      _L23590_)
                                                     (___kont4076840769_)))))
                                            (___match4078040781_
                                             (lambda (_e2354723619_
                                                      _hd2354823623_
                                                      _tl2354923626_)
                                               (let ((_L23629_ _tl2354923626_))
                                                 (if (and (gx#stx-list?
                                                           _L23629_)
                                                          (not (gx#stx-null?
                                                                _L23629_)))
                                                     (___kont4076440765_
                                                      _L23629_)
                                                     (___match4078640787_
                                                      _e2354723619_
                                                      _hd2354823623_
                                                      _tl2354923626_))))))
                                       (if (gx#stx-pair? ___stx4076140762_)
                                           (let ((_e2354723619_
                                                  (gx#syntax-e
                                                   ___stx4076140762_)))
                                             (let ((_tl2354923626_
                                                    (##cdr _e2354723619_))
                                                   (_hd2354823623_
                                                    (##car _e2354723619_)))
                                               (if (gx#identifier?
                                                    _hd2354823623_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core$<match>[1]#_g41981_|
                                                        _hd2354823623_)
                                                       (___match4078040781_
                                                        _e2354723619_
                                                        _hd2354823623_
                                                        _tl2354923626_)
                                                       (___match4078640787_
                                                        _e2354723619_
                                                        _hd2354823623_
                                                        _tl2354923626_))
                                                   (___match4078640787_
                                                    _e2354723619_
                                                    _hd2354823623_
                                                    _tl2354923626_))))
                                           (___kont4076840769_)))))))
                              (___kont4079440795_ (lambda () _r23482_)))
                          (if (gx#stx-pair? ___stx4078940790_)
                              (let ((_e2348923515_
                                     (gx#syntax-e ___stx4078940790_)))
                                (let ((_tl2349123522_ (##cdr _e2348923515_))
                                      (_hd2349023519_ (##car _e2348923515_)))
                                  (___kont4079240793_
                                   _tl2349123522_
                                   _hd2349023519_)))
                              (___kont4079440795_)))))))
                 (_generate-body22555_
                  (lambda (_body23259_)
                    (let* ((_g2326223270_
                            (lambda (_g2326323266_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2326323266_)))
                           (_g2326123470_
                            (lambda (_g2326323274_)
                              ((lambda (_L23277_)
                                 (let ()
                                   (let* ((_g2328923306_
                                           (lambda (_g2329023302_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g2329023302_)))
                                          (_g2328823466_
                                           (lambda (_g2329023310_)
                                             (if (gx#stx-pair/null?
                                                  _g2329023310_)
                                                 (let ((_g41982_
                                                        (gx#syntax-split-splice
                                                         _g2329023310_
                                                         '0)))
                                                   (begin
                                                     (let ((_g41983_
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g41982_)
                        (##vector-length _g41982_)
                        1)))
               (if (not (##fx= _g41983_ 2))
                   (error "Context expects 2 values" _g41983_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2329223313_
                                                            (##vector-ref
                                                             _g41982_
                                                             0))
                                                           (_tl2329423316_
                                                            (##vector-ref
                                                             _g41982_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2329423316_)
                                                           (letrec ((_loop2329523319_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2329323323_ _target2329923326_)
                               (if (gx#stx-pair? _hd2329323323_)
                                   (let ((_e2329623329_
                                          (gx#syntax-e _hd2329323323_)))
                                     (let ((_lp-hd2329723333_
                                            (##car _e2329623329_))
                                           (_lp-tl2329823336_
                                            (##cdr _e2329623329_)))
                                       (_loop2329523319_
                                        _lp-tl2329823336_
                                        (cons _lp-hd2329723333_
                                              _target2329923326_))))
                                   (let ((_target2330023339_
                                          (reverse _target2329923326_)))
                                     ((lambda (_L23343_)
                                        (let ()
                                          (let* ((_g2336023368_
                                                  (lambda (_g2336123364_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2336123364_)))
                                                 (_g2335923454_
                                                  (lambda (_g2336123372_)
                                                    ((lambda (_L23375_)
                                                       (let ()
                                                         (let* ((_g2338823396_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2338923392_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2338923392_)))
                        (_g2338723450_
                         (lambda (_g2338923400_)
                           ((lambda (_L23403_)
                              (let ()
                                (let* ((_g2341623424_
                                        (lambda (_g2341723420_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g2341723420_)))
                                       (_g2341523446_
                                        (lambda (_g2341723428_)
                                          ((lambda (_L23431_)
                                             (let ()
                                               (let ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '@match)
                                                             (cons _L23431_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g2341723428_))))
                                  (_g2341523446_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'let)
                                          (cons (cons (cons _L23277_
                                                            (cons _L23375_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _L23403_ '())))
                                    (gx#stx-source _stx22548_))))))
                            _g2338923400_))))
                   (_g2338723450_
                    (_generate-clauses22556_
                     _body23259_
                     (cons _L23277_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2336123372_))))
                                            (_g2335923454_
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
                                    (foldr (lambda (_g2345723460_
                                                    _g2345823463_)
                                             (cons _g2345723460_
                                                   _g2345823463_))
                                           '()
                                           _L23343_)))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx22548_))))))
                                      _target2330023339_))))))
                     (_loop2329523319_ _target2329223313_ '()))
                   (_g2328923306_ _g2329023310_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2328923306_
                                                  _g2329023310_)))))
                                     (_g2328823466_ _tgt-lst22550_))))
                               _g2326323274_))))
                      (_g2326123470_ (gx#genident 'E)))))
                 (_generate-clauses22556_
                  (lambda (_rest22911_ _E22913_)
                    (let* ((___stx4080540806_ _rest22911_)
                           (_g2291722933_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx4080540806_))))
                      (let ((___kont4080840809_
                             (lambda (_L23167_)
                               (let* ((_g2317823196_
                                       (lambda (_g2317923192_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2317923192_)))
                                      (_g2317723251_
                                       (lambda (_g2317923200_)
                                         (if (gx#stx-pair? _g2317923200_)
                                             (let ((_e2318223203_
                                                    (gx#syntax-e
                                                     _g2317923200_)))
                                               (let ((_hd2318323207_
                                                      (##car _e2318223203_))
                                                     (_tl2318423210_
                                                      (##cdr _e2318223203_)))
                                                 (if (gx#stx-pair?
                                                      _tl2318423210_)
                                                     (let ((_e2318523213_
                                                            (gx#syntax-e
                                                             _tl2318423210_)))
                                                       (let ((_hd2318623217_
                                                              (##car _e2318523213_))
                                                             (_tl2318723220_
                                                              (##cdr _e2318523213_)))
                                                         (if (gx#stx-pair?
                                                              _tl2318723220_)
                                                             (let ((_e2318823223_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl2318723220_)))
                       (let ((_hd2318923227_ (##car _e2318823223_))
                             (_tl2319023230_ (##cdr _e2318823223_)))
                         (if (gx#stx-null? _tl2319023230_)
                             ((lambda (_L23233_ _L23235_)
                                (cons 'begin-annotation
                                      (cons '@match-body
                                            (cons (if (gx#stx-e _L23235_)
                                                      (_generate122557_
                                                       _L23235_
                                                       _L23233_
                                                       _E22913_)
                                                      _L23233_)
                                                  '()))))
                              _hd2318923227_
                              _hd2318623217_)
                             (_g2317823196_ _g2317923200_))))
                     (_g2317823196_ _g2317923200_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2317823196_
                                                      _g2317923200_))))
                                             (_g2317823196_ _g2317923200_)))))
                                 (_g2317723251_ _L23167_))))
                            (___kont4081040811_
                             (lambda (_L22961_ _L22963_)
                               (let* ((_g2297622995_
                                       (lambda (_g2297722991_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2297722991_)))
                                      (_g2297523146_
                                       (lambda (_g2297722999_)
                                         (if (gx#stx-pair? _g2297722999_)
                                             (let ((_e2298123002_
                                                    (gx#syntax-e
                                                     _g2297722999_)))
                                               (let ((_hd2298223006_
                                                      (##car _e2298123002_))
                                                     (_tl2298323009_
                                                      (##cdr _e2298123002_)))
                                                 (if (gx#stx-pair?
                                                      _tl2298323009_)
                                                     (let ((_e2298423012_
                                                            (gx#syntax-e
                                                             _tl2298323009_)))
                                                       (let ((_hd2298523016_
                                                              (##car _e2298423012_))
                                                             (_tl2298623019_
                                                              (##cdr _e2298423012_)))
                                                         (if (gx#stx-pair?
                                                              _tl2298623019_)
                                                             (let ((_e2298723022_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl2298623019_)))
                       (let ((_hd2298823026_ (##car _e2298723022_))
                             (_tl2298923029_ (##cdr _e2298723022_)))
                         (if (gx#stx-null? _tl2298923029_)
                             ((lambda (_L23032_ _L23034_ _L23035_)
                                (if (gx#stx-e _L23034_)
                                    (let* ((_g2305223067_
                                            (lambda (_g2305323063_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2305323063_)))
                                           (_g2305123112_
                                            (lambda (_g2305323071_)
                                              (if (gx#stx-pair? _g2305323071_)
                                                  (let ((_e2305623074_
                                                         (gx#syntax-e
                                                          _g2305323071_)))
                                                    (let ((_hd2305723078_
                                                           (##car _e2305623074_))
                                                          (_tl2305823081_
                                                           (##cdr _e2305623074_)))
                                                      (if (gx#stx-pair?
                                                           _tl2305823081_)
                                                          (let ((_e2305923084_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2305823081_)))
                    (let ((_hd2306023088_ (##car _e2305923084_))
                          (_tl2306123091_ (##cdr _e2305923084_)))
                      (if (gx#stx-null? _tl2306123091_)
                          ((lambda (_L23094_ _L23096_)
                             (let ()
                               (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _L23035_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'lambda)
                           (cons '() (cons _L23096_ '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons _L23094_ '())))))
                           _hd2306023088_
                           _hd2305723078_)
                          (_g2305223067_ _g2305323071_))))
                  (_g2305223067_ _g2305323071_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2305223067_
                                                   _g2305323071_)))))
                                      (_g2305123112_
                                       (list (_generate122557_
                                              _L23034_
                                              _L23032_
                                              _E22913_)
                                             (_generate-clauses22556_
                                              _L22961_
                                              (cons _L23035_ '())))))
                                    (let* ((_g2311623124_
                                            (lambda (_g2311723120_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2311723120_)))
                                           (_g2311523142_
                                            (lambda (_g2311723128_)
                                              ((lambda (_L23131_)
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (cons (cons _L23035_
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
                         (cons '() (cons _L23032_ '())))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))
                             '())
                       (cons _L23131_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g2311723128_))))
                                      (_g2311523142_
                                       (_generate-clauses22556_
                                        _L22961_
                                        (cons _L23035_ '()))))))
                              _hd2298823026_
                              _hd2298523016_
                              _hd2298223006_)
                             (_g2297622995_ _g2297722999_))))
                     (_g2297622995_ _g2297722999_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2297622995_
                                                      _g2297722999_))))
                                             (_g2297622995_ _g2297722999_)))))
                                 (_g2297523146_ _L22963_))))
                            (___kont4081240813_
                             (lambda ()
                               (cons 'begin-annotation
                                     (cons '@match-body
                                           (cons _E22913_ '()))))))
                        (if (gx#stx-pair? ___stx4080540806_)
                            (let ((_e2292023157_
                                   (gx#syntax-e ___stx4080540806_)))
                              (let ((_tl2292223164_ (##cdr _e2292023157_))
                                    (_hd2292123161_ (##car _e2292023157_)))
                                (if (gx#stx-null? _tl2292223164_)
                                    (___kont4080840809_ _hd2292123161_)
                                    (___kont4081040811_
                                     _tl2292223164_
                                     _hd2292123161_))))
                            (___kont4081240813_))))))
                 (_generate122557_
                  (lambda (_clause22559_ _body22561_ _E22562_)
                    (let* ((_g2256422588_
                            (lambda (_g2256522584_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2256522584_)))
                           (_g2256322907_
                            (lambda (_g2256522592_)
                              (if (gx#stx-pair? _g2256522592_)
                                  (let ((_e2256822595_
                                         (gx#syntax-e _g2256522592_)))
                                    (let ((_hd2256922599_
                                           (##car _e2256822595_))
                                          (_tl2257022602_
                                           (##cdr _e2256822595_)))
                                      (if (gx#stx-pair? _tl2257022602_)
                                          (let ((_e2257122605_
                                                 (gx#syntax-e _tl2257022602_)))
                                            (let ((_hd2257222609_
                                                   (##car _e2257122605_))
                                                  (_tl2257322612_
                                                   (##cdr _e2257122605_)))
                                              (if (gx#stx-pair/null?
                                                   _hd2257222609_)
                                                  (let ((_g41984_
                                                         (gx#syntax-split-splice
                                                          _hd2257222609_
                                                          '0)))
                                                    (begin
                                                      (let ((_g41985_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g41984_)
                         (##vector-length _g41984_)
                         1)))
                (if (not (##fx= _g41985_ 2))
                    (error "Context expects 2 values" _g41985_)))
              (let ((_target2257422615_ (##vector-ref _g41984_ 0))
                    (_tl2257622618_ (##vector-ref _g41984_ 1)))
                (if (gx#stx-null? _tl2257622618_)
                    (letrec ((_loop2257722621_
                              (lambda (_hd2257522625_ _var2258122628_)
                                (if (gx#stx-pair? _hd2257522625_)
                                    (let ((_e2257822631_
                                           (gx#syntax-e _hd2257522625_)))
                                      (let ((_lp-hd2257922635_
                                             (##car _e2257822631_))
                                            (_lp-tl2258022638_
                                             (##cdr _e2257822631_)))
                                        (_loop2257722621_
                                         _lp-tl2258022638_
                                         (cons _lp-hd2257922635_
                                               _var2258122628_))))
                                    (let ((_var2258222641_
                                           (reverse _var2258122628_)))
                                      (if (gx#stx-null? _tl2257322612_)
                                          ((lambda (_L22645_ _L22647_)
                                             (let ()
                                               (gx#check-duplicate-identifiers
                                                (foldr (lambda (_g2266822671_
                                                                _g2266922674_)
                                                         (cons _g2266822671_
                                                               _g2266922674_))
                                                       '()
                                                       _L22645_)
                                                _stx22548_)
                                               (let* ((_g2267722685_
                                                       (lambda (_g2267822681_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g2267822681_)))
                                                      (_g2267622779_
                                                       (lambda (_g2267822689_)
                                                         ((lambda (_L22692_)
                                                            (let ()
                                                              (let* ((_g2270522713_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2270622709_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2270622709_)))
                             (_g2270422775_
                              (lambda (_g2270622717_)
                                ((lambda (_L22720_)
                                   (let ()
                                     (let* ((_g2273322741_
                                             (lambda (_g2273422737_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2273422737_)))
                                            (_g2273222763_
                                             (lambda (_g2273422745_)
                                               ((lambda (_L22748_)
                                                  (let ()
                                                    (let ()
                                                      (gx#stx-wrap-source
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons _L22647_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _L22748_ '()))
                           (cons _L22692_ '())))
               (gx#stx-source _stx22548_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2273422745_))))
                                       (_g2273222763_
                                        (gx#stx-wrap-source
                                         (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (foldr (lambda (_g2276622769_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g2276722772_)
                      (cons _g2276622769_ _g2276722772_))
                    '()
                    _L22645_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _L22720_ '())))
                                         (gx#stx-source _stx22548_))))))
                                 _g2270622717_))))
                        (_g2270422775_ _body22561_))))
                  _g2267822689_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2267622779_
                                                  (let _recur22783_ ((_rest22786_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _clause22559_)
                             (_rest-targets22788_ _tgt-lst22550_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((___stx4083140832_
                                                            _rest22786_)
                                                           (_g2279122803_
                                                            (lambda ()
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               ___stx4083140832_))))
                                                      (let ((___kont4083440835_
                                                             (lambda (_L22839_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L22841_)
                       (let* ((_g2285622868_
                               (lambda (_g2285722864_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2285722864_)))
                              (_g2285522899_
                               (lambda (_g2285722872_)
                                 (if (gx#stx-pair? _g2285722872_)
                                     (let ((_e2286022875_
                                            (gx#syntax-e _g2285722872_)))
                                       (let ((_hd2286122879_
                                              (##car _e2286022875_))
                                             (_tl2286222882_
                                              (##cdr _e2286022875_)))
                                         ((lambda (_L22885_ _L22887_)
                                            (|gerbil/core$<match>[1]#generate-match1|
                                             _stx22548_
                                             _L22887_
                                             _L22841_
                                             (_recur22783_ _L22839_ _L22885_)
                                             _E22562_))
                                          _tl2286222882_
                                          _hd2286122879_)))
                                     (_g2285622868_ _g2285722872_)))))
                         (_g2285522899_ _rest-targets22788_))))
                    (___kont4083640837_
                     (lambda ()
                       (cons _L22647_
                             (foldr (lambda (_g2281322816_ _g2281422819_)
                                      (cons _g2281322816_ _g2281422819_))
                                    '()
                                    _L22645_)))))
                (if (gx#stx-pair? ___stx4083140832_)
                    (let ((_e2279522829_ (gx#syntax-e ___stx4083140832_)))
                      (let ((_tl2279722836_ (##cdr _e2279522829_))
                            (_hd2279622833_ (##car _e2279522829_)))
                        (___kont4083440835_ _tl2279722836_ _hd2279622833_)))
                    (___kont4083640837_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _var2258222641_
                                           _hd2256922599_)
                                          (_g2256422588_ _g2256522592_)))))))
                      (_loop2257722621_ _target2257422615_ '()))
                    (_g2256422588_ _g2256522592_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2256422588_
                                                   _g2256522592_))))
                                          (_g2256422588_ _g2256522592_))))
                                  (_g2256422588_ _g2256522592_)))))
                      (_g2256322907_
                       (list (gx#genident 'K)
                             (apply append
                                    (map |gerbil/core$<match>[1]#match-pattern-vars|
                                         _clause22559_))))))))
          (_generate-body22555_
           (_parse-body22553_ (gx#stx-length _tgt-lst22550_))))))
    (define |gerbil/core$<match>[1]#generate-match|
      (lambda (_stx22450_ _tgt22452_ _clauses22453_)
        (letrec ((_reclause22455_
                  (lambda (_clause22458_)
                    (let* ((___stx4084740848_ _clause22458_)
                           (_g2246322478_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx4084740848_))))
                      (let ((___kont4085040851_ (lambda () _clause22458_))
                            (___kont4085240853_
                             (lambda (_L22506_ _L22508_)
                               (gx#stx-wrap-source
                                (cons (cons _L22508_ '()) _L22506_)
                                (gx#stx-source
                                 (gx#datum->syntax '#f 'clause)))))
                            (___kont4085440855_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal match clause"
                                _stx22450_
                                _clause22458_))))
                        (if (gx#stx-pair? ___stx4084740848_)
                            (let ((_e2246522530_
                                   (gx#syntax-e ___stx4084740848_)))
                              (let ((_tl2246722537_ (##cdr _e2246522530_))
                                    (_hd2246622534_ (##car _e2246522530_)))
                                (if (gx#identifier? _hd2246622534_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<match>[1]#_g41986_|
                                         _hd2246622534_)
                                        (___kont4085040851_)
                                        (___kont4085240853_
                                         _tl2246722537_
                                         _hd2246622534_))
                                    (___kont4085240853_
                                     _tl2246722537_
                                     _hd2246622534_))))
                            (___kont4085440855_)))))))
          (|gerbil/core$<match>[1]#generate-match*|
           _stx22450_
           (cons _tgt22452_ '())
           (gx#stx-map _reclause22455_ _clauses22453_)))))
    (define |gerbil/core$<match>[:0:]#match|
      (lambda (_stx30089_)
        (let* ((___stx4087540876_ _stx30089_)
               (_g3009430123_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx4087540876_))))
          (let ((___kont4087840879_
                 (lambda (_L30363_)
                   (let* ((_g3037630384_
                           (lambda (_g3037730380_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g3037730380_)))
                          (_g3037530437_
                           (lambda (_g3037730388_)
                             ((lambda (_L30391_)
                                (let ()
                                  (let* ((_g3040330411_
                                          (lambda (_g3040430407_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g3040430407_)))
                                         (_g3040230433_
                                          (lambda (_g3040430415_)
                                            ((lambda (_L30418_)
                                               (let ()
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'lambda)
                                                         (cons (cons _L30391_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons _L30418_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _g3040430415_))))
                                    (_g3040230433_
                                     (gx#stx-wrap-source
                                      (cons (gx#datum->syntax '#f 'match)
                                            (cons _L30391_ _L30363_))
                                      (gx#stx-source _stx30089_))))))
                              _g3037730388_))))
                     (_g3037530437_ (gx#genident 'e)))))
                (___kont4088040881_
                 (lambda (_L30258_)
                   (let* ((_g3027130279_
                           (lambda (_g3027230275_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g3027230275_)))
                          (_g3027030332_
                           (lambda (_g3027230283_)
                             ((lambda (_L30286_)
                                (let ()
                                  (let* ((_g3029830306_
                                          (lambda (_g3029930302_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g3029930302_)))
                                         (_g3029730328_
                                          (lambda (_g3029930310_)
                                            ((lambda (_L30313_)
                                               (let ()
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'lambda)
                                                         (cons _L30286_
                                                               (cons _L30313_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _g3029930310_))))
                                    (_g3029730328_
                                     (gx#stx-wrap-source
                                      (cons (gx#datum->syntax '#f 'match)
                                            (cons _L30286_ _L30258_))
                                      (gx#stx-source _stx30089_))))))
                              _g3027230283_))))
                     (_g3027030332_ (gx#genident 'args)))))
                (___kont4088240883_
                 (lambda (_L30150_ _L30152_)
                   (let* ((_g3016630174_
                           (lambda (_g3016730170_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g3016730170_)))
                          (_g3016530227_
                           (lambda (_g3016730178_)
                             ((lambda (_L30181_)
                                (let ()
                                  (let* ((_g3019330201_
                                          (lambda (_g3019430197_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g3019430197_)))
                                         (_g3019230223_
                                          (lambda (_g3019430205_)
                                            ((lambda (_L30208_)
                                               (let ()
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (cons (cons _L30181_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _L30152_ '()))
                             '())
                       (cons _L30208_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _g3019430205_))))
                                    (_g3019230223_
                                     (|gerbil/core$<match>[1]#generate-match|
                                      _stx30089_
                                      _L30181_
                                      _L30150_)))))
                              _g3016730178_))))
                     (_g3016530227_ (gx#genident _L30152_))))))
            (let* ((___match4092840929_
                    (lambda (_e3011230130_
                             _hd3011330134_
                             _tl3011430137_
                             _e3011530140_
                             _hd3011630144_
                             _tl3011730147_)
                      (let ((_L30150_ _tl3011730147_)
                            (_L30152_ _hd3011630144_))
                        (if (gx#stx-list? _L30150_)
                            (___kont4088240883_ _L30150_ _L30152_)
                            (_g3009430123_)))))
                   (___match4091640917_
                    (lambda (_e3010430238_
                             _hd3010530242_
                             _tl3010630245_
                             _e3010730248_
                             _hd3010830252_
                             _tl3010930255_)
                      (let ((_L30258_ _tl3010930255_))
                        (if (gx#stx-list? _L30258_)
                            (___kont4088040881_ _L30258_)
                            (___match4092840929_
                             _e3010430238_
                             _hd3010530242_
                             _tl3010630245_
                             _e3010730248_
                             _hd3010830252_
                             _tl3010930255_)))))
                   (___match4090040901_
                    (lambda (_e3009730343_
                             _hd3009830347_
                             _tl3009930350_
                             _e3010030353_
                             _hd3010130357_
                             _tl3010230360_)
                      (let ((_L30363_ _tl3010230360_))
                        (if (gx#stx-list? _L30363_)
                            (___kont4087840879_ _L30363_)
                            (___match4092840929_
                             _e3009730343_
                             _hd3009830347_
                             _tl3009930350_
                             _e3010030353_
                             _hd3010130357_
                             _tl3010230360_))))))
              (if (gx#stx-pair? ___stx4087540876_)
                  (let ((_e3009730343_ (gx#syntax-e ___stx4087540876_)))
                    (let ((_tl3009930350_ (##cdr _e3009730343_))
                          (_hd3009830347_ (##car _e3009730343_)))
                      (if (gx#stx-pair? _tl3009930350_)
                          (let ((_e3010030353_ (gx#syntax-e _tl3009930350_)))
                            (let ((_tl3010230360_ (##cdr _e3010030353_))
                                  (_hd3010130357_ (##car _e3010030353_)))
                              (if (gx#identifier? _hd3010130357_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g41987_|
                                       _hd3010130357_)
                                      (___match4090040901_
                                       _e3009730343_
                                       _hd3009830347_
                                       _tl3009930350_
                                       _e3010030353_
                                       _hd3010130357_
                                       _tl3010230360_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g41988_|
                                           _hd3010130357_)
                                          (___match4091640917_
                                           _e3009730343_
                                           _hd3009830347_
                                           _tl3009930350_
                                           _e3010030353_
                                           _hd3010130357_
                                           _tl3010230360_)
                                          (___match4092840929_
                                           _e3009730343_
                                           _hd3009830347_
                                           _tl3009930350_
                                           _e3010030353_
                                           _hd3010130357_
                                           _tl3010230360_)))
                                  (___match4092840929_
                                   _e3009730343_
                                   _hd3009830347_
                                   _tl3009930350_
                                   _e3010030353_
                                   _hd3010130357_
                                   _tl3010230360_))))
                          (_g3009430123_))))
                  (_g3009430123_)))))))
    (define |gerbil/core$<match>[:0:]#match*|
      (lambda (_stx30445_)
        (let* ((_g3044830472_
                (lambda (_g3044930468_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g3044930468_)))
               (_g3044730684_
                (lambda (_g3044930476_)
                  (if (gx#stx-pair? _g3044930476_)
                      (let ((_e3045230479_ (gx#syntax-e _g3044930476_)))
                        (let ((_hd3045330483_ (##car _e3045230479_))
                              (_tl3045430486_ (##cdr _e3045230479_)))
                          (if (gx#stx-pair? _tl3045430486_)
                              (let ((_e3045530489_
                                     (gx#syntax-e _tl3045430486_)))
                                (let ((_hd3045630493_ (##car _e3045530489_))
                                      (_tl3045730496_ (##cdr _e3045530489_)))
                                  (if (gx#stx-pair/null? _hd3045630493_)
                                      (let ((_g41989_
                                             (gx#syntax-split-splice
                                              _hd3045630493_
                                              '0)))
                                        (begin
                                          (let ((_g41990_
                                                 (if (##values? _g41989_)
                                                     (##vector-length _g41989_)
                                                     1)))
                                            (if (not (##fx= _g41990_ 2))
                                                (error "Context expects 2 values"
                                                       _g41990_)))
                                          (let ((_target3045830499_
                                                 (##vector-ref _g41989_ 0))
                                                (_tl3046030502_
                                                 (##vector-ref _g41989_ 1)))
                                            (if (gx#stx-null? _tl3046030502_)
                                                (letrec ((_loop3046130505_
                                                          (lambda (_hd3045930509_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e3046530512_)
                    (if (gx#stx-pair? _hd3045930509_)
                        (let ((_e3046230515_ (gx#syntax-e _hd3045930509_)))
                          (let ((_lp-hd3046330519_ (##car _e3046230515_))
                                (_lp-tl3046430522_ (##cdr _e3046230515_)))
                            (_loop3046130505_
                             _lp-tl3046430522_
                             (cons _lp-hd3046330519_ _e3046530512_))))
                        (let ((_e3046630525_ (reverse _e3046530512_)))
                          ((lambda (_L30529_ _L30531_)
                             (if (gx#stx-list? _L30529_)
                                 (let* ((_g3054930566_
                                         (lambda (_g3055030562_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g3055030562_)))
                                        (_g3054830672_
                                         (lambda (_g3055030570_)
                                           (if (gx#stx-pair/null?
                                                _g3055030570_)
                                               (let ((_g41991_
                                                      (gx#syntax-split-splice
                                                       _g3055030570_
                                                       '0)))
                                                 (begin
                                                   (let ((_g41992_
                                                          (if (##values?
                                                               _g41991_)
                                                              (##vector-length
                                                               _g41991_)
                                                              1)))
                                                     (if (not (##fx= _g41992_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                 (error "Context expects 2 values" _g41992_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target3055230573_
                                                          (##vector-ref
                                                           _g41991_
                                                           0))
                                                         (_tl3055430576_
                                                          (##vector-ref
                                                           _g41991_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl3055430576_)
                                                         (letrec ((_loop3055530579_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd3055330583_ _$e3055930586_)
                             (if (gx#stx-pair? _hd3055330583_)
                                 (let ((_e3055630589_
                                        (gx#syntax-e _hd3055330583_)))
                                   (let ((_lp-hd3055730593_
                                          (##car _e3055630589_))
                                         (_lp-tl3055830596_
                                          (##cdr _e3055630589_)))
                                     (_loop3055530579_
                                      _lp-tl3055830596_
                                      (cons _lp-hd3055730593_
                                            _$e3055930586_))))
                                 (let ((_$e3056030599_
                                        (reverse _$e3055930586_)))
                                   ((lambda (_L30603_)
                                      (let ()
                                        (let* ((_g3061930627_
                                                (lambda (_g3062030623_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g3062030623_)))
                                               (_g3061830660_
                                                (lambda (_g3062030631_)
                                                  ((lambda (_L30634_)
                                                     (let ()
                                                       (let ()
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#syntax-check-splice-targets
                                _L30531_
                                _L30603_)
                               (foldr (lambda (_g3064830652_
                                               _g3064930655_
                                               _g3065030657_)
                                        (cons (cons _g3064930655_
                                                    (cons _g3064830652_ '()))
                                              _g3065030657_))
                                      '()
                                      _L30531_
                                      _L30603_))
                             (cons _L30634_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g3062030631_))))
                                          (_g3061830660_
                                           (|gerbil/core$<match>[1]#generate-match*|
                                            _stx30445_
                                            (foldr (lambda (_g3066330666_
                                                            _g3066430669_)
                                                     (cons _g3066330666_
                                                           _g3066430669_))
                                                   '()
                                                   _L30603_)
                                            _L30529_)))))
                                    _$e3056030599_))))))
                   (_loop3055530579_ _target3055230573_ '()))
                 (_g3054930566_ _g3055030570_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g3054930566_
                                                _g3055030570_)))))
                                   (_g3054830672_
                                    (gx#gentemps
                                     (foldr (lambda (_g3067530678_
                                                     _g3067630681_)
                                              (cons _g3067530678_
                                                    _g3067630681_))
                                            '()
                                            _L30531_))))
                                 (_g3044830472_ _g3044930476_)))
                           _tl3045730496_
                           _e3046630525_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop3046130505_
                                                   _target3045830499_
                                                   '()))
                                                (_g3044830472_
                                                 _g3044930476_)))))
                                      (_g3044830472_ _g3044930476_))))
                              (_g3044830472_ _g3044930476_))))
                      (_g3044830472_ _g3044930476_)))))
          (_g3044730684_ _stx30445_))))
    (define |gerbil/core$<match>[:0:]#with|
      (lambda (_$stx30690_)
        (let* ((___stx4093140932_ _$stx30690_)
               (_g3069630779_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx4093140932_))))
          (let ((___kont4093440935_
                 (lambda (_L31109_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_g3112531128_ _g3112631131_)
                                        (cons _g3112531128_ _g3112631131_))
                                      '()
                                      _L31109_)))))
                (___kont4093840939_
                 (lambda (_L31017_ _L31019_ _L31020_ _L31021_)
                   (cons _L31021_
                         (cons (cons (cons _L31020_ (cons _L31019_ '())) '())
                               (foldr (lambda (_g3104331046_ _g3104431049_)
                                        (cons _g3104331046_ _g3104431049_))
                                      '()
                                      _L31017_)))))
                (___kont4094240943_
                 (lambda (_L30890_ _L30892_ _L30893_)
                   (cons (gx#datum->syntax '#f 'match*)
                         (cons (foldr (lambda (_g3091530922_ _g3091630925_)
                                        (cons _g3091530922_ _g3091630925_))
                                      '()
                                      _L30892_)
                               (cons (cons (foldr (lambda (_g3091730928_
                                                           _g3091830931_)
                                                    (cons _g3091730928_
                                                          _g3091830931_))
                                                  '()
                                                  _L30893_)
                                           (foldr (lambda (_g3091930934_
                                                           _g3092030937_)
                                                    (cons _g3091930934_
                                                          _g3092030937_))
                                                  '()
                                                  _L30890_))
                                     '()))))))
            (let* ((___match4102441025_
                    (lambda (_e3074230786_
                             _hd3074330790_
                             _tl3074430793_
                             _e3074530796_
                             _hd3074630800_
                             _tl3074730803_
                             ___splice4094440945_
                             _target3074830806_
                             _tl3075030809_)
                      (letrec ((_loop3075130812_
                                (lambda (_hd3074930816_
                                         _expr3075530819_
                                         _hd3075630821_)
                                  (if (gx#stx-pair? _hd3074930816_)
                                      (let ((_e3075230824_
                                             (gx#syntax-e _hd3074930816_)))
                                        (let ((_lp-tl3075430831_
                                               (##cdr _e3075230824_))
                                              (_lp-hd3075330828_
                                               (##car _e3075230824_)))
                                          (if (gx#stx-pair? _lp-hd3075330828_)
                                              (let ((_e3075930834_
                                                     (gx#syntax-e
                                                      _lp-hd3075330828_)))
                                                (let ((_tl3076130841_
                                                       (##cdr _e3075930834_))
                                                      (_hd3076030838_
                                                       (##car _e3075930834_)))
                                                  (if (gx#stx-pair?
                                                       _tl3076130841_)
                                                      (let ((_e3076230844_
                                                             (gx#syntax-e
                                                              _tl3076130841_)))
                                                        (let ((_tl3076430851_
                                                               (##cdr _e3076230844_))
                                                              (_hd3076330848_
                                                               (##car _e3076230844_)))
                                                          (if (gx#stx-null?
                                                               _tl3076430851_)
                                                              (_loop3075130812_
                                                               _lp-tl3075430831_
                                                               (cons _hd3076330848_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr3075530819_)
                       (cons _hd3076030838_ _hd3075630821_))
                      (_g3069630779_))))
              (_g3069630779_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3069630779_))))
                                      (let ((_hd3075830857_
                                             (reverse _hd3075630821_))
                                            (_expr3075730854_
                                             (reverse _expr3075530819_)))
                                        (if (gx#stx-pair/null? _tl3074730803_)
                                            (let ((___splice4094640947_
                                                   (gx#syntax-split-splice
                                                    _tl3074730803_
                                                    '0)))
                                              (let ((_tl3076730863_
                                                     (##vector-ref
                                                      ___splice4094640947_
                                                      '1))
                                                    (_target3076530860_
                                                     (##vector-ref
                                                      ___splice4094640947_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl3076730863_)
                                                    (letrec ((_loop3076830866_
                                                              (lambda (_hd3076630870_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body3077230873_)
                        (if (gx#stx-pair? _hd3076630870_)
                            (let ((_e3076930876_ (gx#syntax-e _hd3076630870_)))
                              (let ((_lp-tl3077130883_ (##cdr _e3076930876_))
                                    (_lp-hd3077030880_ (##car _e3076930876_)))
                                (_loop3076830866_
                                 _lp-tl3077130883_
                                 (cons _lp-hd3077030880_ _body3077230873_))))
                            (let ((_body3077330886_
                                   (reverse _body3077230873_)))
                              (___kont4094240943_
                               _body3077330886_
                               _expr3075730854_
                               _hd3075830857_))))))
              (_loop3076830866_ _target3076530860_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3069630779_))))
                                            (_g3069630779_)))))))
                        (_loop3075130812_ _target3074830806_ '() '()))))
                   (___match4101641017_
                    (lambda (_e3074230786_
                             _hd3074330790_
                             _tl3074430793_
                             _e3074530796_
                             _hd3074630800_
                             _tl3074730803_)
                      (if (gx#stx-pair/null? _hd3074630800_)
                          (let ((___splice4094440945_
                                 (gx#syntax-split-splice _hd3074630800_ '0)))
                            (let ((_tl3075030809_
                                   (##vector-ref ___splice4094440945_ '1))
                                  (_target3074830806_
                                   (##vector-ref ___splice4094440945_ '0)))
                              (if (gx#stx-null? _tl3075030809_)
                                  (___match4102441025_
                                   _e3074230786_
                                   _hd3074330790_
                                   _tl3074430793_
                                   _e3074530796_
                                   _hd3074630800_
                                   _tl3074730803_
                                   ___splice4094440945_
                                   _target3074830806_
                                   _tl3075030809_)
                                  (_g3069630779_))))
                          (_g3069630779_))))
                   (___match4100441005_
                    (lambda (_e3071830947_
                             _hd3071930951_
                             _tl3072030954_
                             _e3072130957_
                             _hd3072230961_
                             _tl3072330964_
                             _e3072430967_
                             _hd3072530971_
                             _tl3072630974_
                             _e3072730977_
                             _hd3072830981_
                             _tl3072930984_
                             ___splice4094040941_
                             _target3073030987_
                             _tl3073230990_)
                      (letrec ((_loop3073330993_
                                (lambda (_hd3073130997_ _body3073731000_)
                                  (if (gx#stx-pair? _hd3073130997_)
                                      (let ((_e3073431003_
                                             (gx#syntax-e _hd3073130997_)))
                                        (let ((_lp-tl3073631010_
                                               (##cdr _e3073431003_))
                                              (_lp-hd3073531007_
                                               (##car _e3073431003_)))
                                          (_loop3073330993_
                                           _lp-tl3073631010_
                                           (cons _lp-hd3073531007_
                                                 _body3073731000_))))
                                      (let ((_body3073831013_
                                             (reverse _body3073731000_)))
                                        (let ((_L31017_ _body3073831013_)
                                              (_L31019_ _hd3072830981_)
                                              (_L31020_ _hd3072530971_)
                                              (_L31021_ _hd3071930951_))
                                          (if (|gerbil/core$<match>[1]#match-pattern?|
                                               _L31020_)
                                              (___kont4093840939_
                                               _L31017_
                                               _L31019_
                                               _L31020_
                                               _L31021_)
                                              (___match4101641017_
                                               _e3071830947_
                                               _hd3071930951_
                                               _tl3072030954_
                                               _e3072130957_
                                               _hd3072230961_
                                               _tl3072330964_))))))))
                        (_loop3073330993_ _target3073030987_ '()))))
                   (___match4097040971_
                    (lambda (_e3069931059_
                             _hd3070031063_
                             _tl3070131066_
                             _e3070231069_
                             _hd3070331073_
                             _tl3070431076_
                             ___splice4093640937_
                             _target3070531079_
                             _tl3070731082_)
                      (letrec ((_loop3070831085_
                                (lambda (_hd3070631089_ _body3071231092_)
                                  (if (gx#stx-pair? _hd3070631089_)
                                      (let ((_e3070931095_
                                             (gx#syntax-e _hd3070631089_)))
                                        (let ((_lp-tl3071131102_
                                               (##cdr _e3070931095_))
                                              (_lp-hd3071031099_
                                               (##car _e3070931095_)))
                                          (_loop3070831085_
                                           _lp-tl3071131102_
                                           (cons _lp-hd3071031099_
                                                 _body3071231092_))))
                                      (let ((_body3071331105_
                                             (reverse _body3071231092_)))
                                        (___kont4093440935_
                                         _body3071331105_))))))
                        (_loop3070831085_ _target3070531079_ '())))))
              (if (gx#stx-pair? ___stx4093140932_)
                  (let ((_e3069931059_ (gx#syntax-e ___stx4093140932_)))
                    (let ((_tl3070131066_ (##cdr _e3069931059_))
                          (_hd3070031063_ (##car _e3069931059_)))
                      (if (gx#stx-pair? _tl3070131066_)
                          (let ((_e3070231069_ (gx#syntax-e _tl3070131066_)))
                            (let ((_tl3070431076_ (##cdr _e3070231069_))
                                  (_hd3070331073_ (##car _e3070231069_)))
                              (if (gx#stx-null? _hd3070331073_)
                                  (if (gx#stx-pair/null? _tl3070431076_)
                                      (let ((___splice4093640937_
                                             (gx#syntax-split-splice
                                              _tl3070431076_
                                              '0)))
                                        (let ((_tl3070731082_
                                               (##vector-ref
                                                ___splice4093640937_
                                                '1))
                                              (_target3070531079_
                                               (##vector-ref
                                                ___splice4093640937_
                                                '0)))
                                          (if (gx#stx-null? _tl3070731082_)
                                              (___match4097040971_
                                               _e3069931059_
                                               _hd3070031063_
                                               _tl3070131066_
                                               _e3070231069_
                                               _hd3070331073_
                                               _tl3070431076_
                                               ___splice4093640937_
                                               _target3070531079_
                                               _tl3070731082_)
                                              (if (gx#stx-pair/null?
                                                   _hd3070331073_)
                                                  (let ((___splice4094440945_
                                                         (gx#syntax-split-splice
                                                          _hd3070331073_
                                                          '0)))
                                                    (let ((_tl3075030809_
                                                           (##vector-ref
                                                            ___splice4094440945_
                                                            '1))
                                                          (_target3074830806_
                                                           (##vector-ref
                                                            ___splice4094440945_
                                                            '0)))
                                                      (if (gx#stx-null?
                                                           _tl3075030809_)
                                                          (___match4102441025_
                                                           _e3069931059_
                                                           _hd3070031063_
                                                           _tl3070131066_
                                                           _e3070231069_
                                                           _hd3070331073_
                                                           _tl3070431076_
                                                           ___splice4094440945_
                                                           _target3074830806_
                                                           _tl3075030809_)
                                                          (_g3069630779_))))
                                                  (_g3069630779_)))))
                                      (if (gx#stx-pair/null? _hd3070331073_)
                                          (let ((___splice4094440945_
                                                 (gx#syntax-split-splice
                                                  _hd3070331073_
                                                  '0)))
                                            (let ((_tl3075030809_
                                                   (##vector-ref
                                                    ___splice4094440945_
                                                    '1))
                                                  (_target3074830806_
                                                   (##vector-ref
                                                    ___splice4094440945_
                                                    '0)))
                                              (if (gx#stx-null? _tl3075030809_)
                                                  (___match4102441025_
                                                   _e3069931059_
                                                   _hd3070031063_
                                                   _tl3070131066_
                                                   _e3070231069_
                                                   _hd3070331073_
                                                   _tl3070431076_
                                                   ___splice4094440945_
                                                   _target3074830806_
                                                   _tl3075030809_)
                                                  (_g3069630779_))))
                                          (_g3069630779_)))
                                  (if (gx#stx-pair? _hd3070331073_)
                                      (let ((_e3072430967_
                                             (gx#syntax-e _hd3070331073_)))
                                        (let ((_tl3072630974_
                                               (##cdr _e3072430967_))
                                              (_hd3072530971_
                                               (##car _e3072430967_)))
                                          (if (gx#stx-pair? _tl3072630974_)
                                              (let ((_e3072730977_
                                                     (gx#syntax-e
                                                      _tl3072630974_)))
                                                (let ((_tl3072930984_
                                                       (##cdr _e3072730977_))
                                                      (_hd3072830981_
                                                       (##car _e3072730977_)))
                                                  (if (gx#stx-null?
                                                       _tl3072930984_)
                                                      (if (gx#stx-pair/null?
                                                           _tl3070431076_)
                                                          (let ((___splice4094040941_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _tl3070431076_ '0)))
                    (let ((_tl3073230990_
                           (##vector-ref ___splice4094040941_ '1))
                          (_target3073030987_
                           (##vector-ref ___splice4094040941_ '0)))
                      (if (gx#stx-null? _tl3073230990_)
                          (___match4100441005_
                           _e3069931059_
                           _hd3070031063_
                           _tl3070131066_
                           _e3070231069_
                           _hd3070331073_
                           _tl3070431076_
                           _e3072430967_
                           _hd3072530971_
                           _tl3072630974_
                           _e3072730977_
                           _hd3072830981_
                           _tl3072930984_
                           ___splice4094040941_
                           _target3073030987_
                           _tl3073230990_)
                          (if (gx#stx-pair/null? _hd3070331073_)
                              (let ((___splice4094440945_
                                     (gx#syntax-split-splice
                                      _hd3070331073_
                                      '0)))
                                (let ((_tl3075030809_
                                       (##vector-ref ___splice4094440945_ '1))
                                      (_target3074830806_
                                       (##vector-ref ___splice4094440945_ '0)))
                                  (if (gx#stx-null? _tl3075030809_)
                                      (___match4102441025_
                                       _e3069931059_
                                       _hd3070031063_
                                       _tl3070131066_
                                       _e3070231069_
                                       _hd3070331073_
                                       _tl3070431076_
                                       ___splice4094440945_
                                       _target3074830806_
                                       _tl3075030809_)
                                      (_g3069630779_))))
                              (_g3069630779_)))))
                  (if (gx#stx-pair/null? _hd3070331073_)
                      (let ((___splice4094440945_
                             (gx#syntax-split-splice _hd3070331073_ '0)))
                        (let ((_tl3075030809_
                               (##vector-ref ___splice4094440945_ '1))
                              (_target3074830806_
                               (##vector-ref ___splice4094440945_ '0)))
                          (if (gx#stx-null? _tl3075030809_)
                              (___match4102441025_
                               _e3069931059_
                               _hd3070031063_
                               _tl3070131066_
                               _e3070231069_
                               _hd3070331073_
                               _tl3070431076_
                               ___splice4094440945_
                               _target3074830806_
                               _tl3075030809_)
                              (_g3069630779_))))
                      (_g3069630779_)))
              (if (gx#stx-pair/null? _hd3070331073_)
                  (let ((___splice4094440945_
                         (gx#syntax-split-splice _hd3070331073_ '0)))
                    (let ((_tl3075030809_
                           (##vector-ref ___splice4094440945_ '1))
                          (_target3074830806_
                           (##vector-ref ___splice4094440945_ '0)))
                      (if (gx#stx-null? _tl3075030809_)
                          (___match4102441025_
                           _e3069931059_
                           _hd3070031063_
                           _tl3070131066_
                           _e3070231069_
                           _hd3070331073_
                           _tl3070431076_
                           ___splice4094440945_
                           _target3074830806_
                           _tl3075030809_)
                          (_g3069630779_))))
                  (_g3069630779_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _hd3070331073_)
                                                  (let ((___splice4094440945_
                                                         (gx#syntax-split-splice
                                                          _hd3070331073_
                                                          '0)))
                                                    (let ((_tl3075030809_
                                                           (##vector-ref
                                                            ___splice4094440945_
                                                            '1))
                                                          (_target3074830806_
                                                           (##vector-ref
                                                            ___splice4094440945_
                                                            '0)))
                                                      (if (gx#stx-null?
                                                           _tl3075030809_)
                                                          (___match4102441025_
                                                           _e3069931059_
                                                           _hd3070031063_
                                                           _tl3070131066_
                                                           _e3070231069_
                                                           _hd3070331073_
                                                           _tl3070431076_
                                                           ___splice4094440945_
                                                           _target3074830806_
                                                           _tl3075030809_)
                                                          (_g3069630779_))))
                                                  (_g3069630779_)))))
                                      (if (gx#stx-pair/null? _hd3070331073_)
                                          (let ((___splice4094440945_
                                                 (gx#syntax-split-splice
                                                  _hd3070331073_
                                                  '0)))
                                            (let ((_tl3075030809_
                                                   (##vector-ref
                                                    ___splice4094440945_
                                                    '1))
                                                  (_target3074830806_
                                                   (##vector-ref
                                                    ___splice4094440945_
                                                    '0)))
                                              (if (gx#stx-null? _tl3075030809_)
                                                  (___match4102441025_
                                                   _e3069931059_
                                                   _hd3070031063_
                                                   _tl3070131066_
                                                   _e3070231069_
                                                   _hd3070331073_
                                                   _tl3070431076_
                                                   ___splice4094440945_
                                                   _target3074830806_
                                                   _tl3075030809_)
                                                  (_g3069630779_))))
                                          (_g3069630779_))))))
                          (_g3069630779_))))
                  (_g3069630779_)))))))
    (define |gerbil/core$<match>[:0:]#with*|
      (lambda (_$stx31142_)
        (let* ((___stx4102741028_ _$stx31142_)
               (_g3114731199_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx4102741028_))))
          (let ((___kont4103041031_
                 (lambda (_L31369_ _L31371_ _L31372_ _L31373_ _L31374_)
                   (cons (gx#datum->syntax '#f 'with)
                         (cons (cons (cons _L31373_ (cons _L31372_ '())) '())
                               (cons (cons _L31374_
                                           (cons _L31371_
                                                 (foldr (lambda (_g3139931402_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g3140031405_)
                  (cons _g3139931402_ _g3140031405_))
                '()
                _L31369_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont4103441035_
                 (lambda (_L31256_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_g3127331276_ _g3127431279_)
                                        (cons _g3127331276_ _g3127431279_))
                                      '()
                                      _L31256_))))))
            (let* ((___match4110041101_
                    (lambda (_e3117931206_
                             _hd3118031210_
                             _tl3118131213_
                             _e3118231216_
                             _hd3118331220_
                             _tl3118431223_
                             ___splice4103641037_
                             _target3118531226_
                             _tl3118731229_)
                      (letrec ((_loop3118831232_
                                (lambda (_hd3118631236_ _body3119231239_)
                                  (if (gx#stx-pair? _hd3118631236_)
                                      (let ((_e3118931242_
                                             (gx#syntax-e _hd3118631236_)))
                                        (let ((_lp-tl3119131249_
                                               (##cdr _e3118931242_))
                                              (_lp-hd3119031246_
                                               (##car _e3118931242_)))
                                          (_loop3118831232_
                                           _lp-tl3119131249_
                                           (cons _lp-hd3119031246_
                                                 _body3119231239_))))
                                      (let ((_body3119331252_
                                             (reverse _body3119231239_)))
                                        (___kont4103441035_
                                         _body3119331252_))))))
                        (_loop3118831232_ _target3118531226_ '()))))
                   (___match4107841079_
                    (lambda (_e3115431289_
                             _hd3115531293_
                             _tl3115631296_
                             _e3115731299_
                             _hd3115831303_
                             _tl3115931306_
                             _e3116031309_
                             _hd3116131313_
                             _tl3116231316_
                             _e3116331319_
                             _hd3116431323_
                             _tl3116531326_
                             _e3116631329_
                             _hd3116731333_
                             _tl3116831336_
                             ___splice4103241033_
                             _target3116931339_
                             _tl3117131342_)
                      (letrec ((_loop3117231345_
                                (lambda (_hd3117031349_ _body3117631352_)
                                  (if (gx#stx-pair? _hd3117031349_)
                                      (let ((_e3117331355_
                                             (gx#syntax-e _hd3117031349_)))
                                        (let ((_lp-tl3117531362_
                                               (##cdr _e3117331355_))
                                              (_lp-hd3117431359_
                                               (##car _e3117331355_)))
                                          (_loop3117231345_
                                           _lp-tl3117531362_
                                           (cons _lp-hd3117431359_
                                                 _body3117631352_))))
                                      (let ((_body3117731365_
                                             (reverse _body3117631352_)))
                                        (___kont4103041031_
                                         _body3117731365_
                                         _tl3116231316_
                                         _hd3116731333_
                                         _hd3116431323_
                                         _hd3115531293_))))))
                        (_loop3117231345_ _target3116931339_ '())))))
              (if (gx#stx-pair? ___stx4102741028_)
                  (let ((_e3115431289_ (gx#syntax-e ___stx4102741028_)))
                    (let ((_tl3115631296_ (##cdr _e3115431289_))
                          (_hd3115531293_ (##car _e3115431289_)))
                      (if (gx#stx-pair? _tl3115631296_)
                          (let ((_e3115731299_ (gx#syntax-e _tl3115631296_)))
                            (let ((_tl3115931306_ (##cdr _e3115731299_))
                                  (_hd3115831303_ (##car _e3115731299_)))
                              (if (gx#stx-pair? _hd3115831303_)
                                  (let ((_e3116031309_
                                         (gx#syntax-e _hd3115831303_)))
                                    (let ((_tl3116231316_
                                           (##cdr _e3116031309_))
                                          (_hd3116131313_
                                           (##car _e3116031309_)))
                                      (if (gx#stx-pair? _hd3116131313_)
                                          (let ((_e3116331319_
                                                 (gx#syntax-e _hd3116131313_)))
                                            (let ((_tl3116531326_
                                                   (##cdr _e3116331319_))
                                                  (_hd3116431323_
                                                   (##car _e3116331319_)))
                                              (if (gx#stx-pair? _tl3116531326_)
                                                  (let ((_e3116631329_
                                                         (gx#syntax-e
                                                          _tl3116531326_)))
                                                    (let ((_tl3116831336_
                                                           (##cdr _e3116631329_))
                                                          (_hd3116731333_
                                                           (##car _e3116631329_)))
                                                      (if (gx#stx-null?
                                                           _tl3116831336_)
                                                          (if (gx#stx-pair/null?
                                                               _tl3115931306_)
                                                              (let ((___splice4103241033_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _tl3115931306_ '0)))
                        (let ((_tl3117131342_
                               (##vector-ref ___splice4103241033_ '1))
                              (_target3116931339_
                               (##vector-ref ___splice4103241033_ '0)))
                          (if (gx#stx-null? _tl3117131342_)
                              (___match4107841079_
                               _e3115431289_
                               _hd3115531293_
                               _tl3115631296_
                               _e3115731299_
                               _hd3115831303_
                               _tl3115931306_
                               _e3116031309_
                               _hd3116131313_
                               _tl3116231316_
                               _e3116331319_
                               _hd3116431323_
                               _tl3116531326_
                               _e3116631329_
                               _hd3116731333_
                               _tl3116831336_
                               ___splice4103241033_
                               _target3116931339_
                               _tl3117131342_)
                              (_g3114731199_))))
                      (_g3114731199_))
                  (_g3114731199_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3114731199_))))
                                          (_g3114731199_))))
                                  (if (gx#stx-null? _hd3115831303_)
                                      (if (gx#stx-pair/null? _tl3115931306_)
                                          (let ((___splice4103641037_
                                                 (gx#syntax-split-splice
                                                  _tl3115931306_
                                                  '0)))
                                            (let ((_tl3118731229_
                                                   (##vector-ref
                                                    ___splice4103641037_
                                                    '1))
                                                  (_target3118531226_
                                                   (##vector-ref
                                                    ___splice4103641037_
                                                    '0)))
                                              (if (gx#stx-null? _tl3118731229_)
                                                  (___match4110041101_
                                                   _e3115431289_
                                                   _hd3115531293_
                                                   _tl3115631296_
                                                   _e3115731299_
                                                   _hd3115831303_
                                                   _tl3115931306_
                                                   ___splice4103641037_
                                                   _target3118531226_
                                                   _tl3118731229_)
                                                  (_g3114731199_))))
                                          (_g3114731199_))
                                      (_g3114731199_)))))
                          (_g3114731199_))))
                  (_g3114731199_)))))))
    (define |gerbil/core$<match>[:0:]#?|
      (lambda (_$stx31414_)
        (let* ((___stx4110341104_ _$stx31414_)
               (_g3142531571_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx4110341104_))))
          (let ((___kont4110641107_
                 (lambda (_L32175_ _L32177_ _L32178_)
                   (cons (gx#datum->syntax '#f 'and)
                         (foldr (lambda (_g3219932202_ _g3220032205_)
                                  (cons (cons _L32178_
                                              (cons _g3219932202_
                                                    (cons _L32175_ '())))
                                        _g3220032205_))
                                '()
                                _L32177_))))
                (___kont4111041111_
                 (lambda (_L32065_ _L32067_ _L32068_)
                   (cons (gx#datum->syntax '#f 'or)
                         (foldr (lambda (_g3208932092_ _g3209032095_)
                                  (cons (cons _L32068_
                                              (cons _g3208932092_
                                                    (cons _L32065_ '())))
                                        _g3209032095_))
                                '()
                                _L32067_))))
                (___kont4111441115_
                 (lambda (_L31965_ _L31967_ _L31968_)
                   (cons (gx#datum->syntax '#f 'not)
                         (cons (cons _L31968_
                                     (cons _L31967_ (cons _L31965_ '())))
                               '()))))
                (___kont4111641117_
                 (lambda (_L31891_ _L31893_)
                   (cons _L31893_ (cons _L31891_ '()))))
                (___kont4111841119_
                 (lambda (_L31839_ _L31841_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons _L31841_
                                           (cons _L31839_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$obj)
                                                       '())))
                                     '())))))
                (___kont4112041121_
                 (lambda (_L31791_ _L31793_ _L31794_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _L31794_
                                                       (cons _L31793_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L31791_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont4112241123_
                 (lambda (_L31722_ _L31724_ _L31725_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'alet)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '$val)
                                                       (cons (cons _L31725_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _L31724_
                                 (cons (gx#datum->syntax '#f '$obj) '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L31722_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$val)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont4112441125_
                 (lambda (_L31642_ _L31644_ _L31645_ _L31646_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _L31646_
                                                       (cons _L31645_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L31642_
                                                             (cons (cons _L31644_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (gx#datum->syntax '#f '$obj) '()))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((___match4127641277_
                    (lambda (_e3151531751_
                             _hd3151631755_
                             _tl3151731758_
                             _e3151831761_
                             _hd3151931765_
                             _tl3152031768_
                             _e3152131771_
                             _hd3152231775_
                             _tl3152331778_)
                      (if (gx#identifier? _hd3152231775_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g41993_|
                               _hd3152231775_)
                              (if (gx#stx-pair? _tl3152331778_)
                                  (let ((_e3152431781_
                                         (gx#syntax-e _tl3152331778_)))
                                    (let ((_tl3152631788_
                                           (##cdr _e3152431781_))
                                          (_hd3152531785_
                                           (##car _e3152431781_)))
                                      (if (gx#stx-null? _tl3152631788_)
                                          (___kont4112041121_
                                           _hd3152531785_
                                           _hd3151931765_
                                           _hd3151631755_)
                                          (_g3142531571_))))
                                  (_g3142531571_))
                              (_g3142531571_))
                          (if (gx#stx-datum? _hd3152231775_)
                              (let ((_e3153931708_ (gx#stx-e _hd3152231775_)))
                                (if (equal? _e3153931708_ '::)
                                    (if (gx#stx-pair? _tl3152331778_)
                                        (let ((_e3154031712_
                                               (gx#syntax-e _tl3152331778_)))
                                          (let ((_tl3154231719_
                                                 (##cdr _e3154031712_))
                                                (_hd3154131716_
                                                 (##car _e3154031712_)))
                                            (if (gx#stx-null? _tl3154231719_)
                                                (___kont4112241123_
                                                 _hd3154131716_
                                                 _hd3151931765_
                                                 _hd3151631755_)
                                                (if (gx#stx-pair?
                                                     _tl3154231719_)
                                                    (let ((_e3156031622_
                                                           (gx#syntax-e
                                                            _tl3154231719_)))
                                                      (let ((_tl3156231629_
                                                             (##cdr _e3156031622_))
                                                            (_hd3156131626_
                                                             (##car _e3156031622_)))
                                                        (if (gx#identifier?
                                                             _hd3156131626_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core$<match>[1]#_g41994_|
                         _hd3156131626_)
                        (if (gx#stx-pair? _tl3156231629_)
                            (let ((_e3156331632_ (gx#syntax-e _tl3156231629_)))
                              (let ((_tl3156531639_ (##cdr _e3156331632_))
                                    (_hd3156431636_ (##car _e3156331632_)))
                                (if (gx#stx-null? _tl3156531639_)
                                    (___kont4112441125_
                                     _hd3156431636_
                                     _hd3154131716_
                                     _hd3151931765_
                                     _hd3151631755_)
                                    (_g3142531571_))))
                            (_g3142531571_))
                        (_g3142531571_))
                    (_g3142531571_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3142531571_)))))
                                        (_g3142531571_))
                                    (_g3142531571_)))
                              (_g3142531571_)))))
                   (___match4125641257_
                    (lambda (_e3150631819_
                             _hd3150731823_
                             _tl3150831826_
                             _e3150931829_
                             _hd3151031833_
                             _tl3151131836_)
                      (if (gx#stx-null? _tl3151131836_)
                          (___kont4111841119_ _hd3151031833_ _hd3150731823_)
                          (if (gx#stx-pair? _tl3151131836_)
                              (let ((_e3152131771_
                                     (gx#syntax-e _tl3151131836_)))
                                (let ((_tl3152331778_ (##cdr _e3152131771_))
                                      (_hd3152231775_ (##car _e3152131771_)))
                                  (if (gx#identifier? _hd3152231775_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g41993_|
                                           _hd3152231775_)
                                          (if (gx#stx-pair? _tl3152331778_)
                                              (let ((_e3152431781_
                                                     (gx#syntax-e
                                                      _tl3152331778_)))
                                                (let ((_tl3152631788_
                                                       (##cdr _e3152431781_))
                                                      (_hd3152531785_
                                                       (##car _e3152431781_)))
                                                  (if (gx#stx-null?
                                                       _tl3152631788_)
                                                      (___kont4112041121_
                                                       _hd3152531785_
                                                       _hd3151031833_
                                                       _hd3150731823_)
                                                      (_g3142531571_))))
                                              (_g3142531571_))
                                          (_g3142531571_))
                                      (if (gx#stx-datum? _hd3152231775_)
                                          (let ((_e3153931708_
                                                 (gx#stx-e _hd3152231775_)))
                                            (if (equal? _e3153931708_ '::)
                                                (if (gx#stx-pair?
                                                     _tl3152331778_)
                                                    (let ((_e3154031712_
                                                           (gx#syntax-e
                                                            _tl3152331778_)))
                                                      (let ((_tl3154231719_
                                                             (##cdr _e3154031712_))
                                                            (_hd3154131716_
                                                             (##car _e3154031712_)))
                                                        (if (gx#stx-null?
                                                             _tl3154231719_)
                                                            (___kont4112241123_
                                                             _hd3154131716_
                                                             _hd3151031833_
                                                             _hd3150731823_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3154231719_)
                        (let ((_e3156031622_ (gx#syntax-e _tl3154231719_)))
                          (let ((_tl3156231629_ (##cdr _e3156031622_))
                                (_hd3156131626_ (##car _e3156031622_)))
                            (if (gx#identifier? _hd3156131626_)
                                (if (gx#free-identifier=?
                                     |gerbil/core$<match>[1]#_g41994_|
                                     _hd3156131626_)
                                    (if (gx#stx-pair? _tl3156231629_)
                                        (let ((_e3156331632_
                                               (gx#syntax-e _tl3156231629_)))
                                          (let ((_tl3156531639_
                                                 (##cdr _e3156331632_))
                                                (_hd3156431636_
                                                 (##car _e3156331632_)))
                                            (if (gx#stx-null? _tl3156531639_)
                                                (___kont4112441125_
                                                 _hd3156431636_
                                                 _hd3154131716_
                                                 _hd3151031833_
                                                 _hd3150731823_)
                                                (_g3142531571_))))
                                        (_g3142531571_))
                                    (_g3142531571_))
                                (_g3142531571_))))
                        (_g3142531571_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3142531571_))
                                                (_g3142531571_)))
                                          (_g3142531571_)))))
                              (_g3142531571_)))))
                   (___match4118641187_
                    (lambda (_e3145431995_
                             _hd3145531999_
                             _tl3145632002_
                             _e3145732005_
                             _hd3145832009_
                             _tl3145932012_
                             _e3146032015_
                             _hd3146132019_
                             _tl3146232022_
                             ___splice4111241113_
                             _target3146332025_
                             _tl3146532028_)
                      (letrec ((_loop3146632031_
                                (lambda (_hd3146432035_ _pred3147032038_)
                                  (if (gx#stx-pair? _hd3146432035_)
                                      (let ((_e3146732041_
                                             (gx#syntax-e _hd3146432035_)))
                                        (let ((_lp-tl3146932048_
                                               (##cdr _e3146732041_))
                                              (_lp-hd3146832045_
                                               (##car _e3146732041_)))
                                          (_loop3146632031_
                                           _lp-tl3146932048_
                                           (cons _lp-hd3146832045_
                                                 _pred3147032038_))))
                                      (let ((_pred3147132051_
                                             (reverse _pred3147032038_)))
                                        (if (gx#stx-pair? _tl3145932012_)
                                            (let ((_e3147232055_
                                                   (gx#syntax-e
                                                    _tl3145932012_)))
                                              (let ((_tl3147432062_
                                                     (##cdr _e3147232055_))
                                                    (_hd3147332059_
                                                     (##car _e3147232055_)))
                                                (if (gx#stx-null?
                                                     _tl3147432062_)
                                                    (___kont4111041111_
                                                     _hd3147332059_
                                                     _pred3147132051_
                                                     _hd3145531999_)
                                                    (___match4127641277_
                                                     _e3145431995_
                                                     _hd3145531999_
                                                     _tl3145632002_
                                                     _e3145732005_
                                                     _hd3145832009_
                                                     _tl3145932012_
                                                     _e3147232055_
                                                     _hd3147332059_
                                                     _tl3147432062_))))
                                            (___match4125641257_
                                             _e3145431995_
                                             _hd3145531999_
                                             _tl3145632002_
                                             _e3145732005_
                                             _hd3145832009_
                                             _tl3145932012_)))))))
                        (_loop3146632031_ _target3146332025_ '()))))
                   (___match4115641157_
                    (lambda (_e3143032105_
                             _hd3143132109_
                             _tl3143232112_
                             _e3143332115_
                             _hd3143432119_
                             _tl3143532122_
                             _e3143632125_
                             _hd3143732129_
                             _tl3143832132_
                             ___splice4110841109_
                             _target3143932135_
                             _tl3144132138_)
                      (letrec ((_loop3144232141_
                                (lambda (_hd3144032145_ _pred3144632148_)
                                  (if (gx#stx-pair? _hd3144032145_)
                                      (let ((_e3144332151_
                                             (gx#syntax-e _hd3144032145_)))
                                        (let ((_lp-tl3144532158_
                                               (##cdr _e3144332151_))
                                              (_lp-hd3144432155_
                                               (##car _e3144332151_)))
                                          (_loop3144232141_
                                           _lp-tl3144532158_
                                           (cons _lp-hd3144432155_
                                                 _pred3144632148_))))
                                      (let ((_pred3144732161_
                                             (reverse _pred3144632148_)))
                                        (if (gx#stx-pair? _tl3143532122_)
                                            (let ((_e3144832165_
                                                   (gx#syntax-e
                                                    _tl3143532122_)))
                                              (let ((_tl3145032172_
                                                     (##cdr _e3144832165_))
                                                    (_hd3144932169_
                                                     (##car _e3144832165_)))
                                                (if (gx#stx-null?
                                                     _tl3145032172_)
                                                    (___kont4110641107_
                                                     _hd3144932169_
                                                     _pred3144732161_
                                                     _hd3143132109_)
                                                    (___match4127641277_
                                                     _e3143032105_
                                                     _hd3143132109_
                                                     _tl3143232112_
                                                     _e3143332115_
                                                     _hd3143432119_
                                                     _tl3143532122_
                                                     _e3144832165_
                                                     _hd3144932169_
                                                     _tl3145032172_))))
                                            (___match4125641257_
                                             _e3143032105_
                                             _hd3143132109_
                                             _tl3143232112_
                                             _e3143332115_
                                             _hd3143432119_
                                             _tl3143532122_)))))))
                        (_loop3144232141_ _target3143932135_ '())))))
              (if (gx#stx-pair? ___stx4110341104_)
                  (let ((_e3143032105_ (gx#syntax-e ___stx4110341104_)))
                    (let ((_tl3143232112_ (##cdr _e3143032105_))
                          (_hd3143132109_ (##car _e3143032105_)))
                      (if (gx#stx-pair? _tl3143232112_)
                          (let ((_e3143332115_ (gx#syntax-e _tl3143232112_)))
                            (let ((_tl3143532122_ (##cdr _e3143332115_))
                                  (_hd3143432119_ (##car _e3143332115_)))
                              (if (gx#stx-pair? _hd3143432119_)
                                  (let ((_e3143632125_
                                         (gx#syntax-e _hd3143432119_)))
                                    (let ((_tl3143832132_
                                           (##cdr _e3143632125_))
                                          (_hd3143732129_
                                           (##car _e3143632125_)))
                                      (if (gx#identifier? _hd3143732129_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g41995_|
                                               _hd3143732129_)
                                              (if (gx#stx-pair/null?
                                                   _tl3143832132_)
                                                  (let ((___splice4110841109_
                                                         (gx#syntax-split-splice
                                                          _tl3143832132_
                                                          '0)))
                                                    (let ((_tl3144132138_
                                                           (##vector-ref
                                                            ___splice4110841109_
                                                            '1))
                                                          (_target3143932135_
                                                           (##vector-ref
                                                            ___splice4110841109_
                                                            '0)))
                                                      (if (gx#stx-null?
                                                           _tl3144132138_)
                                                          (___match4115641157_
                                                           _e3143032105_
                                                           _hd3143132109_
                                                           _tl3143232112_
                                                           _e3143332115_
                                                           _hd3143432119_
                                                           _tl3143532122_
                                                           _e3143632125_
                                                           _hd3143732129_
                                                           _tl3143832132_
                                                           ___splice4110841109_
                                                           _target3143932135_
                                                           _tl3144132138_)
                                                          (if (gx#stx-pair?
                                                               _tl3143532122_)
                                                              (let ((_e3150131881_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl3143532122_)))
                        (let ((_tl3150331888_ (##cdr _e3150131881_))
                              (_hd3150231885_ (##car _e3150131881_)))
                          (if (gx#stx-null? _tl3150331888_)
                              (___kont4111641117_
                               _hd3150231885_
                               _hd3143432119_)
                              (if (gx#identifier? _hd3150231885_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g41993_|
                                       _hd3150231885_)
                                      (if (gx#stx-pair? _tl3150331888_)
                                          (let ((_e3152431781_
                                                 (gx#syntax-e _tl3150331888_)))
                                            (let ((_tl3152631788_
                                                   (##cdr _e3152431781_))
                                                  (_hd3152531785_
                                                   (##car _e3152431781_)))
                                              (if (gx#stx-null? _tl3152631788_)
                                                  (___kont4112041121_
                                                   _hd3152531785_
                                                   _hd3143432119_
                                                   _hd3143132109_)
                                                  (_g3142531571_))))
                                          (_g3142531571_))
                                      (_g3142531571_))
                                  (if (gx#stx-datum? _hd3150231885_)
                                      (let ((_e3153931708_
                                             (gx#stx-e _hd3150231885_)))
                                        (if (equal? _e3153931708_ '::)
                                            (if (gx#stx-pair? _tl3150331888_)
                                                (let ((_e3154031712_
                                                       (gx#syntax-e
                                                        _tl3150331888_)))
                                                  (let ((_tl3154231719_
                                                         (##cdr _e3154031712_))
                                                        (_hd3154131716_
                                                         (##car _e3154031712_)))
                                                    (if (gx#stx-null?
                                                         _tl3154231719_)
                                                        (___kont4112241123_
                                                         _hd3154131716_
                                                         _hd3143432119_
                                                         _hd3143132109_)
                                                        (if (gx#stx-pair?
                                                             _tl3154231719_)
                                                            (let ((_e3156031622_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3154231719_)))
                      (let ((_tl3156231629_ (##cdr _e3156031622_))
                            (_hd3156131626_ (##car _e3156031622_)))
                        (if (gx#identifier? _hd3156131626_)
                            (if (gx#free-identifier=?
                                 |gerbil/core$<match>[1]#_g41994_|
                                 _hd3156131626_)
                                (if (gx#stx-pair? _tl3156231629_)
                                    (let ((_e3156331632_
                                           (gx#syntax-e _tl3156231629_)))
                                      (let ((_tl3156531639_
                                             (##cdr _e3156331632_))
                                            (_hd3156431636_
                                             (##car _e3156331632_)))
                                        (if (gx#stx-null? _tl3156531639_)
                                            (___kont4112441125_
                                             _hd3156431636_
                                             _hd3154131716_
                                             _hd3143432119_
                                             _hd3143132109_)
                                            (_g3142531571_))))
                                    (_g3142531571_))
                                (_g3142531571_))
                            (_g3142531571_))))
                    (_g3142531571_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3142531571_))
                                            (_g3142531571_)))
                                      (_g3142531571_))))))
                      (if (gx#stx-null? _tl3143532122_)
                          (___kont4111841119_ _hd3143432119_ _hd3143132109_)
                          (_g3142531571_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _tl3143532122_)
                                                      (let ((_e3150131881_
                                                             (gx#syntax-e
                                                              _tl3143532122_)))
                                                        (let ((_tl3150331888_
                                                               (##cdr _e3150131881_))
                                                              (_hd3150231885_
                                                               (##car _e3150131881_)))
                                                          (if (gx#stx-null?
                                                               _tl3150331888_)
                                                              (___kont4111641117_
                                                               _hd3150231885_
                                                               _hd3143432119_)
                                                              (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd3150231885_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g41993_|
                               _hd3150231885_)
                              (if (gx#stx-pair? _tl3150331888_)
                                  (let ((_e3152431781_
                                         (gx#syntax-e _tl3150331888_)))
                                    (let ((_tl3152631788_
                                           (##cdr _e3152431781_))
                                          (_hd3152531785_
                                           (##car _e3152431781_)))
                                      (if (gx#stx-null? _tl3152631788_)
                                          (___kont4112041121_
                                           _hd3152531785_
                                           _hd3143432119_
                                           _hd3143132109_)
                                          (_g3142531571_))))
                                  (_g3142531571_))
                              (_g3142531571_))
                          (if (gx#stx-datum? _hd3150231885_)
                              (let ((_e3153931708_ (gx#stx-e _hd3150231885_)))
                                (if (equal? _e3153931708_ '::)
                                    (if (gx#stx-pair? _tl3150331888_)
                                        (let ((_e3154031712_
                                               (gx#syntax-e _tl3150331888_)))
                                          (let ((_tl3154231719_
                                                 (##cdr _e3154031712_))
                                                (_hd3154131716_
                                                 (##car _e3154031712_)))
                                            (if (gx#stx-null? _tl3154231719_)
                                                (___kont4112241123_
                                                 _hd3154131716_
                                                 _hd3143432119_
                                                 _hd3143132109_)
                                                (if (gx#stx-pair?
                                                     _tl3154231719_)
                                                    (let ((_e3156031622_
                                                           (gx#syntax-e
                                                            _tl3154231719_)))
                                                      (let ((_tl3156231629_
                                                             (##cdr _e3156031622_))
                                                            (_hd3156131626_
                                                             (##car _e3156031622_)))
                                                        (if (gx#identifier?
                                                             _hd3156131626_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core$<match>[1]#_g41994_|
                         _hd3156131626_)
                        (if (gx#stx-pair? _tl3156231629_)
                            (let ((_e3156331632_ (gx#syntax-e _tl3156231629_)))
                              (let ((_tl3156531639_ (##cdr _e3156331632_))
                                    (_hd3156431636_ (##car _e3156331632_)))
                                (if (gx#stx-null? _tl3156531639_)
                                    (___kont4112441125_
                                     _hd3156431636_
                                     _hd3154131716_
                                     _hd3143432119_
                                     _hd3143132109_)
                                    (_g3142531571_))))
                            (_g3142531571_))
                        (_g3142531571_))
                    (_g3142531571_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3142531571_)))))
                                        (_g3142531571_))
                                    (_g3142531571_)))
                              (_g3142531571_))))))
              (if (gx#stx-null? _tl3143532122_)
                  (___kont4111841119_ _hd3143432119_ _hd3143132109_)
                  (_g3142531571_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g41996_|
                                                   _hd3143732129_)
                                                  (if (gx#stx-pair/null?
                                                       _tl3143832132_)
                                                      (let ((___splice4111241113_
                                                             (gx#syntax-split-splice
                                                              _tl3143832132_
                                                              '0)))
                                                        (let ((_tl3146532028_
                                                               (##vector-ref
                                                                ___splice4111241113_
                                                                '1))
                                                              (_target3146332025_
                                                               (##vector-ref
                                                                ___splice4111241113_
                                                                '0)))
                                                          (if (gx#stx-null?
                                                               _tl3146532028_)
                                                              (___match4118641187_
                                                               _e3143032105_
                                                               _hd3143132109_
                                                               _tl3143232112_
                                                               _e3143332115_
                                                               _hd3143432119_
                                                               _tl3143532122_
                                                               _e3143632125_
                                                               _hd3143732129_
                                                               _tl3143832132_
                                                               ___splice4111241113_
                                                               _target3146332025_
                                                               _tl3146532028_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl3143532122_)
                          (let ((_e3150131881_ (gx#syntax-e _tl3143532122_)))
                            (let ((_tl3150331888_ (##cdr _e3150131881_))
                                  (_hd3150231885_ (##car _e3150131881_)))
                              (if (gx#stx-null? _tl3150331888_)
                                  (___kont4111641117_
                                   _hd3150231885_
                                   _hd3143432119_)
                                  (if (gx#identifier? _hd3150231885_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g41993_|
                                           _hd3150231885_)
                                          (if (gx#stx-pair? _tl3150331888_)
                                              (let ((_e3152431781_
                                                     (gx#syntax-e
                                                      _tl3150331888_)))
                                                (let ((_tl3152631788_
                                                       (##cdr _e3152431781_))
                                                      (_hd3152531785_
                                                       (##car _e3152431781_)))
                                                  (if (gx#stx-null?
                                                       _tl3152631788_)
                                                      (___kont4112041121_
                                                       _hd3152531785_
                                                       _hd3143432119_
                                                       _hd3143132109_)
                                                      (_g3142531571_))))
                                              (_g3142531571_))
                                          (_g3142531571_))
                                      (if (gx#stx-datum? _hd3150231885_)
                                          (let ((_e3153931708_
                                                 (gx#stx-e _hd3150231885_)))
                                            (if (equal? _e3153931708_ '::)
                                                (if (gx#stx-pair?
                                                     _tl3150331888_)
                                                    (let ((_e3154031712_
                                                           (gx#syntax-e
                                                            _tl3150331888_)))
                                                      (let ((_tl3154231719_
                                                             (##cdr _e3154031712_))
                                                            (_hd3154131716_
                                                             (##car _e3154031712_)))
                                                        (if (gx#stx-null?
                                                             _tl3154231719_)
                                                            (___kont4112241123_
                                                             _hd3154131716_
                                                             _hd3143432119_
                                                             _hd3143132109_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3154231719_)
                        (let ((_e3156031622_ (gx#syntax-e _tl3154231719_)))
                          (let ((_tl3156231629_ (##cdr _e3156031622_))
                                (_hd3156131626_ (##car _e3156031622_)))
                            (if (gx#identifier? _hd3156131626_)
                                (if (gx#free-identifier=?
                                     |gerbil/core$<match>[1]#_g41994_|
                                     _hd3156131626_)
                                    (if (gx#stx-pair? _tl3156231629_)
                                        (let ((_e3156331632_
                                               (gx#syntax-e _tl3156231629_)))
                                          (let ((_tl3156531639_
                                                 (##cdr _e3156331632_))
                                                (_hd3156431636_
                                                 (##car _e3156331632_)))
                                            (if (gx#stx-null? _tl3156531639_)
                                                (___kont4112441125_
                                                 _hd3156431636_
                                                 _hd3154131716_
                                                 _hd3143432119_
                                                 _hd3143132109_)
                                                (_g3142531571_))))
                                        (_g3142531571_))
                                    (_g3142531571_))
                                (_g3142531571_))))
                        (_g3142531571_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3142531571_))
                                                (_g3142531571_)))
                                          (_g3142531571_))))))
                          (if (gx#stx-null? _tl3143532122_)
                              (___kont4111841119_
                               _hd3143432119_
                               _hd3143132109_)
                              (_g3142531571_))))))
              (if (gx#stx-pair? _tl3143532122_)
                  (let ((_e3150131881_ (gx#syntax-e _tl3143532122_)))
                    (let ((_tl3150331888_ (##cdr _e3150131881_))
                          (_hd3150231885_ (##car _e3150131881_)))
                      (if (gx#stx-null? _tl3150331888_)
                          (___kont4111641117_ _hd3150231885_ _hd3143432119_)
                          (if (gx#identifier? _hd3150231885_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g41993_|
                                   _hd3150231885_)
                                  (if (gx#stx-pair? _tl3150331888_)
                                      (let ((_e3152431781_
                                             (gx#syntax-e _tl3150331888_)))
                                        (let ((_tl3152631788_
                                               (##cdr _e3152431781_))
                                              (_hd3152531785_
                                               (##car _e3152431781_)))
                                          (if (gx#stx-null? _tl3152631788_)
                                              (___kont4112041121_
                                               _hd3152531785_
                                               _hd3143432119_
                                               _hd3143132109_)
                                              (_g3142531571_))))
                                      (_g3142531571_))
                                  (_g3142531571_))
                              (if (gx#stx-datum? _hd3150231885_)
                                  (let ((_e3153931708_
                                         (gx#stx-e _hd3150231885_)))
                                    (if (equal? _e3153931708_ '::)
                                        (if (gx#stx-pair? _tl3150331888_)
                                            (let ((_e3154031712_
                                                   (gx#syntax-e
                                                    _tl3150331888_)))
                                              (let ((_tl3154231719_
                                                     (##cdr _e3154031712_))
                                                    (_hd3154131716_
                                                     (##car _e3154031712_)))
                                                (if (gx#stx-null?
                                                     _tl3154231719_)
                                                    (___kont4112241123_
                                                     _hd3154131716_
                                                     _hd3143432119_
                                                     _hd3143132109_)
                                                    (if (gx#stx-pair?
                                                         _tl3154231719_)
                                                        (let ((_e3156031622_
                                                               (gx#syntax-e
                                                                _tl3154231719_)))
                                                          (let ((_tl3156231629_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3156031622_))
                        (_hd3156131626_ (##car _e3156031622_)))
                    (if (gx#identifier? _hd3156131626_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g41994_|
                             _hd3156131626_)
                            (if (gx#stx-pair? _tl3156231629_)
                                (let ((_e3156331632_
                                       (gx#syntax-e _tl3156231629_)))
                                  (let ((_tl3156531639_ (##cdr _e3156331632_))
                                        (_hd3156431636_ (##car _e3156331632_)))
                                    (if (gx#stx-null? _tl3156531639_)
                                        (___kont4112441125_
                                         _hd3156431636_
                                         _hd3154131716_
                                         _hd3143432119_
                                         _hd3143132109_)
                                        (_g3142531571_))))
                                (_g3142531571_))
                            (_g3142531571_))
                        (_g3142531571_))))
                (_g3142531571_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g3142531571_))
                                        (_g3142531571_)))
                                  (_g3142531571_))))))
                  (if (gx#stx-null? _tl3143532122_)
                      (___kont4111841119_ _hd3143432119_ _hd3143132109_)
                      (_g3142531571_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g41997_|
                                                       _hd3143732129_)
                                                      (if (gx#stx-pair?
                                                           _tl3143832132_)
                                                          (let ((_e3148731945_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3143832132_)))
                    (let ((_tl3148931952_ (##cdr _e3148731945_))
                          (_hd3148831949_ (##car _e3148731945_)))
                      (if (gx#stx-null? _tl3148931952_)
                          (if (gx#stx-pair? _tl3143532122_)
                              (let ((_e3149031955_
                                     (gx#syntax-e _tl3143532122_)))
                                (let ((_tl3149231962_ (##cdr _e3149031955_))
                                      (_hd3149131959_ (##car _e3149031955_)))
                                  (if (gx#stx-null? _tl3149231962_)
                                      (___kont4111441115_
                                       _hd3149131959_
                                       _hd3148831949_
                                       _hd3143132109_)
                                      (if (gx#identifier? _hd3149131959_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g41993_|
                                               _hd3149131959_)
                                              (if (gx#stx-pair? _tl3149231962_)
                                                  (let ((_e3152431781_
                                                         (gx#syntax-e
                                                          _tl3149231962_)))
                                                    (let ((_tl3152631788_
                                                           (##cdr _e3152431781_))
                                                          (_hd3152531785_
                                                           (##car _e3152431781_)))
                                                      (if (gx#stx-null?
                                                           _tl3152631788_)
                                                          (___kont4112041121_
                                                           _hd3152531785_
                                                           _hd3143432119_
                                                           _hd3143132109_)
                                                          (_g3142531571_))))
                                                  (_g3142531571_))
                                              (_g3142531571_))
                                          (if (gx#stx-datum? _hd3149131959_)
                                              (let ((_e3153931708_
                                                     (gx#stx-e
                                                      _hd3149131959_)))
                                                (if (equal? _e3153931708_ '::)
                                                    (if (gx#stx-pair?
                                                         _tl3149231962_)
                                                        (let ((_e3154031712_
                                                               (gx#syntax-e
                                                                _tl3149231962_)))
                                                          (let ((_tl3154231719_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3154031712_))
                        (_hd3154131716_ (##car _e3154031712_)))
                    (if (gx#stx-null? _tl3154231719_)
                        (___kont4112241123_
                         _hd3154131716_
                         _hd3143432119_
                         _hd3143132109_)
                        (if (gx#stx-pair? _tl3154231719_)
                            (let ((_e3156031622_ (gx#syntax-e _tl3154231719_)))
                              (let ((_tl3156231629_ (##cdr _e3156031622_))
                                    (_hd3156131626_ (##car _e3156031622_)))
                                (if (gx#identifier? _hd3156131626_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<match>[1]#_g41994_|
                                         _hd3156131626_)
                                        (if (gx#stx-pair? _tl3156231629_)
                                            (let ((_e3156331632_
                                                   (gx#syntax-e
                                                    _tl3156231629_)))
                                              (let ((_tl3156531639_
                                                     (##cdr _e3156331632_))
                                                    (_hd3156431636_
                                                     (##car _e3156331632_)))
                                                (if (gx#stx-null?
                                                     _tl3156531639_)
                                                    (___kont4112441125_
                                                     _hd3156431636_
                                                     _hd3154131716_
                                                     _hd3143432119_
                                                     _hd3143132109_)
                                                    (_g3142531571_))))
                                            (_g3142531571_))
                                        (_g3142531571_))
                                    (_g3142531571_))))
                            (_g3142531571_)))))
                (_g3142531571_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3142531571_)))
                                              (_g3142531571_))))))
                              (if (gx#stx-null? _tl3143532122_)
                                  (___kont4111841119_
                                   _hd3143432119_
                                   _hd3143132109_)
                                  (_g3142531571_)))
                          (if (gx#stx-pair? _tl3143532122_)
                              (let ((_e3150131881_
                                     (gx#syntax-e _tl3143532122_)))
                                (let ((_tl3150331888_ (##cdr _e3150131881_))
                                      (_hd3150231885_ (##car _e3150131881_)))
                                  (if (gx#stx-null? _tl3150331888_)
                                      (___kont4111641117_
                                       _hd3150231885_
                                       _hd3143432119_)
                                      (if (gx#identifier? _hd3150231885_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g41993_|
                                               _hd3150231885_)
                                              (if (gx#stx-pair? _tl3150331888_)
                                                  (let ((_e3152431781_
                                                         (gx#syntax-e
                                                          _tl3150331888_)))
                                                    (let ((_tl3152631788_
                                                           (##cdr _e3152431781_))
                                                          (_hd3152531785_
                                                           (##car _e3152431781_)))
                                                      (if (gx#stx-null?
                                                           _tl3152631788_)
                                                          (___kont4112041121_
                                                           _hd3152531785_
                                                           _hd3143432119_
                                                           _hd3143132109_)
                                                          (_g3142531571_))))
                                                  (_g3142531571_))
                                              (_g3142531571_))
                                          (if (gx#stx-datum? _hd3150231885_)
                                              (let ((_e3153931708_
                                                     (gx#stx-e
                                                      _hd3150231885_)))
                                                (if (equal? _e3153931708_ '::)
                                                    (if (gx#stx-pair?
                                                         _tl3150331888_)
                                                        (let ((_e3154031712_
                                                               (gx#syntax-e
                                                                _tl3150331888_)))
                                                          (let ((_tl3154231719_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3154031712_))
                        (_hd3154131716_ (##car _e3154031712_)))
                    (if (gx#stx-null? _tl3154231719_)
                        (___kont4112241123_
                         _hd3154131716_
                         _hd3143432119_
                         _hd3143132109_)
                        (if (gx#stx-pair? _tl3154231719_)
                            (let ((_e3156031622_ (gx#syntax-e _tl3154231719_)))
                              (let ((_tl3156231629_ (##cdr _e3156031622_))
                                    (_hd3156131626_ (##car _e3156031622_)))
                                (if (gx#identifier? _hd3156131626_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<match>[1]#_g41994_|
                                         _hd3156131626_)
                                        (if (gx#stx-pair? _tl3156231629_)
                                            (let ((_e3156331632_
                                                   (gx#syntax-e
                                                    _tl3156231629_)))
                                              (let ((_tl3156531639_
                                                     (##cdr _e3156331632_))
                                                    (_hd3156431636_
                                                     (##car _e3156331632_)))
                                                (if (gx#stx-null?
                                                     _tl3156531639_)
                                                    (___kont4112441125_
                                                     _hd3156431636_
                                                     _hd3154131716_
                                                     _hd3143432119_
                                                     _hd3143132109_)
                                                    (_g3142531571_))))
                                            (_g3142531571_))
                                        (_g3142531571_))
                                    (_g3142531571_))))
                            (_g3142531571_)))))
                (_g3142531571_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3142531571_)))
                                              (_g3142531571_))))))
                              (if (gx#stx-null? _tl3143532122_)
                                  (___kont4111841119_
                                   _hd3143432119_
                                   _hd3143132109_)
                                  (_g3142531571_))))))
                  (if (gx#stx-pair? _tl3143532122_)
                      (let ((_e3150131881_ (gx#syntax-e _tl3143532122_)))
                        (let ((_tl3150331888_ (##cdr _e3150131881_))
                              (_hd3150231885_ (##car _e3150131881_)))
                          (if (gx#stx-null? _tl3150331888_)
                              (___kont4111641117_
                               _hd3150231885_
                               _hd3143432119_)
                              (if (gx#identifier? _hd3150231885_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g41993_|
                                       _hd3150231885_)
                                      (if (gx#stx-pair? _tl3150331888_)
                                          (let ((_e3152431781_
                                                 (gx#syntax-e _tl3150331888_)))
                                            (let ((_tl3152631788_
                                                   (##cdr _e3152431781_))
                                                  (_hd3152531785_
                                                   (##car _e3152431781_)))
                                              (if (gx#stx-null? _tl3152631788_)
                                                  (___kont4112041121_
                                                   _hd3152531785_
                                                   _hd3143432119_
                                                   _hd3143132109_)
                                                  (_g3142531571_))))
                                          (_g3142531571_))
                                      (_g3142531571_))
                                  (if (gx#stx-datum? _hd3150231885_)
                                      (let ((_e3153931708_
                                             (gx#stx-e _hd3150231885_)))
                                        (if (equal? _e3153931708_ '::)
                                            (if (gx#stx-pair? _tl3150331888_)
                                                (let ((_e3154031712_
                                                       (gx#syntax-e
                                                        _tl3150331888_)))
                                                  (let ((_tl3154231719_
                                                         (##cdr _e3154031712_))
                                                        (_hd3154131716_
                                                         (##car _e3154031712_)))
                                                    (if (gx#stx-null?
                                                         _tl3154231719_)
                                                        (___kont4112241123_
                                                         _hd3154131716_
                                                         _hd3143432119_
                                                         _hd3143132109_)
                                                        (if (gx#stx-pair?
                                                             _tl3154231719_)
                                                            (let ((_e3156031622_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3154231719_)))
                      (let ((_tl3156231629_ (##cdr _e3156031622_))
                            (_hd3156131626_ (##car _e3156031622_)))
                        (if (gx#identifier? _hd3156131626_)
                            (if (gx#free-identifier=?
                                 |gerbil/core$<match>[1]#_g41994_|
                                 _hd3156131626_)
                                (if (gx#stx-pair? _tl3156231629_)
                                    (let ((_e3156331632_
                                           (gx#syntax-e _tl3156231629_)))
                                      (let ((_tl3156531639_
                                             (##cdr _e3156331632_))
                                            (_hd3156431636_
                                             (##car _e3156331632_)))
                                        (if (gx#stx-null? _tl3156531639_)
                                            (___kont4112441125_
                                             _hd3156431636_
                                             _hd3154131716_
                                             _hd3143432119_
                                             _hd3143132109_)
                                            (_g3142531571_))))
                                    (_g3142531571_))
                                (_g3142531571_))
                            (_g3142531571_))))
                    (_g3142531571_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3142531571_))
                                            (_g3142531571_)))
                                      (_g3142531571_))))))
                      (if (gx#stx-null? _tl3143532122_)
                          (___kont4111841119_ _hd3143432119_ _hd3143132109_)
                          (_g3142531571_))))
              (if (gx#stx-pair? _tl3143532122_)
                  (let ((_e3150131881_ (gx#syntax-e _tl3143532122_)))
                    (let ((_tl3150331888_ (##cdr _e3150131881_))
                          (_hd3150231885_ (##car _e3150131881_)))
                      (if (gx#stx-null? _tl3150331888_)
                          (___kont4111641117_ _hd3150231885_ _hd3143432119_)
                          (if (gx#identifier? _hd3150231885_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g41993_|
                                   _hd3150231885_)
                                  (if (gx#stx-pair? _tl3150331888_)
                                      (let ((_e3152431781_
                                             (gx#syntax-e _tl3150331888_)))
                                        (let ((_tl3152631788_
                                               (##cdr _e3152431781_))
                                              (_hd3152531785_
                                               (##car _e3152431781_)))
                                          (if (gx#stx-null? _tl3152631788_)
                                              (___kont4112041121_
                                               _hd3152531785_
                                               _hd3143432119_
                                               _hd3143132109_)
                                              (_g3142531571_))))
                                      (_g3142531571_))
                                  (_g3142531571_))
                              (if (gx#stx-datum? _hd3150231885_)
                                  (let ((_e3153931708_
                                         (gx#stx-e _hd3150231885_)))
                                    (if (equal? _e3153931708_ '::)
                                        (if (gx#stx-pair? _tl3150331888_)
                                            (let ((_e3154031712_
                                                   (gx#syntax-e
                                                    _tl3150331888_)))
                                              (let ((_tl3154231719_
                                                     (##cdr _e3154031712_))
                                                    (_hd3154131716_
                                                     (##car _e3154031712_)))
                                                (if (gx#stx-null?
                                                     _tl3154231719_)
                                                    (___kont4112241123_
                                                     _hd3154131716_
                                                     _hd3143432119_
                                                     _hd3143132109_)
                                                    (if (gx#stx-pair?
                                                         _tl3154231719_)
                                                        (let ((_e3156031622_
                                                               (gx#syntax-e
                                                                _tl3154231719_)))
                                                          (let ((_tl3156231629_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3156031622_))
                        (_hd3156131626_ (##car _e3156031622_)))
                    (if (gx#identifier? _hd3156131626_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g41994_|
                             _hd3156131626_)
                            (if (gx#stx-pair? _tl3156231629_)
                                (let ((_e3156331632_
                                       (gx#syntax-e _tl3156231629_)))
                                  (let ((_tl3156531639_ (##cdr _e3156331632_))
                                        (_hd3156431636_ (##car _e3156331632_)))
                                    (if (gx#stx-null? _tl3156531639_)
                                        (___kont4112441125_
                                         _hd3156431636_
                                         _hd3154131716_
                                         _hd3143432119_
                                         _hd3143132109_)
                                        (_g3142531571_))))
                                (_g3142531571_))
                            (_g3142531571_))
                        (_g3142531571_))))
                (_g3142531571_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g3142531571_))
                                        (_g3142531571_)))
                                  (_g3142531571_))))))
                  (if (gx#stx-null? _tl3143532122_)
                      (___kont4111841119_ _hd3143432119_ _hd3143132109_)
                      (_g3142531571_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl3143532122_)
                                              (let ((_e3150131881_
                                                     (gx#syntax-e
                                                      _tl3143532122_)))
                                                (let ((_tl3150331888_
                                                       (##cdr _e3150131881_))
                                                      (_hd3150231885_
                                                       (##car _e3150131881_)))
                                                  (if (gx#stx-null?
                                                       _tl3150331888_)
                                                      (___kont4111641117_
                                                       _hd3150231885_
                                                       _hd3143432119_)
                                                      (if (gx#identifier?
                                                           _hd3150231885_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core$<match>[1]#_g41993_|
                                                               _hd3150231885_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl3150331888_)
                          (let ((_e3152431781_ (gx#syntax-e _tl3150331888_)))
                            (let ((_tl3152631788_ (##cdr _e3152431781_))
                                  (_hd3152531785_ (##car _e3152431781_)))
                              (if (gx#stx-null? _tl3152631788_)
                                  (___kont4112041121_
                                   _hd3152531785_
                                   _hd3143432119_
                                   _hd3143132109_)
                                  (_g3142531571_))))
                          (_g3142531571_))
                      (_g3142531571_))
                  (if (gx#stx-datum? _hd3150231885_)
                      (let ((_e3153931708_ (gx#stx-e _hd3150231885_)))
                        (if (equal? _e3153931708_ '::)
                            (if (gx#stx-pair? _tl3150331888_)
                                (let ((_e3154031712_
                                       (gx#syntax-e _tl3150331888_)))
                                  (let ((_tl3154231719_ (##cdr _e3154031712_))
                                        (_hd3154131716_ (##car _e3154031712_)))
                                    (if (gx#stx-null? _tl3154231719_)
                                        (___kont4112241123_
                                         _hd3154131716_
                                         _hd3143432119_
                                         _hd3143132109_)
                                        (if (gx#stx-pair? _tl3154231719_)
                                            (let ((_e3156031622_
                                                   (gx#syntax-e
                                                    _tl3154231719_)))
                                              (let ((_tl3156231629_
                                                     (##cdr _e3156031622_))
                                                    (_hd3156131626_
                                                     (##car _e3156031622_)))
                                                (if (gx#identifier?
                                                     _hd3156131626_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core$<match>[1]#_g41994_|
                                                         _hd3156131626_)
                                                        (if (gx#stx-pair?
                                                             _tl3156231629_)
                                                            (let ((_e3156331632_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3156231629_)))
                      (let ((_tl3156531639_ (##cdr _e3156331632_))
                            (_hd3156431636_ (##car _e3156331632_)))
                        (if (gx#stx-null? _tl3156531639_)
                            (___kont4112441125_
                             _hd3156431636_
                             _hd3154131716_
                             _hd3143432119_
                             _hd3143132109_)
                            (_g3142531571_))))
                    (_g3142531571_))
                (_g3142531571_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3142531571_))))
                                            (_g3142531571_)))))
                                (_g3142531571_))
                            (_g3142531571_)))
                      (_g3142531571_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null? _tl3143532122_)
                                                  (___kont4111841119_
                                                   _hd3143432119_
                                                   _hd3143132109_)
                                                  (_g3142531571_))))))
                                  (if (gx#stx-pair? _tl3143532122_)
                                      (let ((_e3150131881_
                                             (gx#syntax-e _tl3143532122_)))
                                        (let ((_tl3150331888_
                                               (##cdr _e3150131881_))
                                              (_hd3150231885_
                                               (##car _e3150131881_)))
                                          (if (gx#stx-null? _tl3150331888_)
                                              (___kont4111641117_
                                               _hd3150231885_
                                               _hd3143432119_)
                                              (if (gx#identifier?
                                                   _hd3150231885_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g41993_|
                                                       _hd3150231885_)
                                                      (if (gx#stx-pair?
                                                           _tl3150331888_)
                                                          (let ((_e3152431781_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3150331888_)))
                    (let ((_tl3152631788_ (##cdr _e3152431781_))
                          (_hd3152531785_ (##car _e3152431781_)))
                      (if (gx#stx-null? _tl3152631788_)
                          (___kont4112041121_
                           _hd3152531785_
                           _hd3143432119_
                           _hd3143132109_)
                          (_g3142531571_))))
                  (_g3142531571_))
              (_g3142531571_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-datum?
                                                       _hd3150231885_)
                                                      (let ((_e3153931708_
                                                             (gx#stx-e
                                                              _hd3150231885_)))
                                                        (if (equal? _e3153931708_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '::)
                    (if (gx#stx-pair? _tl3150331888_)
                        (let ((_e3154031712_ (gx#syntax-e _tl3150331888_)))
                          (let ((_tl3154231719_ (##cdr _e3154031712_))
                                (_hd3154131716_ (##car _e3154031712_)))
                            (if (gx#stx-null? _tl3154231719_)
                                (___kont4112241123_
                                 _hd3154131716_
                                 _hd3143432119_
                                 _hd3143132109_)
                                (if (gx#stx-pair? _tl3154231719_)
                                    (let ((_e3156031622_
                                           (gx#syntax-e _tl3154231719_)))
                                      (let ((_tl3156231629_
                                             (##cdr _e3156031622_))
                                            (_hd3156131626_
                                             (##car _e3156031622_)))
                                        (if (gx#identifier? _hd3156131626_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core$<match>[1]#_g41994_|
                                                 _hd3156131626_)
                                                (if (gx#stx-pair?
                                                     _tl3156231629_)
                                                    (let ((_e3156331632_
                                                           (gx#syntax-e
                                                            _tl3156231629_)))
                                                      (let ((_tl3156531639_
                                                             (##cdr _e3156331632_))
                                                            (_hd3156431636_
                                                             (##car _e3156331632_)))
                                                        (if (gx#stx-null?
                                                             _tl3156531639_)
                                                            (___kont4112441125_
                                                             _hd3156431636_
                                                             _hd3154131716_
                                                             _hd3143432119_
                                                             _hd3143132109_)
                                                            (_g3142531571_))))
                                                    (_g3142531571_))
                                                (_g3142531571_))
                                            (_g3142531571_))))
                                    (_g3142531571_)))))
                        (_g3142531571_))
                    (_g3142531571_)))
              (_g3142531571_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-null? _tl3143532122_)
                                          (___kont4111841119_
                                           _hd3143432119_
                                           _hd3143132109_)
                                          (_g3142531571_))))))
                          (_g3142531571_))))
                  (_g3142531571_)))))))
    (define |gerbil/core$<match>[:0:]#defsyntax-for-match|
      (lambda (_$stx32214_)
        (let* ((___stx4137141372_ _$stx32214_)
               (_g3221932253_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx4137141372_))))
          (let ((___kont4137441375_
                 (lambda (_L32357_ _L32359_ _L32360_)
                   (cons (gx#datum->syntax '#f 'defsyntax)
                         (cons _L32360_
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
                                       (cons _L32359_ '()))
                                 (cons (cons (gx#datum->syntax '#f '$macro-e)
                                             (cons _L32357_ '()))
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
                (___kont4137641377_
                 (lambda (_L32290_ _L32292_ _L32293_)
                   (cons _L32293_
                         (cons _L32292_
                               (cons _L32290_
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
            (let ((___match4140441405_
                   (lambda (_e3222432317_
                            _hd3222532321_
                            _tl3222632324_
                            _e3222732327_
                            _hd3222832331_
                            _tl3222932334_
                            _e3223032337_
                            _hd3223132341_
                            _tl3223232344_
                            _e3223332347_
                            _hd3223432351_
                            _tl3223532354_)
                     (let ((_L32357_ _hd3223432351_)
                           (_L32359_ _hd3223132341_)
                           (_L32360_ _hd3222832331_))
                       (if (gx#identifier? _L32360_)
                           (___kont4137441375_ _L32357_ _L32359_ _L32360_)
                           (_g3221932253_))))))
              (if (gx#stx-pair? ___stx4137141372_)
                  (let ((_e3222432317_ (gx#syntax-e ___stx4137141372_)))
                    (let ((_tl3222632324_ (##cdr _e3222432317_))
                          (_hd3222532321_ (##car _e3222432317_)))
                      (if (gx#stx-pair? _tl3222632324_)
                          (let ((_e3222732327_ (gx#syntax-e _tl3222632324_)))
                            (let ((_tl3222932334_ (##cdr _e3222732327_))
                                  (_hd3222832331_ (##car _e3222732327_)))
                              (if (gx#stx-pair? _tl3222932334_)
                                  (let ((_e3223032337_
                                         (gx#syntax-e _tl3222932334_)))
                                    (let ((_tl3223232344_
                                           (##cdr _e3223032337_))
                                          (_hd3223132341_
                                           (##car _e3223032337_)))
                                      (if (gx#stx-pair? _tl3223232344_)
                                          (let ((_e3223332347_
                                                 (gx#syntax-e _tl3223232344_)))
                                            (let ((_tl3223532354_
                                                   (##cdr _e3223332347_))
                                                  (_hd3223432351_
                                                   (##car _e3223332347_)))
                                              (if (gx#stx-null? _tl3223532354_)
                                                  (___match4140441405_
                                                   _e3222432317_
                                                   _hd3222532321_
                                                   _tl3222632324_
                                                   _e3222732327_
                                                   _hd3222832331_
                                                   _tl3222932334_
                                                   _e3223032337_
                                                   _hd3223132341_
                                                   _tl3223232344_
                                                   _e3223332347_
                                                   _hd3223432351_
                                                   _tl3223532354_)
                                                  (_g3221932253_))))
                                          (if (gx#stx-null? _tl3223232344_)
                                              (___kont4137641377_
                                               _hd3223132341_
                                               _hd3222832331_
                                               _hd3222532321_)
                                              (_g3221932253_)))))
                                  (_g3221932253_))))
                          (_g3221932253_))))
                  (_g3221932253_)))))))
    (define |gerbil/core$<match>[:0:]#defrules-for-match|
      (lambda (_$stx32382_)
        (let* ((_g3238632401_
                (lambda (_g3238732397_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g3238732397_)))
               (_g3238532444_
                (lambda (_g3238732405_)
                  (if (gx#stx-pair? _g3238732405_)
                      (let ((_e3239032408_ (gx#syntax-e _g3238732405_)))
                        (let ((_hd3239132412_ (##car _e3239032408_))
                              (_tl3239232415_ (##cdr _e3239032408_)))
                          (if (gx#stx-pair? _tl3239232415_)
                              (let ((_e3239332418_
                                     (gx#syntax-e _tl3239232415_)))
                                (let ((_hd3239432422_ (##car _e3239332418_))
                                      (_tl3239532425_ (##cdr _e3239332418_)))
                                  ((lambda (_L32428_ _L32430_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'defsyntax-for-match)
                                           (cons _L32430_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'syntax-rules)
                                                             _L32428_)
                                                       '()))))
                                   _tl3239532425_
                                   _hd3239432422_)))
                              (_g3238632401_ _g3238732405_))))
                      (_g3238632401_ _g3238732405_)))))
          (_g3238532444_ _$stx32382_))))))
