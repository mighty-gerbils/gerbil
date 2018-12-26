(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<match>[1]#_g41902_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41903_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41904_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g41905_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g41906_|
    (##structure
     gx#syntax-quote::t
     'apply
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g41907_|
    (##structure gx#syntax-quote::t '? #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41908_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41909_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41910_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41911_|
    (##structure
     gx#syntax-quote::t
     'cons
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g41912_|
    (##structure
     gx#syntax-quote::t
     'cons*
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g41913_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g41914_|
    (##structure gx#syntax-quote::t 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41915_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g41916_|
    (##structure
     gx#syntax-quote::t
     'vector
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g41925_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g41930_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g41931_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41932_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g41937_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41938_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41939_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41940_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g41941_|
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
      (lambda _$args30039_
        (apply make-class-instance
               |gerbil/core$<match>[1]#match-macro::t|
               _$args30039_)))
    (define |gerbil/core$<match>[1]#syntax-local-match-macro?|
      (lambda (_stx30036_)
        (if (gx#identifier? _stx30036_)
            (|gerbil/core$<match>[1]#match-macro?|
             (gx#syntax-local-value _stx30036_ false))
            '#f)))
    (define |gerbil/core$<match>[1]#parse-match-pattern__%|
      (lambda (_stx28342_ _match-stx28344_)
        (letrec ((_parse128346_
                  (lambda (_hd28699_)
                    (let* ((___stx3917139172_ _hd28699_)
                           (_g2872528867_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3917139172_))))
                      (let ((___kont3917439175_
                             (lambda (_L29799_ _L29801_)
                               (let* ((___stx3909139092_ _L29799_)
                                      (_g2981829851_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx3909139092_))))
                                 (let ((___kont3909439095_
                                        (lambda ()
                                          (cons '?: (cons _L29801_ '()))))
                                       (___kont3909639097_
                                        (lambda (_L29992_)
                                          (cons '?:
                                                (cons _L29801_
                                                      (cons (_parse128346_
                                                             _L29992_)
                                                            '())))))
                                       (___kont3909839099_
                                        (lambda (_L29962_)
                                          (cons '?:
                                                (cons _L29801_
                                                      (cons '=>:
                                                            (cons (_parse128346_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L29962_)
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (___kont3910039101_
                                        (lambda (_L29913_ _L29915_)
                                          (cons '?:
                                                (cons _L29801_
                                                      (cons '::
                                                            (cons _L29915_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '=>: (cons (_parse128346_ _L29913_) '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (___kont3910239103_
                                        (lambda ()
                                          (_parse-error28353_ _hd28699_))))
                                   (let ((_g2981430003_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 ___stx3909139092_)
                                                (let ((_e2982129982_
                                                       (gx#syntax-e
                                                        ___stx3909139092_)))
                                                  (let ((_tl2982329989_
                                                         (##cdr _e2982129982_))
                                                        (_hd2982229986_
                                                         (##car _e2982129982_)))
                                                    (if (gx#stx-null?
                                                         _tl2982329989_)
                                                        (___kont3909639097_
                                                         _hd2982229986_)
                                                        (if (gx#identifier?
                                                             _hd2982229986_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core$<match>[1]#_g41902_|
                         _hd2982229986_)
                        (if (gx#stx-pair? _tl2982329989_)
                            (let ((_e2982829952_ (gx#syntax-e _tl2982329989_)))
                              (let ((_tl2983029959_ (##cdr _e2982829952_))
                                    (_hd2982929956_ (##car _e2982829952_)))
                                (if (gx#stx-null? _tl2983029959_)
                                    (___kont3909839099_ _hd2982929956_)
                                    (___kont3910239103_))))
                            (___kont3910239103_))
                        (___kont3910239103_))
                    (if (gx#stx-datum? _hd2982229986_)
                        (let ((_e2983629879_ (gx#stx-e _hd2982229986_)))
                          (if (equal? _e2983629879_ '::)
                              (if (gx#stx-pair? _tl2982329989_)
                                  (let ((_e2983729883_
                                         (gx#syntax-e _tl2982329989_)))
                                    (let ((_tl2983929890_
                                           (##cdr _e2983729883_))
                                          (_hd2983829887_
                                           (##car _e2983729883_)))
                                      (if (gx#stx-pair? _tl2983929890_)
                                          (let ((_e2984029893_
                                                 (gx#syntax-e _tl2983929890_)))
                                            (let ((_tl2984229900_
                                                   (##cdr _e2984029893_))
                                                  (_hd2984129897_
                                                   (##car _e2984029893_)))
                                              (if (gx#identifier?
                                                   _hd2984129897_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g41903_|
                                                       _hd2984129897_)
                                                      (if (gx#stx-pair?
                                                           _tl2984229900_)
                                                          (let ((_e2984329903_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2984229900_)))
                    (let ((_tl2984529910_ (##cdr _e2984329903_))
                          (_hd2984429907_ (##car _e2984329903_)))
                      (if (gx#stx-null? _tl2984529910_)
                          (___kont3910039101_ _hd2984429907_ _hd2983829887_)
                          (___kont3910239103_))))
                  (___kont3910239103_))
              (___kont3910239103_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont3910239103_))))
                                          (___kont3910239103_))))
                                  (___kont3910239103_))
                              (___kont3910239103_)))
                        (___kont3910239103_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont3910239103_)))))
                                     (if (gx#stx-null? ___stx3909139092_)
                                         (___kont3909439095_)
                                         (_g2981430003_)))))))
                            (___kont3917639177_
                             (lambda (_L29704_)
                               (let* ((___stx3907339074_ _L29704_)
                                      (_g2971629727_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx3907339074_))))
                                 (let ((___kont3907639077_
                                        (lambda (_L29755_)
                                          (_parse128346_ _L29755_)))
                                       (___kont3907839079_
                                        (lambda ()
                                          (cons 'and:
                                                (gx#stx-map
                                                 _parse128346_
                                                 _L29704_)))))
                                   (if (gx#stx-pair? ___stx3907339074_)
                                       (let ((_e2971929745_
                                              (gx#syntax-e ___stx3907339074_)))
                                         (let ((_tl2972129752_
                                                (##cdr _e2971929745_))
                                               (_hd2972029749_
                                                (##car _e2971929745_)))
                                           (if (gx#stx-null? _tl2972129752_)
                                               (___kont3907639077_
                                                _hd2972029749_)
                                               (___kont3907839079_))))
                                       (___kont3907839079_))))))
                            (___kont3917839179_
                             (lambda (_L29619_)
                               (let* ((___stx3905539056_ _L29619_)
                                      (_g2963129642_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx3905539056_))))
                                 (let ((___kont3905839059_
                                        (lambda (_L29670_)
                                          (_parse128346_ _L29670_)))
                                       (___kont3906039061_
                                        (lambda ()
                                          (cons 'or:
                                                (gx#stx-map
                                                 _parse128346_
                                                 _L29619_)))))
                                   (if (gx#stx-pair? ___stx3905539056_)
                                       (let ((_e2963429660_
                                              (gx#syntax-e ___stx3905539056_)))
                                         (let ((_tl2963629667_
                                                (##cdr _e2963429660_))
                                               (_hd2963529664_
                                                (##car _e2963429660_)))
                                           (if (gx#stx-null? _tl2963629667_)
                                               (___kont3905839059_
                                                _hd2963529664_)
                                               (___kont3906039061_))))
                                       (___kont3906039061_))))))
                            (___kont3918039181_
                             (lambda (_L29589_)
                               (cons 'not:
                                     (cons (_parse128346_ _L29589_) '()))))
                            (___kont3918239183_
                             (lambda (_L29545_ _L29547_)
                               (cons 'cons:
                                     (cons (_parse128346_ _L29547_)
                                           (cons (_parse128346_ _L29545_)
                                                 '())))))
                            (___kont3918439185_
                             (lambda (_L29489_ _L29491_ _L29492_)
                               (if (gx#stx-null? _L29489_)
                                   (cons 'cons:
                                         (cons (_parse128346_ _L29492_)
                                               (cons (_parse128346_ _L29491_)
                                                     '())))
                                   (cons 'cons:
                                         (cons (_parse128346_ _L29492_)
                                               (cons (_parse128346_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'cons*)
                                                            (cons _L29491_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L29489_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                            (___kont3918639187_
                             (lambda (_L29441_) (_parse-list28348_ _L29441_)))
                            (___kont3918839189_
                             (lambda (_L29411_)
                               (cons 'box:
                                     (cons (_parse128346_ _L29411_) '()))))
                            (___kont3919039191_
                             (lambda (_L29374_)
                               (cons 'box:
                                     (cons (_parse128346_ _L29374_) '()))))
                            (___kont3919239193_
                             (lambda (_L29350_) (_parse128346_ _L29350_)))
                            (___kont3919439195_
                             (lambda (_L29312_)
                               (cons 'values:
                                     (cons (_parse-vector28349_ _L29312_)
                                           '()))))
                            (___kont3919639197_
                             (lambda (_L29284_)
                               (cons 'vector:
                                     (cons (_parse-vector28349_ _L29284_)
                                           '()))))
                            (___kont3919839199_
                             (lambda (_L29245_)
                               (cons 'vector:
                                     (cons (_parse-vector28349_
                                            (foldr (lambda (_g2925829261_
                                                            _g2925929264_)
                                                     (cons _g2925829261_
                                                           _g2925929264_))
                                                   '()
                                                   _L29245_))
                                           '()))))
                            (___kont3920239203_
                             (lambda (_L29191_ _L29193_)
                               (cons 'struct:
                                     (cons (gx#syntax-local-value _L29193_)
                                           (cons (_parse-vector28349_ _L29191_)
                                                 '())))))
                            (___kont3920439205_
                             (lambda (_L29161_ _L29163_)
                               (cons 'class:
                                     (cons (gx#syntax-local-value _L29163_)
                                           (cons (_parse-class-body28351_
                                                  _L29161_)
                                                 '())))))
                            (___kont3920639207_
                             (lambda (_L29121_ _L29123_)
                               (cons '?:
                                     (cons (cons (gx#datum->syntax '#f 'cut)
                                                 (cons _L29123_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '<>)
                                                             (cons _L29121_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                            (___kont3920839209_
                             (lambda (_L29081_)
                               (cons 'datum: (cons (gx#stx-e _L29081_) '()))))
                            (___kont3921039211_
                             (lambda (_L29041_) (_parse-qq28352_ _L29041_)))
                            (___kont3921239213_
                             (lambda (_L28997_ _L28999_)
                               (cons 'apply:
                                     (cons _L28999_
                                           (cons (_parse128346_ _L28997_)
                                                 '())))))
                            (___kont3921439215_
                             (lambda (_L28945_)
                               (_parse128346_
                                (gx#core-apply-expander
                                 (gx#syntax-local-e _L28945_)
                                 (gx#stx-wrap-source
                                  (cons 'match: _hd28699_)
                                  (let ((_$e28956_ (gx#stx-source _hd28699_)))
                                    (if _$e28956_
                                        _$e28956_
                                        (gx#stx-source _stx28342_))))))))
                            (___kont3921639217_
                             (lambda (_L28919_) (cons 'any: '())))
                            (___kont3921839219_
                             (lambda (_L28903_)
                               (cons 'var: (cons _L28903_ '()))))
                            (___kont3922039221_
                             (lambda (_L28885_)
                               (cons 'datum: (cons (gx#stx-e _L28885_) '()))))
                            (___kont3922239223_
                             (lambda () (_parse-error28353_ _hd28699_))))
                        (let* ((_g2872328896_
                                (lambda ()
                                  (let ((_L28885_ ___stx3917139172_))
                                    (if (gx#stx-datum? _L28885_)
                                        (___kont3922039221_ _L28885_)
                                        (___kont3922239223_)))))
                               (_g2872228912_
                                (lambda ()
                                  (let ((_L28903_ ___stx3917139172_))
                                    (if (and (gx#identifier? _L28903_)
                                             (not (gx#ellipsis? _L28903_)))
                                        (___kont3921839219_ _L28903_)
                                        (_g2872328896_)))))
                               (_g2872128928_
                                (lambda ()
                                  (let ((_L28919_ ___stx3917139172_))
                                    (if (gx#underscore? _L28919_)
                                        (___kont3921639217_ _L28919_)
                                        (_g2872228912_)))))
                               (___match3949839499_
                                (lambda (_e2885628935_
                                         _hd2885728939_
                                         _tl2885828942_)
                                  (let ((_L28945_ _hd2885728939_))
                                    (if (|gerbil/core$<match>[1]#syntax-local-match-macro?|
                                         _L28945_)
                                        (___kont3921439215_ _L28945_)
                                        (_g2872128928_)))))
                               (___match3943239433_
                                (lambda (_e2882429101_
                                         _hd2882529105_
                                         _tl2882629108_
                                         _e2882729111_
                                         _hd2882829115_
                                         _tl2882929118_)
                                  (let ((_L29121_ _hd2882829115_)
                                        (_L29123_ _hd2882529105_))
                                    (if (and (gx#identifier? _L29123_)
                                             (or (gx#free-identifier=?
                                                  _L29123_
                                                  (gx#datum->syntax '#f 'eq?))
                                                 (gx#free-identifier=?
                                                  _L29123_
                                                  (gx#datum->syntax '#f 'eqv?))
                                                 (gx#free-identifier=?
                                                  _L29123_
                                                  (gx#datum->syntax
                                                   '#f
                                                   'equal?))))
                                        (___kont3920639207_ _L29121_ _L29123_)
                                        (if (gx#identifier? _hd2882529105_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core$<match>[1]#_g41904_|
                                                 _hd2882529105_)
                                                (___kont3920839209_
                                                 _hd2882829115_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core$<match>[1]#_g41905_|
                                                     _hd2882529105_)
                                                    (___kont3921039211_
                                                     _hd2882829115_)
                                                    (___match3949839499_
                                                     _e2882429101_
                                                     _hd2882529105_
                                                     _tl2882629108_)))
                                            (___match3949839499_
                                             _e2882429101_
                                             _hd2882529105_
                                             _tl2882629108_))))))
                               (___match3941839419_
                                (lambda (_e2881929151_
                                         _hd2882029155_
                                         _tl2882129158_)
                                  (let ((_L29161_ _tl2882129158_)
                                        (_L29163_ _hd2882029155_))
                                    (if (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-class-info?|
                                         _L29163_)
                                        (___kont3920439205_ _L29161_ _L29163_)
                                        (if (gx#stx-pair? _tl2882129158_)
                                            (let ((_e2882729111_
                                                   (gx#syntax-e
                                                    _tl2882129158_)))
                                              (let ((_tl2882929118_
                                                     (##cdr _e2882729111_))
                                                    (_hd2882829115_
                                                     (##car _e2882729111_)))
                                                (if (gx#stx-null?
                                                     _tl2882929118_)
                                                    (___match3943239433_
                                                     _e2881929151_
                                                     _hd2882029155_
                                                     _tl2882129158_
                                                     _e2882729111_
                                                     _hd2882829115_
                                                     _tl2882929118_)
                                                    (if (gx#identifier?
                                                         _hd2882029155_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core$<match>[1]#_g41904_|
                                                             _hd2882029155_)
                                                            (___match3949839499_
                                                             _e2881929151_
                                                             _hd2882029155_
                                                             _tl2882129158_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core$<match>[1]#_g41905_|
                         _hd2882029155_)
                        (___match3949839499_
                         _e2881929151_
                         _hd2882029155_
                         _tl2882129158_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g41906_|
                             _hd2882029155_)
                            (if (gx#stx-pair? _tl2882929118_)
                                (let ((_e2885228987_
                                       (gx#syntax-e _tl2882929118_)))
                                  (let ((_tl2885428994_ (##cdr _e2885228987_))
                                        (_hd2885328991_ (##car _e2885228987_)))
                                    (if (gx#stx-null? _tl2885428994_)
                                        (___kont3921239213_
                                         _hd2885328991_
                                         _hd2882829115_)
                                        (___match3949839499_
                                         _e2881929151_
                                         _hd2882029155_
                                         _tl2882129158_))))
                                (___match3949839499_
                                 _e2881929151_
                                 _hd2882029155_
                                 _tl2882129158_))
                            (___match3949839499_
                             _e2881929151_
                             _hd2882029155_
                             _tl2882129158_))))
                (___match3949839499_
                 _e2881929151_
                 _hd2882029155_
                 _tl2882129158_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___match3949839499_
                                             _e2881929151_
                                             _hd2882029155_
                                             _tl2882129158_))))))
                               (___match3941239413_
                                (lambda (_e2881429181_
                                         _hd2881529185_
                                         _tl2881629188_)
                                  (let ((_L29191_ _tl2881629188_)
                                        (_L29193_ _hd2881529185_))
                                    (if (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
                                         _L29193_)
                                        (___kont3920239203_ _L29191_ _L29193_)
                                        (___match3941839419_
                                         _e2881429181_
                                         _hd2881529185_
                                         _tl2881629188_)))))
                               (___match3940639407_
                                (lambda (_e2880229211_
                                         ___splice3920039201_
                                         _target2880329215_
                                         _tl2880529218_)
                                  (letrec ((_loop2880629221_
                                            (lambda (_hd2880429225_
                                                     _body2881029228_)
                                              (if (gx#stx-pair? _hd2880429225_)
                                                  (let ((_e2880729231_
                                                         (gx#syntax-e
                                                          _hd2880429225_)))
                                                    (let ((_lp-tl2880929238_
                                                           (##cdr _e2880729231_))
                                                          (_lp-hd2880829235_
                                                           (##car _e2880729231_)))
                                                      (_loop2880629221_
                                                       _lp-tl2880929238_
                                                       (cons _lp-hd2880829235_
                                                             _body2881029228_))))
                                                  (let ((_body2881129241_
                                                         (reverse _body2881029228_)))
                                                    (___kont3919839199_
                                                     _body2881129241_))))))
                                    (_loop2880629221_
                                     _target2880329215_
                                     '()))))
                               (_g2871329267_
                                (lambda ()
                                  (if (gx#stx-vector? ___stx3917139172_)
                                      (let ((_e2880229211_
                                             (vector->list
                                              (gx#syntax-e
                                               ___stx3917139172_))))
                                        (if (gx#stx-pair/null? _e2880229211_)
                                            (let ((___splice3920039201_
                                                   (gx#syntax-split-splice
                                                    _e2880229211_
                                                    '0)))
                                              (let ((_tl2880529218_
                                                     (##vector-ref
                                                      ___splice3920039201_
                                                      '1))
                                                    (_target2880329215_
                                                     (##vector-ref
                                                      ___splice3920039201_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl2880529218_)
                                                    (___match3940639407_
                                                     _e2880229211_
                                                     ___splice3920039201_
                                                     _target2880329215_
                                                     _tl2880529218_)
                                                    (_g2872128928_))))
                                            (_g2872128928_)))
                                      (_g2872128928_))))
                               (_g2870929384_
                                (lambda ()
                                  (if (gx#stx-box? ___stx3917139172_)
                                      (let ((_e2878529370_
                                             (unbox (gx#syntax-e
                                                     ___stx3917139172_))))
                                        (___kont3919039191_ _e2878529370_))
                                      (_g2871329267_))))
                               (___match3926039261_
                                (lambda (_e2874029609_
                                         _hd2874129613_
                                         _tl2874229616_)
                                  (let ((_L29619_ _tl2874229616_))
                                    (if (gx#stx-list? _L29619_)
                                        (___kont3917839179_ _L29619_)
                                        (___match3941239413_
                                         _e2874029609_
                                         _hd2874129613_
                                         _tl2874229616_)))))
                               (___match3925039251_
                                (lambda (_e2873629694_
                                         _hd2873729698_
                                         _tl2873829701_)
                                  (let ((_L29704_ _tl2873829701_))
                                    (if (gx#stx-list? _L29704_)
                                        (___kont3917639177_ _L29704_)
                                        (___match3941239413_
                                         _e2873629694_
                                         _hd2873729698_
                                         _tl2873829701_))))))
                          (if (gx#stx-pair? ___stx3917139172_)
                              (let ((_e2872929779_
                                     (gx#syntax-e ___stx3917139172_)))
                                (let ((_tl2873129786_ (##cdr _e2872929779_))
                                      (_hd2873029783_ (##car _e2872929779_)))
                                  (if (gx#identifier? _hd2873029783_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g41907_|
                                           _hd2873029783_)
                                          (if (gx#stx-pair? _tl2873129786_)
                                              (let ((_e2873229789_
                                                     (gx#syntax-e
                                                      _tl2873129786_)))
                                                (let ((_tl2873429796_
                                                       (##cdr _e2873229789_))
                                                      (_hd2873329793_
                                                       (##car _e2873229789_)))
                                                  (___kont3917439175_
                                                   _tl2873429796_
                                                   _hd2873329793_)))
                                              (___match3941239413_
                                               _e2872929779_
                                               _hd2873029783_
                                               _tl2873129786_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g41908_|
                                               _hd2873029783_)
                                              (___match3925039251_
                                               _e2872929779_
                                               _hd2873029783_
                                               _tl2873129786_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g41909_|
                                                   _hd2873029783_)
                                                  (___match3926039261_
                                                   _e2872929779_
                                                   _hd2873029783_
                                                   _tl2873129786_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g41910_|
                                                       _hd2873029783_)
                                                      (if (gx#stx-pair?
                                                           _tl2873129786_)
                                                          (let ((_e2874729579_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2873129786_)))
                    (let ((_tl2874929586_ (##cdr _e2874729579_))
                          (_hd2874829583_ (##car _e2874729579_)))
                      (if (gx#stx-null? _tl2874929586_)
                          (___kont3918039181_ _hd2874829583_)
                          (___match3941239413_
                           _e2872929779_
                           _hd2873029783_
                           _tl2873129786_))))
                  (___match3941239413_
                   _e2872929779_
                   _hd2873029783_
                   _tl2873129786_))
              (if (gx#free-identifier=?
                   |gerbil/core$<match>[1]#_g41911_|
                   _hd2873029783_)
                  (if (gx#stx-pair? _tl2873129786_)
                      (let ((_e2875529525_ (gx#syntax-e _tl2873129786_)))
                        (let ((_tl2875729532_ (##cdr _e2875529525_))
                              (_hd2875629529_ (##car _e2875529525_)))
                          (if (gx#stx-pair? _tl2875729532_)
                              (let ((_e2875829535_
                                     (gx#syntax-e _tl2875729532_)))
                                (let ((_tl2876029542_ (##cdr _e2875829535_))
                                      (_hd2875929539_ (##car _e2875829535_)))
                                  (if (gx#stx-null? _tl2876029542_)
                                      (___kont3918239183_
                                       _hd2875929539_
                                       _hd2875629529_)
                                      (___match3941239413_
                                       _e2872929779_
                                       _hd2873029783_
                                       _tl2873129786_))))
                              (___match3941239413_
                               _e2872929779_
                               _hd2873029783_
                               _tl2873129786_))))
                      (___match3941239413_
                       _e2872929779_
                       _hd2873029783_
                       _tl2873129786_))
                  (if (gx#free-identifier=?
                       |gerbil/core$<match>[1]#_g41912_|
                       _hd2873029783_)
                      (if (gx#stx-pair? _tl2873129786_)
                          (let ((_e2876729469_ (gx#syntax-e _tl2873129786_)))
                            (let ((_tl2876929476_ (##cdr _e2876729469_))
                                  (_hd2876829473_ (##car _e2876729469_)))
                              (if (gx#stx-pair? _tl2876929476_)
                                  (let ((_e2877029479_
                                         (gx#syntax-e _tl2876929476_)))
                                    (let ((_tl2877229486_
                                           (##cdr _e2877029479_))
                                          (_hd2877129483_
                                           (##car _e2877029479_)))
                                      (___kont3918439185_
                                       _tl2877229486_
                                       _hd2877129483_
                                       _hd2876829473_)))
                                  (___match3941239413_
                                   _e2872929779_
                                   _hd2873029783_
                                   _tl2873129786_))))
                          (___match3941239413_
                           _e2872929779_
                           _hd2873029783_
                           _tl2873129786_))
                      (if (gx#free-identifier=?
                           |gerbil/core$<match>[1]#_g41913_|
                           _hd2873029783_)
                          (___kont3918639187_ _tl2873129786_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g41914_|
                               _hd2873029783_)
                              (if (gx#stx-pair? _tl2873129786_)
                                  (let ((_e2878129401_
                                         (gx#syntax-e _tl2873129786_)))
                                    (let ((_tl2878329408_
                                           (##cdr _e2878129401_))
                                          (_hd2878229405_
                                           (##car _e2878129401_)))
                                      (if (gx#stx-null? _tl2878329408_)
                                          (___kont3918839189_ _hd2878229405_)
                                          (___match3941239413_
                                           _e2872929779_
                                           _hd2873029783_
                                           _tl2873129786_))))
                                  (___match3941239413_
                                   _e2872929779_
                                   _hd2873029783_
                                   _tl2873129786_))
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g41915_|
                                   _hd2873029783_)
                                  (if (gx#stx-pair? _tl2873129786_)
                                      (let ((_e2879029340_
                                             (gx#syntax-e _tl2873129786_)))
                                        (let ((_tl2879229347_
                                               (##cdr _e2879029340_))
                                              (_hd2879129344_
                                               (##car _e2879029340_)))
                                          (if (gx#stx-null? _tl2879229347_)
                                              (___kont3919239193_
                                               _hd2879129344_)
                                              (___kont3919439195_
                                               _tl2873129786_))))
                                      (___kont3919439195_ _tl2873129786_))
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g41916_|
                                       _hd2873029783_)
                                      (___kont3919639197_ _tl2873129786_)
                                      (___match3941239413_
                                       _e2872929779_
                                       _hd2873029783_
                                       _tl2873129786_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (___match3941239413_
                                       _e2872929779_
                                       _hd2873029783_
                                       _tl2873129786_))))
                              (_g2870929384_)))))))
                 (_parse-list28348_
                  (lambda (_body28528_)
                    (let* ((___stx3950139502_ _body28528_)
                           (_g2853428563_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3950139502_))))
                      (let ((___kont3950439505_
                             (lambda (_L28681_) (_parse128346_ _L28681_)))
                            (___kont3950639507_
                             (lambda (_L28633_ _L28635_ _L28636_)
                               (cons 'splice:
                                     (cons (_parse128346_ _L28636_)
                                           (cons (_parse-list28348_ _L28633_)
                                                 '())))))
                            (___kont3950839509_
                             (lambda (_L28591_ _L28593_)
                               (cons 'cons:
                                     (cons (_parse128346_ _L28593_)
                                           (cons (_parse-list28348_ _L28591_)
                                                 '())))))
                            (___kont3951039511_
                             (lambda ()
                               (if (gx#stx-null? _body28528_)
                                   (cons 'null: '())
                                   (if (not (gx#stx-pair? _body28528_))
                                       (_parse128346_ _body28528_)
                                       (_parse-error28353_ _body28528_))))))
                        (let* ((___match3955039551_
                                (lambda (_e2855528581_
                                         _hd2855628585_
                                         _tl2855728588_)
                                  (let ((_L28591_ _tl2855728588_)
                                        (_L28593_ _hd2855628585_))
                                    (if (not (gx#ellipsis? _L28593_))
                                        (___kont3950839509_ _L28591_ _L28593_)
                                        (___kont3951039511_)))))
                               (___match3954439545_
                                (lambda (_e2854728613_
                                         _hd2854828617_
                                         _tl2854928620_
                                         _e2855028623_
                                         _hd2855128627_
                                         _tl2855228630_)
                                  (let ((_L28633_ _tl2855228630_)
                                        (_L28635_ _hd2855128627_)
                                        (_L28636_ _hd2854828617_))
                                    (if (gx#ellipsis? _L28635_)
                                        (___kont3950639507_
                                         _L28633_
                                         _L28635_
                                         _L28636_)
                                        (___match3955039551_
                                         _e2854728613_
                                         _hd2854828617_
                                         _tl2854928620_))))))
                          (if (gx#stx-pair? ___stx3950139502_)
                              (let ((_e2853728657_
                                     (gx#syntax-e ___stx3950139502_)))
                                (let ((_tl2853928664_ (##cdr _e2853728657_))
                                      (_hd2853828661_ (##car _e2853728657_)))
                                  (if (gx#stx-datum? _hd2853828661_)
                                      (let ((_e2854028667_
                                             (gx#stx-e _hd2853828661_)))
                                        (if (equal? _e2854028667_ '::)
                                            (if (gx#stx-pair? _tl2853928664_)
                                                (let ((_e2854128671_
                                                       (gx#syntax-e
                                                        _tl2853928664_)))
                                                  (let ((_tl2854328678_
                                                         (##cdr _e2854128671_))
                                                        (_hd2854228675_
                                                         (##car _e2854128671_)))
                                                    (if (gx#stx-null?
                                                         _tl2854328678_)
                                                        (___kont3950439505_
                                                         _hd2854228675_)
                                                        (___match3954439545_
                                                         _e2853728657_
                                                         _hd2853828661_
                                                         _tl2853928664_
                                                         _e2854128671_
                                                         _hd2854228675_
                                                         _tl2854328678_))))
                                                (___match3955039551_
                                                 _e2853728657_
                                                 _hd2853828661_
                                                 _tl2853928664_))
                                            (if (gx#stx-pair? _tl2853928664_)
                                                (let ((_e2855028623_
                                                       (gx#syntax-e
                                                        _tl2853928664_)))
                                                  (let ((_tl2855228630_
                                                         (##cdr _e2855028623_))
                                                        (_hd2855128627_
                                                         (##car _e2855028623_)))
                                                    (___match3954439545_
                                                     _e2853728657_
                                                     _hd2853828661_
                                                     _tl2853928664_
                                                     _e2855028623_
                                                     _hd2855128627_
                                                     _tl2855228630_)))
                                                (___match3955039551_
                                                 _e2853728657_
                                                 _hd2853828661_
                                                 _tl2853928664_))))
                                      (if (gx#stx-pair? _tl2853928664_)
                                          (let ((_e2855028623_
                                                 (gx#syntax-e _tl2853928664_)))
                                            (let ((_tl2855228630_
                                                   (##cdr _e2855028623_))
                                                  (_hd2855128627_
                                                   (##car _e2855028623_)))
                                              (___match3954439545_
                                               _e2853728657_
                                               _hd2853828661_
                                               _tl2853928664_
                                               _e2855028623_
                                               _hd2855128627_
                                               _tl2855228630_)))
                                          (___match3955039551_
                                           _e2853728657_
                                           _hd2853828661_
                                           _tl2853928664_)))))
                              (___kont3951039511_)))))))
                 (_parse-vector28349_
                  (lambda (_body28525_)
                    (if (_simple-vector?28350_ _body28525_)
                        (cons 'simple:
                              (cons (gx#stx-map _parse128346_ _body28525_)
                                    '()))
                        (cons 'list:
                              (cons (_parse-list28348_ _body28525_) '())))))
                 (_simple-vector?28350_
                  (lambda (_body28462_)
                    (let* ((___stx3955339554_ _body28462_)
                           (_g2846628478_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3955339554_))))
                      (let ((___kont3955639557_
                             (lambda (_L28506_ _L28508_)
                               (if (not (gx#ellipsis? _L28508_))
                                   (_simple-vector?28350_ _L28506_)
                                   '#f)))
                            (___kont3955839559_
                             (lambda () (gx#stx-null? _body28462_))))
                        (if (gx#stx-pair? ___stx3955339554_)
                            (let ((_e2847028496_
                                   (gx#syntax-e ___stx3955339554_)))
                              (let ((_tl2847228503_ (##cdr _e2847028496_))
                                    (_hd2847128500_ (##car _e2847028496_)))
                                (___kont3955639557_
                                 _tl2847228503_
                                 _hd2847128500_)))
                            (___kont3955839559_))))))
                 (_parse-class-body28351_
                  (lambda (_body28371_)
                    (let _recur28374_ ((_rest28377_ _body28371_))
                      (let* ((___stx3956939570_ _rest28377_)
                             (_g2838128397_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx3956939570_))))
                        (let ((___kont3957239573_
                               (lambda (_L28435_ _L28437_ _L28438_)
                                 (cons* _L28438_
                                        (_parse128346_ _L28437_)
                                        (_recur28374_ _L28435_))))
                              (___kont3957439575_
                               (lambda ()
                                 (if (gx#stx-null? _rest28377_)
                                     '()
                                     (_parse-error28353_ _rest28377_)))))
                          (let ((___match3958839589_
                                 (lambda (_e2838628415_
                                          _hd2838728419_
                                          _tl2838828422_
                                          _e2838928425_
                                          _hd2839028429_
                                          _tl2839128432_)
                                   (let ((_L28435_ _tl2839128432_)
                                         (_L28437_ _hd2839028429_)
                                         (_L28438_ _hd2838728419_))
                                     (if (gx#stx-keyword? _L28438_)
                                         (___kont3957239573_
                                          _L28435_
                                          _L28437_
                                          _L28438_)
                                         (___kont3957439575_))))))
                            (if (gx#stx-pair? ___stx3956939570_)
                                (let ((_e2838628415_
                                       (gx#syntax-e ___stx3956939570_)))
                                  (let ((_tl2838828422_ (##cdr _e2838628415_))
                                        (_hd2838728419_ (##car _e2838628415_)))
                                    (if (gx#stx-pair? _tl2838828422_)
                                        (let ((_e2838928425_
                                               (gx#syntax-e _tl2838828422_)))
                                          (let ((_tl2839128432_
                                                 (##cdr _e2838928425_))
                                                (_hd2839028429_
                                                 (##car _e2838928425_)))
                                            (___match3958839589_
                                             _e2838628415_
                                             _hd2838728419_
                                             _tl2838828422_
                                             _e2838928425_
                                             _hd2839028429_
                                             _tl2839128432_)))
                                        (___kont3957439575_))))
                                (___kont3957439575_))))))))
                 (_parse-qq28352_
                  (lambda (_hd28358_)
                    (let ((_g2836028367_
                           (lambda (_g2836128363_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2836128363_))))
                      (_g2836028367_ _hd28358_))))
                 (_parse-error28353_
                  (lambda (_hd28355_)
                    (apply gx#raise-syntax-error
                           '#f
                           '"Bad syntax; illegal pattern"
                           (if _match-stx28344_
                               (cons _match-stx28344_
                                     (cons _stx28342_ (cons _hd28355_ '())))
                               (cons _stx28342_ (cons _hd28355_ '())))))))
          (_parse128346_ _stx28342_))))
    (define |gerbil/core$<match>[1]#parse-match-pattern__0|
      (lambda (_stx30026_)
        (let ((_match-stx30029_ '#f))
          (|gerbil/core$<match>[1]#parse-match-pattern__%|
           _stx30026_
           _match-stx30029_))))
    (define |gerbil/core$<match>[1]#parse-match-pattern|
      (lambda _g41918_
        (let ((_g41917_ (length _g41918_)))
          (cond ((##fx= _g41917_ 1)
                 (apply |gerbil/core$<match>[1]#parse-match-pattern__0|
                        _g41918_))
                ((##fx= _g41917_ 2)
                 (apply |gerbil/core$<match>[1]#parse-match-pattern__%|
                        _g41918_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core$<match>[1]#parse-match-pattern|
                  _g41918_))))))
    (define |gerbil/core$<match>[1]#match-pattern?|
      (lambda (_stx28326_)
        (call-with-escape
         (lambda (_E28330_)
           (with-exception-handler
            (let ((_E!28333_ (current-exception-handler)))
              (lambda (_e28336_)
                (if (gx#syntax-error? _e28336_)
                    (_E28330_ '#f)
                    (_E!28333_ _e28336_))))
            (lambda ()
              (|gerbil/core$<match>[1]#parse-match-pattern__0| _stx28326_)
              '#t))))))
    (define |gerbil/core$<match>[1]#match-pattern-vars|
      (lambda (_ptree27031_)
        (letrec ((_loop27034_
                  (lambda (_ptree27321_ _vars27323_ _K27324_)
                    (let* ((___stx3969939700_ _ptree27321_)
                           (_g2733727447_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3969939700_))))
                      (let ((___kont3970239703_
                             (lambda (_L28077_)
                               (let* ((___stx3960739608_ _L28077_)
                                      (_g2809428134_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx3960739608_))))
                                 (let ((___kont3961039611_
                                        (lambda (_L28307_)
                                          (_loop27034_
                                           _L28307_
                                           _vars27323_
                                           _K27324_)))
                                       (___kont3961239613_
                                        (lambda (_L28274_)
                                          (_loop27034_
                                           _L28274_
                                           _vars27323_
                                           _K27324_)))
                                       (___kont3961439615_
                                        (lambda (_L28210_)
                                          (_loop27034_
                                           _L28210_
                                           _vars27323_
                                           _K27324_)))
                                       (___kont3961639617_
                                        (lambda () (_K27324_ _vars27323_))))
                                   (if (gx#stx-pair? ___stx3960739608_)
                                       (let ((_e2809728297_
                                              (gx#syntax-e ___stx3960739608_)))
                                         (let ((_tl2809928304_
                                                (##cdr _e2809728297_))
                                               (_hd2809828301_
                                                (##car _e2809728297_)))
                                           (if (gx#stx-null? _tl2809928304_)
                                               (___kont3961039611_
                                                _hd2809828301_)
                                               (if (gx#stx-pair?
                                                    _tl2809928304_)
                                                   (let ((_e2810428250_
                                                          (gx#syntax-e
                                                           _tl2809928304_)))
                                                     (let ((_tl2810628257_
                                                            (##cdr _e2810428250_))
                                                           (_hd2810528254_
                                                            (##car _e2810428250_)))
                                                       (if (gx#stx-datum?
                                                            _hd2810528254_)
                                                           (let ((_e2810728260_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd2810528254_)))
                     (if (equal? _e2810728260_ '=>:)
                         (if (gx#stx-pair? _tl2810628257_)
                             (let ((_e2810828264_
                                    (gx#syntax-e _tl2810628257_)))
                               (let ((_tl2811028271_ (##cdr _e2810828264_))
                                     (_hd2810928268_ (##car _e2810828264_)))
                                 (if (gx#stx-null? _tl2811028271_)
                                     (___kont3961239613_ _hd2810928268_)
                                     (___kont3961639617_))))
                             (___kont3961639617_))
                         (if (equal? _e2810728260_ '::)
                             (if (gx#stx-pair? _tl2810628257_)
                                 (let ((_e2811928176_
                                        (gx#syntax-e _tl2810628257_)))
                                   (let ((_tl2812128183_ (##cdr _e2811928176_))
                                         (_hd2812028180_
                                          (##car _e2811928176_)))
                                     (if (gx#stx-pair? _tl2812128183_)
                                         (let ((_e2812228186_
                                                (gx#syntax-e _tl2812128183_)))
                                           (let ((_tl2812428193_
                                                  (##cdr _e2812228186_))
                                                 (_hd2812328190_
                                                  (##car _e2812228186_)))
                                             (if (gx#stx-datum? _hd2812328190_)
                                                 (let ((_e2812528196_
                                                        (gx#stx-e
                                                         _hd2812328190_)))
                                                   (if (equal? _e2812528196_
                                                               '=>:)
                                                       (if (gx#stx-pair?
                                                            _tl2812428193_)
                                                           (let ((_e2812628200_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl2812428193_)))
                     (let ((_tl2812828207_ (##cdr _e2812628200_))
                           (_hd2812728204_ (##car _e2812628200_)))
                       (if (gx#stx-null? _tl2812828207_)
                           (___kont3961439615_ _hd2812728204_)
                           (___kont3961639617_))))
                   (___kont3961639617_))
               (___kont3961639617_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont3961639617_))))
                                         (___kont3961639617_))))
                                 (___kont3961639617_))
                             (___kont3961639617_))))
                   (___kont3961639617_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont3961639617_)))))
                                       (___kont3961639617_))))))
                            (___kont3970439705_
                             (lambda (_L27964_ _L27966_)
                               (let* ((___stx3959139592_ _L27964_)
                                      (_g2798227994_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx3959139592_))))
                                 (let ((___kont3959439595_
                                        (lambda (_L28022_ _L28024_)
                                          (_loop27034_
                                           _L28024_
                                           _vars27323_
                                           (lambda (_g2803628038_)
                                             (_loop27034_
                                              (cons _L27966_ _L28022_)
                                              _g2803628038_
                                              _K27324_)))))
                                       (___kont3959639597_
                                        (lambda () (_K27324_ _vars27323_))))
                                   (if (gx#stx-pair? ___stx3959139592_)
                                       (let ((_e2798628012_
                                              (gx#syntax-e ___stx3959139592_)))
                                         (let ((_tl2798828019_
                                                (##cdr _e2798628012_))
                                               (_hd2798728016_
                                                (##car _e2798628012_)))
                                           (___kont3959439595_
                                            _tl2798828019_
                                            _hd2798728016_)))
                                       (___kont3959639597_))))))
                            (___kont3970639707_
                             (lambda (_L27933_)
                               (_loop27034_ _L27933_ _vars27323_ _K27324_)))
                            (___kont3970839709_
                             (lambda (_L27879_ _L27881_)
                               (_loop27034_
                                _L27881_
                                _vars27323_
                                (lambda (_g2789627898_)
                                  (_loop27034_
                                   _L27879_
                                   _g2789627898_
                                   _K27324_)))))
                            (___kont3971039711_
                             (lambda (_L27815_ _L27817_)
                               (_loop27034_
                                _L27817_
                                _vars27323_
                                (lambda (_g2783227834_)
                                  (_loop27034_
                                   _L27815_
                                   _g2783227834_
                                   _K27324_)))))
                            (___kont3971239713_
                             (lambda (_L27760_)
                               (_loop27034_ _L27760_ _vars27323_ _K27324_)))
                            (___kont3971439715_
                             (lambda (_L27710_ _L27712_)
                               (_loop-vector27036_
                                _L27710_
                                _vars27323_
                                _K27324_)))
                            (___kont3971639717_
                             (lambda (_L27667_)
                               (_loop-vector27036_
                                _L27667_
                                _vars27323_
                                _K27324_)))
                            (___kont3971839719_
                             (lambda (_L27610_)
                               (_loop-class-list27038_
                                _L27610_
                                _vars27323_
                                _K27324_)))
                            (___kont3972039721_
                             (lambda (_L27551_ _L27553_)
                               (_loop27034_ _L27551_ _vars27323_ _K27324_)))
                            (___kont3972239723_
                             (lambda (_L27489_)
                               (if (find (lambda (_g2750427506_)
                                           (gx#bound-identifier=?
                                            _g2750427506_
                                            _L27489_))
                                         _vars27323_)
                                   (_K27324_ _vars27323_)
                                   (_K27324_ (cons _L27489_ _vars27323_)))))
                            (___kont3972439725_
                             (lambda () (_K27324_ _vars27323_))))
                        (let* ((___match3985639857_
                                (lambda (_e2739427690_
                                         _hd2739527694_
                                         _tl2739627697_
                                         _e2739727700_
                                         _hd2739827704_
                                         _tl2739927707_)
                                  (let ((_L27710_ _hd2739827704_)
                                        (_L27712_ _hd2739527694_))
                                    (if (or (gx#stx-eq? 'values: _L27712_)
                                            (gx#stx-eq? 'vector: _L27712_))
                                        (___kont3971439715_ _L27710_ _L27712_)
                                        (if (gx#stx-datum? _hd2739527694_)
                                            (let ((_e2740427643_
                                                   (gx#stx-e _hd2739527694_)))
                                              (if (equal? _e2740427643_
                                                          'struct:)
                                                  (___kont3972439725_)
                                                  (if (equal? _e2740427643_
                                                              'class:)
                                                      (___kont3972439725_)
                                                      (if (equal? _e2740427643_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'apply:)
                  (___kont3972439725_)
                  (if (equal? _e2740427643_ 'var:)
                      (___kont3972239723_ _hd2739827704_)
                      (___kont3972439725_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont3972439725_))))))
                               (___match3975039751_
                                (lambda (_e2734927954_
                                         _hd2735027958_
                                         _tl2735127961_)
                                  (let ((_L27964_ _tl2735127961_)
                                        (_L27966_ _hd2735027958_))
                                    (if (or (gx#stx-eq? 'and: _L27966_)
                                            (gx#stx-eq? 'or: _L27966_))
                                        (___kont3970439705_ _L27964_ _L27966_)
                                        (if (gx#stx-datum? _hd2735027958_)
                                            (let ((_e2735627919_
                                                   (gx#stx-e _hd2735027958_)))
                                              (if (equal? _e2735627919_ 'not:)
                                                  (if (gx#stx-pair?
                                                       _tl2735127961_)
                                                      (let ((_e2735727923_
                                                             (gx#syntax-e
                                                              _tl2735127961_)))
                                                        (let ((_tl2735927930_
                                                               (##cdr _e2735727923_))
                                                              (_hd2735827927_
                                                               (##car _e2735727923_)))
                                                          (if (gx#stx-null?
                                                               _tl2735927930_)
                                                              (___kont3970639707_
                                                               _hd2735827927_)
                                                              (___kont3972439725_))))
                                                      (___kont3972439725_))
                                                  (if (equal? _e2735627919_
                                                              'cons:)
                                                      (if (gx#stx-pair?
                                                           _tl2735127961_)
                                                          (let ((_e2736627859_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2735127961_)))
                    (let ((_tl2736827866_ (##cdr _e2736627859_))
                          (_hd2736727863_ (##car _e2736627859_)))
                      (if (gx#stx-pair? _tl2736827866_)
                          (let ((_e2736927869_ (gx#syntax-e _tl2736827866_)))
                            (let ((_tl2737127876_ (##cdr _e2736927869_))
                                  (_hd2737027873_ (##car _e2736927869_)))
                              (if (gx#stx-null? _tl2737127876_)
                                  (___kont3970839709_
                                   _hd2737027873_
                                   _hd2736727863_)
                                  (___kont3972439725_))))
                          (if (gx#stx-null? _tl2736827866_)
                              (___match3985639857_
                               _e2734927954_
                               _hd2735027958_
                               _tl2735127961_
                               _e2736627859_
                               _hd2736727863_
                               _tl2736827866_)
                              (___kont3972439725_)))))
                  (___kont3972439725_))
              (if (equal? _e2735627919_ 'splice:)
                  (if (gx#stx-pair? _tl2735127961_)
                      (let ((_e2737827795_ (gx#syntax-e _tl2735127961_)))
                        (let ((_tl2738027802_ (##cdr _e2737827795_))
                              (_hd2737927799_ (##car _e2737827795_)))
                          (if (gx#stx-pair? _tl2738027802_)
                              (let ((_e2738127805_
                                     (gx#syntax-e _tl2738027802_)))
                                (let ((_tl2738327812_ (##cdr _e2738127805_))
                                      (_hd2738227809_ (##car _e2738127805_)))
                                  (if (gx#stx-null? _tl2738327812_)
                                      (___kont3971039711_
                                       _hd2738227809_
                                       _hd2737927799_)
                                      (___kont3972439725_))))
                              (if (gx#stx-null? _tl2738027802_)
                                  (___match3985639857_
                                   _e2734927954_
                                   _hd2735027958_
                                   _tl2735127961_
                                   _e2737827795_
                                   _hd2737927799_
                                   _tl2738027802_)
                                  (___kont3972439725_)))))
                      (___kont3972439725_))
                  (if (equal? _e2735627919_ 'box:)
                      (if (gx#stx-pair? _tl2735127961_)
                          (let ((_e2738927750_ (gx#syntax-e _tl2735127961_)))
                            (let ((_tl2739127757_ (##cdr _e2738927750_))
                                  (_hd2739027754_ (##car _e2738927750_)))
                              (if (gx#stx-null? _tl2739127757_)
                                  (___kont3971239713_ _hd2739027754_)
                                  (___kont3972439725_))))
                          (___kont3972439725_))
                      (if (gx#stx-pair? _tl2735127961_)
                          (let ((_e2739727700_ (gx#syntax-e _tl2735127961_)))
                            (let ((_tl2739927707_ (##cdr _e2739727700_))
                                  (_hd2739827704_ (##car _e2739727700_)))
                              (if (gx#stx-null? _tl2739927707_)
                                  (___match3985639857_
                                   _e2734927954_
                                   _hd2735027958_
                                   _tl2735127961_
                                   _e2739727700_
                                   _hd2739827704_
                                   _tl2739927707_)
                                  (if (equal? _e2735627919_ 'struct:)
                                      (if (gx#stx-pair? _tl2739927707_)
                                          (let ((_e2740827657_
                                                 (gx#syntax-e _tl2739927707_)))
                                            (let ((_tl2741027664_
                                                   (##cdr _e2740827657_))
                                                  (_hd2740927661_
                                                   (##car _e2740827657_)))
                                              (if (gx#stx-null? _tl2741027664_)
                                                  (___kont3971639717_
                                                   _hd2740927661_)
                                                  (___kont3972439725_))))
                                          (___kont3972439725_))
                                      (if (equal? _e2735627919_ 'class:)
                                          (if (gx#stx-pair? _tl2739927707_)
                                              (let ((_e2741927600_
                                                     (gx#syntax-e
                                                      _tl2739927707_)))
                                                (let ((_tl2742127607_
                                                       (##cdr _e2741927600_))
                                                      (_hd2742027604_
                                                       (##car _e2741927600_)))
                                                  (if (gx#stx-null?
                                                       _tl2742127607_)
                                                      (___kont3971839719_
                                                       _hd2742027604_)
                                                      (___kont3972439725_))))
                                              (___kont3972439725_))
                                          (if (equal? _e2735627919_ 'apply:)
                                              (if (gx#stx-pair? _tl2739927707_)
                                                  (let ((_e2743127541_
                                                         (gx#syntax-e
                                                          _tl2739927707_)))
                                                    (let ((_tl2743327548_
                                                           (##cdr _e2743127541_))
                                                          (_hd2743227545_
                                                           (##car _e2743127541_)))
                                                      (if (gx#stx-null?
                                                           _tl2743327548_)
                                                          (___kont3972039721_
                                                           _hd2743227545_
                                                           _hd2739827704_)
                                                          (___kont3972439725_))))
                                                  (___kont3972439725_))
                                              (___kont3972439725_)))))))
                          (___kont3972439725_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _tl2735127961_)
                                                (let ((_e2739727700_
                                                       (gx#syntax-e
                                                        _tl2735127961_)))
                                                  (let ((_tl2739927707_
                                                         (##cdr _e2739727700_))
                                                        (_hd2739827704_
                                                         (##car _e2739727700_)))
                                                    (if (gx#stx-null?
                                                         _tl2739927707_)
                                                        (___match3985639857_
                                                         _e2734927954_
                                                         _hd2735027958_
                                                         _tl2735127961_
                                                         _e2739727700_
                                                         _hd2739827704_
                                                         _tl2739927707_)
                                                        (___kont3972439725_))))
                                                (___kont3972439725_))))))))
                          (if (gx#stx-pair? ___stx3969939700_)
                              (let ((_e2734028053_
                                     (gx#syntax-e ___stx3969939700_)))
                                (let ((_tl2734228060_ (##cdr _e2734028053_))
                                      (_hd2734128057_ (##car _e2734028053_)))
                                  (if (gx#stx-datum? _hd2734128057_)
                                      (let ((_e2734328063_
                                             (gx#stx-e _hd2734128057_)))
                                        (if (equal? _e2734328063_ '?:)
                                            (if (gx#stx-pair? _tl2734228060_)
                                                (let ((_e2734428067_
                                                       (gx#syntax-e
                                                        _tl2734228060_)))
                                                  (let ((_tl2734628074_
                                                         (##cdr _e2734428067_))
                                                        (_hd2734528071_
                                                         (##car _e2734428067_)))
                                                    (___kont3970239703_
                                                     _tl2734628074_)))
                                                (___match3975039751_
                                                 _e2734028053_
                                                 _hd2734128057_
                                                 _tl2734228060_))
                                            (___match3975039751_
                                             _e2734028053_
                                             _hd2734128057_
                                             _tl2734228060_)))
                                      (___match3975039751_
                                       _e2734028053_
                                       _hd2734128057_
                                       _tl2734228060_))))
                              (___kont3972439725_)))))))
                 (_loop-vector27036_
                  (lambda (_body27197_ _vars27199_ _K27200_)
                    (let* ((___stx3995739958_ _body27197_)
                           (_g2720327226_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3995739958_))))
                      (let ((___kont3996039961_
                             (lambda (_L27303_)
                               (_loop-list27037_
                                _L27303_
                                _vars27199_
                                _K27200_)))
                            (___kont3996239963_
                             (lambda (_L27257_)
                               (_loop27034_ _L27257_ _vars27199_ _K27200_))))
                        (if (gx#stx-pair? ___stx3995739958_)
                            (let ((_e2720627279_
                                   (gx#syntax-e ___stx3995739958_)))
                              (let ((_tl2720827286_ (##cdr _e2720627279_))
                                    (_hd2720727283_ (##car _e2720627279_)))
                                (if (gx#stx-datum? _hd2720727283_)
                                    (let ((_e2720927289_
                                           (gx#stx-e _hd2720727283_)))
                                      (if (equal? _e2720927289_ 'simple:)
                                          (if (gx#stx-pair? _tl2720827286_)
                                              (let ((_e2721027293_
                                                     (gx#syntax-e
                                                      _tl2720827286_)))
                                                (let ((_tl2721227300_
                                                       (##cdr _e2721027293_))
                                                      (_hd2721127297_
                                                       (##car _e2721027293_)))
                                                  (if (gx#stx-null?
                                                       _tl2721227300_)
                                                      (___kont3996039961_
                                                       _hd2721127297_)
                                                      (_g2720327226_))))
                                              (_g2720327226_))
                                          (if (equal? _e2720927289_ 'list:)
                                              (if (gx#stx-pair? _tl2720827286_)
                                                  (let ((_e2721827247_
                                                         (gx#syntax-e
                                                          _tl2720827286_)))
                                                    (let ((_tl2722027254_
                                                           (##cdr _e2721827247_))
                                                          (_hd2721927251_
                                                           (##car _e2721827247_)))
                                                      (if (gx#stx-null?
                                                           _tl2722027254_)
                                                          (___kont3996239963_
                                                           _hd2721927251_)
                                                          (_g2720327226_))))
                                                  (_g2720327226_))
                                              (_g2720327226_))))
                                    (_g2720327226_))))
                            (_g2720327226_))))))
                 (_loop-list27037_
                  (lambda (_rest27127_ _vars27129_ _K27130_)
                    (let* ((___stx4000740008_ _rest27127_)
                           (_g2713327145_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx4000740008_))))
                      (let ((___kont4001040011_
                             (lambda (_L27173_ _L27175_)
                               (_loop27034_
                                _L27175_
                                _vars27129_
                                (lambda (_g2718727189_)
                                  (_loop-list27037_
                                   _L27173_
                                   _g2718727189_
                                   _K27130_)))))
                            (___kont4001240013_
                             (lambda () (_K27130_ _vars27129_))))
                        (if (gx#stx-pair? ___stx4000740008_)
                            (let ((_e2713727163_
                                   (gx#syntax-e ___stx4000740008_)))
                              (let ((_tl2713927170_ (##cdr _e2713727163_))
                                    (_hd2713827167_ (##car _e2713727163_)))
                                (___kont4001040011_
                                 _tl2713927170_
                                 _hd2713827167_)))
                            (___kont4001240013_))))))
                 (_loop-class-list27038_
                  (lambda (_rest27040_ _vars27042_ _K27043_)
                    (let* ((___stx4002340024_ _rest27040_)
                           (_g2704627061_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx4002340024_))))
                      (let ((___kont4002640027_
                             (lambda (_L27099_ _L27101_)
                               (_loop27034_
                                _L27101_
                                _vars27042_
                                (lambda (_g2711727119_)
                                  (_loop-class-list27038_
                                   _L27099_
                                   _g2711727119_
                                   _K27043_)))))
                            (___kont4002840029_
                             (lambda () (_K27043_ _vars27042_))))
                        (if (gx#stx-pair? ___stx4002340024_)
                            (let ((_e2705027079_
                                   (gx#syntax-e ___stx4002340024_)))
                              (let ((_tl2705227086_ (##cdr _e2705027079_))
                                    (_hd2705127083_ (##car _e2705027079_)))
                                (if (gx#stx-pair? _tl2705227086_)
                                    (let ((_e2705327089_
                                           (gx#syntax-e _tl2705227086_)))
                                      (let ((_tl2705527096_
                                             (##cdr _e2705327089_))
                                            (_hd2705427093_
                                             (##car _e2705327089_)))
                                        (___kont4002640027_
                                         _tl2705527096_
                                         _hd2705427093_)))
                                    (___kont4002840029_))))
                            (___kont4002840029_)))))))
          (_loop27034_ _ptree27031_ '() values))))
    (define |gerbil/core$<match>[1]#generate-match1|
      (lambda (_stx23614_ _tgt23616_ _ptree23617_ _K23618_ _E23619_)
        (letrec ((_generate123621_
                  (lambda (_tgt25244_ _ptree25246_ _K25247_ _E25248_)
                    (let* ((_g2525025258_
                            (lambda (_g2525125254_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2525125254_)))
                           (_g2524927027_
                            (lambda (_g2525125262_)
                              ((lambda (_L25265_)
                                 (let ()
                                   (let* ((___stx4025940260_ _ptree25246_)
                                          (_g2529225434_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              ___stx4025940260_))))
                                     (let ((___kont4026240263_
                                            (lambda (_L26742_ _L26744_)
                                              (let* ((___stx4017740178_
                                                      _L26742_)
                                                     (_g2676126796_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         ___stx4017740178_))))
                                                (let ((___kont4018040181_
                                                       (lambda ()
                                                         (cons 'if
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '?)
                                   (cons _L26744_ (cons _L25265_ '())))
                             (cons _K25247_ (cons _E25248_ '()))))))
              (___kont4018240183_
               (lambda (_L26997_)
                 (cons 'if
                       (cons (cons (gx#datum->syntax '#f '?)
                                   (cons _L26744_ (cons _L25265_ '())))
                             (cons (_generate123621_
                                    _tgt25244_
                                    _L26997_
                                    _K25247_
                                    _E25248_)
                                   (cons _E25248_ '()))))))
              (___kont4018440185_
               (lambda (_L26935_)
                 (let* ((_g2694926957_
                         (lambda (_g2695026953_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2695026953_)))
                        (_g2694826976_
                         (lambda (_g2695026961_)
                           ((lambda (_L26964_)
                              (let ()
                                (cons 'let
                                      (cons (cons (cons _L26964_
                                                        (cons (cons _L26744_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _L25265_ '()))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())
                                            (cons (cons 'if
                                                        (cons _L26964_
                                                              (cons (_generate123621_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L26964_
                             _L26935_
                             _K25247_
                             _E25248_)
                            (cons _E25248_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                            _g2695026961_))))
                   (_g2694826976_ (gx#genident 'e)))))
              (___kont4018640187_
               (lambda (_L26851_ _L26853_)
                 (let* ((_g2687326881_
                         (lambda (_g2687426877_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2687426877_)))
                        (_g2687226900_
                         (lambda (_g2687426885_)
                           ((lambda (_L26888_)
                              (let ()
                                (cons 'if
                                      (cons (cons (gx#datum->syntax '#f '?)
                                                  (cons _L26744_
                                                        (cons _L25265_ '())))
                                            (cons (cons 'let
                                                        (cons (cons (cons _L26888_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (cons _L26853_ (cons _L25265_ '()))
                                        '()))
                            '())
                      (cons (_generate123621_
                             _L26888_
                             _L26851_
                             _K25247_
                             _E25248_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _E25248_ '()))))))
                            _g2687426885_))))
                   (_g2687226900_ (gx#genident 'e))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g2675827008_
                                                         (lambda ()
                                                           (if (gx#stx-pair?
                                                                ___stx4017740178_)
                                                               (let ((_e2676426987_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e ___stx4017740178_)))
                         (let ((_tl2676626994_ (##cdr _e2676426987_))
                               (_hd2676526991_ (##car _e2676426987_)))
                           (if (gx#stx-null? _tl2676626994_)
                               (___kont4018240183_ _hd2676526991_)
                               (if (gx#stx-datum? _hd2676526991_)
                                   (let ((_e2677126921_
                                          (gx#stx-e _hd2676526991_)))
                                     (if (equal? _e2677126921_ '=>:)
                                         (if (gx#stx-pair? _tl2676626994_)
                                             (let ((_e2677226925_
                                                    (gx#syntax-e
                                                     _tl2676626994_)))
                                               (let ((_tl2677426932_
                                                      (##cdr _e2677226925_))
                                                     (_hd2677326929_
                                                      (##car _e2677226925_)))
                                                 (if (gx#stx-null?
                                                      _tl2677426932_)
                                                     (___kont4018440185_
                                                      _hd2677326929_)
                                                     (_g2676126796_))))
                                             (_g2676126796_))
                                         (if (equal? _e2677126921_ '::)
                                             (if (gx#stx-pair? _tl2676626994_)
                                                 (let ((_e2678126817_
                                                        (gx#syntax-e
                                                         _tl2676626994_)))
                                                   (let ((_tl2678326824_
                                                          (##cdr _e2678126817_))
                                                         (_hd2678226821_
                                                          (##car _e2678126817_)))
                                                     (if (gx#stx-pair?
                                                          _tl2678326824_)
                                                         (let ((_e2678426827_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2678326824_)))
                   (let ((_tl2678626834_ (##cdr _e2678426827_))
                         (_hd2678526831_ (##car _e2678426827_)))
                     (if (gx#stx-datum? _hd2678526831_)
                         (let ((_e2678726837_ (gx#stx-e _hd2678526831_)))
                           (if (equal? _e2678726837_ '=>:)
                               (if (gx#stx-pair? _tl2678626834_)
                                   (let ((_e2678826841_
                                          (gx#syntax-e _tl2678626834_)))
                                     (let ((_tl2679026848_
                                            (##cdr _e2678826841_))
                                           (_hd2678926845_
                                            (##car _e2678826841_)))
                                       (if (gx#stx-null? _tl2679026848_)
                                           (___kont4018640187_
                                            _hd2678926845_
                                            _hd2678226821_)
                                           (_g2676126796_))))
                                   (_g2676126796_))
                               (_g2676126796_)))
                         (_g2676126796_))))
                 (_g2676126796_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2676126796_))
                                             (_g2676126796_))))
                                   (_g2676126796_)))))
                       (_g2676126796_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         ___stx4017740178_)
                                                        (___kont4018040181_)
                                                        (_g2675827008_)))))))
                                           (___kont4026440265_
                                            (lambda (_L26639_)
                                              (let* ((___stx4016140162_
                                                      _L26639_)
                                                     (_g2665226664_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         ___stx4016140162_))))
                                                (let ((___kont4016440165_
                                                       (lambda (_L26692_
                                                                _L26694_)
                                                         (_generate123621_
                                                          _tgt25244_
                                                          _L26694_
                                                          (_generate123621_
                                                           _tgt25244_
                                                           (cons 'and:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L26692_)
                   _K25247_
                   _E25248_)
                  _E25248_)))
              (___kont4016640167_ (lambda () _K25247_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4016140162_)
                                                      (let ((_e2665626682_
                                                             (gx#syntax-e
                                                              ___stx4016140162_)))
                                                        (let ((_tl2665826689_
                                                               (##cdr _e2665626682_))
                                                              (_hd2665726686_
                                                               (##car _e2665626682_)))
                                                          (___kont4016440165_
                                                           _tl2665826689_
                                                           _hd2665726686_)))
                                                      (___kont4016640167_))))))
                                           (___kont4026640267_
                                            (lambda (_L26546_)
                                              (let* ((___stx4014540146_
                                                      _L26546_)
                                                     (_g2655926571_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         ___stx4014540146_))))
                                                (let ((___kont4014840149_
                                                       (lambda (_L26599_
                                                                _L26601_)
                                                         (_generate123621_
                                                          _tgt25244_
                                                          _L26601_
                                                          _K25247_
                                                          (_generate123621_
                                                           _tgt25244_
                                                           (cons 'or: _L26599_)
                                                           _K25247_
                                                           _E25248_))))
                                                      (___kont4015040151_
                                                       (lambda () _E25248_)))
                                                  (if (gx#stx-pair?
                                                       ___stx4014540146_)
                                                      (let ((_e2656326589_
                                                             (gx#syntax-e
                                                              ___stx4014540146_)))
                                                        (let ((_tl2656526596_
                                                               (##cdr _e2656326589_))
                                                              (_hd2656426593_
                                                               (##car _e2656326589_)))
                                                          (___kont4014840149_
                                                           _tl2656526596_
                                                           _hd2656426593_)))
                                                      (___kont4015040151_))))))
                                           (___kont4026840269_
                                            (lambda (_L26511_)
                                              (_generate123621_
                                               _tgt25244_
                                               _L26511_
                                               _E25248_
                                               _K25247_)))
                                           (___kont4027040271_
                                            (lambda (_L26393_ _L26395_)
                                              (let* ((_g2641226427_
                                                      (lambda (_g2641326423_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g2641326423_)))
                                                     (_g2641126476_
                                                      (lambda (_g2641326431_)
                                                        (if (gx#stx-pair?
                                                             _g2641326431_)
                                                            (let ((_e2641626434_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _g2641326431_)))
                      (let ((_hd2641726438_ (##car _e2641626434_))
                            (_tl2641826441_ (##cdr _e2641626434_)))
                        (if (gx#stx-pair? _tl2641826441_)
                            (let ((_e2641926444_ (gx#syntax-e _tl2641826441_)))
                              (let ((_hd2642026448_ (##car _e2641926444_))
                                    (_tl2642126451_ (##cdr _e2641926444_)))
                                (if (gx#stx-null? _tl2642126451_)
                                    ((lambda (_L26454_ _L26456_)
                                       (let ()
                                         (cons 'if
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '##pair?)
                                                           (cons _L25265_ '()))
                                                     (cons (let ((_hd-pat26472_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _L26395_))
                         (_tl-pat26474_ (gx#stx-e _L26393_)))
                     (if (and (equal? _hd-pat26472_ '(any:))
                              (equal? _tl-pat26474_ '(any:)))
                         _K25247_
                         (if (equal? _tl-pat26474_ '(any:))
                             (cons 'let
                                   (cons (cons (cons _L26456_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##car)
                         (cons _L25265_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons (_generate123621_
                                                _L26456_
                                                _L26395_
                                                _K25247_
                                                _E25248_)
                                               '())))
                             (if (equal? _hd-pat26472_ '(any:))
                                 (cons 'let
                                       (cons (cons (cons _L26454_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '##cdr)
                             (cons _L25265_ '()))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())
                                             (cons (_generate123621_
                                                    _L26454_
                                                    _L26393_
                                                    _K25247_
                                                    _E25248_)
                                                   '())))
                                 (cons 'let
                                       (cons (cons (cons _L26456_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '##car)
                             (cons _L25265_ '()))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons _L26454_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '##cdr)
                                   (cons _L25265_ '()))
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (_generate123621_
                                                    _L26456_
                                                    _L26395_
                                                    (_generate123621_
                                                     _L26454_
                                                     _L26393_
                                                     _K25247_
                                                     _E25248_)
                                                    _E25248_)
                                                   '())))))))
                   (cons _E25248_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _hd2642026448_
                                     _hd2641726438_)
                                    (_g2641226427_ _g2641326431_))))
                            (_g2641226427_ _g2641326431_))))
                    (_g2641226427_ _g2641326431_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2641126476_
                                                 (list (gx#genident 'hd)
                                                       (gx#genident 'tl))))))
                                           (___kont4027240273_
                                            (lambda ()
                                              (cons 'if
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##null?)
                        (cons _L25265_ '()))
                  (cons _K25247_ (cons _E25248_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4027440275_
                                            (lambda (_L26309_ _L26311_)
                                              (_generate-splice23623_
                                               _tgt25244_
                                               _L26311_
                                               _L26309_
                                               _K25247_
                                               _E25248_)))
                                           (___kont4027640277_
                                            (lambda (_L26223_)
                                              (let* ((_g2623726245_
                                                      (lambda (_g2623826241_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g2623826241_)))
                                                     (_g2623626264_
                                                      (lambda (_g2623826249_)
                                                        ((lambda (_L26252_)
                                                           (let ()
                                                             (cons 'if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f '##box?)
                                       (cons _L25265_ '()))
                                 (cons (cons 'let
                                             (cons (cons (cons _L26252_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '##unbox)
                                   (cons _L25265_ '()))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (_generate123621_
                                                          _L26252_
                                                          _L26223_
                                                          _K25247_
                                                          _E25248_)
                                                         '())))
                                       (cons _E25248_ '()))))))
                 _g2623826249_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2623626264_
                                                 (gx#genident 'e)))))
                                           (___kont4027840279_
                                            (lambda (_L26028_)
                                              (let* ((___stx4009540096_
                                                      _L26028_)
                                                     (_g2604326066_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         ___stx4009540096_))))
                                                (let ((___kont4009840099_
                                                       (lambda (_L26143_)
                                                         (let* ((_g2615726165_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2615826161_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2615826161_)))
                        (_g2615626184_
                         (lambda (_g2615826169_)
                           ((lambda (_L26172_)
                              (let ()
                                (cons 'if
                                      (cons (cons (gx#datum->syntax '#f '##fx=)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'values-count)
                                                              (cons _L25265_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _L26172_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (_generate-simple-vector23624_
                                                   _tgt25244_
                                                   _L26143_
                                                   '0
                                                   _K25247_
                                                   _E25248_)
                                                  (cons _E25248_ '()))))))
                            _g2615826169_))))
                   (_g2615626184_ (gx#stx-length _L26143_)))))
              (___kont4010040101_
               (lambda (_L26097_)
                 (_generate-list-vector23625_
                  _tgt25244_
                  _L26097_
                  'values->list
                  _K25247_
                  _E25248_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4009540096_)
                                                      (let ((_e2604626119_
                                                             (gx#syntax-e
                                                              ___stx4009540096_)))
                                                        (let ((_tl2604826126_
                                                               (##cdr _e2604626119_))
                                                              (_hd2604726123_
                                                               (##car _e2604626119_)))
                                                          (if (gx#stx-datum?
                                                               _hd2604726123_)
                                                              (let ((_e2604926129_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd2604726123_)))
                        (if (equal? _e2604926129_ 'simple:)
                            (if (gx#stx-pair? _tl2604826126_)
                                (let ((_e2605026133_
                                       (gx#syntax-e _tl2604826126_)))
                                  (let ((_tl2605226140_ (##cdr _e2605026133_))
                                        (_hd2605126137_ (##car _e2605026133_)))
                                    (if (gx#stx-null? _tl2605226140_)
                                        (___kont4009840099_ _hd2605126137_)
                                        (_g2604326066_))))
                                (_g2604326066_))
                            (if (equal? _e2604926129_ 'list:)
                                (if (gx#stx-pair? _tl2604826126_)
                                    (let ((_e2605826087_
                                           (gx#syntax-e _tl2604826126_)))
                                      (let ((_tl2606026094_
                                             (##cdr _e2605826087_))
                                            (_hd2605926091_
                                             (##car _e2605826087_)))
                                        (if (gx#stx-null? _tl2606026094_)
                                            (___kont4010040101_ _hd2605926091_)
                                            (_g2604326066_))))
                                    (_g2604326066_))
                                (_g2604326066_))))
                      (_g2604326066_))))
              (_g2604326066_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4028040281_
                                            (lambda (_L25833_)
                                              (let* ((___stx4004540046_
                                                      _L25833_)
                                                     (_g2584825871_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         ___stx4004540046_))))
                                                (let ((___kont4004840049_
                                                       (lambda (_L25948_)
                                                         (let* ((_g2596225970_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2596325966_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2596325966_)))
                        (_g2596125989_
                         (lambda (_g2596325974_)
                           ((lambda (_L25977_)
                              (let ()
                                (cons 'if
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   '##vector?)
                                                  (cons _L25265_ '()))
                                            (cons (cons 'if
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '##fx=)
                            (cons (cons (gx#datum->syntax '#f '##vector-length)
                                        (cons _L25265_ '()))
                                  (cons _L25977_ '())))
                      (cons (_generate-simple-vector23624_
                             _tgt25244_
                             _L25948_
                             '0
                             _K25247_
                             _E25248_)
                            (cons _E25248_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _E25248_ '()))))))
                            _g2596325974_))))
                   (_g2596125989_ (gx#stx-length _L25948_)))))
              (___kont4005040051_
               (lambda (_L25902_)
                 (cons 'if
                       (cons (cons (gx#datum->syntax '#f '##vector?)
                                   (cons _L25265_ '()))
                             (cons (_generate-list-vector23625_
                                    _tgt25244_
                                    _L25902_
                                    'vector->list
                                    _K25247_
                                    _E25248_)
                                   (cons _E25248_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4004540046_)
                                                      (let ((_e2585125924_
                                                             (gx#syntax-e
                                                              ___stx4004540046_)))
                                                        (let ((_tl2585325931_
                                                               (##cdr _e2585125924_))
                                                              (_hd2585225928_
                                                               (##car _e2585125924_)))
                                                          (if (gx#stx-datum?
                                                               _hd2585225928_)
                                                              (let ((_e2585425934_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd2585225928_)))
                        (if (equal? _e2585425934_ 'simple:)
                            (if (gx#stx-pair? _tl2585325931_)
                                (let ((_e2585525938_
                                       (gx#syntax-e _tl2585325931_)))
                                  (let ((_tl2585725945_ (##cdr _e2585525938_))
                                        (_hd2585625942_ (##car _e2585525938_)))
                                    (if (gx#stx-null? _tl2585725945_)
                                        (___kont4004840049_ _hd2585625942_)
                                        (_g2584825871_))))
                                (_g2584825871_))
                            (if (equal? _e2585425934_ 'list:)
                                (if (gx#stx-pair? _tl2585325931_)
                                    (let ((_e2586325892_
                                           (gx#syntax-e _tl2585325931_)))
                                      (let ((_tl2586525899_
                                             (##cdr _e2586325892_))
                                            (_hd2586425896_
                                             (##car _e2586325892_)))
                                        (if (gx#stx-null? _tl2586525899_)
                                            (___kont4005040051_ _hd2586425896_)
                                            (_g2584825871_))))
                                    (_g2584825871_))
                                (_g2584825871_))))
                      (_g2584825871_))))
              (_g2584825871_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4028240283_
                                            (lambda (_L25784_ _L25786_)
                                              (_generate-struct23626_
                                               (gx#stx-e _L25786_)
                                               _tgt25244_
                                               _L25784_
                                               _K25247_
                                               _E25248_)))
                                           (___kont4028440285_
                                            (lambda (_L25725_ _L25727_)
                                              (_generate-class23627_
                                               (gx#stx-e _L25727_)
                                               _tgt25244_
                                               _L25725_
                                               _K25247_
                                               _E25248_)))
                                           (___kont4028640287_
                                            (lambda (_L25628_)
                                              (let* ((_g2564225650_
                                                      (lambda (_g2564325646_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g2564325646_)))
                                                     (_g2564125669_
                                                      (lambda (_g2564325654_)
                                                        ((lambda (_L25657_)
                                                           (let ()
                                                             (cons 'if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _L25657_
                                       (cons _L25265_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'quote)
                                                         (cons _L25628_ '()))
                                                   '())))
                                 (cons _K25247_ (cons _E25248_ '()))))))
                 _g2564325654_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2564125669_
                                                 (let ((_e25673_
                                                        (gx#stx-e _L25628_)))
                                                   (if (or (symbol? _e25673_)
                                                           (keyword? _e25673_)
                                                           (immediate?
                                                            _e25673_))
                                                       '##eq?
                                                       (if (number? _e25673_)
                                                           'eqv?
                                                           'equal?)))))))
                                           (___kont4028840289_
                                            (lambda (_L25548_ _L25550_)
                                              (let* ((_g2556625574_
                                                      (lambda (_g2556725570_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g2556725570_)))
                                                     (_g2556525593_
                                                      (lambda (_g2556725578_)
                                                        ((lambda (_L25581_)
                                                           (let ()
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _L25581_
                                             (cons (cons _L25550_
                                                         (cons _L25265_ '()))
                                                   '()))
                                       '())
                                 (cons (_generate123621_
                                        _L25581_
                                        _L25548_
                                        _K25247_
                                        _E25248_)
                                       '())))))
                 _g2556725578_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2556525593_
                                                 (gx#genident 'e)))))
                                           (___kont4029040291_
                                            (lambda (_L25490_)
                                              (cons 'let
                                                    (cons (cons (cons _L25490_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _L25265_ '()))
                        '())
                  (cons _K25247_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4029240293_
                                            (lambda () _K25247_)))
                                       (if (gx#stx-pair? ___stx4025940260_)
                                           (let ((_e2529626718_
                                                  (gx#syntax-e
                                                   ___stx4025940260_)))
                                             (let ((_tl2529826725_
                                                    (##cdr _e2529626718_))
                                                   (_hd2529726722_
                                                    (##car _e2529626718_)))
                                               (if (gx#stx-datum?
                                                    _hd2529726722_)
                                                   (let ((_e2529926728_
                                                          (gx#stx-e
                                                           _hd2529726722_)))
                                                     (if (equal? _e2529926728_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '?:)
                 (if (gx#stx-pair? _tl2529826725_)
                     (let ((_e2530026732_ (gx#syntax-e _tl2529826725_)))
                       (let ((_tl2530226739_ (##cdr _e2530026732_))
                             (_hd2530126736_ (##car _e2530026732_)))
                         (___kont4026240263_ _tl2530226739_ _hd2530126736_)))
                     (_g2529225434_))
                 (if (equal? _e2529926728_ 'and:)
                     (___kont4026440265_ _tl2529826725_)
                     (if (equal? _e2529926728_ 'or:)
                         (___kont4026640267_ _tl2529826725_)
                         (if (equal? _e2529926728_ 'not:)
                             (if (gx#stx-pair? _tl2529826725_)
                                 (let ((_e2531826501_
                                        (gx#syntax-e _tl2529826725_)))
                                   (let ((_tl2532026508_ (##cdr _e2531826501_))
                                         (_hd2531926505_
                                          (##car _e2531826501_)))
                                     (if (gx#stx-null? _tl2532026508_)
                                         (___kont4026840269_ _hd2531926505_)
                                         (_g2529225434_))))
                                 (_g2529225434_))
                             (if (equal? _e2529926728_ 'cons:)
                                 (if (gx#stx-pair? _tl2529826725_)
                                     (let ((_e2532726373_
                                            (gx#syntax-e _tl2529826725_)))
                                       (let ((_tl2532926380_
                                              (##cdr _e2532726373_))
                                             (_hd2532826377_
                                              (##car _e2532726373_)))
                                         (if (gx#stx-pair? _tl2532926380_)
                                             (let ((_e2533026383_
                                                    (gx#syntax-e
                                                     _tl2532926380_)))
                                               (let ((_tl2533226390_
                                                      (##cdr _e2533026383_))
                                                     (_hd2533126387_
                                                      (##car _e2533026383_)))
                                                 (if (gx#stx-null?
                                                      _tl2533226390_)
                                                     (___kont4027040271_
                                                      _hd2533126387_
                                                      _hd2532826377_)
                                                     (_g2529225434_))))
                                             (_g2529225434_))))
                                     (_g2529225434_))
                                 (if (equal? _e2529926728_ 'null:)
                                     (if (gx#stx-null? _tl2529826725_)
                                         (___kont4027240273_)
                                         (_g2529225434_))
                                     (if (equal? _e2529926728_ 'splice:)
                                         (if (gx#stx-pair? _tl2529826725_)
                                             (let ((_e2534326289_
                                                    (gx#syntax-e
                                                     _tl2529826725_)))
                                               (let ((_tl2534526296_
                                                      (##cdr _e2534326289_))
                                                     (_hd2534426293_
                                                      (##car _e2534326289_)))
                                                 (if (gx#stx-pair?
                                                      _tl2534526296_)
                                                     (let ((_e2534626299_
                                                            (gx#syntax-e
                                                             _tl2534526296_)))
                                                       (let ((_tl2534826306_
                                                              (##cdr _e2534626299_))
                                                             (_hd2534726303_
                                                              (##car _e2534626299_)))
                                                         (if (gx#stx-null?
                                                              _tl2534826306_)
                                                             (___kont4027440275_
                                                              _hd2534726303_
                                                              _hd2534426293_)
                                                             (_g2529225434_))))
                                                     (_g2529225434_))))
                                             (_g2529225434_))
                                         (if (equal? _e2529926728_ 'box:)
                                             (if (gx#stx-pair? _tl2529826725_)
                                                 (let ((_e2535426213_
                                                        (gx#syntax-e
                                                         _tl2529826725_)))
                                                   (let ((_tl2535626220_
                                                          (##cdr _e2535426213_))
                                                         (_hd2535526217_
                                                          (##car _e2535426213_)))
                                                     (if (gx#stx-null?
                                                          _tl2535626220_)
                                                         (___kont4027640277_
                                                          _hd2535526217_)
                                                         (_g2529225434_))))
                                                 (_g2529225434_))
                                             (if (equal? _e2529926728_
                                                         'values:)
                                                 (if (gx#stx-pair?
                                                      _tl2529826725_)
                                                     (let ((_e2536226018_
                                                            (gx#syntax-e
                                                             _tl2529826725_)))
                                                       (let ((_tl2536426025_
                                                              (##cdr _e2536226018_))
                                                             (_hd2536326022_
                                                              (##car _e2536226018_)))
                                                         (if (gx#stx-null?
                                                              _tl2536426025_)
                                                             (___kont4027840279_
                                                              _hd2536326022_)
                                                             (_g2529225434_))))
                                                     (_g2529225434_))
                                                 (if (equal? _e2529926728_
                                                             'vector:)
                                                     (if (gx#stx-pair?
                                                          _tl2529826725_)
                                                         (let ((_e2537025823_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2529826725_)))
                   (let ((_tl2537225830_ (##cdr _e2537025823_))
                         (_hd2537125827_ (##car _e2537025823_)))
                     (if (gx#stx-null? _tl2537225830_)
                         (___kont4028040281_ _hd2537125827_)
                         (_g2529225434_))))
                 (_g2529225434_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (equal? _e2529926728_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'struct:)
                 (if (gx#stx-pair? _tl2529826725_)
                     (let ((_e2537925764_ (gx#syntax-e _tl2529826725_)))
                       (let ((_tl2538125771_ (##cdr _e2537925764_))
                             (_hd2538025768_ (##car _e2537925764_)))
                         (if (gx#stx-pair? _tl2538125771_)
                             (let ((_e2538225774_
                                    (gx#syntax-e _tl2538125771_)))
                               (let ((_tl2538425781_ (##cdr _e2538225774_))
                                     (_hd2538325778_ (##car _e2538225774_)))
                                 (if (gx#stx-null? _tl2538425781_)
                                     (___kont4028240283_
                                      _hd2538325778_
                                      _hd2538025768_)
                                     (_g2529225434_))))
                             (_g2529225434_))))
                     (_g2529225434_))
                 (if (equal? _e2529926728_ 'class:)
                     (if (gx#stx-pair? _tl2529826725_)
                         (let ((_e2539125705_ (gx#syntax-e _tl2529826725_)))
                           (let ((_tl2539325712_ (##cdr _e2539125705_))
                                 (_hd2539225709_ (##car _e2539125705_)))
                             (if (gx#stx-pair? _tl2539325712_)
                                 (let ((_e2539425715_
                                        (gx#syntax-e _tl2539325712_)))
                                   (let ((_tl2539625722_ (##cdr _e2539425715_))
                                         (_hd2539525719_
                                          (##car _e2539425715_)))
                                     (if (gx#stx-null? _tl2539625722_)
                                         (___kont4028440285_
                                          _hd2539525719_
                                          _hd2539225709_)
                                         (_g2529225434_))))
                                 (_g2529225434_))))
                         (_g2529225434_))
                     (if (equal? _e2529926728_ 'datum:)
                         (if (gx#stx-pair? _tl2529826725_)
                             (let ((_e2540225618_
                                    (gx#syntax-e _tl2529826725_)))
                               (let ((_tl2540425625_ (##cdr _e2540225618_))
                                     (_hd2540325622_ (##car _e2540225618_)))
                                 (if (gx#stx-null? _tl2540425625_)
                                     (___kont4028640287_ _hd2540325622_)
                                     (_g2529225434_))))
                             (_g2529225434_))
                         (if (equal? _e2529926728_ 'apply:)
                             (if (gx#stx-pair? _tl2529826725_)
                                 (let ((_e2541125528_
                                        (gx#syntax-e _tl2529826725_)))
                                   (let ((_tl2541325535_ (##cdr _e2541125528_))
                                         (_hd2541225532_
                                          (##car _e2541125528_)))
                                     (if (gx#stx-pair? _tl2541325535_)
                                         (let ((_e2541425538_
                                                (gx#syntax-e _tl2541325535_)))
                                           (let ((_tl2541625545_
                                                  (##cdr _e2541425538_))
                                                 (_hd2541525542_
                                                  (##car _e2541425538_)))
                                             (if (gx#stx-null? _tl2541625545_)
                                                 (___kont4028840289_
                                                  _hd2541525542_
                                                  _hd2541225532_)
                                                 (_g2529225434_))))
                                         (_g2529225434_))))
                                 (_g2529225434_))
                             (if (equal? _e2529926728_ 'var:)
                                 (if (gx#stx-pair? _tl2529826725_)
                                     (let ((_e2542225480_
                                            (gx#syntax-e _tl2529826725_)))
                                       (let ((_tl2542425487_
                                              (##cdr _e2542225480_))
                                             (_hd2542325484_
                                              (##car _e2542225480_)))
                                         (if (gx#stx-null? _tl2542425487_)
                                             (___kont4029040291_
                                              _hd2542325484_)
                                             (_g2529225434_))))
                                     (_g2529225434_))
                                 (if (equal? _e2529926728_ 'any:)
                                     (if (gx#stx-null? _tl2529826725_)
                                         (___kont4029240293_)
                                         (_g2529225434_))
                                     (_g2529225434_))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2529225434_))))
                                           (_g2529225434_))))))
                               _g2525125262_))))
                      (_g2524927027_ _tgt25244_))))
                 (_generate-splice23623_
                  (lambda (_tgt24616_ _hd24618_ _rest24619_ _K24620_ _E24621_)
                    (let* ((_g2462324640_
                            (lambda (_g2462424636_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2462424636_)))
                           (_g2462225240_
                            (lambda (_g2462424644_)
                              (if (gx#stx-pair/null? _g2462424644_)
                                  (let ((_g41919_
                                         (gx#syntax-split-splice
                                          _g2462424644_
                                          '0)))
                                    (begin
                                      (let ((_g41920_
                                             (if (##values? _g41919_)
                                                 (##vector-length _g41919_)
                                                 1)))
                                        (if (not (##fx= _g41920_ 2))
                                            (error "Context expects 2 values"
                                                   _g41920_)))
                                      (let ((_target2462624647_
                                             (##vector-ref _g41919_ 0))
                                            (_tl2462824650_
                                             (##vector-ref _g41919_ 1)))
                                        (if (gx#stx-null? _tl2462824650_)
                                            (letrec ((_loop2462924653_
                                                      (lambda (_hd2462724657_
                                                               _var2463324660_)
                                                        (if (gx#stx-pair?
                                                             _hd2462724657_)
                                                            (let ((_e2463024663_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd2462724657_)))
                      (let ((_lp-hd2463124667_ (##car _e2463024663_))
                            (_lp-tl2463224670_ (##cdr _e2463024663_)))
                        (_loop2462924653_
                         _lp-tl2463224670_
                         (cons _lp-hd2463124667_ _var2463324660_))))
                    (let ((_var2463424673_ (reverse _var2463324660_)))
                      ((lambda (_L24677_)
                         (let ()
                           (let* ((_g2469324710_
                                   (lambda (_g2469424706_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2469424706_)))
                                  (_g2469225228_
                                   (lambda (_g2469424714_)
                                     (if (gx#stx-pair/null? _g2469424714_)
                                         (let ((_g41921_
                                                (gx#syntax-split-splice
                                                 _g2469424714_
                                                 '0)))
                                           (begin
                                             (let ((_g41922_
                                                    (if (##values? _g41921_)
                                                        (##vector-length
                                                         _g41921_)
                                                        1)))
                                               (if (not (##fx= _g41922_ 2))
                                                   (error "Context expects 2 values"
                                                          _g41922_)))
                                             (let ((_target2469624717_
                                                    (##vector-ref _g41921_ 0))
                                                   (_tl2469824720_
                                                    (##vector-ref _g41921_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2469824720_)
                                                   (letrec ((_loop2469924723_
                                                             (lambda (_hd2469724727_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _var-r2470324730_)
                       (if (gx#stx-pair? _hd2469724727_)
                           (let ((_e2470024733_ (gx#syntax-e _hd2469724727_)))
                             (let ((_lp-hd2470124737_ (##car _e2470024733_))
                                   (_lp-tl2470224740_ (##cdr _e2470024733_)))
                               (_loop2469924723_
                                _lp-tl2470224740_
                                (cons _lp-hd2470124737_ _var-r2470324730_))))
                           (let ((_var-r2470424743_
                                  (reverse _var-r2470324730_)))
                             ((lambda (_L24747_)
                                (let ()
                                  (let* ((_g2476424781_
                                          (lambda (_g2476524777_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g2476524777_)))
                                         (_g2476325216_
                                          (lambda (_g2476524785_)
                                            (if (gx#stx-pair/null?
                                                 _g2476524785_)
                                                (let ((_g41923_
                                                       (gx#syntax-split-splice
                                                        _g2476524785_
                                                        '0)))
                                                  (begin
                                                    (let ((_g41924_
                                                           (if (##values?
                                                                _g41923_)
                                                               (##vector-length
                                                                _g41923_)
                                                               1)))
                                                      (if (not (##fx= _g41924_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                  (error "Context expects 2 values" _g41924_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2476724788_
                                                           (##vector-ref
                                                            _g41923_
                                                            0))
                                                          (_tl2476924791_
                                                           (##vector-ref
                                                            _g41923_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl2476924791_)
                                                          (letrec ((_loop2477024794_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2476824798_ _init2477424801_)
                              (if (gx#stx-pair? _hd2476824798_)
                                  (let ((_e2477124804_
                                         (gx#syntax-e _hd2476824798_)))
                                    (let ((_lp-hd2477224808_
                                           (##car _e2477124804_))
                                          (_lp-tl2477324811_
                                           (##cdr _e2477124804_)))
                                      (_loop2477024794_
                                       _lp-tl2477324811_
                                       (cons _lp-hd2477224808_
                                             _init2477424801_))))
                                  (let ((_init2477524814_
                                         (reverse _init2477424801_)))
                                    ((lambda (_L24818_)
                                       (let ()
                                         (let* ((_g2483524843_
                                                 (lambda (_g2483624839_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g2483624839_)))
                                                (_g2483425212_
                                                 (lambda (_g2483624847_)
                                                   ((lambda (_L24850_)
                                                      (let ()
                                                        (let* ((_g2486324871_
                                                                (lambda (_g2486424867_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g2486424867_)))
                       (_g2486225208_
                        (lambda (_g2486424875_)
                          ((lambda (_L24878_)
                             (let ()
                               (let* ((_g2489124899_
                                       (lambda (_g2489224895_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2489224895_)))
                                      (_g2489025204_
                                       (lambda (_g2489224903_)
                                         ((lambda (_L24906_)
                                            (let ()
                                              (let* ((_g2491924927_
                                                      (lambda (_g2492024923_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g2492024923_)))
                                                     (_g2491825200_
                                                      (lambda (_g2492024931_)
                                                        ((lambda (_L24934_)
                                                           (let ()
                                                             (let* ((_g2494724955_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g2494824951_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g2494824951_)))
                            (_g2494625196_
                             (lambda (_g2494824959_)
                               ((lambda (_L24962_)
                                  (let ()
                                    (let* ((_g2497524983_
                                            (lambda (_g2497624979_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2497624979_)))
                                           (_g2497425192_
                                            (lambda (_g2497624987_)
                                              ((lambda (_L24990_)
                                                 (let ()
                                                   (let* ((_g2500325011_
                                                           (lambda (_g2500425007_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g2500425007_)))
                                                          (_g2500225188_
                                                           (lambda (_g2500425015_)
                                                             ((lambda (_L25018_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g2503125039_
                                  (lambda (_g2503225035_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g2503225035_)))
                                 (_g2503025173_
                                  (lambda (_g2503225043_)
                                    ((lambda (_L25046_)
                                       (let ()
                                         (let* ((_g2505925067_
                                                 (lambda (_g2506025063_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g2506025063_)))
                                                (_g2505825161_
                                                 (lambda (_g2506025071_)
                                                   ((lambda (_L25074_)
                                                      (let ()
                                                        (let* ((_g2508725095_
                                                                (lambda (_g2508825091_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g2508825091_)))
                       (_g2508625157_
                        (lambda (_g2508825099_)
                          ((lambda (_L25102_)
                             (let ()
                               (let ()
                                 (cons (gx#datum->syntax '#f 'letrec)
                                       (cons (cons (cons _L24878_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lambda)
                             (cons (cons _L24990_
                                         (foldr (lambda (_g2511625127_
                                                         _g2511725130_)
                                                  (cons _g2511625127_
                                                        _g2511725130_))
                                                '()
                                                _L24677_))
                                   (cons _L25018_ '())))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons _L24934_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'lambda)
                                   (cons (cons _L24962_
                                               (cons _L24990_
                                                     (foldr (lambda (_g2511825133_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g2511925136_)
                      (cons _g2511825133_ _g2511925136_))
                    '()
                    _L24747_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons _L25102_ '())))
                             '()))
                 (cons (cons _L24906_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons (cons _L24990_
                                                     (foldr (lambda (_g2512025139_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g2512125142_)
                      (cons _g2512025139_ _g2512125142_))
                    '()
                    _L24747_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'pair?)
                               (cons _L24990_ '()))
                         (cons (cons _L24934_
                                     (cons (cons (gx#datum->syntax '#f '##car)
                                                 (cons _L24990_ '()))
                                           (cons _L24990_
                                                 (foldr (lambda (_g2512225145_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2512325148_)
                  (cons _g2512225145_ _g2512325148_))
                '()
                _L24747_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _L25074_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   '()))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _L24906_
                                                         (cons _L24850_
                                                               (foldr (lambda (_g2512425151_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g2512525154_)
                                (cons _g2512425151_ _g2512525154_))
                              '()
                              _L24818_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))))
                           _g2508825099_))))
                  (_g2508625157_
                   (_generate123621_ _L24962_ _hd24618_ _L25046_ _L25074_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2506025071_))))
                                           (_g2505825161_
                                            (cons _L24878_
                                                  (cons _L24990_
                                                        (foldr (lambda (_g2516425167_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2516525170_)
                         (cons (cons (gx#datum->syntax '#f 'reverse)
                                     (cons _g2516425167_ '()))
                               _g2516525170_))
                       '()
                       _L24747_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _g2503225043_))))
                            (_g2503025173_
                             (cons _L24906_
                                   (cons (cons (gx#datum->syntax '#f '##cdr)
                                               (cons _L24990_ '()))
                                         (begin
                                           (gx#syntax-check-splice-targets
                                            _L24747_
                                            _L24677_)
                                           (foldr (lambda (_g2517625180_
                                                           _g2517725183_
                                                           _g2517825185_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'cons)
                        (cons _g2517725183_ (cons _g2517625180_ '())))
                  _g2517825185_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()
                                                  _L24747_
                                                  _L24677_))))))))
                      _g2500425015_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2500225188_
                                                      (_generate123621_
                                                       _L24990_
                                                       _rest24619_
                                                       _K24620_
                                                       _E24621_)))))
                                               _g2497624987_))))
                                      (_g2497425192_ (gx#genident 'rest)))))
                                _g2494824959_))))
                       (_g2494625196_ (gx#genident 'hd)))))
                 _g2492024931_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2491825200_
                                                 (gx#genident 'splice-try)))))
                                          _g2489224903_))))
                                 (_g2489025204_ (gx#genident 'splice-loop)))))
                           _g2486424875_))))
                  (_g2486225208_ (gx#genident 'splice-rest)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2483624847_))))
                                           (_g2483425212_ _tgt24616_))))
                                     _init2477524814_))))))
                    (_loop2477024794_ _target2476724788_ '()))
                  (_g2476424781_ _g2476524785_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2476424781_
                                                 _g2476524785_)))))
                                    (_g2476325216_
                                     (make-list
                                      (gx#stx-length
                                       (foldr (lambda (_g2521925222_
                                                       _g2522025225_)
                                                (cons _g2521925222_
                                                      _g2522025225_))
                                              '()
                                              _L24677_))
                                      (cons (gx#datum->syntax '#f '@list)
                                            '()))))))
                              _var-r2470424743_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2469924723_
                                                      _target2469624717_
                                                      '()))
                                                   (_g2469324710_
                                                    _g2469424714_)))))
                                         (_g2469324710_ _g2469424714_)))))
                             (_g2469225228_
                              (gx#gentemps
                               (foldr (lambda (_g2523125234_ _g2523225237_)
                                        (cons _g2523125234_ _g2523225237_))
                                      '()
                                      _L24677_))))))
                       _var2463424673_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop2462924653_
                                               _target2462624647_
                                               '()))
                                            (_g2462324640_ _g2462424644_)))))
                                  (_g2462324640_ _g2462424644_)))))
                      (_g2462225240_
                       (|gerbil/core$<match>[1]#match-pattern-vars|
                        _hd24618_)))))
                 (_generate-simple-vector23624_
                  (lambda (_tgt24458_
                           _body24460_
                           _start24461_
                           _K24462_
                           _E24463_)
                    (let _recur24465_ ((_rest24468_ _body24460_)
                                       (_off24470_ _start24461_))
                      (let* ((___stx4061740618_ _rest24468_)
                             (_g2447324485_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx4061740618_))))
                        (let ((___kont4062040621_
                               (lambda (_L24513_ _L24515_)
                                 (let* ((_g2453024549_
                                         (lambda (_g2453124545_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g2453124545_)))
                                        (_g2452924608_
                                         (lambda (_g2453124553_)
                                           (if (gx#stx-pair? _g2453124553_)
                                               (let ((_e2453524556_
                                                      (gx#syntax-e
                                                       _g2453124553_)))
                                                 (let ((_hd2453624560_
                                                        (##car _e2453524556_))
                                                       (_tl2453724563_
                                                        (##cdr _e2453524556_)))
                                                   (if (gx#stx-pair?
                                                        _tl2453724563_)
                                                       (let ((_e2453824566_
                                                              (gx#syntax-e
                                                               _tl2453724563_)))
                                                         (let ((_hd2453924570_
                                                                (##car _e2453824566_))
                                                               (_tl2454024573_
                                                                (##cdr _e2453824566_)))
                                                           (if (gx#stx-pair?
                                                                _tl2454024573_)
                                                               (let ((_e2454124576_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2454024573_)))
                         (let ((_hd2454224580_ (##car _e2454124576_))
                               (_tl2454324583_ (##cdr _e2454124576_)))
                           (if (gx#stx-null? _tl2454324583_)
                               ((lambda (_L24586_ _L24588_ _L24589_)
                                  (let ()
                                    (cons 'let
                                          (cons (cons (cons _L24589_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '##vector-ref)
                                (cons _L24588_ (cons _L24586_ '())))
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (_generate123621_
                                                       _L24589_
                                                       _L24515_
                                                       (_recur24465_
                                                        _L24513_
                                                        (fx1+ _off24470_))
                                                       _E24463_)
                                                      '())))))
                                _hd2454224580_
                                _hd2453924570_
                                _hd2453624560_)
                               (_g2453024549_ _g2453124553_))))
                       (_g2453024549_ _g2453124553_))))
               (_g2453024549_ _g2453124553_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2453024549_
                                                _g2453124553_)))))
                                   (_g2452924608_
                                    (list (gx#genident 'e)
                                          _tgt24458_
                                          _off24470_)))))
                              (___kont4062240623_ (lambda () _K24462_)))
                          (if (gx#stx-pair? ___stx4061740618_)
                              (let ((_e2447724503_
                                     (gx#syntax-e ___stx4061740618_)))
                                (let ((_tl2447924510_ (##cdr _e2447724503_))
                                      (_hd2447824507_ (##car _e2447724503_)))
                                  (___kont4062040621_
                                   _tl2447924510_
                                   _hd2447824507_)))
                              (___kont4062240623_)))))))
                 (_generate-list-vector23625_
                  (lambda (_tgt24350_
                           _body24352_
                           _->list24353_
                           _K24354_
                           _E24355_)
                    (let* ((_g2435724365_
                            (lambda (_g2435824361_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2435824361_)))
                           (_g2435624454_
                            (lambda (_g2435824369_)
                              ((lambda (_L24372_)
                                 (let ()
                                   (let* ((_g2438424392_
                                           (lambda (_g2438524388_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g2438524388_)))
                                          (_g2438324450_
                                           (lambda (_g2438524396_)
                                             ((lambda (_L24399_)
                                                (let ()
                                                  (let* ((_g2441224420_
                                                          (lambda (_g2441324416_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g2441324416_)))
                                                         (_g2441124442_
                                                          (lambda (_g2441324424_)
                                                            ((lambda (_L24427_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (cons 'let
                                 (cons (cons (cons _L24372_
                                                   (cons _L24427_ '()))
                                             '())
                                       (cons (_generate123621_
                                              _L24372_
                                              _body24352_
                                              _K24354_
                                              _E24355_)
                                             '()))))))
                     _g2441324424_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2441124442_
                                                     (let ((_$e24446_
                                                            _->list24353_))
                                                       (if (eq? 'values->list
                                                                _$e24446_)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'values->list)
                         (cons _L24399_ '()))
                   (if (eq? 'vector->list _$e24446_)
                       (cons (gx#datum->syntax '#f '##vector->list)
                             (cons _L24399_ '()))
                       (if (eq? 'struct->list _$e24446_)
                           (cons (gx#datum->syntax '#f '##cdr)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              '##vector->list)
                                             (cons _L24399_ '()))
                                       '()))
                           (gx#raise-syntax-error
                            '#f
                            '"Unexpected list conversion"
                            _stx23614_
                            _->list24353_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _g2438524396_))))
                                     (_g2438324450_ _tgt24350_))))
                               _g2435824369_))))
                      (_g2435624454_ (gx#genident 'e)))))
                 (_generate-struct23626_
                  (lambda (_info24008_
                           _tgt24010_
                           _body24011_
                           _K24012_
                           _E24013_)
                    (let* ((_rtd24015_
                            (if (|gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info?|
                                 _info24008_)
                                (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
                                 _info24008_)
                                '#f))
                           (_fields24025_
                            (let _lp24018_ ((_rtd24021_ _rtd24015_)
                                            (_k24023_ '0))
                              (if _rtd24021_
                                  (_lp24018_
                                   (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
                                    (##structure-ref
                                     _rtd24021_
                                     '2
                                     |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
                                     '#f))
                                   (fx+ (length (##structure-ref
                                                 _rtd24021_
                                                 '6
                                                 |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|
                                                 '#f))
                                        _k24023_))
                                  _k24023_)))
                           (_final?24028_
                            (if _rtd24015_
                                (assgetq 'final:
                                         (##structure-ref
                                          _rtd24015_
                                          '5
                                          |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
                                          '#f))
                                '#f))
                           (_g2403124039_
                            (lambda (_g2403224035_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2403224035_)))
                           (_g2403024346_
                            (lambda (_g2403224043_)
                              ((lambda (_L24046_)
                                 (let ()
                                   (let* ((_g2406124069_
                                           (lambda (_g2406224065_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g2406224065_)))
                                          (_g2406024248_
                                           (lambda (_g2406224073_)
                                             ((lambda (_L24076_)
                                                (let ()
                                                  (let ()
                                                    (let* ((___stx4063340634_
                                                            _body24011_)
                                                           (_g2409224115_
                                                            (lambda ()
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               ___stx4063340634_))))
                                                      (let ((___kont4063640637_
                                                             (lambda (_L24194_)
                                                               (let ((_K24208_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (_generate-simple-vector23624_
                               _tgt24010_
                               _L24194_
                               '1
                               _K24012_
                               _E24013_))
                             (_len24210_ (gx#stx-length _L24194_)))
                         (if (and _rtd24015_ (fx<= _len24210_ _fields24025_))
                             (cons 'if
                                   (cons _L24076_
                                         (cons _K24208_ (cons _E24013_ '()))))
                             (let* ((_g2421224220_
                                     (lambda (_g2421324216_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g2421324216_)))
                                    (_g2421124240_
                                     (lambda (_g2421324224_)
                                       ((lambda (_L24227_)
                                          (let ()
                                            (cons 'if
                                                  (cons _L24076_
                                                        (cons (cons 'if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f '##fx<)
                                        (cons _L24227_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '##vector-length)
                                                          (cons _L24046_ '()))
                                                    '())))
                                  (cons _K24208_ (cons _E24013_ '()))))
                      (cons _E24013_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g2421324224_))))
                               (_g2421124240_ _len24210_))))))
                    (___kont4063840639_
                     (lambda (_L24146_)
                       (cons 'if
                             (cons _L24076_
                                   (cons (_generate-list-vector23625_
                                          _tgt24010_
                                          _L24146_
                                          'struct->list
                                          _K24012_
                                          _E24013_)
                                         (cons _E24013_ '())))))))
                (if (gx#stx-pair? ___stx4063340634_)
                    (let ((_e2409524170_ (gx#syntax-e ___stx4063340634_)))
                      (let ((_tl2409724177_ (##cdr _e2409524170_))
                            (_hd2409624174_ (##car _e2409524170_)))
                        (if (gx#stx-datum? _hd2409624174_)
                            (let ((_e2409824180_ (gx#stx-e _hd2409624174_)))
                              (if (equal? _e2409824180_ 'simple:)
                                  (if (gx#stx-pair? _tl2409724177_)
                                      (let ((_e2409924184_
                                             (gx#syntax-e _tl2409724177_)))
                                        (let ((_tl2410124191_
                                               (##cdr _e2409924184_))
                                              (_hd2410024188_
                                               (##car _e2409924184_)))
                                          (if (gx#stx-null? _tl2410124191_)
                                              (___kont4063640637_
                                               _hd2410024188_)
                                              (_g2409224115_))))
                                      (_g2409224115_))
                                  (if (equal? _e2409824180_ 'list:)
                                      (if (gx#stx-pair? _tl2409724177_)
                                          (let ((_e2410724136_
                                                 (gx#syntax-e _tl2409724177_)))
                                            (let ((_tl2410924143_
                                                   (##cdr _e2410724136_))
                                                  (_hd2410824140_
                                                   (##car _e2410724136_)))
                                              (if (gx#stx-null? _tl2410924143_)
                                                  (___kont4063840639_
                                                   _hd2410824140_)
                                                  (_g2409224115_))))
                                          (_g2409224115_))
                                      (_g2409224115_))))
                            (_g2409224115_))))
                    (_g2409224115_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _g2406224073_))))
                                     (_g2406024248_
                                      (if (|gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info?|
                                           _info24008_)
                                          (let* ((_g2425224260_
                                                  (lambda (_g2425324256_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2425324256_)))
                                                 (_g2425124279_
                                                  (lambda (_g2425324264_)
                                                    ((lambda (_L24267_)
                                                       (let ()
                                                         (cons _L24267_
                                                               (cons _L24046_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2425324264_))))
                                            (_g2425124279_
                                             (cadddr (|gerbil/core$<MOP>$<MOP:2>[1]#expander-type-identifiers|
                                                      _info24008_))))
                                          (let* ((_g2428324298_
                                                  (lambda (_g2428424294_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2428424294_)))
                                                 (_g2428224342_
                                                  (lambda (_g2428424302_)
                                                    (if (gx#stx-pair?
                                                         _g2428424302_)
                                                        (let ((_e2428724305_
                                                               (gx#syntax-e
                                                                _g2428424302_)))
                                                          (let ((_hd2428824309_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2428724305_))
                        (_tl2428924312_ (##cdr _e2428724305_)))
                    (if (gx#stx-pair? _tl2428924312_)
                        (let ((_e2429024315_ (gx#syntax-e _tl2428924312_)))
                          (let ((_hd2429124319_ (##car _e2429024315_))
                                (_tl2429224322_ (##cdr _e2429024315_)))
                            (if (gx#stx-null? _tl2429224322_)
                                ((lambda (_L24325_ _L24327_)
                                   (let ()
                                     (cons _L24325_
                                           (cons _L24327_
                                                 (cons _L24046_ '())))))
                                 _hd2429124319_
                                 _hd2428824309_)
                                (_g2428324298_ _g2428424302_))))
                        (_g2428324298_ _g2428424302_))))
                (_g2428324298_ _g2428424302_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2428224342_
                                             (list (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                    _info24008_)
                                                   (if _final?24028_
                                                       (gx#datum->syntax
                                                        '#f
                                                        'direct-struct-instance?)
                                                       (gx#datum->syntax
                                                        '#f
                                                        'struct-instance?))))))))))
                               _g2403224043_))))
                      (_g2403024346_ _tgt24010_))))
                 (_generate-class23627_
                  (lambda (_info23629_
                           _tgt23631_
                           _body23632_
                           _K23633_
                           _E23634_)
                    (letrec* ((_rtd23636_
                               (if (|gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info?|
                                    _info23629_)
                                   (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
                                    _info23629_)
                                   '#f))
                              (_known-slot?23638_
                               (if _rtd23636_
                                   (lambda (_key24002_)
                                     (let ((_slot24005_
                                            (keyword->symbol
                                             (gx#stx-e _key24002_))))
                                       (_rtd-known-slot?23640_
                                        _rtd23636_
                                        _slot24005_)))
                                   false))
                              (_final?23639_
                               (if _rtd23636_
                                   (assgetq 'final:
                                            (##structure-ref
                                             _rtd23636_
                                             '5
                                             |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
                                             '#f))
                                   '#f))
                              (_rtd-known-slot?23640_
                               (lambda (_rtd23989_ _slot23991_)
                                 (if _rtd23989_
                                     (let ((_$e23993_
                                            (memq _slot23991_
                                                  (##structure-ref
                                                   _rtd23989_
                                                   '6
                                                   |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
                                                   '#f))))
                                       (if _$e23993_
                                           _$e23993_
                                           (ormap (lambda (_g2399623998_)
                                                    (_rtd-known-slot?23640_
                                                     _g2399623998_
                                                     _slot23991_))
                                                  (map |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
                                                       (##structure-ref
                                                        _rtd23989_
                                                        '2
                                                        |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
                                                        '#f)))))
                                     '#f)))
                              (_recur23641_
                               (lambda (_klass23775_ _rest23777_)
                                 (let* ((___stx4068340684_ _rest23777_)
                                        (_g2378023796_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx4068340684_))))
                                   (let ((___kont4068640687_
                                          (lambda (_L23834_ _L23836_ _L23837_)
                                            (let* ((_g2385323861_
                                                    (lambda (_g2385423857_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g2385423857_)))
                                                   (_g2385223981_
                                                    (lambda (_g2385423865_)
                                                      ((lambda (_L23868_)
                                                         (let ()
                                                           (let* ((_g2388023888_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g2388123884_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2388123884_)))
                          (_g2387923977_
                           (lambda (_g2388123892_)
                             ((lambda (_L23895_)
                                (let ()
                                  (let* ((_g2390823916_
                                          (lambda (_g2390923912_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g2390923912_)))
                                         (_g2390723973_
                                          (lambda (_g2390923920_)
                                            ((lambda (_L23923_)
                                               (let ()
                                                 (let* ((_g2393623944_
                                                         (lambda (_g2393723940_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2393723940_)))
                                                        (_g2393523969_
                                                         (lambda (_g2393723948_)
                                                           ((lambda (_L23951_)
                                                              (let ()
                                                                (let ((_K23964_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons 'let
                                     (cons (cons (cons _L23951_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##vector-ref)
                           (cons _L23868_
                                 (cons (cons (gx#datum->syntax '#f 'fx1+)
                                             (cons _L23923_ '()))
                                       '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (_generate123621_
                                                  _L23951_
                                                  _L23836_
                                                  (_recur23641_
                                                   _klass23775_
                                                   _L23834_)
                                                  _E23634_)
                                                 '())))))
                          (if (_known-slot?23638_ _L23837_)
                              (cons 'let
                                    (cons (cons (cons _L23923_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'class-slot-offset)
                          (cons _L23895_ (cons _L23837_ '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons _K23964_ '())))
                              (cons 'let
                                    (cons (cons (cons _L23923_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'class-slot-offset)
                          (cons _L23895_ (cons _L23837_ '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons 'if
                                                      (cons _L23923_
                                                            (cons _K23964_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _E23634_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))))))
                    _g2393723948_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2393523969_
                                                    (gx#genident 'e)))))
                                             _g2390923920_))))
                                    (_g2390723973_ (gx#genident 'slot)))))
                              _g2388123892_))))
                     (_g2387923977_ _klass23775_))))
               _g2385423865_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2385223981_ _tgt23631_))))
                                         (___kont4068840689_
                                          (lambda () _K23633_)))
                                     (if (gx#stx-pair? ___stx4068340684_)
                                         (let ((_e2378523814_
                                                (gx#syntax-e
                                                 ___stx4068340684_)))
                                           (let ((_tl2378723821_
                                                  (##cdr _e2378523814_))
                                                 (_hd2378623818_
                                                  (##car _e2378523814_)))
                                             (if (gx#stx-pair? _tl2378723821_)
                                                 (let ((_e2378823824_
                                                        (gx#syntax-e
                                                         _tl2378723821_)))
                                                   (let ((_tl2379023831_
                                                          (##cdr _e2378823824_))
                                                         (_hd2378923828_
                                                          (##car _e2378823824_)))
                                                     (___kont4068640687_
                                                      _tl2379023831_
                                                      _hd2378923828_
                                                      _hd2378623818_)))
                                                 (___kont4068840689_))))
                                         (___kont4068840689_)))))))
                      (let* ((_g2364323651_
                              (lambda (_g2364423647_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2364423647_)))
                             (_g2364223771_
                              (lambda (_g2364423655_)
                                ((lambda (_L23658_)
                                   (let ()
                                     (let* ((_g2367323681_
                                             (lambda (_g2367423677_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2367423677_)))
                                            (_g2367223767_
                                             (lambda (_g2367423685_)
                                               ((lambda (_L23688_)
                                                  (let ()
                                                    (let* ((_g2370123709_
                                                            (lambda (_g2370223705_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g2370223705_)))
                                                           (_g2370023763_
                                                            (lambda (_g2370223713_)
                                                              ((lambda (_L23716_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2372923737_
                                   (lambda (_g2373023733_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2373023733_)))
                                  (_g2372823759_
                                   (lambda (_g2373023741_)
                                     ((lambda (_L23744_)
                                        (let ()
                                          (let ()
                                            (cons 'if
                                                  (cons (cons _L23744_
                                                              (cons _L23716_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _L23688_ '())))
                (cons (cons 'let
                            (cons (cons (cons _L23658_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'object-type)
                                                          (cons _L23688_ '()))
                                                    '()))
                                        '())
                                  (cons (_recur23641_ _L23658_ _body23632_)
                                        '())))
                      (cons _E23634_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2373023741_))))
                             (_g2372823759_
                              (if _final?23639_
                                  (gx#datum->syntax
                                   '#f
                                   'direct-class-instance?)
                                  (gx#datum->syntax '#f 'class-instance?))))))
                       _g2370223713_))))
              (_g2370023763_
               (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                _info23629_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2367423685_))))
                                       (_g2367223767_ _tgt23631_))))
                                 _g2364423655_))))
                        (_g2364223771_ (gx#genident 'class)))))))
          (_generate123621_ _tgt23616_ _ptree23617_ _K23618_ _E23619_))))
    (define |gerbil/core$<match>[1]#generate-match*|
      (lambda (_stx22510_ _tgt-lst22512_ _clauses22513_)
        (letrec ((_parse-body22515_
                  (lambda (_hd-len23436_)
                    (let _lp23439_ ((_rest23442_ _clauses22513_)
                                    (_r23444_ '()))
                      (let* ((___stx4073340734_ _rest23442_)
                             (_g2344723459_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx4073340734_))))
                        (let ((___kont4073640737_
                               (lambda (_L23487_ _L23489_)
                                 (let* ((___stx4070540706_ _L23489_)
                                        (_g2350623522_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx4070540706_))))
                                   (let ((___kont4070840709_
                                          (lambda (_L23591_)
                                            (if (gx#stx-null? _L23487_)
                                                (cons (cons (gx#genident 'else)
                                                            (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'begin) _L23591_)
                                 (let ((_$e23602_ (gx#stx-source _L23489_)))
                                   (if _$e23602_
                                       _$e23602_
                                       (gx#stx-source _stx22510_))))
                                '())))
              _r23444_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; misplaced else"
                                                 _stx22510_
                                                 _L23489_))))
                                         (___kont4071040711_
                                          (lambda (_L23550_ _L23552_)
                                            (_lp23439_
                                             _L23487_
                                             (cons (cons (gx#genident
                                                          'try-match)
                                                         (cons (gx#stx-map
                                                                (lambda (_g2356423566_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (|gerbil/core$<match>[1]#parse-match-pattern__%|
                           _g2356423566_
                           _stx22510_))
                        _L23552_)
                       (cons (gx#stx-wrap-source
                              (cons (gx#datum->syntax '#f 'begin) _L23550_)
                              (let ((_$e23570_ (gx#stx-source _L23489_)))
                                (if _$e23570_
                                    _$e23570_
                                    (gx#stx-source _stx22510_))))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _r23444_))))
                                         (___kont4071240713_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; illegal match clause"
                                             _stx22510_
                                             _L23489_))))
                                     (let* ((___match4073040731_
                                             (lambda (_e2351423540_
                                                      _hd2351523544_
                                                      _tl2351623547_)
                                               (let ((_L23550_ _tl2351623547_)
                                                     (_L23552_ _hd2351523544_))
                                                 (if (and (gx#stx-list?
                                                           _L23552_)
                                                          (fx= (gx#stx-length
                                                                _L23552_)
                                                               _hd-len23436_)
                                                          (gx#stx-list?
                                                           _L23550_)
                                                          (not (gx#stx-null?
                                                                _L23550_)))
                                                     (___kont4071040711_
                                                      _L23550_
                                                      _L23552_)
                                                     (___kont4071240713_)))))
                                            (___match4072440725_
                                             (lambda (_e2350923581_
                                                      _hd2351023585_
                                                      _tl2351123588_)
                                               (let ((_L23591_ _tl2351123588_))
                                                 (if (and (gx#stx-list?
                                                           _L23591_)
                                                          (not (gx#stx-null?
                                                                _L23591_)))
                                                     (___kont4070840709_
                                                      _L23591_)
                                                     (___match4073040731_
                                                      _e2350923581_
                                                      _hd2351023585_
                                                      _tl2351123588_))))))
                                       (if (gx#stx-pair? ___stx4070540706_)
                                           (let ((_e2350923581_
                                                  (gx#syntax-e
                                                   ___stx4070540706_)))
                                             (let ((_tl2351123588_
                                                    (##cdr _e2350923581_))
                                                   (_hd2351023585_
                                                    (##car _e2350923581_)))
                                               (if (gx#identifier?
                                                    _hd2351023585_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core$<match>[1]#_g41925_|
                                                        _hd2351023585_)
                                                       (___match4072440725_
                                                        _e2350923581_
                                                        _hd2351023585_
                                                        _tl2351123588_)
                                                       (___match4073040731_
                                                        _e2350923581_
                                                        _hd2351023585_
                                                        _tl2351123588_))
                                                   (___match4073040731_
                                                    _e2350923581_
                                                    _hd2351023585_
                                                    _tl2351123588_))))
                                           (___kont4071240713_)))))))
                              (___kont4073840739_ (lambda () _r23444_)))
                          (if (gx#stx-pair? ___stx4073340734_)
                              (let ((_e2345123477_
                                     (gx#syntax-e ___stx4073340734_)))
                                (let ((_tl2345323484_ (##cdr _e2345123477_))
                                      (_hd2345223481_ (##car _e2345123477_)))
                                  (___kont4073640737_
                                   _tl2345323484_
                                   _hd2345223481_)))
                              (___kont4073840739_)))))))
                 (_generate-body22517_
                  (lambda (_body23221_)
                    (let* ((_g2322423232_
                            (lambda (_g2322523228_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2322523228_)))
                           (_g2322323432_
                            (lambda (_g2322523236_)
                              ((lambda (_L23239_)
                                 (let ()
                                   (let* ((_g2325123268_
                                           (lambda (_g2325223264_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g2325223264_)))
                                          (_g2325023428_
                                           (lambda (_g2325223272_)
                                             (if (gx#stx-pair/null?
                                                  _g2325223272_)
                                                 (let ((_g41926_
                                                        (gx#syntax-split-splice
                                                         _g2325223272_
                                                         '0)))
                                                   (begin
                                                     (let ((_g41927_
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g41926_)
                        (##vector-length _g41926_)
                        1)))
               (if (not (##fx= _g41927_ 2))
                   (error "Context expects 2 values" _g41927_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2325423275_
                                                            (##vector-ref
                                                             _g41926_
                                                             0))
                                                           (_tl2325623278_
                                                            (##vector-ref
                                                             _g41926_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2325623278_)
                                                           (letrec ((_loop2325723281_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2325523285_ _target2326123288_)
                               (if (gx#stx-pair? _hd2325523285_)
                                   (let ((_e2325823291_
                                          (gx#syntax-e _hd2325523285_)))
                                     (let ((_lp-hd2325923295_
                                            (##car _e2325823291_))
                                           (_lp-tl2326023298_
                                            (##cdr _e2325823291_)))
                                       (_loop2325723281_
                                        _lp-tl2326023298_
                                        (cons _lp-hd2325923295_
                                              _target2326123288_))))
                                   (let ((_target2326223301_
                                          (reverse _target2326123288_)))
                                     ((lambda (_L23305_)
                                        (let ()
                                          (let* ((_g2332223330_
                                                  (lambda (_g2332323326_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2332323326_)))
                                                 (_g2332123416_
                                                  (lambda (_g2332323334_)
                                                    ((lambda (_L23337_)
                                                       (let ()
                                                         (let* ((_g2335023358_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2335123354_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2335123354_)))
                        (_g2334923412_
                         (lambda (_g2335123362_)
                           ((lambda (_L23365_)
                              (let ()
                                (let* ((_g2337823386_
                                        (lambda (_g2337923382_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g2337923382_)))
                                       (_g2337723408_
                                        (lambda (_g2337923390_)
                                          ((lambda (_L23393_)
                                             (let ()
                                               (let ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '@match)
                                                             (cons _L23393_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g2337923390_))))
                                  (_g2337723408_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'let)
                                          (cons (cons (cons _L23239_
                                                            (cons _L23337_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _L23365_ '())))
                                    (gx#stx-source _stx22510_))))))
                            _g2335123362_))))
                   (_g2334923412_
                    (_generate-clauses22518_
                     _body23221_
                     (cons _L23239_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2332323334_))))
                                            (_g2332123416_
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
                                    (foldr (lambda (_g2341923422_
                                                    _g2342023425_)
                                             (cons _g2341923422_
                                                   _g2342023425_))
                                           '()
                                           _L23305_)))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx22510_))))))
                                      _target2326223301_))))))
                     (_loop2325723281_ _target2325423275_ '()))
                   (_g2325123268_ _g2325223272_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2325123268_
                                                  _g2325223272_)))))
                                     (_g2325023428_ _tgt-lst22512_))))
                               _g2322523236_))))
                      (_g2322323432_ (gx#genident 'E)))))
                 (_generate-clauses22518_
                  (lambda (_rest22873_ _E22875_)
                    (let* ((___stx4074940750_ _rest22873_)
                           (_g2287922895_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx4074940750_))))
                      (let ((___kont4075240753_
                             (lambda (_L23129_)
                               (let* ((_g2314023158_
                                       (lambda (_g2314123154_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2314123154_)))
                                      (_g2313923213_
                                       (lambda (_g2314123162_)
                                         (if (gx#stx-pair? _g2314123162_)
                                             (let ((_e2314423165_
                                                    (gx#syntax-e
                                                     _g2314123162_)))
                                               (let ((_hd2314523169_
                                                      (##car _e2314423165_))
                                                     (_tl2314623172_
                                                      (##cdr _e2314423165_)))
                                                 (if (gx#stx-pair?
                                                      _tl2314623172_)
                                                     (let ((_e2314723175_
                                                            (gx#syntax-e
                                                             _tl2314623172_)))
                                                       (let ((_hd2314823179_
                                                              (##car _e2314723175_))
                                                             (_tl2314923182_
                                                              (##cdr _e2314723175_)))
                                                         (if (gx#stx-pair?
                                                              _tl2314923182_)
                                                             (let ((_e2315023185_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl2314923182_)))
                       (let ((_hd2315123189_ (##car _e2315023185_))
                             (_tl2315223192_ (##cdr _e2315023185_)))
                         (if (gx#stx-null? _tl2315223192_)
                             ((lambda (_L23195_ _L23197_)
                                (cons 'begin-annotation
                                      (cons '@match-body
                                            (cons (if (gx#stx-e _L23197_)
                                                      (_generate122519_
                                                       _L23197_
                                                       _L23195_
                                                       _E22875_)
                                                      _L23195_)
                                                  '()))))
                              _hd2315123189_
                              _hd2314823179_)
                             (_g2314023158_ _g2314123162_))))
                     (_g2314023158_ _g2314123162_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2314023158_
                                                      _g2314123162_))))
                                             (_g2314023158_ _g2314123162_)))))
                                 (_g2313923213_ _L23129_))))
                            (___kont4075440755_
                             (lambda (_L22923_ _L22925_)
                               (let* ((_g2293822957_
                                       (lambda (_g2293922953_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2293922953_)))
                                      (_g2293723108_
                                       (lambda (_g2293922961_)
                                         (if (gx#stx-pair? _g2293922961_)
                                             (let ((_e2294322964_
                                                    (gx#syntax-e
                                                     _g2293922961_)))
                                               (let ((_hd2294422968_
                                                      (##car _e2294322964_))
                                                     (_tl2294522971_
                                                      (##cdr _e2294322964_)))
                                                 (if (gx#stx-pair?
                                                      _tl2294522971_)
                                                     (let ((_e2294622974_
                                                            (gx#syntax-e
                                                             _tl2294522971_)))
                                                       (let ((_hd2294722978_
                                                              (##car _e2294622974_))
                                                             (_tl2294822981_
                                                              (##cdr _e2294622974_)))
                                                         (if (gx#stx-pair?
                                                              _tl2294822981_)
                                                             (let ((_e2294922984_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl2294822981_)))
                       (let ((_hd2295022988_ (##car _e2294922984_))
                             (_tl2295122991_ (##cdr _e2294922984_)))
                         (if (gx#stx-null? _tl2295122991_)
                             ((lambda (_L22994_ _L22996_ _L22997_)
                                (if (gx#stx-e _L22996_)
                                    (let* ((_g2301423029_
                                            (lambda (_g2301523025_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2301523025_)))
                                           (_g2301323074_
                                            (lambda (_g2301523033_)
                                              (if (gx#stx-pair? _g2301523033_)
                                                  (let ((_e2301823036_
                                                         (gx#syntax-e
                                                          _g2301523033_)))
                                                    (let ((_hd2301923040_
                                                           (##car _e2301823036_))
                                                          (_tl2302023043_
                                                           (##cdr _e2301823036_)))
                                                      (if (gx#stx-pair?
                                                           _tl2302023043_)
                                                          (let ((_e2302123046_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2302023043_)))
                    (let ((_hd2302223050_ (##car _e2302123046_))
                          (_tl2302323053_ (##cdr _e2302123046_)))
                      (if (gx#stx-null? _tl2302323053_)
                          ((lambda (_L23056_ _L23058_)
                             (let ()
                               (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _L22997_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'lambda)
                           (cons '() (cons _L23058_ '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons _L23056_ '())))))
                           _hd2302223050_
                           _hd2301923040_)
                          (_g2301423029_ _g2301523033_))))
                  (_g2301423029_ _g2301523033_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2301423029_
                                                   _g2301523033_)))))
                                      (_g2301323074_
                                       (list (_generate122519_
                                              _L22996_
                                              _L22994_
                                              _E22875_)
                                             (_generate-clauses22518_
                                              _L22923_
                                              (cons _L22997_ '())))))
                                    (let* ((_g2307823086_
                                            (lambda (_g2307923082_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2307923082_)))
                                           (_g2307723104_
                                            (lambda (_g2307923090_)
                                              ((lambda (_L23093_)
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (cons (cons _L22997_
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
                         (cons '() (cons _L22994_ '())))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))
                             '())
                       (cons _L23093_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g2307923090_))))
                                      (_g2307723104_
                                       (_generate-clauses22518_
                                        _L22923_
                                        (cons _L22997_ '()))))))
                              _hd2295022988_
                              _hd2294722978_
                              _hd2294422968_)
                             (_g2293822957_ _g2293922961_))))
                     (_g2293822957_ _g2293922961_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2293822957_
                                                      _g2293922961_))))
                                             (_g2293822957_ _g2293922961_)))))
                                 (_g2293723108_ _L22925_))))
                            (___kont4075640757_
                             (lambda ()
                               (cons 'begin-annotation
                                     (cons '@match-body
                                           (cons _E22875_ '()))))))
                        (if (gx#stx-pair? ___stx4074940750_)
                            (let ((_e2288223119_
                                   (gx#syntax-e ___stx4074940750_)))
                              (let ((_tl2288423126_ (##cdr _e2288223119_))
                                    (_hd2288323123_ (##car _e2288223119_)))
                                (if (gx#stx-null? _tl2288423126_)
                                    (___kont4075240753_ _hd2288323123_)
                                    (___kont4075440755_
                                     _tl2288423126_
                                     _hd2288323123_))))
                            (___kont4075640757_))))))
                 (_generate122519_
                  (lambda (_clause22521_ _body22523_ _E22524_)
                    (let* ((_g2252622550_
                            (lambda (_g2252722546_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2252722546_)))
                           (_g2252522869_
                            (lambda (_g2252722554_)
                              (if (gx#stx-pair? _g2252722554_)
                                  (let ((_e2253022557_
                                         (gx#syntax-e _g2252722554_)))
                                    (let ((_hd2253122561_
                                           (##car _e2253022557_))
                                          (_tl2253222564_
                                           (##cdr _e2253022557_)))
                                      (if (gx#stx-pair? _tl2253222564_)
                                          (let ((_e2253322567_
                                                 (gx#syntax-e _tl2253222564_)))
                                            (let ((_hd2253422571_
                                                   (##car _e2253322567_))
                                                  (_tl2253522574_
                                                   (##cdr _e2253322567_)))
                                              (if (gx#stx-pair/null?
                                                   _hd2253422571_)
                                                  (let ((_g41928_
                                                         (gx#syntax-split-splice
                                                          _hd2253422571_
                                                          '0)))
                                                    (begin
                                                      (let ((_g41929_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g41928_)
                         (##vector-length _g41928_)
                         1)))
                (if (not (##fx= _g41929_ 2))
                    (error "Context expects 2 values" _g41929_)))
              (let ((_target2253622577_ (##vector-ref _g41928_ 0))
                    (_tl2253822580_ (##vector-ref _g41928_ 1)))
                (if (gx#stx-null? _tl2253822580_)
                    (letrec ((_loop2253922583_
                              (lambda (_hd2253722587_ _var2254322590_)
                                (if (gx#stx-pair? _hd2253722587_)
                                    (let ((_e2254022593_
                                           (gx#syntax-e _hd2253722587_)))
                                      (let ((_lp-hd2254122597_
                                             (##car _e2254022593_))
                                            (_lp-tl2254222600_
                                             (##cdr _e2254022593_)))
                                        (_loop2253922583_
                                         _lp-tl2254222600_
                                         (cons _lp-hd2254122597_
                                               _var2254322590_))))
                                    (let ((_var2254422603_
                                           (reverse _var2254322590_)))
                                      (if (gx#stx-null? _tl2253522574_)
                                          ((lambda (_L22607_ _L22609_)
                                             (let ()
                                               (gx#check-duplicate-identifiers
                                                (foldr (lambda (_g2263022633_
                                                                _g2263122636_)
                                                         (cons _g2263022633_
                                                               _g2263122636_))
                                                       '()
                                                       _L22607_)
                                                _stx22510_)
                                               (let* ((_g2263922647_
                                                       (lambda (_g2264022643_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g2264022643_)))
                                                      (_g2263822741_
                                                       (lambda (_g2264022651_)
                                                         ((lambda (_L22654_)
                                                            (let ()
                                                              (let* ((_g2266722675_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2266822671_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2266822671_)))
                             (_g2266622737_
                              (lambda (_g2266822679_)
                                ((lambda (_L22682_)
                                   (let ()
                                     (let* ((_g2269522703_
                                             (lambda (_g2269622699_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2269622699_)))
                                            (_g2269422725_
                                             (lambda (_g2269622707_)
                                               ((lambda (_L22710_)
                                                  (let ()
                                                    (let ()
                                                      (gx#stx-wrap-source
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons _L22609_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _L22710_ '()))
                           (cons _L22654_ '())))
               (gx#stx-source _stx22510_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2269622707_))))
                                       (_g2269422725_
                                        (gx#stx-wrap-source
                                         (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (foldr (lambda (_g2272822731_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g2272922734_)
                      (cons _g2272822731_ _g2272922734_))
                    '()
                    _L22607_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _L22682_ '())))
                                         (gx#stx-source _stx22510_))))))
                                 _g2266822679_))))
                        (_g2266622737_ _body22523_))))
                  _g2264022651_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2263822741_
                                                  (let _recur22745_ ((_rest22748_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _clause22521_)
                             (_rest-targets22750_ _tgt-lst22512_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((___stx4077540776_
                                                            _rest22748_)
                                                           (_g2275322765_
                                                            (lambda ()
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               ___stx4077540776_))))
                                                      (let ((___kont4077840779_
                                                             (lambda (_L22801_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L22803_)
                       (let* ((_g2281822830_
                               (lambda (_g2281922826_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2281922826_)))
                              (_g2281722861_
                               (lambda (_g2281922834_)
                                 (if (gx#stx-pair? _g2281922834_)
                                     (let ((_e2282222837_
                                            (gx#syntax-e _g2281922834_)))
                                       (let ((_hd2282322841_
                                              (##car _e2282222837_))
                                             (_tl2282422844_
                                              (##cdr _e2282222837_)))
                                         ((lambda (_L22847_ _L22849_)
                                            (|gerbil/core$<match>[1]#generate-match1|
                                             _stx22510_
                                             _L22849_
                                             _L22803_
                                             (_recur22745_ _L22801_ _L22847_)
                                             _E22524_))
                                          _tl2282422844_
                                          _hd2282322841_)))
                                     (_g2281822830_ _g2281922834_)))))
                         (_g2281722861_ _rest-targets22750_))))
                    (___kont4078040781_
                     (lambda ()
                       (cons _L22609_
                             (foldr (lambda (_g2277522778_ _g2277622781_)
                                      (cons _g2277522778_ _g2277622781_))
                                    '()
                                    _L22607_)))))
                (if (gx#stx-pair? ___stx4077540776_)
                    (let ((_e2275722791_ (gx#syntax-e ___stx4077540776_)))
                      (let ((_tl2275922798_ (##cdr _e2275722791_))
                            (_hd2275822795_ (##car _e2275722791_)))
                        (___kont4077840779_ _tl2275922798_ _hd2275822795_)))
                    (___kont4078040781_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _var2254422603_
                                           _hd2253122561_)
                                          (_g2252622550_ _g2252722554_)))))))
                      (_loop2253922583_ _target2253622577_ '()))
                    (_g2252622550_ _g2252722554_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2252622550_
                                                   _g2252722554_))))
                                          (_g2252622550_ _g2252722554_))))
                                  (_g2252622550_ _g2252722554_)))))
                      (_g2252522869_
                       (list (gx#genident 'K)
                             (apply append
                                    (map |gerbil/core$<match>[1]#match-pattern-vars|
                                         _clause22521_))))))))
          (_generate-body22517_
           (_parse-body22515_ (gx#stx-length _tgt-lst22512_))))))
    (define |gerbil/core$<match>[1]#generate-match|
      (lambda (_stx22412_ _tgt22414_ _clauses22415_)
        (letrec ((_reclause22417_
                  (lambda (_clause22420_)
                    (let* ((___stx4079140792_ _clause22420_)
                           (_g2242522440_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx4079140792_))))
                      (let ((___kont4079440795_ (lambda () _clause22420_))
                            (___kont4079640797_
                             (lambda (_L22468_ _L22470_)
                               (gx#stx-wrap-source
                                (cons (cons _L22470_ '()) _L22468_)
                                (gx#stx-source
                                 (gx#datum->syntax '#f 'clause)))))
                            (___kont4079840799_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal match clause"
                                _stx22412_
                                _clause22420_))))
                        (if (gx#stx-pair? ___stx4079140792_)
                            (let ((_e2242722492_
                                   (gx#syntax-e ___stx4079140792_)))
                              (let ((_tl2242922499_ (##cdr _e2242722492_))
                                    (_hd2242822496_ (##car _e2242722492_)))
                                (if (gx#identifier? _hd2242822496_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<match>[1]#_g41930_|
                                         _hd2242822496_)
                                        (___kont4079440795_)
                                        (___kont4079640797_
                                         _tl2242922499_
                                         _hd2242822496_))
                                    (___kont4079640797_
                                     _tl2242922499_
                                     _hd2242822496_))))
                            (___kont4079840799_)))))))
          (|gerbil/core$<match>[1]#generate-match*|
           _stx22412_
           (cons _tgt22414_ '())
           (gx#stx-map _reclause22417_ _clauses22415_)))))
    (define |gerbil/core$<match>[:0:]#match|
      (lambda (_stx30051_)
        (let* ((___stx4081940820_ _stx30051_)
               (_g3005630085_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx4081940820_))))
          (let ((___kont4082240823_
                 (lambda (_L30325_)
                   (let* ((_g3033830346_
                           (lambda (_g3033930342_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g3033930342_)))
                          (_g3033730399_
                           (lambda (_g3033930350_)
                             ((lambda (_L30353_)
                                (let ()
                                  (let* ((_g3036530373_
                                          (lambda (_g3036630369_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g3036630369_)))
                                         (_g3036430395_
                                          (lambda (_g3036630377_)
                                            ((lambda (_L30380_)
                                               (let ()
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'lambda)
                                                         (cons (cons _L30353_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons _L30380_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _g3036630377_))))
                                    (_g3036430395_
                                     (gx#stx-wrap-source
                                      (cons (gx#datum->syntax '#f 'match)
                                            (cons _L30353_ _L30325_))
                                      (gx#stx-source _stx30051_))))))
                              _g3033930350_))))
                     (_g3033730399_ (gx#genident 'e)))))
                (___kont4082440825_
                 (lambda (_L30220_)
                   (let* ((_g3023330241_
                           (lambda (_g3023430237_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g3023430237_)))
                          (_g3023230294_
                           (lambda (_g3023430245_)
                             ((lambda (_L30248_)
                                (let ()
                                  (let* ((_g3026030268_
                                          (lambda (_g3026130264_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g3026130264_)))
                                         (_g3025930290_
                                          (lambda (_g3026130272_)
                                            ((lambda (_L30275_)
                                               (let ()
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'lambda)
                                                         (cons _L30248_
                                                               (cons _L30275_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _g3026130272_))))
                                    (_g3025930290_
                                     (gx#stx-wrap-source
                                      (cons (gx#datum->syntax '#f 'match)
                                            (cons _L30248_ _L30220_))
                                      (gx#stx-source _stx30051_))))))
                              _g3023430245_))))
                     (_g3023230294_ (gx#genident 'args)))))
                (___kont4082640827_
                 (lambda (_L30112_ _L30114_)
                   (let* ((_g3012830136_
                           (lambda (_g3012930132_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g3012930132_)))
                          (_g3012730189_
                           (lambda (_g3012930140_)
                             ((lambda (_L30143_)
                                (let ()
                                  (let* ((_g3015530163_
                                          (lambda (_g3015630159_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g3015630159_)))
                                         (_g3015430185_
                                          (lambda (_g3015630167_)
                                            ((lambda (_L30170_)
                                               (let ()
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (cons (cons _L30143_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _L30114_ '()))
                             '())
                       (cons _L30170_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _g3015630167_))))
                                    (_g3015430185_
                                     (|gerbil/core$<match>[1]#generate-match|
                                      _stx30051_
                                      _L30143_
                                      _L30112_)))))
                              _g3012930140_))))
                     (_g3012730189_ (gx#genident _L30114_))))))
            (let* ((___match4087240873_
                    (lambda (_e3007430092_
                             _hd3007530096_
                             _tl3007630099_
                             _e3007730102_
                             _hd3007830106_
                             _tl3007930109_)
                      (let ((_L30112_ _tl3007930109_)
                            (_L30114_ _hd3007830106_))
                        (if (gx#stx-list? _L30112_)
                            (___kont4082640827_ _L30112_ _L30114_)
                            (_g3005630085_)))))
                   (___match4086040861_
                    (lambda (_e3006630200_
                             _hd3006730204_
                             _tl3006830207_
                             _e3006930210_
                             _hd3007030214_
                             _tl3007130217_)
                      (let ((_L30220_ _tl3007130217_))
                        (if (gx#stx-list? _L30220_)
                            (___kont4082440825_ _L30220_)
                            (___match4087240873_
                             _e3006630200_
                             _hd3006730204_
                             _tl3006830207_
                             _e3006930210_
                             _hd3007030214_
                             _tl3007130217_)))))
                   (___match4084440845_
                    (lambda (_e3005930305_
                             _hd3006030309_
                             _tl3006130312_
                             _e3006230315_
                             _hd3006330319_
                             _tl3006430322_)
                      (let ((_L30325_ _tl3006430322_))
                        (if (gx#stx-list? _L30325_)
                            (___kont4082240823_ _L30325_)
                            (___match4087240873_
                             _e3005930305_
                             _hd3006030309_
                             _tl3006130312_
                             _e3006230315_
                             _hd3006330319_
                             _tl3006430322_))))))
              (if (gx#stx-pair? ___stx4081940820_)
                  (let ((_e3005930305_ (gx#syntax-e ___stx4081940820_)))
                    (let ((_tl3006130312_ (##cdr _e3005930305_))
                          (_hd3006030309_ (##car _e3005930305_)))
                      (if (gx#stx-pair? _tl3006130312_)
                          (let ((_e3006230315_ (gx#syntax-e _tl3006130312_)))
                            (let ((_tl3006430322_ (##cdr _e3006230315_))
                                  (_hd3006330319_ (##car _e3006230315_)))
                              (if (gx#identifier? _hd3006330319_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g41931_|
                                       _hd3006330319_)
                                      (___match4084440845_
                                       _e3005930305_
                                       _hd3006030309_
                                       _tl3006130312_
                                       _e3006230315_
                                       _hd3006330319_
                                       _tl3006430322_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g41932_|
                                           _hd3006330319_)
                                          (___match4086040861_
                                           _e3005930305_
                                           _hd3006030309_
                                           _tl3006130312_
                                           _e3006230315_
                                           _hd3006330319_
                                           _tl3006430322_)
                                          (___match4087240873_
                                           _e3005930305_
                                           _hd3006030309_
                                           _tl3006130312_
                                           _e3006230315_
                                           _hd3006330319_
                                           _tl3006430322_)))
                                  (___match4087240873_
                                   _e3005930305_
                                   _hd3006030309_
                                   _tl3006130312_
                                   _e3006230315_
                                   _hd3006330319_
                                   _tl3006430322_))))
                          (_g3005630085_))))
                  (_g3005630085_)))))))
    (define |gerbil/core$<match>[:0:]#match*|
      (lambda (_stx30407_)
        (let* ((_g3041030434_
                (lambda (_g3041130430_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g3041130430_)))
               (_g3040930646_
                (lambda (_g3041130438_)
                  (if (gx#stx-pair? _g3041130438_)
                      (let ((_e3041430441_ (gx#syntax-e _g3041130438_)))
                        (let ((_hd3041530445_ (##car _e3041430441_))
                              (_tl3041630448_ (##cdr _e3041430441_)))
                          (if (gx#stx-pair? _tl3041630448_)
                              (let ((_e3041730451_
                                     (gx#syntax-e _tl3041630448_)))
                                (let ((_hd3041830455_ (##car _e3041730451_))
                                      (_tl3041930458_ (##cdr _e3041730451_)))
                                  (if (gx#stx-pair/null? _hd3041830455_)
                                      (let ((_g41933_
                                             (gx#syntax-split-splice
                                              _hd3041830455_
                                              '0)))
                                        (begin
                                          (let ((_g41934_
                                                 (if (##values? _g41933_)
                                                     (##vector-length _g41933_)
                                                     1)))
                                            (if (not (##fx= _g41934_ 2))
                                                (error "Context expects 2 values"
                                                       _g41934_)))
                                          (let ((_target3042030461_
                                                 (##vector-ref _g41933_ 0))
                                                (_tl3042230464_
                                                 (##vector-ref _g41933_ 1)))
                                            (if (gx#stx-null? _tl3042230464_)
                                                (letrec ((_loop3042330467_
                                                          (lambda (_hd3042130471_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e3042730474_)
                    (if (gx#stx-pair? _hd3042130471_)
                        (let ((_e3042430477_ (gx#syntax-e _hd3042130471_)))
                          (let ((_lp-hd3042530481_ (##car _e3042430477_))
                                (_lp-tl3042630484_ (##cdr _e3042430477_)))
                            (_loop3042330467_
                             _lp-tl3042630484_
                             (cons _lp-hd3042530481_ _e3042730474_))))
                        (let ((_e3042830487_ (reverse _e3042730474_)))
                          ((lambda (_L30491_ _L30493_)
                             (if (gx#stx-list? _L30491_)
                                 (let* ((_g3051130528_
                                         (lambda (_g3051230524_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g3051230524_)))
                                        (_g3051030634_
                                         (lambda (_g3051230532_)
                                           (if (gx#stx-pair/null?
                                                _g3051230532_)
                                               (let ((_g41935_
                                                      (gx#syntax-split-splice
                                                       _g3051230532_
                                                       '0)))
                                                 (begin
                                                   (let ((_g41936_
                                                          (if (##values?
                                                               _g41935_)
                                                              (##vector-length
                                                               _g41935_)
                                                              1)))
                                                     (if (not (##fx= _g41936_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                 (error "Context expects 2 values" _g41936_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target3051430535_
                                                          (##vector-ref
                                                           _g41935_
                                                           0))
                                                         (_tl3051630538_
                                                          (##vector-ref
                                                           _g41935_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl3051630538_)
                                                         (letrec ((_loop3051730541_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd3051530545_ _$e3052130548_)
                             (if (gx#stx-pair? _hd3051530545_)
                                 (let ((_e3051830551_
                                        (gx#syntax-e _hd3051530545_)))
                                   (let ((_lp-hd3051930555_
                                          (##car _e3051830551_))
                                         (_lp-tl3052030558_
                                          (##cdr _e3051830551_)))
                                     (_loop3051730541_
                                      _lp-tl3052030558_
                                      (cons _lp-hd3051930555_
                                            _$e3052130548_))))
                                 (let ((_$e3052230561_
                                        (reverse _$e3052130548_)))
                                   ((lambda (_L30565_)
                                      (let ()
                                        (let* ((_g3058130589_
                                                (lambda (_g3058230585_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g3058230585_)))
                                               (_g3058030622_
                                                (lambda (_g3058230593_)
                                                  ((lambda (_L30596_)
                                                     (let ()
                                                       (let ()
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#syntax-check-splice-targets
                                _L30493_
                                _L30565_)
                               (foldr (lambda (_g3061030614_
                                               _g3061130617_
                                               _g3061230619_)
                                        (cons (cons _g3061130617_
                                                    (cons _g3061030614_ '()))
                                              _g3061230619_))
                                      '()
                                      _L30493_
                                      _L30565_))
                             (cons _L30596_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g3058230593_))))
                                          (_g3058030622_
                                           (|gerbil/core$<match>[1]#generate-match*|
                                            _stx30407_
                                            (foldr (lambda (_g3062530628_
                                                            _g3062630631_)
                                                     (cons _g3062530628_
                                                           _g3062630631_))
                                                   '()
                                                   _L30565_)
                                            _L30491_)))))
                                    _$e3052230561_))))))
                   (_loop3051730541_ _target3051430535_ '()))
                 (_g3051130528_ _g3051230532_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g3051130528_
                                                _g3051230532_)))))
                                   (_g3051030634_
                                    (gx#gentemps
                                     (foldr (lambda (_g3063730640_
                                                     _g3063830643_)
                                              (cons _g3063730640_
                                                    _g3063830643_))
                                            '()
                                            _L30493_))))
                                 (_g3041030434_ _g3041130438_)))
                           _tl3041930458_
                           _e3042830487_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop3042330467_
                                                   _target3042030461_
                                                   '()))
                                                (_g3041030434_
                                                 _g3041130438_)))))
                                      (_g3041030434_ _g3041130438_))))
                              (_g3041030434_ _g3041130438_))))
                      (_g3041030434_ _g3041130438_)))))
          (_g3040930646_ _stx30407_))))
    (define |gerbil/core$<match>[:0:]#with|
      (lambda (_$stx30652_)
        (let* ((___stx4087540876_ _$stx30652_)
               (_g3065830741_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx4087540876_))))
          (let ((___kont4087840879_
                 (lambda (_L31071_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_g3108731090_ _g3108831093_)
                                        (cons _g3108731090_ _g3108831093_))
                                      '()
                                      _L31071_)))))
                (___kont4088240883_
                 (lambda (_L30979_ _L30981_ _L30982_ _L30983_)
                   (cons _L30983_
                         (cons (cons (cons _L30982_ (cons _L30981_ '())) '())
                               (foldr (lambda (_g3100531008_ _g3100631011_)
                                        (cons _g3100531008_ _g3100631011_))
                                      '()
                                      _L30979_)))))
                (___kont4088640887_
                 (lambda (_L30852_ _L30854_ _L30855_)
                   (cons (gx#datum->syntax '#f 'match*)
                         (cons (foldr (lambda (_g3087730884_ _g3087830887_)
                                        (cons _g3087730884_ _g3087830887_))
                                      '()
                                      _L30854_)
                               (cons (cons (foldr (lambda (_g3087930890_
                                                           _g3088030893_)
                                                    (cons _g3087930890_
                                                          _g3088030893_))
                                                  '()
                                                  _L30855_)
                                           (foldr (lambda (_g3088130896_
                                                           _g3088230899_)
                                                    (cons _g3088130896_
                                                          _g3088230899_))
                                                  '()
                                                  _L30852_))
                                     '()))))))
            (let* ((___match4096840969_
                    (lambda (_e3070430748_
                             _hd3070530752_
                             _tl3070630755_
                             _e3070730758_
                             _hd3070830762_
                             _tl3070930765_
                             ___splice4088840889_
                             _target3071030768_
                             _tl3071230771_)
                      (letrec ((_loop3071330774_
                                (lambda (_hd3071130778_
                                         _expr3071730781_
                                         _hd3071830783_)
                                  (if (gx#stx-pair? _hd3071130778_)
                                      (let ((_e3071430786_
                                             (gx#syntax-e _hd3071130778_)))
                                        (let ((_lp-tl3071630793_
                                               (##cdr _e3071430786_))
                                              (_lp-hd3071530790_
                                               (##car _e3071430786_)))
                                          (if (gx#stx-pair? _lp-hd3071530790_)
                                              (let ((_e3072130796_
                                                     (gx#syntax-e
                                                      _lp-hd3071530790_)))
                                                (let ((_tl3072330803_
                                                       (##cdr _e3072130796_))
                                                      (_hd3072230800_
                                                       (##car _e3072130796_)))
                                                  (if (gx#stx-pair?
                                                       _tl3072330803_)
                                                      (let ((_e3072430806_
                                                             (gx#syntax-e
                                                              _tl3072330803_)))
                                                        (let ((_tl3072630813_
                                                               (##cdr _e3072430806_))
                                                              (_hd3072530810_
                                                               (##car _e3072430806_)))
                                                          (if (gx#stx-null?
                                                               _tl3072630813_)
                                                              (_loop3071330774_
                                                               _lp-tl3071630793_
                                                               (cons _hd3072530810_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr3071730781_)
                       (cons _hd3072230800_ _hd3071830783_))
                      (_g3065830741_))))
              (_g3065830741_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3065830741_))))
                                      (let ((_hd3072030819_
                                             (reverse _hd3071830783_))
                                            (_expr3071930816_
                                             (reverse _expr3071730781_)))
                                        (if (gx#stx-pair/null? _tl3070930765_)
                                            (let ((___splice4089040891_
                                                   (gx#syntax-split-splice
                                                    _tl3070930765_
                                                    '0)))
                                              (let ((_tl3072930825_
                                                     (##vector-ref
                                                      ___splice4089040891_
                                                      '1))
                                                    (_target3072730822_
                                                     (##vector-ref
                                                      ___splice4089040891_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl3072930825_)
                                                    (letrec ((_loop3073030828_
                                                              (lambda (_hd3072830832_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body3073430835_)
                        (if (gx#stx-pair? _hd3072830832_)
                            (let ((_e3073130838_ (gx#syntax-e _hd3072830832_)))
                              (let ((_lp-tl3073330845_ (##cdr _e3073130838_))
                                    (_lp-hd3073230842_ (##car _e3073130838_)))
                                (_loop3073030828_
                                 _lp-tl3073330845_
                                 (cons _lp-hd3073230842_ _body3073430835_))))
                            (let ((_body3073530848_
                                   (reverse _body3073430835_)))
                              (___kont4088640887_
                               _body3073530848_
                               _expr3071930816_
                               _hd3072030819_))))))
              (_loop3073030828_ _target3072730822_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3065830741_))))
                                            (_g3065830741_)))))))
                        (_loop3071330774_ _target3071030768_ '() '()))))
                   (___match4096040961_
                    (lambda (_e3070430748_
                             _hd3070530752_
                             _tl3070630755_
                             _e3070730758_
                             _hd3070830762_
                             _tl3070930765_)
                      (if (gx#stx-pair/null? _hd3070830762_)
                          (let ((___splice4088840889_
                                 (gx#syntax-split-splice _hd3070830762_ '0)))
                            (let ((_tl3071230771_
                                   (##vector-ref ___splice4088840889_ '1))
                                  (_target3071030768_
                                   (##vector-ref ___splice4088840889_ '0)))
                              (if (gx#stx-null? _tl3071230771_)
                                  (___match4096840969_
                                   _e3070430748_
                                   _hd3070530752_
                                   _tl3070630755_
                                   _e3070730758_
                                   _hd3070830762_
                                   _tl3070930765_
                                   ___splice4088840889_
                                   _target3071030768_
                                   _tl3071230771_)
                                  (_g3065830741_))))
                          (_g3065830741_))))
                   (___match4094840949_
                    (lambda (_e3068030909_
                             _hd3068130913_
                             _tl3068230916_
                             _e3068330919_
                             _hd3068430923_
                             _tl3068530926_
                             _e3068630929_
                             _hd3068730933_
                             _tl3068830936_
                             _e3068930939_
                             _hd3069030943_
                             _tl3069130946_
                             ___splice4088440885_
                             _target3069230949_
                             _tl3069430952_)
                      (letrec ((_loop3069530955_
                                (lambda (_hd3069330959_ _body3069930962_)
                                  (if (gx#stx-pair? _hd3069330959_)
                                      (let ((_e3069630965_
                                             (gx#syntax-e _hd3069330959_)))
                                        (let ((_lp-tl3069830972_
                                               (##cdr _e3069630965_))
                                              (_lp-hd3069730969_
                                               (##car _e3069630965_)))
                                          (_loop3069530955_
                                           _lp-tl3069830972_
                                           (cons _lp-hd3069730969_
                                                 _body3069930962_))))
                                      (let ((_body3070030975_
                                             (reverse _body3069930962_)))
                                        (let ((_L30979_ _body3070030975_)
                                              (_L30981_ _hd3069030943_)
                                              (_L30982_ _hd3068730933_)
                                              (_L30983_ _hd3068130913_))
                                          (if (|gerbil/core$<match>[1]#match-pattern?|
                                               _L30982_)
                                              (___kont4088240883_
                                               _L30979_
                                               _L30981_
                                               _L30982_
                                               _L30983_)
                                              (___match4096040961_
                                               _e3068030909_
                                               _hd3068130913_
                                               _tl3068230916_
                                               _e3068330919_
                                               _hd3068430923_
                                               _tl3068530926_))))))))
                        (_loop3069530955_ _target3069230949_ '()))))
                   (___match4091440915_
                    (lambda (_e3066131021_
                             _hd3066231025_
                             _tl3066331028_
                             _e3066431031_
                             _hd3066531035_
                             _tl3066631038_
                             ___splice4088040881_
                             _target3066731041_
                             _tl3066931044_)
                      (letrec ((_loop3067031047_
                                (lambda (_hd3066831051_ _body3067431054_)
                                  (if (gx#stx-pair? _hd3066831051_)
                                      (let ((_e3067131057_
                                             (gx#syntax-e _hd3066831051_)))
                                        (let ((_lp-tl3067331064_
                                               (##cdr _e3067131057_))
                                              (_lp-hd3067231061_
                                               (##car _e3067131057_)))
                                          (_loop3067031047_
                                           _lp-tl3067331064_
                                           (cons _lp-hd3067231061_
                                                 _body3067431054_))))
                                      (let ((_body3067531067_
                                             (reverse _body3067431054_)))
                                        (___kont4087840879_
                                         _body3067531067_))))))
                        (_loop3067031047_ _target3066731041_ '())))))
              (if (gx#stx-pair? ___stx4087540876_)
                  (let ((_e3066131021_ (gx#syntax-e ___stx4087540876_)))
                    (let ((_tl3066331028_ (##cdr _e3066131021_))
                          (_hd3066231025_ (##car _e3066131021_)))
                      (if (gx#stx-pair? _tl3066331028_)
                          (let ((_e3066431031_ (gx#syntax-e _tl3066331028_)))
                            (let ((_tl3066631038_ (##cdr _e3066431031_))
                                  (_hd3066531035_ (##car _e3066431031_)))
                              (if (gx#stx-null? _hd3066531035_)
                                  (if (gx#stx-pair/null? _tl3066631038_)
                                      (let ((___splice4088040881_
                                             (gx#syntax-split-splice
                                              _tl3066631038_
                                              '0)))
                                        (let ((_tl3066931044_
                                               (##vector-ref
                                                ___splice4088040881_
                                                '1))
                                              (_target3066731041_
                                               (##vector-ref
                                                ___splice4088040881_
                                                '0)))
                                          (if (gx#stx-null? _tl3066931044_)
                                              (___match4091440915_
                                               _e3066131021_
                                               _hd3066231025_
                                               _tl3066331028_
                                               _e3066431031_
                                               _hd3066531035_
                                               _tl3066631038_
                                               ___splice4088040881_
                                               _target3066731041_
                                               _tl3066931044_)
                                              (if (gx#stx-pair/null?
                                                   _hd3066531035_)
                                                  (let ((___splice4088840889_
                                                         (gx#syntax-split-splice
                                                          _hd3066531035_
                                                          '0)))
                                                    (let ((_tl3071230771_
                                                           (##vector-ref
                                                            ___splice4088840889_
                                                            '1))
                                                          (_target3071030768_
                                                           (##vector-ref
                                                            ___splice4088840889_
                                                            '0)))
                                                      (if (gx#stx-null?
                                                           _tl3071230771_)
                                                          (___match4096840969_
                                                           _e3066131021_
                                                           _hd3066231025_
                                                           _tl3066331028_
                                                           _e3066431031_
                                                           _hd3066531035_
                                                           _tl3066631038_
                                                           ___splice4088840889_
                                                           _target3071030768_
                                                           _tl3071230771_)
                                                          (_g3065830741_))))
                                                  (_g3065830741_)))))
                                      (if (gx#stx-pair/null? _hd3066531035_)
                                          (let ((___splice4088840889_
                                                 (gx#syntax-split-splice
                                                  _hd3066531035_
                                                  '0)))
                                            (let ((_tl3071230771_
                                                   (##vector-ref
                                                    ___splice4088840889_
                                                    '1))
                                                  (_target3071030768_
                                                   (##vector-ref
                                                    ___splice4088840889_
                                                    '0)))
                                              (if (gx#stx-null? _tl3071230771_)
                                                  (___match4096840969_
                                                   _e3066131021_
                                                   _hd3066231025_
                                                   _tl3066331028_
                                                   _e3066431031_
                                                   _hd3066531035_
                                                   _tl3066631038_
                                                   ___splice4088840889_
                                                   _target3071030768_
                                                   _tl3071230771_)
                                                  (_g3065830741_))))
                                          (_g3065830741_)))
                                  (if (gx#stx-pair? _hd3066531035_)
                                      (let ((_e3068630929_
                                             (gx#syntax-e _hd3066531035_)))
                                        (let ((_tl3068830936_
                                               (##cdr _e3068630929_))
                                              (_hd3068730933_
                                               (##car _e3068630929_)))
                                          (if (gx#stx-pair? _tl3068830936_)
                                              (let ((_e3068930939_
                                                     (gx#syntax-e
                                                      _tl3068830936_)))
                                                (let ((_tl3069130946_
                                                       (##cdr _e3068930939_))
                                                      (_hd3069030943_
                                                       (##car _e3068930939_)))
                                                  (if (gx#stx-null?
                                                       _tl3069130946_)
                                                      (if (gx#stx-pair/null?
                                                           _tl3066631038_)
                                                          (let ((___splice4088440885_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _tl3066631038_ '0)))
                    (let ((_tl3069430952_
                           (##vector-ref ___splice4088440885_ '1))
                          (_target3069230949_
                           (##vector-ref ___splice4088440885_ '0)))
                      (if (gx#stx-null? _tl3069430952_)
                          (___match4094840949_
                           _e3066131021_
                           _hd3066231025_
                           _tl3066331028_
                           _e3066431031_
                           _hd3066531035_
                           _tl3066631038_
                           _e3068630929_
                           _hd3068730933_
                           _tl3068830936_
                           _e3068930939_
                           _hd3069030943_
                           _tl3069130946_
                           ___splice4088440885_
                           _target3069230949_
                           _tl3069430952_)
                          (if (gx#stx-pair/null? _hd3066531035_)
                              (let ((___splice4088840889_
                                     (gx#syntax-split-splice
                                      _hd3066531035_
                                      '0)))
                                (let ((_tl3071230771_
                                       (##vector-ref ___splice4088840889_ '1))
                                      (_target3071030768_
                                       (##vector-ref ___splice4088840889_ '0)))
                                  (if (gx#stx-null? _tl3071230771_)
                                      (___match4096840969_
                                       _e3066131021_
                                       _hd3066231025_
                                       _tl3066331028_
                                       _e3066431031_
                                       _hd3066531035_
                                       _tl3066631038_
                                       ___splice4088840889_
                                       _target3071030768_
                                       _tl3071230771_)
                                      (_g3065830741_))))
                              (_g3065830741_)))))
                  (if (gx#stx-pair/null? _hd3066531035_)
                      (let ((___splice4088840889_
                             (gx#syntax-split-splice _hd3066531035_ '0)))
                        (let ((_tl3071230771_
                               (##vector-ref ___splice4088840889_ '1))
                              (_target3071030768_
                               (##vector-ref ___splice4088840889_ '0)))
                          (if (gx#stx-null? _tl3071230771_)
                              (___match4096840969_
                               _e3066131021_
                               _hd3066231025_
                               _tl3066331028_
                               _e3066431031_
                               _hd3066531035_
                               _tl3066631038_
                               ___splice4088840889_
                               _target3071030768_
                               _tl3071230771_)
                              (_g3065830741_))))
                      (_g3065830741_)))
              (if (gx#stx-pair/null? _hd3066531035_)
                  (let ((___splice4088840889_
                         (gx#syntax-split-splice _hd3066531035_ '0)))
                    (let ((_tl3071230771_
                           (##vector-ref ___splice4088840889_ '1))
                          (_target3071030768_
                           (##vector-ref ___splice4088840889_ '0)))
                      (if (gx#stx-null? _tl3071230771_)
                          (___match4096840969_
                           _e3066131021_
                           _hd3066231025_
                           _tl3066331028_
                           _e3066431031_
                           _hd3066531035_
                           _tl3066631038_
                           ___splice4088840889_
                           _target3071030768_
                           _tl3071230771_)
                          (_g3065830741_))))
                  (_g3065830741_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _hd3066531035_)
                                                  (let ((___splice4088840889_
                                                         (gx#syntax-split-splice
                                                          _hd3066531035_
                                                          '0)))
                                                    (let ((_tl3071230771_
                                                           (##vector-ref
                                                            ___splice4088840889_
                                                            '1))
                                                          (_target3071030768_
                                                           (##vector-ref
                                                            ___splice4088840889_
                                                            '0)))
                                                      (if (gx#stx-null?
                                                           _tl3071230771_)
                                                          (___match4096840969_
                                                           _e3066131021_
                                                           _hd3066231025_
                                                           _tl3066331028_
                                                           _e3066431031_
                                                           _hd3066531035_
                                                           _tl3066631038_
                                                           ___splice4088840889_
                                                           _target3071030768_
                                                           _tl3071230771_)
                                                          (_g3065830741_))))
                                                  (_g3065830741_)))))
                                      (if (gx#stx-pair/null? _hd3066531035_)
                                          (let ((___splice4088840889_
                                                 (gx#syntax-split-splice
                                                  _hd3066531035_
                                                  '0)))
                                            (let ((_tl3071230771_
                                                   (##vector-ref
                                                    ___splice4088840889_
                                                    '1))
                                                  (_target3071030768_
                                                   (##vector-ref
                                                    ___splice4088840889_
                                                    '0)))
                                              (if (gx#stx-null? _tl3071230771_)
                                                  (___match4096840969_
                                                   _e3066131021_
                                                   _hd3066231025_
                                                   _tl3066331028_
                                                   _e3066431031_
                                                   _hd3066531035_
                                                   _tl3066631038_
                                                   ___splice4088840889_
                                                   _target3071030768_
                                                   _tl3071230771_)
                                                  (_g3065830741_))))
                                          (_g3065830741_))))))
                          (_g3065830741_))))
                  (_g3065830741_)))))))
    (define |gerbil/core$<match>[:0:]#with*|
      (lambda (_$stx31104_)
        (let* ((___stx4097140972_ _$stx31104_)
               (_g3110931161_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx4097140972_))))
          (let ((___kont4097440975_
                 (lambda (_L31331_ _L31333_ _L31334_ _L31335_ _L31336_)
                   (cons (gx#datum->syntax '#f 'with)
                         (cons (cons (cons _L31335_ (cons _L31334_ '())) '())
                               (cons (cons _L31336_
                                           (cons _L31333_
                                                 (foldr (lambda (_g3136131364_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g3136231367_)
                  (cons _g3136131364_ _g3136231367_))
                '()
                _L31331_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont4097840979_
                 (lambda (_L31218_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_g3123531238_ _g3123631241_)
                                        (cons _g3123531238_ _g3123631241_))
                                      '()
                                      _L31218_))))))
            (let* ((___match4104441045_
                    (lambda (_e3114131168_
                             _hd3114231172_
                             _tl3114331175_
                             _e3114431178_
                             _hd3114531182_
                             _tl3114631185_
                             ___splice4098040981_
                             _target3114731188_
                             _tl3114931191_)
                      (letrec ((_loop3115031194_
                                (lambda (_hd3114831198_ _body3115431201_)
                                  (if (gx#stx-pair? _hd3114831198_)
                                      (let ((_e3115131204_
                                             (gx#syntax-e _hd3114831198_)))
                                        (let ((_lp-tl3115331211_
                                               (##cdr _e3115131204_))
                                              (_lp-hd3115231208_
                                               (##car _e3115131204_)))
                                          (_loop3115031194_
                                           _lp-tl3115331211_
                                           (cons _lp-hd3115231208_
                                                 _body3115431201_))))
                                      (let ((_body3115531214_
                                             (reverse _body3115431201_)))
                                        (___kont4097840979_
                                         _body3115531214_))))))
                        (_loop3115031194_ _target3114731188_ '()))))
                   (___match4102241023_
                    (lambda (_e3111631251_
                             _hd3111731255_
                             _tl3111831258_
                             _e3111931261_
                             _hd3112031265_
                             _tl3112131268_
                             _e3112231271_
                             _hd3112331275_
                             _tl3112431278_
                             _e3112531281_
                             _hd3112631285_
                             _tl3112731288_
                             _e3112831291_
                             _hd3112931295_
                             _tl3113031298_
                             ___splice4097640977_
                             _target3113131301_
                             _tl3113331304_)
                      (letrec ((_loop3113431307_
                                (lambda (_hd3113231311_ _body3113831314_)
                                  (if (gx#stx-pair? _hd3113231311_)
                                      (let ((_e3113531317_
                                             (gx#syntax-e _hd3113231311_)))
                                        (let ((_lp-tl3113731324_
                                               (##cdr _e3113531317_))
                                              (_lp-hd3113631321_
                                               (##car _e3113531317_)))
                                          (_loop3113431307_
                                           _lp-tl3113731324_
                                           (cons _lp-hd3113631321_
                                                 _body3113831314_))))
                                      (let ((_body3113931327_
                                             (reverse _body3113831314_)))
                                        (___kont4097440975_
                                         _body3113931327_
                                         _tl3112431278_
                                         _hd3112931295_
                                         _hd3112631285_
                                         _hd3111731255_))))))
                        (_loop3113431307_ _target3113131301_ '())))))
              (if (gx#stx-pair? ___stx4097140972_)
                  (let ((_e3111631251_ (gx#syntax-e ___stx4097140972_)))
                    (let ((_tl3111831258_ (##cdr _e3111631251_))
                          (_hd3111731255_ (##car _e3111631251_)))
                      (if (gx#stx-pair? _tl3111831258_)
                          (let ((_e3111931261_ (gx#syntax-e _tl3111831258_)))
                            (let ((_tl3112131268_ (##cdr _e3111931261_))
                                  (_hd3112031265_ (##car _e3111931261_)))
                              (if (gx#stx-pair? _hd3112031265_)
                                  (let ((_e3112231271_
                                         (gx#syntax-e _hd3112031265_)))
                                    (let ((_tl3112431278_
                                           (##cdr _e3112231271_))
                                          (_hd3112331275_
                                           (##car _e3112231271_)))
                                      (if (gx#stx-pair? _hd3112331275_)
                                          (let ((_e3112531281_
                                                 (gx#syntax-e _hd3112331275_)))
                                            (let ((_tl3112731288_
                                                   (##cdr _e3112531281_))
                                                  (_hd3112631285_
                                                   (##car _e3112531281_)))
                                              (if (gx#stx-pair? _tl3112731288_)
                                                  (let ((_e3112831291_
                                                         (gx#syntax-e
                                                          _tl3112731288_)))
                                                    (let ((_tl3113031298_
                                                           (##cdr _e3112831291_))
                                                          (_hd3112931295_
                                                           (##car _e3112831291_)))
                                                      (if (gx#stx-null?
                                                           _tl3113031298_)
                                                          (if (gx#stx-pair/null?
                                                               _tl3112131268_)
                                                              (let ((___splice4097640977_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _tl3112131268_ '0)))
                        (let ((_tl3113331304_
                               (##vector-ref ___splice4097640977_ '1))
                              (_target3113131301_
                               (##vector-ref ___splice4097640977_ '0)))
                          (if (gx#stx-null? _tl3113331304_)
                              (___match4102241023_
                               _e3111631251_
                               _hd3111731255_
                               _tl3111831258_
                               _e3111931261_
                               _hd3112031265_
                               _tl3112131268_
                               _e3112231271_
                               _hd3112331275_
                               _tl3112431278_
                               _e3112531281_
                               _hd3112631285_
                               _tl3112731288_
                               _e3112831291_
                               _hd3112931295_
                               _tl3113031298_
                               ___splice4097640977_
                               _target3113131301_
                               _tl3113331304_)
                              (_g3110931161_))))
                      (_g3110931161_))
                  (_g3110931161_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3110931161_))))
                                          (_g3110931161_))))
                                  (if (gx#stx-null? _hd3112031265_)
                                      (if (gx#stx-pair/null? _tl3112131268_)
                                          (let ((___splice4098040981_
                                                 (gx#syntax-split-splice
                                                  _tl3112131268_
                                                  '0)))
                                            (let ((_tl3114931191_
                                                   (##vector-ref
                                                    ___splice4098040981_
                                                    '1))
                                                  (_target3114731188_
                                                   (##vector-ref
                                                    ___splice4098040981_
                                                    '0)))
                                              (if (gx#stx-null? _tl3114931191_)
                                                  (___match4104441045_
                                                   _e3111631251_
                                                   _hd3111731255_
                                                   _tl3111831258_
                                                   _e3111931261_
                                                   _hd3112031265_
                                                   _tl3112131268_
                                                   ___splice4098040981_
                                                   _target3114731188_
                                                   _tl3114931191_)
                                                  (_g3110931161_))))
                                          (_g3110931161_))
                                      (_g3110931161_)))))
                          (_g3110931161_))))
                  (_g3110931161_)))))))
    (define |gerbil/core$<match>[:0:]#?|
      (lambda (_$stx31376_)
        (let* ((___stx4104741048_ _$stx31376_)
               (_g3138731533_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx4104741048_))))
          (let ((___kont4105041051_
                 (lambda (_L32137_ _L32139_ _L32140_)
                   (cons (gx#datum->syntax '#f 'and)
                         (foldr (lambda (_g3216132164_ _g3216232167_)
                                  (cons (cons _L32140_
                                              (cons _g3216132164_
                                                    (cons _L32137_ '())))
                                        _g3216232167_))
                                '()
                                _L32139_))))
                (___kont4105441055_
                 (lambda (_L32027_ _L32029_ _L32030_)
                   (cons (gx#datum->syntax '#f 'or)
                         (foldr (lambda (_g3205132054_ _g3205232057_)
                                  (cons (cons _L32030_
                                              (cons _g3205132054_
                                                    (cons _L32027_ '())))
                                        _g3205232057_))
                                '()
                                _L32029_))))
                (___kont4105841059_
                 (lambda (_L31927_ _L31929_ _L31930_)
                   (cons (gx#datum->syntax '#f 'not)
                         (cons (cons _L31930_
                                     (cons _L31929_ (cons _L31927_ '())))
                               '()))))
                (___kont4106041061_
                 (lambda (_L31853_ _L31855_)
                   (cons _L31855_ (cons _L31853_ '()))))
                (___kont4106241063_
                 (lambda (_L31801_ _L31803_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons _L31803_
                                           (cons _L31801_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$obj)
                                                       '())))
                                     '())))))
                (___kont4106441065_
                 (lambda (_L31753_ _L31755_ _L31756_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _L31756_
                                                       (cons _L31755_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L31753_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont4106641067_
                 (lambda (_L31684_ _L31686_ _L31687_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'alet)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '$val)
                                                       (cons (cons _L31687_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _L31686_
                                 (cons (gx#datum->syntax '#f '$obj) '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L31684_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$val)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont4106841069_
                 (lambda (_L31604_ _L31606_ _L31607_ _L31608_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _L31608_
                                                       (cons _L31607_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L31604_
                                                             (cons (cons _L31606_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (gx#datum->syntax '#f '$obj) '()))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((___match4122041221_
                    (lambda (_e3147731713_
                             _hd3147831717_
                             _tl3147931720_
                             _e3148031723_
                             _hd3148131727_
                             _tl3148231730_
                             _e3148331733_
                             _hd3148431737_
                             _tl3148531740_)
                      (if (gx#identifier? _hd3148431737_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g41937_|
                               _hd3148431737_)
                              (if (gx#stx-pair? _tl3148531740_)
                                  (let ((_e3148631743_
                                         (gx#syntax-e _tl3148531740_)))
                                    (let ((_tl3148831750_
                                           (##cdr _e3148631743_))
                                          (_hd3148731747_
                                           (##car _e3148631743_)))
                                      (if (gx#stx-null? _tl3148831750_)
                                          (___kont4106441065_
                                           _hd3148731747_
                                           _hd3148131727_
                                           _hd3147831717_)
                                          (_g3138731533_))))
                                  (_g3138731533_))
                              (_g3138731533_))
                          (if (gx#stx-datum? _hd3148431737_)
                              (let ((_e3150131670_ (gx#stx-e _hd3148431737_)))
                                (if (equal? _e3150131670_ '::)
                                    (if (gx#stx-pair? _tl3148531740_)
                                        (let ((_e3150231674_
                                               (gx#syntax-e _tl3148531740_)))
                                          (let ((_tl3150431681_
                                                 (##cdr _e3150231674_))
                                                (_hd3150331678_
                                                 (##car _e3150231674_)))
                                            (if (gx#stx-null? _tl3150431681_)
                                                (___kont4106641067_
                                                 _hd3150331678_
                                                 _hd3148131727_
                                                 _hd3147831717_)
                                                (if (gx#stx-pair?
                                                     _tl3150431681_)
                                                    (let ((_e3152231584_
                                                           (gx#syntax-e
                                                            _tl3150431681_)))
                                                      (let ((_tl3152431591_
                                                             (##cdr _e3152231584_))
                                                            (_hd3152331588_
                                                             (##car _e3152231584_)))
                                                        (if (gx#identifier?
                                                             _hd3152331588_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core$<match>[1]#_g41938_|
                         _hd3152331588_)
                        (if (gx#stx-pair? _tl3152431591_)
                            (let ((_e3152531594_ (gx#syntax-e _tl3152431591_)))
                              (let ((_tl3152731601_ (##cdr _e3152531594_))
                                    (_hd3152631598_ (##car _e3152531594_)))
                                (if (gx#stx-null? _tl3152731601_)
                                    (___kont4106841069_
                                     _hd3152631598_
                                     _hd3150331678_
                                     _hd3148131727_
                                     _hd3147831717_)
                                    (_g3138731533_))))
                            (_g3138731533_))
                        (_g3138731533_))
                    (_g3138731533_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3138731533_)))))
                                        (_g3138731533_))
                                    (_g3138731533_)))
                              (_g3138731533_)))))
                   (___match4120041201_
                    (lambda (_e3146831781_
                             _hd3146931785_
                             _tl3147031788_
                             _e3147131791_
                             _hd3147231795_
                             _tl3147331798_)
                      (if (gx#stx-null? _tl3147331798_)
                          (___kont4106241063_ _hd3147231795_ _hd3146931785_)
                          (if (gx#stx-pair? _tl3147331798_)
                              (let ((_e3148331733_
                                     (gx#syntax-e _tl3147331798_)))
                                (let ((_tl3148531740_ (##cdr _e3148331733_))
                                      (_hd3148431737_ (##car _e3148331733_)))
                                  (if (gx#identifier? _hd3148431737_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g41937_|
                                           _hd3148431737_)
                                          (if (gx#stx-pair? _tl3148531740_)
                                              (let ((_e3148631743_
                                                     (gx#syntax-e
                                                      _tl3148531740_)))
                                                (let ((_tl3148831750_
                                                       (##cdr _e3148631743_))
                                                      (_hd3148731747_
                                                       (##car _e3148631743_)))
                                                  (if (gx#stx-null?
                                                       _tl3148831750_)
                                                      (___kont4106441065_
                                                       _hd3148731747_
                                                       _hd3147231795_
                                                       _hd3146931785_)
                                                      (_g3138731533_))))
                                              (_g3138731533_))
                                          (_g3138731533_))
                                      (if (gx#stx-datum? _hd3148431737_)
                                          (let ((_e3150131670_
                                                 (gx#stx-e _hd3148431737_)))
                                            (if (equal? _e3150131670_ '::)
                                                (if (gx#stx-pair?
                                                     _tl3148531740_)
                                                    (let ((_e3150231674_
                                                           (gx#syntax-e
                                                            _tl3148531740_)))
                                                      (let ((_tl3150431681_
                                                             (##cdr _e3150231674_))
                                                            (_hd3150331678_
                                                             (##car _e3150231674_)))
                                                        (if (gx#stx-null?
                                                             _tl3150431681_)
                                                            (___kont4106641067_
                                                             _hd3150331678_
                                                             _hd3147231795_
                                                             _hd3146931785_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3150431681_)
                        (let ((_e3152231584_ (gx#syntax-e _tl3150431681_)))
                          (let ((_tl3152431591_ (##cdr _e3152231584_))
                                (_hd3152331588_ (##car _e3152231584_)))
                            (if (gx#identifier? _hd3152331588_)
                                (if (gx#free-identifier=?
                                     |gerbil/core$<match>[1]#_g41938_|
                                     _hd3152331588_)
                                    (if (gx#stx-pair? _tl3152431591_)
                                        (let ((_e3152531594_
                                               (gx#syntax-e _tl3152431591_)))
                                          (let ((_tl3152731601_
                                                 (##cdr _e3152531594_))
                                                (_hd3152631598_
                                                 (##car _e3152531594_)))
                                            (if (gx#stx-null? _tl3152731601_)
                                                (___kont4106841069_
                                                 _hd3152631598_
                                                 _hd3150331678_
                                                 _hd3147231795_
                                                 _hd3146931785_)
                                                (_g3138731533_))))
                                        (_g3138731533_))
                                    (_g3138731533_))
                                (_g3138731533_))))
                        (_g3138731533_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3138731533_))
                                                (_g3138731533_)))
                                          (_g3138731533_)))))
                              (_g3138731533_)))))
                   (___match4113041131_
                    (lambda (_e3141631957_
                             _hd3141731961_
                             _tl3141831964_
                             _e3141931967_
                             _hd3142031971_
                             _tl3142131974_
                             _e3142231977_
                             _hd3142331981_
                             _tl3142431984_
                             ___splice4105641057_
                             _target3142531987_
                             _tl3142731990_)
                      (letrec ((_loop3142831993_
                                (lambda (_hd3142631997_ _pred3143232000_)
                                  (if (gx#stx-pair? _hd3142631997_)
                                      (let ((_e3142932003_
                                             (gx#syntax-e _hd3142631997_)))
                                        (let ((_lp-tl3143132010_
                                               (##cdr _e3142932003_))
                                              (_lp-hd3143032007_
                                               (##car _e3142932003_)))
                                          (_loop3142831993_
                                           _lp-tl3143132010_
                                           (cons _lp-hd3143032007_
                                                 _pred3143232000_))))
                                      (let ((_pred3143332013_
                                             (reverse _pred3143232000_)))
                                        (if (gx#stx-pair? _tl3142131974_)
                                            (let ((_e3143432017_
                                                   (gx#syntax-e
                                                    _tl3142131974_)))
                                              (let ((_tl3143632024_
                                                     (##cdr _e3143432017_))
                                                    (_hd3143532021_
                                                     (##car _e3143432017_)))
                                                (if (gx#stx-null?
                                                     _tl3143632024_)
                                                    (___kont4105441055_
                                                     _hd3143532021_
                                                     _pred3143332013_
                                                     _hd3141731961_)
                                                    (___match4122041221_
                                                     _e3141631957_
                                                     _hd3141731961_
                                                     _tl3141831964_
                                                     _e3141931967_
                                                     _hd3142031971_
                                                     _tl3142131974_
                                                     _e3143432017_
                                                     _hd3143532021_
                                                     _tl3143632024_))))
                                            (___match4120041201_
                                             _e3141631957_
                                             _hd3141731961_
                                             _tl3141831964_
                                             _e3141931967_
                                             _hd3142031971_
                                             _tl3142131974_)))))))
                        (_loop3142831993_ _target3142531987_ '()))))
                   (___match4110041101_
                    (lambda (_e3139232067_
                             _hd3139332071_
                             _tl3139432074_
                             _e3139532077_
                             _hd3139632081_
                             _tl3139732084_
                             _e3139832087_
                             _hd3139932091_
                             _tl3140032094_
                             ___splice4105241053_
                             _target3140132097_
                             _tl3140332100_)
                      (letrec ((_loop3140432103_
                                (lambda (_hd3140232107_ _pred3140832110_)
                                  (if (gx#stx-pair? _hd3140232107_)
                                      (let ((_e3140532113_
                                             (gx#syntax-e _hd3140232107_)))
                                        (let ((_lp-tl3140732120_
                                               (##cdr _e3140532113_))
                                              (_lp-hd3140632117_
                                               (##car _e3140532113_)))
                                          (_loop3140432103_
                                           _lp-tl3140732120_
                                           (cons _lp-hd3140632117_
                                                 _pred3140832110_))))
                                      (let ((_pred3140932123_
                                             (reverse _pred3140832110_)))
                                        (if (gx#stx-pair? _tl3139732084_)
                                            (let ((_e3141032127_
                                                   (gx#syntax-e
                                                    _tl3139732084_)))
                                              (let ((_tl3141232134_
                                                     (##cdr _e3141032127_))
                                                    (_hd3141132131_
                                                     (##car _e3141032127_)))
                                                (if (gx#stx-null?
                                                     _tl3141232134_)
                                                    (___kont4105041051_
                                                     _hd3141132131_
                                                     _pred3140932123_
                                                     _hd3139332071_)
                                                    (___match4122041221_
                                                     _e3139232067_
                                                     _hd3139332071_
                                                     _tl3139432074_
                                                     _e3139532077_
                                                     _hd3139632081_
                                                     _tl3139732084_
                                                     _e3141032127_
                                                     _hd3141132131_
                                                     _tl3141232134_))))
                                            (___match4120041201_
                                             _e3139232067_
                                             _hd3139332071_
                                             _tl3139432074_
                                             _e3139532077_
                                             _hd3139632081_
                                             _tl3139732084_)))))))
                        (_loop3140432103_ _target3140132097_ '())))))
              (if (gx#stx-pair? ___stx4104741048_)
                  (let ((_e3139232067_ (gx#syntax-e ___stx4104741048_)))
                    (let ((_tl3139432074_ (##cdr _e3139232067_))
                          (_hd3139332071_ (##car _e3139232067_)))
                      (if (gx#stx-pair? _tl3139432074_)
                          (let ((_e3139532077_ (gx#syntax-e _tl3139432074_)))
                            (let ((_tl3139732084_ (##cdr _e3139532077_))
                                  (_hd3139632081_ (##car _e3139532077_)))
                              (if (gx#stx-pair? _hd3139632081_)
                                  (let ((_e3139832087_
                                         (gx#syntax-e _hd3139632081_)))
                                    (let ((_tl3140032094_
                                           (##cdr _e3139832087_))
                                          (_hd3139932091_
                                           (##car _e3139832087_)))
                                      (if (gx#identifier? _hd3139932091_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g41939_|
                                               _hd3139932091_)
                                              (if (gx#stx-pair/null?
                                                   _tl3140032094_)
                                                  (let ((___splice4105241053_
                                                         (gx#syntax-split-splice
                                                          _tl3140032094_
                                                          '0)))
                                                    (let ((_tl3140332100_
                                                           (##vector-ref
                                                            ___splice4105241053_
                                                            '1))
                                                          (_target3140132097_
                                                           (##vector-ref
                                                            ___splice4105241053_
                                                            '0)))
                                                      (if (gx#stx-null?
                                                           _tl3140332100_)
                                                          (___match4110041101_
                                                           _e3139232067_
                                                           _hd3139332071_
                                                           _tl3139432074_
                                                           _e3139532077_
                                                           _hd3139632081_
                                                           _tl3139732084_
                                                           _e3139832087_
                                                           _hd3139932091_
                                                           _tl3140032094_
                                                           ___splice4105241053_
                                                           _target3140132097_
                                                           _tl3140332100_)
                                                          (if (gx#stx-pair?
                                                               _tl3139732084_)
                                                              (let ((_e3146331843_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl3139732084_)))
                        (let ((_tl3146531850_ (##cdr _e3146331843_))
                              (_hd3146431847_ (##car _e3146331843_)))
                          (if (gx#stx-null? _tl3146531850_)
                              (___kont4106041061_
                               _hd3146431847_
                               _hd3139632081_)
                              (if (gx#identifier? _hd3146431847_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g41937_|
                                       _hd3146431847_)
                                      (if (gx#stx-pair? _tl3146531850_)
                                          (let ((_e3148631743_
                                                 (gx#syntax-e _tl3146531850_)))
                                            (let ((_tl3148831750_
                                                   (##cdr _e3148631743_))
                                                  (_hd3148731747_
                                                   (##car _e3148631743_)))
                                              (if (gx#stx-null? _tl3148831750_)
                                                  (___kont4106441065_
                                                   _hd3148731747_
                                                   _hd3139632081_
                                                   _hd3139332071_)
                                                  (_g3138731533_))))
                                          (_g3138731533_))
                                      (_g3138731533_))
                                  (if (gx#stx-datum? _hd3146431847_)
                                      (let ((_e3150131670_
                                             (gx#stx-e _hd3146431847_)))
                                        (if (equal? _e3150131670_ '::)
                                            (if (gx#stx-pair? _tl3146531850_)
                                                (let ((_e3150231674_
                                                       (gx#syntax-e
                                                        _tl3146531850_)))
                                                  (let ((_tl3150431681_
                                                         (##cdr _e3150231674_))
                                                        (_hd3150331678_
                                                         (##car _e3150231674_)))
                                                    (if (gx#stx-null?
                                                         _tl3150431681_)
                                                        (___kont4106641067_
                                                         _hd3150331678_
                                                         _hd3139632081_
                                                         _hd3139332071_)
                                                        (if (gx#stx-pair?
                                                             _tl3150431681_)
                                                            (let ((_e3152231584_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3150431681_)))
                      (let ((_tl3152431591_ (##cdr _e3152231584_))
                            (_hd3152331588_ (##car _e3152231584_)))
                        (if (gx#identifier? _hd3152331588_)
                            (if (gx#free-identifier=?
                                 |gerbil/core$<match>[1]#_g41938_|
                                 _hd3152331588_)
                                (if (gx#stx-pair? _tl3152431591_)
                                    (let ((_e3152531594_
                                           (gx#syntax-e _tl3152431591_)))
                                      (let ((_tl3152731601_
                                             (##cdr _e3152531594_))
                                            (_hd3152631598_
                                             (##car _e3152531594_)))
                                        (if (gx#stx-null? _tl3152731601_)
                                            (___kont4106841069_
                                             _hd3152631598_
                                             _hd3150331678_
                                             _hd3139632081_
                                             _hd3139332071_)
                                            (_g3138731533_))))
                                    (_g3138731533_))
                                (_g3138731533_))
                            (_g3138731533_))))
                    (_g3138731533_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3138731533_))
                                            (_g3138731533_)))
                                      (_g3138731533_))))))
                      (if (gx#stx-null? _tl3139732084_)
                          (___kont4106241063_ _hd3139632081_ _hd3139332071_)
                          (_g3138731533_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _tl3139732084_)
                                                      (let ((_e3146331843_
                                                             (gx#syntax-e
                                                              _tl3139732084_)))
                                                        (let ((_tl3146531850_
                                                               (##cdr _e3146331843_))
                                                              (_hd3146431847_
                                                               (##car _e3146331843_)))
                                                          (if (gx#stx-null?
                                                               _tl3146531850_)
                                                              (___kont4106041061_
                                                               _hd3146431847_
                                                               _hd3139632081_)
                                                              (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd3146431847_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g41937_|
                               _hd3146431847_)
                              (if (gx#stx-pair? _tl3146531850_)
                                  (let ((_e3148631743_
                                         (gx#syntax-e _tl3146531850_)))
                                    (let ((_tl3148831750_
                                           (##cdr _e3148631743_))
                                          (_hd3148731747_
                                           (##car _e3148631743_)))
                                      (if (gx#stx-null? _tl3148831750_)
                                          (___kont4106441065_
                                           _hd3148731747_
                                           _hd3139632081_
                                           _hd3139332071_)
                                          (_g3138731533_))))
                                  (_g3138731533_))
                              (_g3138731533_))
                          (if (gx#stx-datum? _hd3146431847_)
                              (let ((_e3150131670_ (gx#stx-e _hd3146431847_)))
                                (if (equal? _e3150131670_ '::)
                                    (if (gx#stx-pair? _tl3146531850_)
                                        (let ((_e3150231674_
                                               (gx#syntax-e _tl3146531850_)))
                                          (let ((_tl3150431681_
                                                 (##cdr _e3150231674_))
                                                (_hd3150331678_
                                                 (##car _e3150231674_)))
                                            (if (gx#stx-null? _tl3150431681_)
                                                (___kont4106641067_
                                                 _hd3150331678_
                                                 _hd3139632081_
                                                 _hd3139332071_)
                                                (if (gx#stx-pair?
                                                     _tl3150431681_)
                                                    (let ((_e3152231584_
                                                           (gx#syntax-e
                                                            _tl3150431681_)))
                                                      (let ((_tl3152431591_
                                                             (##cdr _e3152231584_))
                                                            (_hd3152331588_
                                                             (##car _e3152231584_)))
                                                        (if (gx#identifier?
                                                             _hd3152331588_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core$<match>[1]#_g41938_|
                         _hd3152331588_)
                        (if (gx#stx-pair? _tl3152431591_)
                            (let ((_e3152531594_ (gx#syntax-e _tl3152431591_)))
                              (let ((_tl3152731601_ (##cdr _e3152531594_))
                                    (_hd3152631598_ (##car _e3152531594_)))
                                (if (gx#stx-null? _tl3152731601_)
                                    (___kont4106841069_
                                     _hd3152631598_
                                     _hd3150331678_
                                     _hd3139632081_
                                     _hd3139332071_)
                                    (_g3138731533_))))
                            (_g3138731533_))
                        (_g3138731533_))
                    (_g3138731533_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3138731533_)))))
                                        (_g3138731533_))
                                    (_g3138731533_)))
                              (_g3138731533_))))))
              (if (gx#stx-null? _tl3139732084_)
                  (___kont4106241063_ _hd3139632081_ _hd3139332071_)
                  (_g3138731533_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g41940_|
                                                   _hd3139932091_)
                                                  (if (gx#stx-pair/null?
                                                       _tl3140032094_)
                                                      (let ((___splice4105641057_
                                                             (gx#syntax-split-splice
                                                              _tl3140032094_
                                                              '0)))
                                                        (let ((_tl3142731990_
                                                               (##vector-ref
                                                                ___splice4105641057_
                                                                '1))
                                                              (_target3142531987_
                                                               (##vector-ref
                                                                ___splice4105641057_
                                                                '0)))
                                                          (if (gx#stx-null?
                                                               _tl3142731990_)
                                                              (___match4113041131_
                                                               _e3139232067_
                                                               _hd3139332071_
                                                               _tl3139432074_
                                                               _e3139532077_
                                                               _hd3139632081_
                                                               _tl3139732084_
                                                               _e3139832087_
                                                               _hd3139932091_
                                                               _tl3140032094_
                                                               ___splice4105641057_
                                                               _target3142531987_
                                                               _tl3142731990_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl3139732084_)
                          (let ((_e3146331843_ (gx#syntax-e _tl3139732084_)))
                            (let ((_tl3146531850_ (##cdr _e3146331843_))
                                  (_hd3146431847_ (##car _e3146331843_)))
                              (if (gx#stx-null? _tl3146531850_)
                                  (___kont4106041061_
                                   _hd3146431847_
                                   _hd3139632081_)
                                  (if (gx#identifier? _hd3146431847_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g41937_|
                                           _hd3146431847_)
                                          (if (gx#stx-pair? _tl3146531850_)
                                              (let ((_e3148631743_
                                                     (gx#syntax-e
                                                      _tl3146531850_)))
                                                (let ((_tl3148831750_
                                                       (##cdr _e3148631743_))
                                                      (_hd3148731747_
                                                       (##car _e3148631743_)))
                                                  (if (gx#stx-null?
                                                       _tl3148831750_)
                                                      (___kont4106441065_
                                                       _hd3148731747_
                                                       _hd3139632081_
                                                       _hd3139332071_)
                                                      (_g3138731533_))))
                                              (_g3138731533_))
                                          (_g3138731533_))
                                      (if (gx#stx-datum? _hd3146431847_)
                                          (let ((_e3150131670_
                                                 (gx#stx-e _hd3146431847_)))
                                            (if (equal? _e3150131670_ '::)
                                                (if (gx#stx-pair?
                                                     _tl3146531850_)
                                                    (let ((_e3150231674_
                                                           (gx#syntax-e
                                                            _tl3146531850_)))
                                                      (let ((_tl3150431681_
                                                             (##cdr _e3150231674_))
                                                            (_hd3150331678_
                                                             (##car _e3150231674_)))
                                                        (if (gx#stx-null?
                                                             _tl3150431681_)
                                                            (___kont4106641067_
                                                             _hd3150331678_
                                                             _hd3139632081_
                                                             _hd3139332071_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3150431681_)
                        (let ((_e3152231584_ (gx#syntax-e _tl3150431681_)))
                          (let ((_tl3152431591_ (##cdr _e3152231584_))
                                (_hd3152331588_ (##car _e3152231584_)))
                            (if (gx#identifier? _hd3152331588_)
                                (if (gx#free-identifier=?
                                     |gerbil/core$<match>[1]#_g41938_|
                                     _hd3152331588_)
                                    (if (gx#stx-pair? _tl3152431591_)
                                        (let ((_e3152531594_
                                               (gx#syntax-e _tl3152431591_)))
                                          (let ((_tl3152731601_
                                                 (##cdr _e3152531594_))
                                                (_hd3152631598_
                                                 (##car _e3152531594_)))
                                            (if (gx#stx-null? _tl3152731601_)
                                                (___kont4106841069_
                                                 _hd3152631598_
                                                 _hd3150331678_
                                                 _hd3139632081_
                                                 _hd3139332071_)
                                                (_g3138731533_))))
                                        (_g3138731533_))
                                    (_g3138731533_))
                                (_g3138731533_))))
                        (_g3138731533_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3138731533_))
                                                (_g3138731533_)))
                                          (_g3138731533_))))))
                          (if (gx#stx-null? _tl3139732084_)
                              (___kont4106241063_
                               _hd3139632081_
                               _hd3139332071_)
                              (_g3138731533_))))))
              (if (gx#stx-pair? _tl3139732084_)
                  (let ((_e3146331843_ (gx#syntax-e _tl3139732084_)))
                    (let ((_tl3146531850_ (##cdr _e3146331843_))
                          (_hd3146431847_ (##car _e3146331843_)))
                      (if (gx#stx-null? _tl3146531850_)
                          (___kont4106041061_ _hd3146431847_ _hd3139632081_)
                          (if (gx#identifier? _hd3146431847_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g41937_|
                                   _hd3146431847_)
                                  (if (gx#stx-pair? _tl3146531850_)
                                      (let ((_e3148631743_
                                             (gx#syntax-e _tl3146531850_)))
                                        (let ((_tl3148831750_
                                               (##cdr _e3148631743_))
                                              (_hd3148731747_
                                               (##car _e3148631743_)))
                                          (if (gx#stx-null? _tl3148831750_)
                                              (___kont4106441065_
                                               _hd3148731747_
                                               _hd3139632081_
                                               _hd3139332071_)
                                              (_g3138731533_))))
                                      (_g3138731533_))
                                  (_g3138731533_))
                              (if (gx#stx-datum? _hd3146431847_)
                                  (let ((_e3150131670_
                                         (gx#stx-e _hd3146431847_)))
                                    (if (equal? _e3150131670_ '::)
                                        (if (gx#stx-pair? _tl3146531850_)
                                            (let ((_e3150231674_
                                                   (gx#syntax-e
                                                    _tl3146531850_)))
                                              (let ((_tl3150431681_
                                                     (##cdr _e3150231674_))
                                                    (_hd3150331678_
                                                     (##car _e3150231674_)))
                                                (if (gx#stx-null?
                                                     _tl3150431681_)
                                                    (___kont4106641067_
                                                     _hd3150331678_
                                                     _hd3139632081_
                                                     _hd3139332071_)
                                                    (if (gx#stx-pair?
                                                         _tl3150431681_)
                                                        (let ((_e3152231584_
                                                               (gx#syntax-e
                                                                _tl3150431681_)))
                                                          (let ((_tl3152431591_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3152231584_))
                        (_hd3152331588_ (##car _e3152231584_)))
                    (if (gx#identifier? _hd3152331588_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g41938_|
                             _hd3152331588_)
                            (if (gx#stx-pair? _tl3152431591_)
                                (let ((_e3152531594_
                                       (gx#syntax-e _tl3152431591_)))
                                  (let ((_tl3152731601_ (##cdr _e3152531594_))
                                        (_hd3152631598_ (##car _e3152531594_)))
                                    (if (gx#stx-null? _tl3152731601_)
                                        (___kont4106841069_
                                         _hd3152631598_
                                         _hd3150331678_
                                         _hd3139632081_
                                         _hd3139332071_)
                                        (_g3138731533_))))
                                (_g3138731533_))
                            (_g3138731533_))
                        (_g3138731533_))))
                (_g3138731533_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g3138731533_))
                                        (_g3138731533_)))
                                  (_g3138731533_))))))
                  (if (gx#stx-null? _tl3139732084_)
                      (___kont4106241063_ _hd3139632081_ _hd3139332071_)
                      (_g3138731533_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g41941_|
                                                       _hd3139932091_)
                                                      (if (gx#stx-pair?
                                                           _tl3140032094_)
                                                          (let ((_e3144931907_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3140032094_)))
                    (let ((_tl3145131914_ (##cdr _e3144931907_))
                          (_hd3145031911_ (##car _e3144931907_)))
                      (if (gx#stx-null? _tl3145131914_)
                          (if (gx#stx-pair? _tl3139732084_)
                              (let ((_e3145231917_
                                     (gx#syntax-e _tl3139732084_)))
                                (let ((_tl3145431924_ (##cdr _e3145231917_))
                                      (_hd3145331921_ (##car _e3145231917_)))
                                  (if (gx#stx-null? _tl3145431924_)
                                      (___kont4105841059_
                                       _hd3145331921_
                                       _hd3145031911_
                                       _hd3139332071_)
                                      (if (gx#identifier? _hd3145331921_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g41937_|
                                               _hd3145331921_)
                                              (if (gx#stx-pair? _tl3145431924_)
                                                  (let ((_e3148631743_
                                                         (gx#syntax-e
                                                          _tl3145431924_)))
                                                    (let ((_tl3148831750_
                                                           (##cdr _e3148631743_))
                                                          (_hd3148731747_
                                                           (##car _e3148631743_)))
                                                      (if (gx#stx-null?
                                                           _tl3148831750_)
                                                          (___kont4106441065_
                                                           _hd3148731747_
                                                           _hd3139632081_
                                                           _hd3139332071_)
                                                          (_g3138731533_))))
                                                  (_g3138731533_))
                                              (_g3138731533_))
                                          (if (gx#stx-datum? _hd3145331921_)
                                              (let ((_e3150131670_
                                                     (gx#stx-e
                                                      _hd3145331921_)))
                                                (if (equal? _e3150131670_ '::)
                                                    (if (gx#stx-pair?
                                                         _tl3145431924_)
                                                        (let ((_e3150231674_
                                                               (gx#syntax-e
                                                                _tl3145431924_)))
                                                          (let ((_tl3150431681_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3150231674_))
                        (_hd3150331678_ (##car _e3150231674_)))
                    (if (gx#stx-null? _tl3150431681_)
                        (___kont4106641067_
                         _hd3150331678_
                         _hd3139632081_
                         _hd3139332071_)
                        (if (gx#stx-pair? _tl3150431681_)
                            (let ((_e3152231584_ (gx#syntax-e _tl3150431681_)))
                              (let ((_tl3152431591_ (##cdr _e3152231584_))
                                    (_hd3152331588_ (##car _e3152231584_)))
                                (if (gx#identifier? _hd3152331588_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<match>[1]#_g41938_|
                                         _hd3152331588_)
                                        (if (gx#stx-pair? _tl3152431591_)
                                            (let ((_e3152531594_
                                                   (gx#syntax-e
                                                    _tl3152431591_)))
                                              (let ((_tl3152731601_
                                                     (##cdr _e3152531594_))
                                                    (_hd3152631598_
                                                     (##car _e3152531594_)))
                                                (if (gx#stx-null?
                                                     _tl3152731601_)
                                                    (___kont4106841069_
                                                     _hd3152631598_
                                                     _hd3150331678_
                                                     _hd3139632081_
                                                     _hd3139332071_)
                                                    (_g3138731533_))))
                                            (_g3138731533_))
                                        (_g3138731533_))
                                    (_g3138731533_))))
                            (_g3138731533_)))))
                (_g3138731533_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3138731533_)))
                                              (_g3138731533_))))))
                              (if (gx#stx-null? _tl3139732084_)
                                  (___kont4106241063_
                                   _hd3139632081_
                                   _hd3139332071_)
                                  (_g3138731533_)))
                          (if (gx#stx-pair? _tl3139732084_)
                              (let ((_e3146331843_
                                     (gx#syntax-e _tl3139732084_)))
                                (let ((_tl3146531850_ (##cdr _e3146331843_))
                                      (_hd3146431847_ (##car _e3146331843_)))
                                  (if (gx#stx-null? _tl3146531850_)
                                      (___kont4106041061_
                                       _hd3146431847_
                                       _hd3139632081_)
                                      (if (gx#identifier? _hd3146431847_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g41937_|
                                               _hd3146431847_)
                                              (if (gx#stx-pair? _tl3146531850_)
                                                  (let ((_e3148631743_
                                                         (gx#syntax-e
                                                          _tl3146531850_)))
                                                    (let ((_tl3148831750_
                                                           (##cdr _e3148631743_))
                                                          (_hd3148731747_
                                                           (##car _e3148631743_)))
                                                      (if (gx#stx-null?
                                                           _tl3148831750_)
                                                          (___kont4106441065_
                                                           _hd3148731747_
                                                           _hd3139632081_
                                                           _hd3139332071_)
                                                          (_g3138731533_))))
                                                  (_g3138731533_))
                                              (_g3138731533_))
                                          (if (gx#stx-datum? _hd3146431847_)
                                              (let ((_e3150131670_
                                                     (gx#stx-e
                                                      _hd3146431847_)))
                                                (if (equal? _e3150131670_ '::)
                                                    (if (gx#stx-pair?
                                                         _tl3146531850_)
                                                        (let ((_e3150231674_
                                                               (gx#syntax-e
                                                                _tl3146531850_)))
                                                          (let ((_tl3150431681_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3150231674_))
                        (_hd3150331678_ (##car _e3150231674_)))
                    (if (gx#stx-null? _tl3150431681_)
                        (___kont4106641067_
                         _hd3150331678_
                         _hd3139632081_
                         _hd3139332071_)
                        (if (gx#stx-pair? _tl3150431681_)
                            (let ((_e3152231584_ (gx#syntax-e _tl3150431681_)))
                              (let ((_tl3152431591_ (##cdr _e3152231584_))
                                    (_hd3152331588_ (##car _e3152231584_)))
                                (if (gx#identifier? _hd3152331588_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<match>[1]#_g41938_|
                                         _hd3152331588_)
                                        (if (gx#stx-pair? _tl3152431591_)
                                            (let ((_e3152531594_
                                                   (gx#syntax-e
                                                    _tl3152431591_)))
                                              (let ((_tl3152731601_
                                                     (##cdr _e3152531594_))
                                                    (_hd3152631598_
                                                     (##car _e3152531594_)))
                                                (if (gx#stx-null?
                                                     _tl3152731601_)
                                                    (___kont4106841069_
                                                     _hd3152631598_
                                                     _hd3150331678_
                                                     _hd3139632081_
                                                     _hd3139332071_)
                                                    (_g3138731533_))))
                                            (_g3138731533_))
                                        (_g3138731533_))
                                    (_g3138731533_))))
                            (_g3138731533_)))))
                (_g3138731533_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3138731533_)))
                                              (_g3138731533_))))))
                              (if (gx#stx-null? _tl3139732084_)
                                  (___kont4106241063_
                                   _hd3139632081_
                                   _hd3139332071_)
                                  (_g3138731533_))))))
                  (if (gx#stx-pair? _tl3139732084_)
                      (let ((_e3146331843_ (gx#syntax-e _tl3139732084_)))
                        (let ((_tl3146531850_ (##cdr _e3146331843_))
                              (_hd3146431847_ (##car _e3146331843_)))
                          (if (gx#stx-null? _tl3146531850_)
                              (___kont4106041061_
                               _hd3146431847_
                               _hd3139632081_)
                              (if (gx#identifier? _hd3146431847_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g41937_|
                                       _hd3146431847_)
                                      (if (gx#stx-pair? _tl3146531850_)
                                          (let ((_e3148631743_
                                                 (gx#syntax-e _tl3146531850_)))
                                            (let ((_tl3148831750_
                                                   (##cdr _e3148631743_))
                                                  (_hd3148731747_
                                                   (##car _e3148631743_)))
                                              (if (gx#stx-null? _tl3148831750_)
                                                  (___kont4106441065_
                                                   _hd3148731747_
                                                   _hd3139632081_
                                                   _hd3139332071_)
                                                  (_g3138731533_))))
                                          (_g3138731533_))
                                      (_g3138731533_))
                                  (if (gx#stx-datum? _hd3146431847_)
                                      (let ((_e3150131670_
                                             (gx#stx-e _hd3146431847_)))
                                        (if (equal? _e3150131670_ '::)
                                            (if (gx#stx-pair? _tl3146531850_)
                                                (let ((_e3150231674_
                                                       (gx#syntax-e
                                                        _tl3146531850_)))
                                                  (let ((_tl3150431681_
                                                         (##cdr _e3150231674_))
                                                        (_hd3150331678_
                                                         (##car _e3150231674_)))
                                                    (if (gx#stx-null?
                                                         _tl3150431681_)
                                                        (___kont4106641067_
                                                         _hd3150331678_
                                                         _hd3139632081_
                                                         _hd3139332071_)
                                                        (if (gx#stx-pair?
                                                             _tl3150431681_)
                                                            (let ((_e3152231584_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3150431681_)))
                      (let ((_tl3152431591_ (##cdr _e3152231584_))
                            (_hd3152331588_ (##car _e3152231584_)))
                        (if (gx#identifier? _hd3152331588_)
                            (if (gx#free-identifier=?
                                 |gerbil/core$<match>[1]#_g41938_|
                                 _hd3152331588_)
                                (if (gx#stx-pair? _tl3152431591_)
                                    (let ((_e3152531594_
                                           (gx#syntax-e _tl3152431591_)))
                                      (let ((_tl3152731601_
                                             (##cdr _e3152531594_))
                                            (_hd3152631598_
                                             (##car _e3152531594_)))
                                        (if (gx#stx-null? _tl3152731601_)
                                            (___kont4106841069_
                                             _hd3152631598_
                                             _hd3150331678_
                                             _hd3139632081_
                                             _hd3139332071_)
                                            (_g3138731533_))))
                                    (_g3138731533_))
                                (_g3138731533_))
                            (_g3138731533_))))
                    (_g3138731533_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3138731533_))
                                            (_g3138731533_)))
                                      (_g3138731533_))))))
                      (if (gx#stx-null? _tl3139732084_)
                          (___kont4106241063_ _hd3139632081_ _hd3139332071_)
                          (_g3138731533_))))
              (if (gx#stx-pair? _tl3139732084_)
                  (let ((_e3146331843_ (gx#syntax-e _tl3139732084_)))
                    (let ((_tl3146531850_ (##cdr _e3146331843_))
                          (_hd3146431847_ (##car _e3146331843_)))
                      (if (gx#stx-null? _tl3146531850_)
                          (___kont4106041061_ _hd3146431847_ _hd3139632081_)
                          (if (gx#identifier? _hd3146431847_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g41937_|
                                   _hd3146431847_)
                                  (if (gx#stx-pair? _tl3146531850_)
                                      (let ((_e3148631743_
                                             (gx#syntax-e _tl3146531850_)))
                                        (let ((_tl3148831750_
                                               (##cdr _e3148631743_))
                                              (_hd3148731747_
                                               (##car _e3148631743_)))
                                          (if (gx#stx-null? _tl3148831750_)
                                              (___kont4106441065_
                                               _hd3148731747_
                                               _hd3139632081_
                                               _hd3139332071_)
                                              (_g3138731533_))))
                                      (_g3138731533_))
                                  (_g3138731533_))
                              (if (gx#stx-datum? _hd3146431847_)
                                  (let ((_e3150131670_
                                         (gx#stx-e _hd3146431847_)))
                                    (if (equal? _e3150131670_ '::)
                                        (if (gx#stx-pair? _tl3146531850_)
                                            (let ((_e3150231674_
                                                   (gx#syntax-e
                                                    _tl3146531850_)))
                                              (let ((_tl3150431681_
                                                     (##cdr _e3150231674_))
                                                    (_hd3150331678_
                                                     (##car _e3150231674_)))
                                                (if (gx#stx-null?
                                                     _tl3150431681_)
                                                    (___kont4106641067_
                                                     _hd3150331678_
                                                     _hd3139632081_
                                                     _hd3139332071_)
                                                    (if (gx#stx-pair?
                                                         _tl3150431681_)
                                                        (let ((_e3152231584_
                                                               (gx#syntax-e
                                                                _tl3150431681_)))
                                                          (let ((_tl3152431591_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3152231584_))
                        (_hd3152331588_ (##car _e3152231584_)))
                    (if (gx#identifier? _hd3152331588_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g41938_|
                             _hd3152331588_)
                            (if (gx#stx-pair? _tl3152431591_)
                                (let ((_e3152531594_
                                       (gx#syntax-e _tl3152431591_)))
                                  (let ((_tl3152731601_ (##cdr _e3152531594_))
                                        (_hd3152631598_ (##car _e3152531594_)))
                                    (if (gx#stx-null? _tl3152731601_)
                                        (___kont4106841069_
                                         _hd3152631598_
                                         _hd3150331678_
                                         _hd3139632081_
                                         _hd3139332071_)
                                        (_g3138731533_))))
                                (_g3138731533_))
                            (_g3138731533_))
                        (_g3138731533_))))
                (_g3138731533_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g3138731533_))
                                        (_g3138731533_)))
                                  (_g3138731533_))))))
                  (if (gx#stx-null? _tl3139732084_)
                      (___kont4106241063_ _hd3139632081_ _hd3139332071_)
                      (_g3138731533_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl3139732084_)
                                              (let ((_e3146331843_
                                                     (gx#syntax-e
                                                      _tl3139732084_)))
                                                (let ((_tl3146531850_
                                                       (##cdr _e3146331843_))
                                                      (_hd3146431847_
                                                       (##car _e3146331843_)))
                                                  (if (gx#stx-null?
                                                       _tl3146531850_)
                                                      (___kont4106041061_
                                                       _hd3146431847_
                                                       _hd3139632081_)
                                                      (if (gx#identifier?
                                                           _hd3146431847_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core$<match>[1]#_g41937_|
                                                               _hd3146431847_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl3146531850_)
                          (let ((_e3148631743_ (gx#syntax-e _tl3146531850_)))
                            (let ((_tl3148831750_ (##cdr _e3148631743_))
                                  (_hd3148731747_ (##car _e3148631743_)))
                              (if (gx#stx-null? _tl3148831750_)
                                  (___kont4106441065_
                                   _hd3148731747_
                                   _hd3139632081_
                                   _hd3139332071_)
                                  (_g3138731533_))))
                          (_g3138731533_))
                      (_g3138731533_))
                  (if (gx#stx-datum? _hd3146431847_)
                      (let ((_e3150131670_ (gx#stx-e _hd3146431847_)))
                        (if (equal? _e3150131670_ '::)
                            (if (gx#stx-pair? _tl3146531850_)
                                (let ((_e3150231674_
                                       (gx#syntax-e _tl3146531850_)))
                                  (let ((_tl3150431681_ (##cdr _e3150231674_))
                                        (_hd3150331678_ (##car _e3150231674_)))
                                    (if (gx#stx-null? _tl3150431681_)
                                        (___kont4106641067_
                                         _hd3150331678_
                                         _hd3139632081_
                                         _hd3139332071_)
                                        (if (gx#stx-pair? _tl3150431681_)
                                            (let ((_e3152231584_
                                                   (gx#syntax-e
                                                    _tl3150431681_)))
                                              (let ((_tl3152431591_
                                                     (##cdr _e3152231584_))
                                                    (_hd3152331588_
                                                     (##car _e3152231584_)))
                                                (if (gx#identifier?
                                                     _hd3152331588_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core$<match>[1]#_g41938_|
                                                         _hd3152331588_)
                                                        (if (gx#stx-pair?
                                                             _tl3152431591_)
                                                            (let ((_e3152531594_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3152431591_)))
                      (let ((_tl3152731601_ (##cdr _e3152531594_))
                            (_hd3152631598_ (##car _e3152531594_)))
                        (if (gx#stx-null? _tl3152731601_)
                            (___kont4106841069_
                             _hd3152631598_
                             _hd3150331678_
                             _hd3139632081_
                             _hd3139332071_)
                            (_g3138731533_))))
                    (_g3138731533_))
                (_g3138731533_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3138731533_))))
                                            (_g3138731533_)))))
                                (_g3138731533_))
                            (_g3138731533_)))
                      (_g3138731533_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null? _tl3139732084_)
                                                  (___kont4106241063_
                                                   _hd3139632081_
                                                   _hd3139332071_)
                                                  (_g3138731533_))))))
                                  (if (gx#stx-pair? _tl3139732084_)
                                      (let ((_e3146331843_
                                             (gx#syntax-e _tl3139732084_)))
                                        (let ((_tl3146531850_
                                               (##cdr _e3146331843_))
                                              (_hd3146431847_
                                               (##car _e3146331843_)))
                                          (if (gx#stx-null? _tl3146531850_)
                                              (___kont4106041061_
                                               _hd3146431847_
                                               _hd3139632081_)
                                              (if (gx#identifier?
                                                   _hd3146431847_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g41937_|
                                                       _hd3146431847_)
                                                      (if (gx#stx-pair?
                                                           _tl3146531850_)
                                                          (let ((_e3148631743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3146531850_)))
                    (let ((_tl3148831750_ (##cdr _e3148631743_))
                          (_hd3148731747_ (##car _e3148631743_)))
                      (if (gx#stx-null? _tl3148831750_)
                          (___kont4106441065_
                           _hd3148731747_
                           _hd3139632081_
                           _hd3139332071_)
                          (_g3138731533_))))
                  (_g3138731533_))
              (_g3138731533_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-datum?
                                                       _hd3146431847_)
                                                      (let ((_e3150131670_
                                                             (gx#stx-e
                                                              _hd3146431847_)))
                                                        (if (equal? _e3150131670_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '::)
                    (if (gx#stx-pair? _tl3146531850_)
                        (let ((_e3150231674_ (gx#syntax-e _tl3146531850_)))
                          (let ((_tl3150431681_ (##cdr _e3150231674_))
                                (_hd3150331678_ (##car _e3150231674_)))
                            (if (gx#stx-null? _tl3150431681_)
                                (___kont4106641067_
                                 _hd3150331678_
                                 _hd3139632081_
                                 _hd3139332071_)
                                (if (gx#stx-pair? _tl3150431681_)
                                    (let ((_e3152231584_
                                           (gx#syntax-e _tl3150431681_)))
                                      (let ((_tl3152431591_
                                             (##cdr _e3152231584_))
                                            (_hd3152331588_
                                             (##car _e3152231584_)))
                                        (if (gx#identifier? _hd3152331588_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core$<match>[1]#_g41938_|
                                                 _hd3152331588_)
                                                (if (gx#stx-pair?
                                                     _tl3152431591_)
                                                    (let ((_e3152531594_
                                                           (gx#syntax-e
                                                            _tl3152431591_)))
                                                      (let ((_tl3152731601_
                                                             (##cdr _e3152531594_))
                                                            (_hd3152631598_
                                                             (##car _e3152531594_)))
                                                        (if (gx#stx-null?
                                                             _tl3152731601_)
                                                            (___kont4106841069_
                                                             _hd3152631598_
                                                             _hd3150331678_
                                                             _hd3139632081_
                                                             _hd3139332071_)
                                                            (_g3138731533_))))
                                                    (_g3138731533_))
                                                (_g3138731533_))
                                            (_g3138731533_))))
                                    (_g3138731533_)))))
                        (_g3138731533_))
                    (_g3138731533_)))
              (_g3138731533_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-null? _tl3139732084_)
                                          (___kont4106241063_
                                           _hd3139632081_
                                           _hd3139332071_)
                                          (_g3138731533_))))))
                          (_g3138731533_))))
                  (_g3138731533_)))))))
    (define |gerbil/core$<match>[:0:]#defsyntax-for-match|
      (lambda (_$stx32176_)
        (let* ((___stx4131541316_ _$stx32176_)
               (_g3218132215_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx4131541316_))))
          (let ((___kont4131841319_
                 (lambda (_L32319_ _L32321_ _L32322_)
                   (cons (gx#datum->syntax '#f 'defsyntax)
                         (cons _L32322_
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
                                       (cons _L32321_ '()))
                                 (cons (cons (gx#datum->syntax '#f '$macro-e)
                                             (cons _L32319_ '()))
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
                (___kont4132041321_
                 (lambda (_L32252_ _L32254_ _L32255_)
                   (cons _L32255_
                         (cons _L32254_
                               (cons _L32252_
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
            (let ((___match4134841349_
                   (lambda (_e3218632279_
                            _hd3218732283_
                            _tl3218832286_
                            _e3218932289_
                            _hd3219032293_
                            _tl3219132296_
                            _e3219232299_
                            _hd3219332303_
                            _tl3219432306_
                            _e3219532309_
                            _hd3219632313_
                            _tl3219732316_)
                     (let ((_L32319_ _hd3219632313_)
                           (_L32321_ _hd3219332303_)
                           (_L32322_ _hd3219032293_))
                       (if (gx#identifier? _L32322_)
                           (___kont4131841319_ _L32319_ _L32321_ _L32322_)
                           (_g3218132215_))))))
              (if (gx#stx-pair? ___stx4131541316_)
                  (let ((_e3218632279_ (gx#syntax-e ___stx4131541316_)))
                    (let ((_tl3218832286_ (##cdr _e3218632279_))
                          (_hd3218732283_ (##car _e3218632279_)))
                      (if (gx#stx-pair? _tl3218832286_)
                          (let ((_e3218932289_ (gx#syntax-e _tl3218832286_)))
                            (let ((_tl3219132296_ (##cdr _e3218932289_))
                                  (_hd3219032293_ (##car _e3218932289_)))
                              (if (gx#stx-pair? _tl3219132296_)
                                  (let ((_e3219232299_
                                         (gx#syntax-e _tl3219132296_)))
                                    (let ((_tl3219432306_
                                           (##cdr _e3219232299_))
                                          (_hd3219332303_
                                           (##car _e3219232299_)))
                                      (if (gx#stx-pair? _tl3219432306_)
                                          (let ((_e3219532309_
                                                 (gx#syntax-e _tl3219432306_)))
                                            (let ((_tl3219732316_
                                                   (##cdr _e3219532309_))
                                                  (_hd3219632313_
                                                   (##car _e3219532309_)))
                                              (if (gx#stx-null? _tl3219732316_)
                                                  (___match4134841349_
                                                   _e3218632279_
                                                   _hd3218732283_
                                                   _tl3218832286_
                                                   _e3218932289_
                                                   _hd3219032293_
                                                   _tl3219132296_
                                                   _e3219232299_
                                                   _hd3219332303_
                                                   _tl3219432306_
                                                   _e3219532309_
                                                   _hd3219632313_
                                                   _tl3219732316_)
                                                  (_g3218132215_))))
                                          (if (gx#stx-null? _tl3219432306_)
                                              (___kont4132041321_
                                               _hd3219332303_
                                               _hd3219032293_
                                               _hd3218732283_)
                                              (_g3218132215_)))))
                                  (_g3218132215_))))
                          (_g3218132215_))))
                  (_g3218132215_)))))))
    (define |gerbil/core$<match>[:0:]#defrules-for-match|
      (lambda (_$stx32344_)
        (let* ((_g3234832363_
                (lambda (_g3234932359_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g3234932359_)))
               (_g3234732406_
                (lambda (_g3234932367_)
                  (if (gx#stx-pair? _g3234932367_)
                      (let ((_e3235232370_ (gx#syntax-e _g3234932367_)))
                        (let ((_hd3235332374_ (##car _e3235232370_))
                              (_tl3235432377_ (##cdr _e3235232370_)))
                          (if (gx#stx-pair? _tl3235432377_)
                              (let ((_e3235532380_
                                     (gx#syntax-e _tl3235432377_)))
                                (let ((_hd3235632384_ (##car _e3235532380_))
                                      (_tl3235732387_ (##cdr _e3235532380_)))
                                  ((lambda (_L32390_ _L32392_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'defsyntax-for-match)
                                           (cons _L32392_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'syntax-rules)
                                                             _L32390_)
                                                       '()))))
                                   _tl3235732387_
                                   _hd3235632384_)))
                              (_g3234832363_ _g3234932367_))))
                      (_g3234832363_ _g3234932367_)))))
          (_g3234732406_ _$stx32344_))))))
