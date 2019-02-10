(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<match>[1]#_g42138_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g42139_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g42140_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g42141_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g42142_|
    (##structure
     gx#syntax-quote::t
     'apply
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g42143_|
    (##structure gx#syntax-quote::t '? #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g42144_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g42145_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g42146_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g42147_|
    (##structure
     gx#syntax-quote::t
     'cons
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g42148_|
    (##structure
     gx#syntax-quote::t
     'cons*
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g42149_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g42150_|
    (##structure gx#syntax-quote::t 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g42151_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g42152_|
    (##structure
     gx#syntax-quote::t
     'vector
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g42161_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g42166_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g42167_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g42168_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g42173_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g42174_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g42175_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g42176_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g42177_|
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
      (lambda _$args30203_
        (apply make-class-instance
               |gerbil/core$<match>[1]#match-macro::t|
               _$args30203_)))
    (define |gerbil/core$<match>[1]#syntax-local-match-macro?|
      (lambda (_stx30200_)
        (if (gx#identifier? _stx30200_)
            (|gerbil/core$<match>[1]#match-macro?|
             (gx#syntax-local-value _stx30200_ false))
            '#f)))
    (define |gerbil/core$<match>[1]#parse-match-pattern__%|
      (lambda (_stx28506_ _match-stx28508_)
        (letrec ((_parse128510_
                  (lambda (_hd28863_)
                    (let* ((___stx3940539406_ _hd28863_)
                           (_g2888929031_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3940539406_))))
                      (let ((___kont3940839409_
                             (lambda (_L29963_ _L29965_)
                               (let* ((___stx3932539326_ _L29963_)
                                      (_g2998230015_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx3932539326_))))
                                 (let ((___kont3932839329_
                                        (lambda ()
                                          (cons '?: (cons _L29965_ '()))))
                                       (___kont3933039331_
                                        (lambda (_L30156_)
                                          (cons '?:
                                                (cons _L29965_
                                                      (cons (_parse128510_
                                                             _L30156_)
                                                            '())))))
                                       (___kont3933239333_
                                        (lambda (_L30126_)
                                          (cons '?:
                                                (cons _L29965_
                                                      (cons '=>:
                                                            (cons (_parse128510_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L30126_)
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (___kont3933439335_
                                        (lambda (_L30077_ _L30079_)
                                          (cons '?:
                                                (cons _L29965_
                                                      (cons '::
                                                            (cons _L30079_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '=>: (cons (_parse128510_ _L30077_) '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (___kont3933639337_
                                        (lambda ()
                                          (_parse-error28517_ _hd28863_))))
                                   (let ((_g2997830167_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 ___stx3932539326_)
                                                (let ((_e2998530146_
                                                       (gx#syntax-e
                                                        ___stx3932539326_)))
                                                  (let ((_tl2998730153_
                                                         (##cdr _e2998530146_))
                                                        (_hd2998630150_
                                                         (##car _e2998530146_)))
                                                    (if (gx#stx-null?
                                                         _tl2998730153_)
                                                        (___kont3933039331_
                                                         _hd2998630150_)
                                                        (if (gx#identifier?
                                                             _hd2998630150_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core$<match>[1]#_g42138_|
                         _hd2998630150_)
                        (if (gx#stx-pair? _tl2998730153_)
                            (let ((_e2999230116_ (gx#syntax-e _tl2998730153_)))
                              (let ((_tl2999430123_ (##cdr _e2999230116_))
                                    (_hd2999330120_ (##car _e2999230116_)))
                                (if (gx#stx-null? _tl2999430123_)
                                    (___kont3933239333_ _hd2999330120_)
                                    (___kont3933639337_))))
                            (___kont3933639337_))
                        (___kont3933639337_))
                    (if (gx#stx-datum? _hd2998630150_)
                        (let ((_e3000030043_ (gx#stx-e _hd2998630150_)))
                          (if (equal? _e3000030043_ '::)
                              (if (gx#stx-pair? _tl2998730153_)
                                  (let ((_e3000130047_
                                         (gx#syntax-e _tl2998730153_)))
                                    (let ((_tl3000330054_
                                           (##cdr _e3000130047_))
                                          (_hd3000230051_
                                           (##car _e3000130047_)))
                                      (if (gx#stx-pair? _tl3000330054_)
                                          (let ((_e3000430057_
                                                 (gx#syntax-e _tl3000330054_)))
                                            (let ((_tl3000630064_
                                                   (##cdr _e3000430057_))
                                                  (_hd3000530061_
                                                   (##car _e3000430057_)))
                                              (if (gx#identifier?
                                                   _hd3000530061_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g42139_|
                                                       _hd3000530061_)
                                                      (if (gx#stx-pair?
                                                           _tl3000630064_)
                                                          (let ((_e3000730067_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3000630064_)))
                    (let ((_tl3000930074_ (##cdr _e3000730067_))
                          (_hd3000830071_ (##car _e3000730067_)))
                      (if (gx#stx-null? _tl3000930074_)
                          (___kont3933439335_ _hd3000830071_ _hd3000230051_)
                          (___kont3933639337_))))
                  (___kont3933639337_))
              (___kont3933639337_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont3933639337_))))
                                          (___kont3933639337_))))
                                  (___kont3933639337_))
                              (___kont3933639337_)))
                        (___kont3933639337_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont3933639337_)))))
                                     (if (gx#stx-null? ___stx3932539326_)
                                         (___kont3932839329_)
                                         (_g2997830167_)))))))
                            (___kont3941039411_
                             (lambda (_L29868_)
                               (let* ((___stx3930739308_ _L29868_)
                                      (_g2988029891_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx3930739308_))))
                                 (let ((___kont3931039311_
                                        (lambda (_L29919_)
                                          (_parse128510_ _L29919_)))
                                       (___kont3931239313_
                                        (lambda ()
                                          (cons 'and:
                                                (gx#stx-map
                                                 _parse128510_
                                                 _L29868_)))))
                                   (if (gx#stx-pair? ___stx3930739308_)
                                       (let ((_e2988329909_
                                              (gx#syntax-e ___stx3930739308_)))
                                         (let ((_tl2988529916_
                                                (##cdr _e2988329909_))
                                               (_hd2988429913_
                                                (##car _e2988329909_)))
                                           (if (gx#stx-null? _tl2988529916_)
                                               (___kont3931039311_
                                                _hd2988429913_)
                                               (___kont3931239313_))))
                                       (___kont3931239313_))))))
                            (___kont3941239413_
                             (lambda (_L29783_)
                               (let* ((___stx3928939290_ _L29783_)
                                      (_g2979529806_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx3928939290_))))
                                 (let ((___kont3929239293_
                                        (lambda (_L29834_)
                                          (_parse128510_ _L29834_)))
                                       (___kont3929439295_
                                        (lambda ()
                                          (cons 'or:
                                                (gx#stx-map
                                                 _parse128510_
                                                 _L29783_)))))
                                   (if (gx#stx-pair? ___stx3928939290_)
                                       (let ((_e2979829824_
                                              (gx#syntax-e ___stx3928939290_)))
                                         (let ((_tl2980029831_
                                                (##cdr _e2979829824_))
                                               (_hd2979929828_
                                                (##car _e2979829824_)))
                                           (if (gx#stx-null? _tl2980029831_)
                                               (___kont3929239293_
                                                _hd2979929828_)
                                               (___kont3929439295_))))
                                       (___kont3929439295_))))))
                            (___kont3941439415_
                             (lambda (_L29753_)
                               (cons 'not:
                                     (cons (_parse128510_ _L29753_) '()))))
                            (___kont3941639417_
                             (lambda (_L29709_ _L29711_)
                               (cons 'cons:
                                     (cons (_parse128510_ _L29711_)
                                           (cons (_parse128510_ _L29709_)
                                                 '())))))
                            (___kont3941839419_
                             (lambda (_L29653_ _L29655_ _L29656_)
                               (if (gx#stx-null? _L29653_)
                                   (cons 'cons:
                                         (cons (_parse128510_ _L29656_)
                                               (cons (_parse128510_ _L29655_)
                                                     '())))
                                   (cons 'cons:
                                         (cons (_parse128510_ _L29656_)
                                               (cons (_parse128510_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'cons*)
                                                            (cons _L29655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L29653_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                            (___kont3942039421_
                             (lambda (_L29605_) (_parse-list28512_ _L29605_)))
                            (___kont3942239423_
                             (lambda (_L29575_)
                               (cons 'box:
                                     (cons (_parse128510_ _L29575_) '()))))
                            (___kont3942439425_
                             (lambda (_L29538_)
                               (cons 'box:
                                     (cons (_parse128510_ _L29538_) '()))))
                            (___kont3942639427_
                             (lambda (_L29514_) (_parse128510_ _L29514_)))
                            (___kont3942839429_
                             (lambda (_L29476_)
                               (cons 'values:
                                     (cons (_parse-vector28513_ _L29476_)
                                           '()))))
                            (___kont3943039431_
                             (lambda (_L29448_)
                               (cons 'vector:
                                     (cons (_parse-vector28513_ _L29448_)
                                           '()))))
                            (___kont3943239433_
                             (lambda (_L29409_)
                               (cons 'vector:
                                     (cons (_parse-vector28513_
                                            (foldr (lambda (_g2942229425_
                                                            _g2942329428_)
                                                     (cons _g2942229425_
                                                           _g2942329428_))
                                                   '()
                                                   _L29409_))
                                           '()))))
                            (___kont3943639437_
                             (lambda (_L29355_ _L29357_)
                               (cons 'struct:
                                     (cons (gx#syntax-local-value _L29357_)
                                           (cons (_parse-vector28513_ _L29355_)
                                                 '())))))
                            (___kont3943839439_
                             (lambda (_L29325_ _L29327_)
                               (cons 'class:
                                     (cons (gx#syntax-local-value _L29327_)
                                           (cons (_parse-class-body28515_
                                                  _L29325_)
                                                 '())))))
                            (___kont3944039441_
                             (lambda (_L29285_ _L29287_)
                               (cons '?:
                                     (cons (cons (gx#datum->syntax '#f 'cut)
                                                 (cons _L29287_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '<>)
                                                             (cons _L29285_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                            (___kont3944239443_
                             (lambda (_L29245_)
                               (cons 'datum: (cons (gx#stx-e _L29245_) '()))))
                            (___kont3944439445_
                             (lambda (_L29205_) (_parse-qq28516_ _L29205_)))
                            (___kont3944639447_
                             (lambda (_L29161_ _L29163_)
                               (cons 'apply:
                                     (cons _L29163_
                                           (cons (_parse128510_ _L29161_)
                                                 '())))))
                            (___kont3944839449_
                             (lambda (_L29109_)
                               (_parse128510_
                                (gx#core-apply-expander
                                 (gx#syntax-local-e _L29109_)
                                 (gx#stx-wrap-source
                                  (cons 'match: _hd28863_)
                                  (let ((_$e29120_ (gx#stx-source _hd28863_)))
                                    (if _$e29120_
                                        _$e29120_
                                        (gx#stx-source _stx28506_))))))))
                            (___kont3945039451_
                             (lambda (_L29083_) (cons 'any: '())))
                            (___kont3945239453_
                             (lambda (_L29067_)
                               (cons 'var: (cons _L29067_ '()))))
                            (___kont3945439455_
                             (lambda (_L29049_)
                               (cons 'datum: (cons (gx#stx-e _L29049_) '()))))
                            (___kont3945639457_
                             (lambda () (_parse-error28517_ _hd28863_))))
                        (let* ((_g2888729060_
                                (lambda ()
                                  (let ((_L29049_ ___stx3940539406_))
                                    (if (gx#stx-datum? _L29049_)
                                        (___kont3945439455_ _L29049_)
                                        (___kont3945639457_)))))
                               (_g2888629076_
                                (lambda ()
                                  (let ((_L29067_ ___stx3940539406_))
                                    (if (and (gx#identifier? _L29067_)
                                             (not (gx#ellipsis? _L29067_)))
                                        (___kont3945239453_ _L29067_)
                                        (_g2888729060_)))))
                               (_g2888529092_
                                (lambda ()
                                  (let ((_L29083_ ___stx3940539406_))
                                    (if (gx#underscore? _L29083_)
                                        (___kont3945039451_ _L29083_)
                                        (_g2888629076_)))))
                               (___match3973239733_
                                (lambda (_e2902029099_
                                         _hd2902129103_
                                         _tl2902229106_)
                                  (let ((_L29109_ _hd2902129103_))
                                    (if (|gerbil/core$<match>[1]#syntax-local-match-macro?|
                                         _L29109_)
                                        (___kont3944839449_ _L29109_)
                                        (_g2888529092_)))))
                               (___match3966639667_
                                (lambda (_e2898829265_
                                         _hd2898929269_
                                         _tl2899029272_
                                         _e2899129275_
                                         _hd2899229279_
                                         _tl2899329282_)
                                  (let ((_L29285_ _hd2899229279_)
                                        (_L29287_ _hd2898929269_))
                                    (if (and (gx#identifier? _L29287_)
                                             (or (gx#free-identifier=?
                                                  _L29287_
                                                  (gx#datum->syntax '#f 'eq?))
                                                 (gx#free-identifier=?
                                                  _L29287_
                                                  (gx#datum->syntax '#f 'eqv?))
                                                 (gx#free-identifier=?
                                                  _L29287_
                                                  (gx#datum->syntax
                                                   '#f
                                                   'equal?))))
                                        (___kont3944039441_ _L29285_ _L29287_)
                                        (if (gx#identifier? _hd2898929269_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core$<match>[1]#_g42140_|
                                                 _hd2898929269_)
                                                (___kont3944239443_
                                                 _hd2899229279_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core$<match>[1]#_g42141_|
                                                     _hd2898929269_)
                                                    (___kont3944439445_
                                                     _hd2899229279_)
                                                    (___match3973239733_
                                                     _e2898829265_
                                                     _hd2898929269_
                                                     _tl2899029272_)))
                                            (___match3973239733_
                                             _e2898829265_
                                             _hd2898929269_
                                             _tl2899029272_))))))
                               (___match3965239653_
                                (lambda (_e2898329315_
                                         _hd2898429319_
                                         _tl2898529322_)
                                  (let ((_L29325_ _tl2898529322_)
                                        (_L29327_ _hd2898429319_))
                                    (if (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-class-info?|
                                         _L29327_)
                                        (___kont3943839439_ _L29325_ _L29327_)
                                        (if (gx#stx-pair? _tl2898529322_)
                                            (let ((_e2899129275_
                                                   (gx#syntax-e
                                                    _tl2898529322_)))
                                              (let ((_tl2899329282_
                                                     (##cdr _e2899129275_))
                                                    (_hd2899229279_
                                                     (##car _e2899129275_)))
                                                (if (gx#stx-null?
                                                     _tl2899329282_)
                                                    (___match3966639667_
                                                     _e2898329315_
                                                     _hd2898429319_
                                                     _tl2898529322_
                                                     _e2899129275_
                                                     _hd2899229279_
                                                     _tl2899329282_)
                                                    (if (gx#identifier?
                                                         _hd2898429319_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core$<match>[1]#_g42140_|
                                                             _hd2898429319_)
                                                            (___match3973239733_
                                                             _e2898329315_
                                                             _hd2898429319_
                                                             _tl2898529322_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core$<match>[1]#_g42141_|
                         _hd2898429319_)
                        (___match3973239733_
                         _e2898329315_
                         _hd2898429319_
                         _tl2898529322_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g42142_|
                             _hd2898429319_)
                            (if (gx#stx-pair? _tl2899329282_)
                                (let ((_e2901629151_
                                       (gx#syntax-e _tl2899329282_)))
                                  (let ((_tl2901829158_ (##cdr _e2901629151_))
                                        (_hd2901729155_ (##car _e2901629151_)))
                                    (if (gx#stx-null? _tl2901829158_)
                                        (___kont3944639447_
                                         _hd2901729155_
                                         _hd2899229279_)
                                        (___match3973239733_
                                         _e2898329315_
                                         _hd2898429319_
                                         _tl2898529322_))))
                                (___match3973239733_
                                 _e2898329315_
                                 _hd2898429319_
                                 _tl2898529322_))
                            (___match3973239733_
                             _e2898329315_
                             _hd2898429319_
                             _tl2898529322_))))
                (___match3973239733_
                 _e2898329315_
                 _hd2898429319_
                 _tl2898529322_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___match3973239733_
                                             _e2898329315_
                                             _hd2898429319_
                                             _tl2898529322_))))))
                               (___match3964639647_
                                (lambda (_e2897829345_
                                         _hd2897929349_
                                         _tl2898029352_)
                                  (let ((_L29355_ _tl2898029352_)
                                        (_L29357_ _hd2897929349_))
                                    (if (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
                                         _L29357_)
                                        (___kont3943639437_ _L29355_ _L29357_)
                                        (___match3965239653_
                                         _e2897829345_
                                         _hd2897929349_
                                         _tl2898029352_)))))
                               (___match3964039641_
                                (lambda (_e2896629375_
                                         ___splice3943439435_
                                         _target2896729379_
                                         _tl2896929382_)
                                  (letrec ((_loop2897029385_
                                            (lambda (_hd2896829389_
                                                     _body2897429392_)
                                              (if (gx#stx-pair? _hd2896829389_)
                                                  (let ((_e2897129395_
                                                         (gx#syntax-e
                                                          _hd2896829389_)))
                                                    (let ((_lp-tl2897329402_
                                                           (##cdr _e2897129395_))
                                                          (_lp-hd2897229399_
                                                           (##car _e2897129395_)))
                                                      (_loop2897029385_
                                                       _lp-tl2897329402_
                                                       (cons _lp-hd2897229399_
                                                             _body2897429392_))))
                                                  (let ((_body2897529405_
                                                         (reverse _body2897429392_)))
                                                    (___kont3943239433_
                                                     _body2897529405_))))))
                                    (_loop2897029385_
                                     _target2896729379_
                                     '()))))
                               (_g2887729431_
                                (lambda ()
                                  (if (gx#stx-vector? ___stx3940539406_)
                                      (let ((_e2896629375_
                                             (vector->list
                                              (gx#syntax-e
                                               ___stx3940539406_))))
                                        (if (gx#stx-pair/null? _e2896629375_)
                                            (let ((___splice3943439435_
                                                   (gx#syntax-split-splice
                                                    _e2896629375_
                                                    '0)))
                                              (let ((_tl2896929382_
                                                     (##vector-ref
                                                      ___splice3943439435_
                                                      '1))
                                                    (_target2896729379_
                                                     (##vector-ref
                                                      ___splice3943439435_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl2896929382_)
                                                    (___match3964039641_
                                                     _e2896629375_
                                                     ___splice3943439435_
                                                     _target2896729379_
                                                     _tl2896929382_)
                                                    (_g2888529092_))))
                                            (_g2888529092_)))
                                      (_g2888529092_))))
                               (_g2887329548_
                                (lambda ()
                                  (if (gx#stx-box? ___stx3940539406_)
                                      (let ((_e2894929534_
                                             (unbox (gx#syntax-e
                                                     ___stx3940539406_))))
                                        (___kont3942439425_ _e2894929534_))
                                      (_g2887729431_))))
                               (___match3949439495_
                                (lambda (_e2890429773_
                                         _hd2890529777_
                                         _tl2890629780_)
                                  (let ((_L29783_ _tl2890629780_))
                                    (if (gx#stx-list? _L29783_)
                                        (___kont3941239413_ _L29783_)
                                        (___match3964639647_
                                         _e2890429773_
                                         _hd2890529777_
                                         _tl2890629780_)))))
                               (___match3948439485_
                                (lambda (_e2890029858_
                                         _hd2890129862_
                                         _tl2890229865_)
                                  (let ((_L29868_ _tl2890229865_))
                                    (if (gx#stx-list? _L29868_)
                                        (___kont3941039411_ _L29868_)
                                        (___match3964639647_
                                         _e2890029858_
                                         _hd2890129862_
                                         _tl2890229865_))))))
                          (if (gx#stx-pair? ___stx3940539406_)
                              (let ((_e2889329943_
                                     (gx#syntax-e ___stx3940539406_)))
                                (let ((_tl2889529950_ (##cdr _e2889329943_))
                                      (_hd2889429947_ (##car _e2889329943_)))
                                  (if (gx#identifier? _hd2889429947_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g42143_|
                                           _hd2889429947_)
                                          (if (gx#stx-pair? _tl2889529950_)
                                              (let ((_e2889629953_
                                                     (gx#syntax-e
                                                      _tl2889529950_)))
                                                (let ((_tl2889829960_
                                                       (##cdr _e2889629953_))
                                                      (_hd2889729957_
                                                       (##car _e2889629953_)))
                                                  (___kont3940839409_
                                                   _tl2889829960_
                                                   _hd2889729957_)))
                                              (___match3964639647_
                                               _e2889329943_
                                               _hd2889429947_
                                               _tl2889529950_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g42144_|
                                               _hd2889429947_)
                                              (___match3948439485_
                                               _e2889329943_
                                               _hd2889429947_
                                               _tl2889529950_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g42145_|
                                                   _hd2889429947_)
                                                  (___match3949439495_
                                                   _e2889329943_
                                                   _hd2889429947_
                                                   _tl2889529950_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g42146_|
                                                       _hd2889429947_)
                                                      (if (gx#stx-pair?
                                                           _tl2889529950_)
                                                          (let ((_e2891129743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2889529950_)))
                    (let ((_tl2891329750_ (##cdr _e2891129743_))
                          (_hd2891229747_ (##car _e2891129743_)))
                      (if (gx#stx-null? _tl2891329750_)
                          (___kont3941439415_ _hd2891229747_)
                          (___match3964639647_
                           _e2889329943_
                           _hd2889429947_
                           _tl2889529950_))))
                  (___match3964639647_
                   _e2889329943_
                   _hd2889429947_
                   _tl2889529950_))
              (if (gx#free-identifier=?
                   |gerbil/core$<match>[1]#_g42147_|
                   _hd2889429947_)
                  (if (gx#stx-pair? _tl2889529950_)
                      (let ((_e2891929689_ (gx#syntax-e _tl2889529950_)))
                        (let ((_tl2892129696_ (##cdr _e2891929689_))
                              (_hd2892029693_ (##car _e2891929689_)))
                          (if (gx#stx-pair? _tl2892129696_)
                              (let ((_e2892229699_
                                     (gx#syntax-e _tl2892129696_)))
                                (let ((_tl2892429706_ (##cdr _e2892229699_))
                                      (_hd2892329703_ (##car _e2892229699_)))
                                  (if (gx#stx-null? _tl2892429706_)
                                      (___kont3941639417_
                                       _hd2892329703_
                                       _hd2892029693_)
                                      (___match3964639647_
                                       _e2889329943_
                                       _hd2889429947_
                                       _tl2889529950_))))
                              (___match3964639647_
                               _e2889329943_
                               _hd2889429947_
                               _tl2889529950_))))
                      (___match3964639647_
                       _e2889329943_
                       _hd2889429947_
                       _tl2889529950_))
                  (if (gx#free-identifier=?
                       |gerbil/core$<match>[1]#_g42148_|
                       _hd2889429947_)
                      (if (gx#stx-pair? _tl2889529950_)
                          (let ((_e2893129633_ (gx#syntax-e _tl2889529950_)))
                            (let ((_tl2893329640_ (##cdr _e2893129633_))
                                  (_hd2893229637_ (##car _e2893129633_)))
                              (if (gx#stx-pair? _tl2893329640_)
                                  (let ((_e2893429643_
                                         (gx#syntax-e _tl2893329640_)))
                                    (let ((_tl2893629650_
                                           (##cdr _e2893429643_))
                                          (_hd2893529647_
                                           (##car _e2893429643_)))
                                      (___kont3941839419_
                                       _tl2893629650_
                                       _hd2893529647_
                                       _hd2893229637_)))
                                  (___match3964639647_
                                   _e2889329943_
                                   _hd2889429947_
                                   _tl2889529950_))))
                          (___match3964639647_
                           _e2889329943_
                           _hd2889429947_
                           _tl2889529950_))
                      (if (gx#free-identifier=?
                           |gerbil/core$<match>[1]#_g42149_|
                           _hd2889429947_)
                          (___kont3942039421_ _tl2889529950_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g42150_|
                               _hd2889429947_)
                              (if (gx#stx-pair? _tl2889529950_)
                                  (let ((_e2894529565_
                                         (gx#syntax-e _tl2889529950_)))
                                    (let ((_tl2894729572_
                                           (##cdr _e2894529565_))
                                          (_hd2894629569_
                                           (##car _e2894529565_)))
                                      (if (gx#stx-null? _tl2894729572_)
                                          (___kont3942239423_ _hd2894629569_)
                                          (___match3964639647_
                                           _e2889329943_
                                           _hd2889429947_
                                           _tl2889529950_))))
                                  (___match3964639647_
                                   _e2889329943_
                                   _hd2889429947_
                                   _tl2889529950_))
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g42151_|
                                   _hd2889429947_)
                                  (if (gx#stx-pair? _tl2889529950_)
                                      (let ((_e2895429504_
                                             (gx#syntax-e _tl2889529950_)))
                                        (let ((_tl2895629511_
                                               (##cdr _e2895429504_))
                                              (_hd2895529508_
                                               (##car _e2895429504_)))
                                          (if (gx#stx-null? _tl2895629511_)
                                              (___kont3942639427_
                                               _hd2895529508_)
                                              (___kont3942839429_
                                               _tl2889529950_))))
                                      (___kont3942839429_ _tl2889529950_))
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g42152_|
                                       _hd2889429947_)
                                      (___kont3943039431_ _tl2889529950_)
                                      (___match3964639647_
                                       _e2889329943_
                                       _hd2889429947_
                                       _tl2889529950_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (___match3964639647_
                                       _e2889329943_
                                       _hd2889429947_
                                       _tl2889529950_))))
                              (_g2887329548_)))))))
                 (_parse-list28512_
                  (lambda (_body28692_)
                    (let* ((___stx3973539736_ _body28692_)
                           (_g2869828727_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3973539736_))))
                      (let ((___kont3973839739_
                             (lambda (_L28845_) (_parse128510_ _L28845_)))
                            (___kont3974039741_
                             (lambda (_L28797_ _L28799_ _L28800_)
                               (cons 'splice:
                                     (cons (_parse128510_ _L28800_)
                                           (cons (_parse-list28512_ _L28797_)
                                                 '())))))
                            (___kont3974239743_
                             (lambda (_L28755_ _L28757_)
                               (cons 'cons:
                                     (cons (_parse128510_ _L28757_)
                                           (cons (_parse-list28512_ _L28755_)
                                                 '())))))
                            (___kont3974439745_
                             (lambda ()
                               (if (gx#stx-null? _body28692_)
                                   (cons 'null: '())
                                   (if (not (gx#stx-pair? _body28692_))
                                       (_parse128510_ _body28692_)
                                       (_parse-error28517_ _body28692_))))))
                        (let* ((___match3978439785_
                                (lambda (_e2871928745_
                                         _hd2872028749_
                                         _tl2872128752_)
                                  (let ((_L28755_ _tl2872128752_)
                                        (_L28757_ _hd2872028749_))
                                    (if (not (gx#ellipsis? _L28757_))
                                        (___kont3974239743_ _L28755_ _L28757_)
                                        (___kont3974439745_)))))
                               (___match3977839779_
                                (lambda (_e2871128777_
                                         _hd2871228781_
                                         _tl2871328784_
                                         _e2871428787_
                                         _hd2871528791_
                                         _tl2871628794_)
                                  (let ((_L28797_ _tl2871628794_)
                                        (_L28799_ _hd2871528791_)
                                        (_L28800_ _hd2871228781_))
                                    (if (gx#ellipsis? _L28799_)
                                        (___kont3974039741_
                                         _L28797_
                                         _L28799_
                                         _L28800_)
                                        (___match3978439785_
                                         _e2871128777_
                                         _hd2871228781_
                                         _tl2871328784_))))))
                          (if (gx#stx-pair? ___stx3973539736_)
                              (let ((_e2870128821_
                                     (gx#syntax-e ___stx3973539736_)))
                                (let ((_tl2870328828_ (##cdr _e2870128821_))
                                      (_hd2870228825_ (##car _e2870128821_)))
                                  (if (gx#stx-datum? _hd2870228825_)
                                      (let ((_e2870428831_
                                             (gx#stx-e _hd2870228825_)))
                                        (if (equal? _e2870428831_ '::)
                                            (if (gx#stx-pair? _tl2870328828_)
                                                (let ((_e2870528835_
                                                       (gx#syntax-e
                                                        _tl2870328828_)))
                                                  (let ((_tl2870728842_
                                                         (##cdr _e2870528835_))
                                                        (_hd2870628839_
                                                         (##car _e2870528835_)))
                                                    (if (gx#stx-null?
                                                         _tl2870728842_)
                                                        (___kont3973839739_
                                                         _hd2870628839_)
                                                        (___match3977839779_
                                                         _e2870128821_
                                                         _hd2870228825_
                                                         _tl2870328828_
                                                         _e2870528835_
                                                         _hd2870628839_
                                                         _tl2870728842_))))
                                                (___match3978439785_
                                                 _e2870128821_
                                                 _hd2870228825_
                                                 _tl2870328828_))
                                            (if (gx#stx-pair? _tl2870328828_)
                                                (let ((_e2871428787_
                                                       (gx#syntax-e
                                                        _tl2870328828_)))
                                                  (let ((_tl2871628794_
                                                         (##cdr _e2871428787_))
                                                        (_hd2871528791_
                                                         (##car _e2871428787_)))
                                                    (___match3977839779_
                                                     _e2870128821_
                                                     _hd2870228825_
                                                     _tl2870328828_
                                                     _e2871428787_
                                                     _hd2871528791_
                                                     _tl2871628794_)))
                                                (___match3978439785_
                                                 _e2870128821_
                                                 _hd2870228825_
                                                 _tl2870328828_))))
                                      (if (gx#stx-pair? _tl2870328828_)
                                          (let ((_e2871428787_
                                                 (gx#syntax-e _tl2870328828_)))
                                            (let ((_tl2871628794_
                                                   (##cdr _e2871428787_))
                                                  (_hd2871528791_
                                                   (##car _e2871428787_)))
                                              (___match3977839779_
                                               _e2870128821_
                                               _hd2870228825_
                                               _tl2870328828_
                                               _e2871428787_
                                               _hd2871528791_
                                               _tl2871628794_)))
                                          (___match3978439785_
                                           _e2870128821_
                                           _hd2870228825_
                                           _tl2870328828_)))))
                              (___kont3974439745_)))))))
                 (_parse-vector28513_
                  (lambda (_body28689_)
                    (if (_simple-vector?28514_ _body28689_)
                        (cons 'simple:
                              (cons (gx#stx-map _parse128510_ _body28689_)
                                    '()))
                        (cons 'list:
                              (cons (_parse-list28512_ _body28689_) '())))))
                 (_simple-vector?28514_
                  (lambda (_body28626_)
                    (let* ((___stx3978739788_ _body28626_)
                           (_g2863028642_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3978739788_))))
                      (let ((___kont3979039791_
                             (lambda (_L28670_ _L28672_)
                               (if (not (gx#ellipsis? _L28672_))
                                   (_simple-vector?28514_ _L28670_)
                                   '#f)))
                            (___kont3979239793_
                             (lambda () (gx#stx-null? _body28626_))))
                        (if (gx#stx-pair? ___stx3978739788_)
                            (let ((_e2863428660_
                                   (gx#syntax-e ___stx3978739788_)))
                              (let ((_tl2863628667_ (##cdr _e2863428660_))
                                    (_hd2863528664_ (##car _e2863428660_)))
                                (___kont3979039791_
                                 _tl2863628667_
                                 _hd2863528664_)))
                            (___kont3979239793_))))))
                 (_parse-class-body28515_
                  (lambda (_body28535_)
                    (let _recur28538_ ((_rest28541_ _body28535_))
                      (let* ((___stx3980339804_ _rest28541_)
                             (_g2854528561_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx3980339804_))))
                        (let ((___kont3980639807_
                               (lambda (_L28599_ _L28601_ _L28602_)
                                 (cons* _L28602_
                                        (_parse128510_ _L28601_)
                                        (_recur28538_ _L28599_))))
                              (___kont3980839809_
                               (lambda ()
                                 (if (gx#stx-null? _rest28541_)
                                     '()
                                     (_parse-error28517_ _rest28541_)))))
                          (let ((___match3982239823_
                                 (lambda (_e2855028579_
                                          _hd2855128583_
                                          _tl2855228586_
                                          _e2855328589_
                                          _hd2855428593_
                                          _tl2855528596_)
                                   (let ((_L28599_ _tl2855528596_)
                                         (_L28601_ _hd2855428593_)
                                         (_L28602_ _hd2855128583_))
                                     (if (gx#stx-keyword? _L28602_)
                                         (___kont3980639807_
                                          _L28599_
                                          _L28601_
                                          _L28602_)
                                         (___kont3980839809_))))))
                            (if (gx#stx-pair? ___stx3980339804_)
                                (let ((_e2855028579_
                                       (gx#syntax-e ___stx3980339804_)))
                                  (let ((_tl2855228586_ (##cdr _e2855028579_))
                                        (_hd2855128583_ (##car _e2855028579_)))
                                    (if (gx#stx-pair? _tl2855228586_)
                                        (let ((_e2855328589_
                                               (gx#syntax-e _tl2855228586_)))
                                          (let ((_tl2855528596_
                                                 (##cdr _e2855328589_))
                                                (_hd2855428593_
                                                 (##car _e2855328589_)))
                                            (___match3982239823_
                                             _e2855028579_
                                             _hd2855128583_
                                             _tl2855228586_
                                             _e2855328589_
                                             _hd2855428593_
                                             _tl2855528596_)))
                                        (___kont3980839809_))))
                                (___kont3980839809_))))))))
                 (_parse-qq28516_
                  (lambda (_hd28522_)
                    (let ((_g2852428531_
                           (lambda (_g2852528527_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2852528527_))))
                      (_g2852428531_ _hd28522_))))
                 (_parse-error28517_
                  (lambda (_hd28519_)
                    (apply gx#raise-syntax-error
                           '#f
                           '"Bad syntax; illegal pattern"
                           (if _match-stx28508_
                               (cons _match-stx28508_
                                     (cons _stx28506_ (cons _hd28519_ '())))
                               (cons _stx28506_ (cons _hd28519_ '())))))))
          (_parse128510_ _stx28506_))))
    (define |gerbil/core$<match>[1]#parse-match-pattern__0|
      (lambda (_stx30190_)
        (let ((_match-stx30193_ '#f))
          (|gerbil/core$<match>[1]#parse-match-pattern__%|
           _stx30190_
           _match-stx30193_))))
    (define |gerbil/core$<match>[1]#parse-match-pattern|
      (lambda _g42154_
        (let ((_g42153_ (length _g42154_)))
          (cond ((##fx= _g42153_ 1)
                 (apply |gerbil/core$<match>[1]#parse-match-pattern__0|
                        _g42154_))
                ((##fx= _g42153_ 2)
                 (apply |gerbil/core$<match>[1]#parse-match-pattern__%|
                        _g42154_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core$<match>[1]#parse-match-pattern|
                  _g42154_))))))
    (define |gerbil/core$<match>[1]#match-pattern?|
      (lambda (_stx28490_)
        (call-with-escape
         (lambda (_E28494_)
           (with-exception-handler
            (let ((_E!28497_ (current-exception-handler)))
              (lambda (_e28500_)
                (if (gx#syntax-error? _e28500_)
                    (_E28494_ '#f)
                    (_E!28497_ _e28500_))))
            (lambda ()
              (|gerbil/core$<match>[1]#parse-match-pattern__0| _stx28490_)
              '#t))))))
    (define |gerbil/core$<match>[1]#match-pattern-vars|
      (lambda (_ptree27195_)
        (letrec ((_loop27198_
                  (lambda (_ptree27485_ _vars27487_ _K27488_)
                    (let* ((___stx3993339934_ _ptree27485_)
                           (_g2750127611_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3993339934_))))
                      (let ((___kont3993639937_
                             (lambda (_L28241_)
                               (let* ((___stx3984139842_ _L28241_)
                                      (_g2825828298_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx3984139842_))))
                                 (let ((___kont3984439845_
                                        (lambda (_L28471_)
                                          (_loop27198_
                                           _L28471_
                                           _vars27487_
                                           _K27488_)))
                                       (___kont3984639847_
                                        (lambda (_L28438_)
                                          (_loop27198_
                                           _L28438_
                                           _vars27487_
                                           _K27488_)))
                                       (___kont3984839849_
                                        (lambda (_L28374_)
                                          (_loop27198_
                                           _L28374_
                                           _vars27487_
                                           _K27488_)))
                                       (___kont3985039851_
                                        (lambda () (_K27488_ _vars27487_))))
                                   (if (gx#stx-pair? ___stx3984139842_)
                                       (let ((_e2826128461_
                                              (gx#syntax-e ___stx3984139842_)))
                                         (let ((_tl2826328468_
                                                (##cdr _e2826128461_))
                                               (_hd2826228465_
                                                (##car _e2826128461_)))
                                           (if (gx#stx-null? _tl2826328468_)
                                               (___kont3984439845_
                                                _hd2826228465_)
                                               (if (gx#stx-pair?
                                                    _tl2826328468_)
                                                   (let ((_e2826828414_
                                                          (gx#syntax-e
                                                           _tl2826328468_)))
                                                     (let ((_tl2827028421_
                                                            (##cdr _e2826828414_))
                                                           (_hd2826928418_
                                                            (##car _e2826828414_)))
                                                       (if (gx#stx-datum?
                                                            _hd2826928418_)
                                                           (let ((_e2827128424_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd2826928418_)))
                     (if (equal? _e2827128424_ '=>:)
                         (if (gx#stx-pair? _tl2827028421_)
                             (let ((_e2827228428_
                                    (gx#syntax-e _tl2827028421_)))
                               (let ((_tl2827428435_ (##cdr _e2827228428_))
                                     (_hd2827328432_ (##car _e2827228428_)))
                                 (if (gx#stx-null? _tl2827428435_)
                                     (___kont3984639847_ _hd2827328432_)
                                     (___kont3985039851_))))
                             (___kont3985039851_))
                         (if (equal? _e2827128424_ '::)
                             (if (gx#stx-pair? _tl2827028421_)
                                 (let ((_e2828328340_
                                        (gx#syntax-e _tl2827028421_)))
                                   (let ((_tl2828528347_ (##cdr _e2828328340_))
                                         (_hd2828428344_
                                          (##car _e2828328340_)))
                                     (if (gx#stx-pair? _tl2828528347_)
                                         (let ((_e2828628350_
                                                (gx#syntax-e _tl2828528347_)))
                                           (let ((_tl2828828357_
                                                  (##cdr _e2828628350_))
                                                 (_hd2828728354_
                                                  (##car _e2828628350_)))
                                             (if (gx#stx-datum? _hd2828728354_)
                                                 (let ((_e2828928360_
                                                        (gx#stx-e
                                                         _hd2828728354_)))
                                                   (if (equal? _e2828928360_
                                                               '=>:)
                                                       (if (gx#stx-pair?
                                                            _tl2828828357_)
                                                           (let ((_e2829028364_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl2828828357_)))
                     (let ((_tl2829228371_ (##cdr _e2829028364_))
                           (_hd2829128368_ (##car _e2829028364_)))
                       (if (gx#stx-null? _tl2829228371_)
                           (___kont3984839849_ _hd2829128368_)
                           (___kont3985039851_))))
                   (___kont3985039851_))
               (___kont3985039851_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont3985039851_))))
                                         (___kont3985039851_))))
                                 (___kont3985039851_))
                             (___kont3985039851_))))
                   (___kont3985039851_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont3985039851_)))))
                                       (___kont3985039851_))))))
                            (___kont3993839939_
                             (lambda (_L28128_ _L28130_)
                               (let* ((___stx3982539826_ _L28128_)
                                      (_g2814628158_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx3982539826_))))
                                 (let ((___kont3982839829_
                                        (lambda (_L28186_ _L28188_)
                                          (_loop27198_
                                           _L28188_
                                           _vars27487_
                                           (lambda (_g2820028202_)
                                             (_loop27198_
                                              (cons _L28130_ _L28186_)
                                              _g2820028202_
                                              _K27488_)))))
                                       (___kont3983039831_
                                        (lambda () (_K27488_ _vars27487_))))
                                   (if (gx#stx-pair? ___stx3982539826_)
                                       (let ((_e2815028176_
                                              (gx#syntax-e ___stx3982539826_)))
                                         (let ((_tl2815228183_
                                                (##cdr _e2815028176_))
                                               (_hd2815128180_
                                                (##car _e2815028176_)))
                                           (___kont3982839829_
                                            _tl2815228183_
                                            _hd2815128180_)))
                                       (___kont3983039831_))))))
                            (___kont3994039941_
                             (lambda (_L28097_)
                               (_loop27198_ _L28097_ _vars27487_ _K27488_)))
                            (___kont3994239943_
                             (lambda (_L28043_ _L28045_)
                               (_loop27198_
                                _L28045_
                                _vars27487_
                                (lambda (_g2806028062_)
                                  (_loop27198_
                                   _L28043_
                                   _g2806028062_
                                   _K27488_)))))
                            (___kont3994439945_
                             (lambda (_L27979_ _L27981_)
                               (_loop27198_
                                _L27981_
                                _vars27487_
                                (lambda (_g2799627998_)
                                  (_loop27198_
                                   _L27979_
                                   _g2799627998_
                                   _K27488_)))))
                            (___kont3994639947_
                             (lambda (_L27924_)
                               (_loop27198_ _L27924_ _vars27487_ _K27488_)))
                            (___kont3994839949_
                             (lambda (_L27874_ _L27876_)
                               (_loop-vector27200_
                                _L27874_
                                _vars27487_
                                _K27488_)))
                            (___kont3995039951_
                             (lambda (_L27831_)
                               (_loop-vector27200_
                                _L27831_
                                _vars27487_
                                _K27488_)))
                            (___kont3995239953_
                             (lambda (_L27774_)
                               (_loop-class-list27202_
                                _L27774_
                                _vars27487_
                                _K27488_)))
                            (___kont3995439955_
                             (lambda (_L27715_ _L27717_)
                               (_loop27198_ _L27715_ _vars27487_ _K27488_)))
                            (___kont3995639957_
                             (lambda (_L27653_)
                               (if (find (lambda (_g2766827670_)
                                           (gx#bound-identifier=?
                                            _g2766827670_
                                            _L27653_))
                                         _vars27487_)
                                   (_K27488_ _vars27487_)
                                   (_K27488_ (cons _L27653_ _vars27487_)))))
                            (___kont3995839959_
                             (lambda () (_K27488_ _vars27487_))))
                        (let* ((___match4009040091_
                                (lambda (_e2755827854_
                                         _hd2755927858_
                                         _tl2756027861_
                                         _e2756127864_
                                         _hd2756227868_
                                         _tl2756327871_)
                                  (let ((_L27874_ _hd2756227868_)
                                        (_L27876_ _hd2755927858_))
                                    (if (or (gx#stx-eq? 'values: _L27876_)
                                            (gx#stx-eq? 'vector: _L27876_))
                                        (___kont3994839949_ _L27874_ _L27876_)
                                        (if (gx#stx-datum? _hd2755927858_)
                                            (let ((_e2756827807_
                                                   (gx#stx-e _hd2755927858_)))
                                              (if (equal? _e2756827807_
                                                          'struct:)
                                                  (___kont3995839959_)
                                                  (if (equal? _e2756827807_
                                                              'class:)
                                                      (___kont3995839959_)
                                                      (if (equal? _e2756827807_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'apply:)
                  (___kont3995839959_)
                  (if (equal? _e2756827807_ 'var:)
                      (___kont3995639957_ _hd2756227868_)
                      (___kont3995839959_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont3995839959_))))))
                               (___match3998439985_
                                (lambda (_e2751328118_
                                         _hd2751428122_
                                         _tl2751528125_)
                                  (let ((_L28128_ _tl2751528125_)
                                        (_L28130_ _hd2751428122_))
                                    (if (or (gx#stx-eq? 'and: _L28130_)
                                            (gx#stx-eq? 'or: _L28130_))
                                        (___kont3993839939_ _L28128_ _L28130_)
                                        (if (gx#stx-datum? _hd2751428122_)
                                            (let ((_e2752028083_
                                                   (gx#stx-e _hd2751428122_)))
                                              (if (equal? _e2752028083_ 'not:)
                                                  (if (gx#stx-pair?
                                                       _tl2751528125_)
                                                      (let ((_e2752128087_
                                                             (gx#syntax-e
                                                              _tl2751528125_)))
                                                        (let ((_tl2752328094_
                                                               (##cdr _e2752128087_))
                                                              (_hd2752228091_
                                                               (##car _e2752128087_)))
                                                          (if (gx#stx-null?
                                                               _tl2752328094_)
                                                              (___kont3994039941_
                                                               _hd2752228091_)
                                                              (___kont3995839959_))))
                                                      (___kont3995839959_))
                                                  (if (equal? _e2752028083_
                                                              'cons:)
                                                      (if (gx#stx-pair?
                                                           _tl2751528125_)
                                                          (let ((_e2753028023_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2751528125_)))
                    (let ((_tl2753228030_ (##cdr _e2753028023_))
                          (_hd2753128027_ (##car _e2753028023_)))
                      (if (gx#stx-pair? _tl2753228030_)
                          (let ((_e2753328033_ (gx#syntax-e _tl2753228030_)))
                            (let ((_tl2753528040_ (##cdr _e2753328033_))
                                  (_hd2753428037_ (##car _e2753328033_)))
                              (if (gx#stx-null? _tl2753528040_)
                                  (___kont3994239943_
                                   _hd2753428037_
                                   _hd2753128027_)
                                  (___kont3995839959_))))
                          (if (gx#stx-null? _tl2753228030_)
                              (___match4009040091_
                               _e2751328118_
                               _hd2751428122_
                               _tl2751528125_
                               _e2753028023_
                               _hd2753128027_
                               _tl2753228030_)
                              (___kont3995839959_)))))
                  (___kont3995839959_))
              (if (equal? _e2752028083_ 'splice:)
                  (if (gx#stx-pair? _tl2751528125_)
                      (let ((_e2754227959_ (gx#syntax-e _tl2751528125_)))
                        (let ((_tl2754427966_ (##cdr _e2754227959_))
                              (_hd2754327963_ (##car _e2754227959_)))
                          (if (gx#stx-pair? _tl2754427966_)
                              (let ((_e2754527969_
                                     (gx#syntax-e _tl2754427966_)))
                                (let ((_tl2754727976_ (##cdr _e2754527969_))
                                      (_hd2754627973_ (##car _e2754527969_)))
                                  (if (gx#stx-null? _tl2754727976_)
                                      (___kont3994439945_
                                       _hd2754627973_
                                       _hd2754327963_)
                                      (___kont3995839959_))))
                              (if (gx#stx-null? _tl2754427966_)
                                  (___match4009040091_
                                   _e2751328118_
                                   _hd2751428122_
                                   _tl2751528125_
                                   _e2754227959_
                                   _hd2754327963_
                                   _tl2754427966_)
                                  (___kont3995839959_)))))
                      (___kont3995839959_))
                  (if (equal? _e2752028083_ 'box:)
                      (if (gx#stx-pair? _tl2751528125_)
                          (let ((_e2755327914_ (gx#syntax-e _tl2751528125_)))
                            (let ((_tl2755527921_ (##cdr _e2755327914_))
                                  (_hd2755427918_ (##car _e2755327914_)))
                              (if (gx#stx-null? _tl2755527921_)
                                  (___kont3994639947_ _hd2755427918_)
                                  (___kont3995839959_))))
                          (___kont3995839959_))
                      (if (gx#stx-pair? _tl2751528125_)
                          (let ((_e2756127864_ (gx#syntax-e _tl2751528125_)))
                            (let ((_tl2756327871_ (##cdr _e2756127864_))
                                  (_hd2756227868_ (##car _e2756127864_)))
                              (if (gx#stx-null? _tl2756327871_)
                                  (___match4009040091_
                                   _e2751328118_
                                   _hd2751428122_
                                   _tl2751528125_
                                   _e2756127864_
                                   _hd2756227868_
                                   _tl2756327871_)
                                  (if (equal? _e2752028083_ 'struct:)
                                      (if (gx#stx-pair? _tl2756327871_)
                                          (let ((_e2757227821_
                                                 (gx#syntax-e _tl2756327871_)))
                                            (let ((_tl2757427828_
                                                   (##cdr _e2757227821_))
                                                  (_hd2757327825_
                                                   (##car _e2757227821_)))
                                              (if (gx#stx-null? _tl2757427828_)
                                                  (___kont3995039951_
                                                   _hd2757327825_)
                                                  (___kont3995839959_))))
                                          (___kont3995839959_))
                                      (if (equal? _e2752028083_ 'class:)
                                          (if (gx#stx-pair? _tl2756327871_)
                                              (let ((_e2758327764_
                                                     (gx#syntax-e
                                                      _tl2756327871_)))
                                                (let ((_tl2758527771_
                                                       (##cdr _e2758327764_))
                                                      (_hd2758427768_
                                                       (##car _e2758327764_)))
                                                  (if (gx#stx-null?
                                                       _tl2758527771_)
                                                      (___kont3995239953_
                                                       _hd2758427768_)
                                                      (___kont3995839959_))))
                                              (___kont3995839959_))
                                          (if (equal? _e2752028083_ 'apply:)
                                              (if (gx#stx-pair? _tl2756327871_)
                                                  (let ((_e2759527705_
                                                         (gx#syntax-e
                                                          _tl2756327871_)))
                                                    (let ((_tl2759727712_
                                                           (##cdr _e2759527705_))
                                                          (_hd2759627709_
                                                           (##car _e2759527705_)))
                                                      (if (gx#stx-null?
                                                           _tl2759727712_)
                                                          (___kont3995439955_
                                                           _hd2759627709_
                                                           _hd2756227868_)
                                                          (___kont3995839959_))))
                                                  (___kont3995839959_))
                                              (___kont3995839959_)))))))
                          (___kont3995839959_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _tl2751528125_)
                                                (let ((_e2756127864_
                                                       (gx#syntax-e
                                                        _tl2751528125_)))
                                                  (let ((_tl2756327871_
                                                         (##cdr _e2756127864_))
                                                        (_hd2756227868_
                                                         (##car _e2756127864_)))
                                                    (if (gx#stx-null?
                                                         _tl2756327871_)
                                                        (___match4009040091_
                                                         _e2751328118_
                                                         _hd2751428122_
                                                         _tl2751528125_
                                                         _e2756127864_
                                                         _hd2756227868_
                                                         _tl2756327871_)
                                                        (___kont3995839959_))))
                                                (___kont3995839959_))))))))
                          (if (gx#stx-pair? ___stx3993339934_)
                              (let ((_e2750428217_
                                     (gx#syntax-e ___stx3993339934_)))
                                (let ((_tl2750628224_ (##cdr _e2750428217_))
                                      (_hd2750528221_ (##car _e2750428217_)))
                                  (if (gx#stx-datum? _hd2750528221_)
                                      (let ((_e2750728227_
                                             (gx#stx-e _hd2750528221_)))
                                        (if (equal? _e2750728227_ '?:)
                                            (if (gx#stx-pair? _tl2750628224_)
                                                (let ((_e2750828231_
                                                       (gx#syntax-e
                                                        _tl2750628224_)))
                                                  (let ((_tl2751028238_
                                                         (##cdr _e2750828231_))
                                                        (_hd2750928235_
                                                         (##car _e2750828231_)))
                                                    (___kont3993639937_
                                                     _tl2751028238_)))
                                                (___match3998439985_
                                                 _e2750428217_
                                                 _hd2750528221_
                                                 _tl2750628224_))
                                            (___match3998439985_
                                             _e2750428217_
                                             _hd2750528221_
                                             _tl2750628224_)))
                                      (___match3998439985_
                                       _e2750428217_
                                       _hd2750528221_
                                       _tl2750628224_))))
                              (___kont3995839959_)))))))
                 (_loop-vector27200_
                  (lambda (_body27361_ _vars27363_ _K27364_)
                    (let* ((___stx4019140192_ _body27361_)
                           (_g2736727390_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx4019140192_))))
                      (let ((___kont4019440195_
                             (lambda (_L27467_)
                               (_loop-list27201_
                                _L27467_
                                _vars27363_
                                _K27364_)))
                            (___kont4019640197_
                             (lambda (_L27421_)
                               (_loop27198_ _L27421_ _vars27363_ _K27364_))))
                        (if (gx#stx-pair? ___stx4019140192_)
                            (let ((_e2737027443_
                                   (gx#syntax-e ___stx4019140192_)))
                              (let ((_tl2737227450_ (##cdr _e2737027443_))
                                    (_hd2737127447_ (##car _e2737027443_)))
                                (if (gx#stx-datum? _hd2737127447_)
                                    (let ((_e2737327453_
                                           (gx#stx-e _hd2737127447_)))
                                      (if (equal? _e2737327453_ 'simple:)
                                          (if (gx#stx-pair? _tl2737227450_)
                                              (let ((_e2737427457_
                                                     (gx#syntax-e
                                                      _tl2737227450_)))
                                                (let ((_tl2737627464_
                                                       (##cdr _e2737427457_))
                                                      (_hd2737527461_
                                                       (##car _e2737427457_)))
                                                  (if (gx#stx-null?
                                                       _tl2737627464_)
                                                      (___kont4019440195_
                                                       _hd2737527461_)
                                                      (_g2736727390_))))
                                              (_g2736727390_))
                                          (if (equal? _e2737327453_ 'list:)
                                              (if (gx#stx-pair? _tl2737227450_)
                                                  (let ((_e2738227411_
                                                         (gx#syntax-e
                                                          _tl2737227450_)))
                                                    (let ((_tl2738427418_
                                                           (##cdr _e2738227411_))
                                                          (_hd2738327415_
                                                           (##car _e2738227411_)))
                                                      (if (gx#stx-null?
                                                           _tl2738427418_)
                                                          (___kont4019640197_
                                                           _hd2738327415_)
                                                          (_g2736727390_))))
                                                  (_g2736727390_))
                                              (_g2736727390_))))
                                    (_g2736727390_))))
                            (_g2736727390_))))))
                 (_loop-list27201_
                  (lambda (_rest27291_ _vars27293_ _K27294_)
                    (let* ((___stx4024140242_ _rest27291_)
                           (_g2729727309_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx4024140242_))))
                      (let ((___kont4024440245_
                             (lambda (_L27337_ _L27339_)
                               (_loop27198_
                                _L27339_
                                _vars27293_
                                (lambda (_g2735127353_)
                                  (_loop-list27201_
                                   _L27337_
                                   _g2735127353_
                                   _K27294_)))))
                            (___kont4024640247_
                             (lambda () (_K27294_ _vars27293_))))
                        (if (gx#stx-pair? ___stx4024140242_)
                            (let ((_e2730127327_
                                   (gx#syntax-e ___stx4024140242_)))
                              (let ((_tl2730327334_ (##cdr _e2730127327_))
                                    (_hd2730227331_ (##car _e2730127327_)))
                                (___kont4024440245_
                                 _tl2730327334_
                                 _hd2730227331_)))
                            (___kont4024640247_))))))
                 (_loop-class-list27202_
                  (lambda (_rest27204_ _vars27206_ _K27207_)
                    (let* ((___stx4025740258_ _rest27204_)
                           (_g2721027225_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx4025740258_))))
                      (let ((___kont4026040261_
                             (lambda (_L27263_ _L27265_)
                               (_loop27198_
                                _L27265_
                                _vars27206_
                                (lambda (_g2728127283_)
                                  (_loop-class-list27202_
                                   _L27263_
                                   _g2728127283_
                                   _K27207_)))))
                            (___kont4026240263_
                             (lambda () (_K27207_ _vars27206_))))
                        (if (gx#stx-pair? ___stx4025740258_)
                            (let ((_e2721427243_
                                   (gx#syntax-e ___stx4025740258_)))
                              (let ((_tl2721627250_ (##cdr _e2721427243_))
                                    (_hd2721527247_ (##car _e2721427243_)))
                                (if (gx#stx-pair? _tl2721627250_)
                                    (let ((_e2721727253_
                                           (gx#syntax-e _tl2721627250_)))
                                      (let ((_tl2721927260_
                                             (##cdr _e2721727253_))
                                            (_hd2721827257_
                                             (##car _e2721727253_)))
                                        (___kont4026040261_
                                         _tl2721927260_
                                         _hd2721827257_)))
                                    (___kont4026240263_))))
                            (___kont4026240263_)))))))
          (_loop27198_ _ptree27195_ '() values))))
    (define |gerbil/core$<match>[1]#generate-match1|
      (lambda (_stx23778_ _tgt23780_ _ptree23781_ _K23782_ _E23783_)
        (letrec ((_generate123785_
                  (lambda (_tgt25408_ _ptree25410_ _K25411_ _E25412_)
                    (let* ((_g2541425422_
                            (lambda (_g2541525418_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2541525418_)))
                           (_g2541327191_
                            (lambda (_g2541525426_)
                              ((lambda (_L25429_)
                                 (let ()
                                   (let* ((___stx4049340494_ _ptree25410_)
                                          (_g2545625598_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              ___stx4049340494_))))
                                     (let ((___kont4049640497_
                                            (lambda (_L26906_ _L26908_)
                                              (let* ((___stx4041140412_
                                                      _L26906_)
                                                     (_g2692526960_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         ___stx4041140412_))))
                                                (let ((___kont4041440415_
                                                       (lambda ()
                                                         (cons 'if
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '?)
                                   (cons _L26908_ (cons _L25429_ '())))
                             (cons _K25411_ (cons _E25412_ '()))))))
              (___kont4041640417_
               (lambda (_L27161_)
                 (cons 'if
                       (cons (cons (gx#datum->syntax '#f '?)
                                   (cons _L26908_ (cons _L25429_ '())))
                             (cons (_generate123785_
                                    _tgt25408_
                                    _L27161_
                                    _K25411_
                                    _E25412_)
                                   (cons _E25412_ '()))))))
              (___kont4041840419_
               (lambda (_L27099_)
                 (let* ((_g2711327121_
                         (lambda (_g2711427117_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2711427117_)))
                        (_g2711227140_
                         (lambda (_g2711427125_)
                           ((lambda (_L27128_)
                              (let ()
                                (cons 'let
                                      (cons (cons (cons _L27128_
                                                        (cons (cons _L26908_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _L25429_ '()))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())
                                            (cons (cons 'if
                                                        (cons _L27128_
                                                              (cons (_generate123785_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L27128_
                             _L27099_
                             _K25411_
                             _E25412_)
                            (cons _E25412_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                            _g2711427125_))))
                   (_g2711227140_ (gx#genident 'e)))))
              (___kont4042040421_
               (lambda (_L27015_ _L27017_)
                 (let* ((_g2703727045_
                         (lambda (_g2703827041_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2703827041_)))
                        (_g2703627064_
                         (lambda (_g2703827049_)
                           ((lambda (_L27052_)
                              (let ()
                                (cons 'if
                                      (cons (cons (gx#datum->syntax '#f '?)
                                                  (cons _L26908_
                                                        (cons _L25429_ '())))
                                            (cons (cons 'let
                                                        (cons (cons (cons _L27052_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (cons _L27017_ (cons _L25429_ '()))
                                        '()))
                            '())
                      (cons (_generate123785_
                             _L27052_
                             _L27015_
                             _K25411_
                             _E25412_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _E25412_ '()))))))
                            _g2703827049_))))
                   (_g2703627064_ (gx#genident 'e))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g2692227172_
                                                         (lambda ()
                                                           (if (gx#stx-pair?
                                                                ___stx4041140412_)
                                                               (let ((_e2692827151_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e ___stx4041140412_)))
                         (let ((_tl2693027158_ (##cdr _e2692827151_))
                               (_hd2692927155_ (##car _e2692827151_)))
                           (if (gx#stx-null? _tl2693027158_)
                               (___kont4041640417_ _hd2692927155_)
                               (if (gx#stx-datum? _hd2692927155_)
                                   (let ((_e2693527085_
                                          (gx#stx-e _hd2692927155_)))
                                     (if (equal? _e2693527085_ '=>:)
                                         (if (gx#stx-pair? _tl2693027158_)
                                             (let ((_e2693627089_
                                                    (gx#syntax-e
                                                     _tl2693027158_)))
                                               (let ((_tl2693827096_
                                                      (##cdr _e2693627089_))
                                                     (_hd2693727093_
                                                      (##car _e2693627089_)))
                                                 (if (gx#stx-null?
                                                      _tl2693827096_)
                                                     (___kont4041840419_
                                                      _hd2693727093_)
                                                     (_g2692526960_))))
                                             (_g2692526960_))
                                         (if (equal? _e2693527085_ '::)
                                             (if (gx#stx-pair? _tl2693027158_)
                                                 (let ((_e2694526981_
                                                        (gx#syntax-e
                                                         _tl2693027158_)))
                                                   (let ((_tl2694726988_
                                                          (##cdr _e2694526981_))
                                                         (_hd2694626985_
                                                          (##car _e2694526981_)))
                                                     (if (gx#stx-pair?
                                                          _tl2694726988_)
                                                         (let ((_e2694826991_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2694726988_)))
                   (let ((_tl2695026998_ (##cdr _e2694826991_))
                         (_hd2694926995_ (##car _e2694826991_)))
                     (if (gx#stx-datum? _hd2694926995_)
                         (let ((_e2695127001_ (gx#stx-e _hd2694926995_)))
                           (if (equal? _e2695127001_ '=>:)
                               (if (gx#stx-pair? _tl2695026998_)
                                   (let ((_e2695227005_
                                          (gx#syntax-e _tl2695026998_)))
                                     (let ((_tl2695427012_
                                            (##cdr _e2695227005_))
                                           (_hd2695327009_
                                            (##car _e2695227005_)))
                                       (if (gx#stx-null? _tl2695427012_)
                                           (___kont4042040421_
                                            _hd2695327009_
                                            _hd2694626985_)
                                           (_g2692526960_))))
                                   (_g2692526960_))
                               (_g2692526960_)))
                         (_g2692526960_))))
                 (_g2692526960_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2692526960_))
                                             (_g2692526960_))))
                                   (_g2692526960_)))))
                       (_g2692526960_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         ___stx4041140412_)
                                                        (___kont4041440415_)
                                                        (_g2692227172_)))))))
                                           (___kont4049840499_
                                            (lambda (_L26803_)
                                              (let* ((___stx4039540396_
                                                      _L26803_)
                                                     (_g2681626828_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         ___stx4039540396_))))
                                                (let ((___kont4039840399_
                                                       (lambda (_L26856_
                                                                _L26858_)
                                                         (_generate123785_
                                                          _tgt25408_
                                                          _L26858_
                                                          (_generate123785_
                                                           _tgt25408_
                                                           (cons 'and:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L26856_)
                   _K25411_
                   _E25412_)
                  _E25412_)))
              (___kont4040040401_ (lambda () _K25411_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4039540396_)
                                                      (let ((_e2682026846_
                                                             (gx#syntax-e
                                                              ___stx4039540396_)))
                                                        (let ((_tl2682226853_
                                                               (##cdr _e2682026846_))
                                                              (_hd2682126850_
                                                               (##car _e2682026846_)))
                                                          (___kont4039840399_
                                                           _tl2682226853_
                                                           _hd2682126850_)))
                                                      (___kont4040040401_))))))
                                           (___kont4050040501_
                                            (lambda (_L26710_)
                                              (let* ((___stx4037940380_
                                                      _L26710_)
                                                     (_g2672326735_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         ___stx4037940380_))))
                                                (let ((___kont4038240383_
                                                       (lambda (_L26763_
                                                                _L26765_)
                                                         (_generate123785_
                                                          _tgt25408_
                                                          _L26765_
                                                          _K25411_
                                                          (_generate123785_
                                                           _tgt25408_
                                                           (cons 'or: _L26763_)
                                                           _K25411_
                                                           _E25412_))))
                                                      (___kont4038440385_
                                                       (lambda () _E25412_)))
                                                  (if (gx#stx-pair?
                                                       ___stx4037940380_)
                                                      (let ((_e2672726753_
                                                             (gx#syntax-e
                                                              ___stx4037940380_)))
                                                        (let ((_tl2672926760_
                                                               (##cdr _e2672726753_))
                                                              (_hd2672826757_
                                                               (##car _e2672726753_)))
                                                          (___kont4038240383_
                                                           _tl2672926760_
                                                           _hd2672826757_)))
                                                      (___kont4038440385_))))))
                                           (___kont4050240503_
                                            (lambda (_L26675_)
                                              (_generate123785_
                                               _tgt25408_
                                               _L26675_
                                               _E25412_
                                               _K25411_)))
                                           (___kont4050440505_
                                            (lambda (_L26557_ _L26559_)
                                              (let* ((_g2657626591_
                                                      (lambda (_g2657726587_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g2657726587_)))
                                                     (_g2657526640_
                                                      (lambda (_g2657726595_)
                                                        (if (gx#stx-pair?
                                                             _g2657726595_)
                                                            (let ((_e2658026598_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _g2657726595_)))
                      (let ((_hd2658126602_ (##car _e2658026598_))
                            (_tl2658226605_ (##cdr _e2658026598_)))
                        (if (gx#stx-pair? _tl2658226605_)
                            (let ((_e2658326608_ (gx#syntax-e _tl2658226605_)))
                              (let ((_hd2658426612_ (##car _e2658326608_))
                                    (_tl2658526615_ (##cdr _e2658326608_)))
                                (if (gx#stx-null? _tl2658526615_)
                                    ((lambda (_L26618_ _L26620_)
                                       (let ()
                                         (cons 'if
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '##pair?)
                                                           (cons _L25429_ '()))
                                                     (cons (let ((_hd-pat26636_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _L26559_))
                         (_tl-pat26638_ (gx#stx-e _L26557_)))
                     (if (and (equal? _hd-pat26636_ '(any:))
                              (equal? _tl-pat26638_ '(any:)))
                         _K25411_
                         (if (equal? _tl-pat26638_ '(any:))
                             (cons 'let
                                   (cons (cons (cons _L26620_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##car)
                         (cons _L25429_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons (_generate123785_
                                                _L26620_
                                                _L26559_
                                                _K25411_
                                                _E25412_)
                                               '())))
                             (if (equal? _hd-pat26636_ '(any:))
                                 (cons 'let
                                       (cons (cons (cons _L26618_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '##cdr)
                             (cons _L25429_ '()))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())
                                             (cons (_generate123785_
                                                    _L26618_
                                                    _L26557_
                                                    _K25411_
                                                    _E25412_)
                                                   '())))
                                 (cons 'let
                                       (cons (cons (cons _L26620_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '##car)
                             (cons _L25429_ '()))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons _L26618_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '##cdr)
                                   (cons _L25429_ '()))
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (_generate123785_
                                                    _L26620_
                                                    _L26559_
                                                    (_generate123785_
                                                     _L26618_
                                                     _L26557_
                                                     _K25411_
                                                     _E25412_)
                                                    _E25412_)
                                                   '())))))))
                   (cons _E25412_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _hd2658426612_
                                     _hd2658126602_)
                                    (_g2657626591_ _g2657726595_))))
                            (_g2657626591_ _g2657726595_))))
                    (_g2657626591_ _g2657726595_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2657526640_
                                                 (list (gx#genident 'hd)
                                                       (gx#genident 'tl))))))
                                           (___kont4050640507_
                                            (lambda ()
                                              (cons 'if
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##null?)
                        (cons _L25429_ '()))
                  (cons _K25411_ (cons _E25412_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4050840509_
                                            (lambda (_L26473_ _L26475_)
                                              (_generate-splice23787_
                                               _tgt25408_
                                               _L26475_
                                               _L26473_
                                               _K25411_
                                               _E25412_)))
                                           (___kont4051040511_
                                            (lambda (_L26387_)
                                              (let* ((_g2640126409_
                                                      (lambda (_g2640226405_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g2640226405_)))
                                                     (_g2640026428_
                                                      (lambda (_g2640226413_)
                                                        ((lambda (_L26416_)
                                                           (let ()
                                                             (cons 'if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f '##box?)
                                       (cons _L25429_ '()))
                                 (cons (cons 'let
                                             (cons (cons (cons _L26416_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '##unbox)
                                   (cons _L25429_ '()))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (_generate123785_
                                                          _L26416_
                                                          _L26387_
                                                          _K25411_
                                                          _E25412_)
                                                         '())))
                                       (cons _E25412_ '()))))))
                 _g2640226413_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2640026428_
                                                 (gx#genident 'e)))))
                                           (___kont4051240513_
                                            (lambda (_L26192_)
                                              (let* ((___stx4032940330_
                                                      _L26192_)
                                                     (_g2620726230_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         ___stx4032940330_))))
                                                (let ((___kont4033240333_
                                                       (lambda (_L26307_)
                                                         (let* ((_g2632126329_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2632226325_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2632226325_)))
                        (_g2632026348_
                         (lambda (_g2632226333_)
                           ((lambda (_L26336_)
                              (let ()
                                (cons 'if
                                      (cons (cons (gx#datum->syntax '#f '##fx=)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'values-count)
                                                              (cons _L25429_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _L26336_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (_generate-simple-vector23788_
                                                   _tgt25408_
                                                   _L26307_
                                                   '0
                                                   _K25411_
                                                   _E25412_)
                                                  (cons _E25412_ '()))))))
                            _g2632226333_))))
                   (_g2632026348_ (gx#stx-length _L26307_)))))
              (___kont4033440335_
               (lambda (_L26261_)
                 (_generate-list-vector23789_
                  _tgt25408_
                  _L26261_
                  'values->list
                  _K25411_
                  _E25412_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4032940330_)
                                                      (let ((_e2621026283_
                                                             (gx#syntax-e
                                                              ___stx4032940330_)))
                                                        (let ((_tl2621226290_
                                                               (##cdr _e2621026283_))
                                                              (_hd2621126287_
                                                               (##car _e2621026283_)))
                                                          (if (gx#stx-datum?
                                                               _hd2621126287_)
                                                              (let ((_e2621326293_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd2621126287_)))
                        (if (equal? _e2621326293_ 'simple:)
                            (if (gx#stx-pair? _tl2621226290_)
                                (let ((_e2621426297_
                                       (gx#syntax-e _tl2621226290_)))
                                  (let ((_tl2621626304_ (##cdr _e2621426297_))
                                        (_hd2621526301_ (##car _e2621426297_)))
                                    (if (gx#stx-null? _tl2621626304_)
                                        (___kont4033240333_ _hd2621526301_)
                                        (_g2620726230_))))
                                (_g2620726230_))
                            (if (equal? _e2621326293_ 'list:)
                                (if (gx#stx-pair? _tl2621226290_)
                                    (let ((_e2622226251_
                                           (gx#syntax-e _tl2621226290_)))
                                      (let ((_tl2622426258_
                                             (##cdr _e2622226251_))
                                            (_hd2622326255_
                                             (##car _e2622226251_)))
                                        (if (gx#stx-null? _tl2622426258_)
                                            (___kont4033440335_ _hd2622326255_)
                                            (_g2620726230_))))
                                    (_g2620726230_))
                                (_g2620726230_))))
                      (_g2620726230_))))
              (_g2620726230_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4051440515_
                                            (lambda (_L25997_)
                                              (let* ((___stx4027940280_
                                                      _L25997_)
                                                     (_g2601226035_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         ___stx4027940280_))))
                                                (let ((___kont4028240283_
                                                       (lambda (_L26112_)
                                                         (let* ((_g2612626134_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2612726130_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2612726130_)))
                        (_g2612526153_
                         (lambda (_g2612726138_)
                           ((lambda (_L26141_)
                              (let ()
                                (cons 'if
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   '##vector?)
                                                  (cons _L25429_ '()))
                                            (cons (cons 'if
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '##fx=)
                            (cons (cons (gx#datum->syntax '#f '##vector-length)
                                        (cons _L25429_ '()))
                                  (cons _L26141_ '())))
                      (cons (_generate-simple-vector23788_
                             _tgt25408_
                             _L26112_
                             '0
                             _K25411_
                             _E25412_)
                            (cons _E25412_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _E25412_ '()))))))
                            _g2612726138_))))
                   (_g2612526153_ (gx#stx-length _L26112_)))))
              (___kont4028440285_
               (lambda (_L26066_)
                 (cons 'if
                       (cons (cons (gx#datum->syntax '#f '##vector?)
                                   (cons _L25429_ '()))
                             (cons (_generate-list-vector23789_
                                    _tgt25408_
                                    _L26066_
                                    'vector->list
                                    _K25411_
                                    _E25412_)
                                   (cons _E25412_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4027940280_)
                                                      (let ((_e2601526088_
                                                             (gx#syntax-e
                                                              ___stx4027940280_)))
                                                        (let ((_tl2601726095_
                                                               (##cdr _e2601526088_))
                                                              (_hd2601626092_
                                                               (##car _e2601526088_)))
                                                          (if (gx#stx-datum?
                                                               _hd2601626092_)
                                                              (let ((_e2601826098_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd2601626092_)))
                        (if (equal? _e2601826098_ 'simple:)
                            (if (gx#stx-pair? _tl2601726095_)
                                (let ((_e2601926102_
                                       (gx#syntax-e _tl2601726095_)))
                                  (let ((_tl2602126109_ (##cdr _e2601926102_))
                                        (_hd2602026106_ (##car _e2601926102_)))
                                    (if (gx#stx-null? _tl2602126109_)
                                        (___kont4028240283_ _hd2602026106_)
                                        (_g2601226035_))))
                                (_g2601226035_))
                            (if (equal? _e2601826098_ 'list:)
                                (if (gx#stx-pair? _tl2601726095_)
                                    (let ((_e2602726056_
                                           (gx#syntax-e _tl2601726095_)))
                                      (let ((_tl2602926063_
                                             (##cdr _e2602726056_))
                                            (_hd2602826060_
                                             (##car _e2602726056_)))
                                        (if (gx#stx-null? _tl2602926063_)
                                            (___kont4028440285_ _hd2602826060_)
                                            (_g2601226035_))))
                                    (_g2601226035_))
                                (_g2601226035_))))
                      (_g2601226035_))))
              (_g2601226035_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4051640517_
                                            (lambda (_L25948_ _L25950_)
                                              (_generate-struct23790_
                                               (gx#stx-e _L25950_)
                                               _tgt25408_
                                               _L25948_
                                               _K25411_
                                               _E25412_)))
                                           (___kont4051840519_
                                            (lambda (_L25889_ _L25891_)
                                              (_generate-class23791_
                                               (gx#stx-e _L25891_)
                                               _tgt25408_
                                               _L25889_
                                               _K25411_
                                               _E25412_)))
                                           (___kont4052040521_
                                            (lambda (_L25792_)
                                              (let* ((_g2580625814_
                                                      (lambda (_g2580725810_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g2580725810_)))
                                                     (_g2580525833_
                                                      (lambda (_g2580725818_)
                                                        ((lambda (_L25821_)
                                                           (let ()
                                                             (cons 'if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _L25821_
                                       (cons _L25429_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'quote)
                                                         (cons _L25792_ '()))
                                                   '())))
                                 (cons _K25411_ (cons _E25412_ '()))))))
                 _g2580725818_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2580525833_
                                                 (let ((_e25837_
                                                        (gx#stx-e _L25792_)))
                                                   (if (or (symbol? _e25837_)
                                                           (keyword? _e25837_)
                                                           (immediate?
                                                            _e25837_))
                                                       '##eq?
                                                       (if (number? _e25837_)
                                                           'eqv?
                                                           'equal?)))))))
                                           (___kont4052240523_
                                            (lambda (_L25712_ _L25714_)
                                              (let* ((_g2573025738_
                                                      (lambda (_g2573125734_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g2573125734_)))
                                                     (_g2572925757_
                                                      (lambda (_g2573125742_)
                                                        ((lambda (_L25745_)
                                                           (let ()
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _L25745_
                                             (cons (cons _L25714_
                                                         (cons _L25429_ '()))
                                                   '()))
                                       '())
                                 (cons (_generate123785_
                                        _L25745_
                                        _L25712_
                                        _K25411_
                                        _E25412_)
                                       '())))))
                 _g2573125742_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2572925757_
                                                 (gx#genident 'e)))))
                                           (___kont4052440525_
                                            (lambda (_L25654_)
                                              (cons 'let
                                                    (cons (cons (cons _L25654_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _L25429_ '()))
                        '())
                  (cons _K25411_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4052640527_
                                            (lambda () _K25411_)))
                                       (if (gx#stx-pair? ___stx4049340494_)
                                           (let ((_e2546026882_
                                                  (gx#syntax-e
                                                   ___stx4049340494_)))
                                             (let ((_tl2546226889_
                                                    (##cdr _e2546026882_))
                                                   (_hd2546126886_
                                                    (##car _e2546026882_)))
                                               (if (gx#stx-datum?
                                                    _hd2546126886_)
                                                   (let ((_e2546326892_
                                                          (gx#stx-e
                                                           _hd2546126886_)))
                                                     (if (equal? _e2546326892_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '?:)
                 (if (gx#stx-pair? _tl2546226889_)
                     (let ((_e2546426896_ (gx#syntax-e _tl2546226889_)))
                       (let ((_tl2546626903_ (##cdr _e2546426896_))
                             (_hd2546526900_ (##car _e2546426896_)))
                         (___kont4049640497_ _tl2546626903_ _hd2546526900_)))
                     (_g2545625598_))
                 (if (equal? _e2546326892_ 'and:)
                     (___kont4049840499_ _tl2546226889_)
                     (if (equal? _e2546326892_ 'or:)
                         (___kont4050040501_ _tl2546226889_)
                         (if (equal? _e2546326892_ 'not:)
                             (if (gx#stx-pair? _tl2546226889_)
                                 (let ((_e2548226665_
                                        (gx#syntax-e _tl2546226889_)))
                                   (let ((_tl2548426672_ (##cdr _e2548226665_))
                                         (_hd2548326669_
                                          (##car _e2548226665_)))
                                     (if (gx#stx-null? _tl2548426672_)
                                         (___kont4050240503_ _hd2548326669_)
                                         (_g2545625598_))))
                                 (_g2545625598_))
                             (if (equal? _e2546326892_ 'cons:)
                                 (if (gx#stx-pair? _tl2546226889_)
                                     (let ((_e2549126537_
                                            (gx#syntax-e _tl2546226889_)))
                                       (let ((_tl2549326544_
                                              (##cdr _e2549126537_))
                                             (_hd2549226541_
                                              (##car _e2549126537_)))
                                         (if (gx#stx-pair? _tl2549326544_)
                                             (let ((_e2549426547_
                                                    (gx#syntax-e
                                                     _tl2549326544_)))
                                               (let ((_tl2549626554_
                                                      (##cdr _e2549426547_))
                                                     (_hd2549526551_
                                                      (##car _e2549426547_)))
                                                 (if (gx#stx-null?
                                                      _tl2549626554_)
                                                     (___kont4050440505_
                                                      _hd2549526551_
                                                      _hd2549226541_)
                                                     (_g2545625598_))))
                                             (_g2545625598_))))
                                     (_g2545625598_))
                                 (if (equal? _e2546326892_ 'null:)
                                     (if (gx#stx-null? _tl2546226889_)
                                         (___kont4050640507_)
                                         (_g2545625598_))
                                     (if (equal? _e2546326892_ 'splice:)
                                         (if (gx#stx-pair? _tl2546226889_)
                                             (let ((_e2550726453_
                                                    (gx#syntax-e
                                                     _tl2546226889_)))
                                               (let ((_tl2550926460_
                                                      (##cdr _e2550726453_))
                                                     (_hd2550826457_
                                                      (##car _e2550726453_)))
                                                 (if (gx#stx-pair?
                                                      _tl2550926460_)
                                                     (let ((_e2551026463_
                                                            (gx#syntax-e
                                                             _tl2550926460_)))
                                                       (let ((_tl2551226470_
                                                              (##cdr _e2551026463_))
                                                             (_hd2551126467_
                                                              (##car _e2551026463_)))
                                                         (if (gx#stx-null?
                                                              _tl2551226470_)
                                                             (___kont4050840509_
                                                              _hd2551126467_
                                                              _hd2550826457_)
                                                             (_g2545625598_))))
                                                     (_g2545625598_))))
                                             (_g2545625598_))
                                         (if (equal? _e2546326892_ 'box:)
                                             (if (gx#stx-pair? _tl2546226889_)
                                                 (let ((_e2551826377_
                                                        (gx#syntax-e
                                                         _tl2546226889_)))
                                                   (let ((_tl2552026384_
                                                          (##cdr _e2551826377_))
                                                         (_hd2551926381_
                                                          (##car _e2551826377_)))
                                                     (if (gx#stx-null?
                                                          _tl2552026384_)
                                                         (___kont4051040511_
                                                          _hd2551926381_)
                                                         (_g2545625598_))))
                                                 (_g2545625598_))
                                             (if (equal? _e2546326892_
                                                         'values:)
                                                 (if (gx#stx-pair?
                                                      _tl2546226889_)
                                                     (let ((_e2552626182_
                                                            (gx#syntax-e
                                                             _tl2546226889_)))
                                                       (let ((_tl2552826189_
                                                              (##cdr _e2552626182_))
                                                             (_hd2552726186_
                                                              (##car _e2552626182_)))
                                                         (if (gx#stx-null?
                                                              _tl2552826189_)
                                                             (___kont4051240513_
                                                              _hd2552726186_)
                                                             (_g2545625598_))))
                                                     (_g2545625598_))
                                                 (if (equal? _e2546326892_
                                                             'vector:)
                                                     (if (gx#stx-pair?
                                                          _tl2546226889_)
                                                         (let ((_e2553425987_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2546226889_)))
                   (let ((_tl2553625994_ (##cdr _e2553425987_))
                         (_hd2553525991_ (##car _e2553425987_)))
                     (if (gx#stx-null? _tl2553625994_)
                         (___kont4051440515_ _hd2553525991_)
                         (_g2545625598_))))
                 (_g2545625598_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (equal? _e2546326892_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'struct:)
                 (if (gx#stx-pair? _tl2546226889_)
                     (let ((_e2554325928_ (gx#syntax-e _tl2546226889_)))
                       (let ((_tl2554525935_ (##cdr _e2554325928_))
                             (_hd2554425932_ (##car _e2554325928_)))
                         (if (gx#stx-pair? _tl2554525935_)
                             (let ((_e2554625938_
                                    (gx#syntax-e _tl2554525935_)))
                               (let ((_tl2554825945_ (##cdr _e2554625938_))
                                     (_hd2554725942_ (##car _e2554625938_)))
                                 (if (gx#stx-null? _tl2554825945_)
                                     (___kont4051640517_
                                      _hd2554725942_
                                      _hd2554425932_)
                                     (_g2545625598_))))
                             (_g2545625598_))))
                     (_g2545625598_))
                 (if (equal? _e2546326892_ 'class:)
                     (if (gx#stx-pair? _tl2546226889_)
                         (let ((_e2555525869_ (gx#syntax-e _tl2546226889_)))
                           (let ((_tl2555725876_ (##cdr _e2555525869_))
                                 (_hd2555625873_ (##car _e2555525869_)))
                             (if (gx#stx-pair? _tl2555725876_)
                                 (let ((_e2555825879_
                                        (gx#syntax-e _tl2555725876_)))
                                   (let ((_tl2556025886_ (##cdr _e2555825879_))
                                         (_hd2555925883_
                                          (##car _e2555825879_)))
                                     (if (gx#stx-null? _tl2556025886_)
                                         (___kont4051840519_
                                          _hd2555925883_
                                          _hd2555625873_)
                                         (_g2545625598_))))
                                 (_g2545625598_))))
                         (_g2545625598_))
                     (if (equal? _e2546326892_ 'datum:)
                         (if (gx#stx-pair? _tl2546226889_)
                             (let ((_e2556625782_
                                    (gx#syntax-e _tl2546226889_)))
                               (let ((_tl2556825789_ (##cdr _e2556625782_))
                                     (_hd2556725786_ (##car _e2556625782_)))
                                 (if (gx#stx-null? _tl2556825789_)
                                     (___kont4052040521_ _hd2556725786_)
                                     (_g2545625598_))))
                             (_g2545625598_))
                         (if (equal? _e2546326892_ 'apply:)
                             (if (gx#stx-pair? _tl2546226889_)
                                 (let ((_e2557525692_
                                        (gx#syntax-e _tl2546226889_)))
                                   (let ((_tl2557725699_ (##cdr _e2557525692_))
                                         (_hd2557625696_
                                          (##car _e2557525692_)))
                                     (if (gx#stx-pair? _tl2557725699_)
                                         (let ((_e2557825702_
                                                (gx#syntax-e _tl2557725699_)))
                                           (let ((_tl2558025709_
                                                  (##cdr _e2557825702_))
                                                 (_hd2557925706_
                                                  (##car _e2557825702_)))
                                             (if (gx#stx-null? _tl2558025709_)
                                                 (___kont4052240523_
                                                  _hd2557925706_
                                                  _hd2557625696_)
                                                 (_g2545625598_))))
                                         (_g2545625598_))))
                                 (_g2545625598_))
                             (if (equal? _e2546326892_ 'var:)
                                 (if (gx#stx-pair? _tl2546226889_)
                                     (let ((_e2558625644_
                                            (gx#syntax-e _tl2546226889_)))
                                       (let ((_tl2558825651_
                                              (##cdr _e2558625644_))
                                             (_hd2558725648_
                                              (##car _e2558625644_)))
                                         (if (gx#stx-null? _tl2558825651_)
                                             (___kont4052440525_
                                              _hd2558725648_)
                                             (_g2545625598_))))
                                     (_g2545625598_))
                                 (if (equal? _e2546326892_ 'any:)
                                     (if (gx#stx-null? _tl2546226889_)
                                         (___kont4052640527_)
                                         (_g2545625598_))
                                     (_g2545625598_))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2545625598_))))
                                           (_g2545625598_))))))
                               _g2541525426_))))
                      (_g2541327191_ _tgt25408_))))
                 (_generate-splice23787_
                  (lambda (_tgt24780_ _hd24782_ _rest24783_ _K24784_ _E24785_)
                    (let* ((_g2478724804_
                            (lambda (_g2478824800_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2478824800_)))
                           (_g2478625404_
                            (lambda (_g2478824808_)
                              (if (gx#stx-pair/null? _g2478824808_)
                                  (let ((_g42155_
                                         (gx#syntax-split-splice
                                          _g2478824808_
                                          '0)))
                                    (begin
                                      (let ((_g42156_
                                             (if (##values? _g42155_)
                                                 (##vector-length _g42155_)
                                                 1)))
                                        (if (not (##fx= _g42156_ 2))
                                            (error "Context expects 2 values"
                                                   _g42156_)))
                                      (let ((_target2479024811_
                                             (##vector-ref _g42155_ 0))
                                            (_tl2479224814_
                                             (##vector-ref _g42155_ 1)))
                                        (if (gx#stx-null? _tl2479224814_)
                                            (letrec ((_loop2479324817_
                                                      (lambda (_hd2479124821_
                                                               _var2479724824_)
                                                        (if (gx#stx-pair?
                                                             _hd2479124821_)
                                                            (let ((_e2479424827_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd2479124821_)))
                      (let ((_lp-hd2479524831_ (##car _e2479424827_))
                            (_lp-tl2479624834_ (##cdr _e2479424827_)))
                        (_loop2479324817_
                         _lp-tl2479624834_
                         (cons _lp-hd2479524831_ _var2479724824_))))
                    (let ((_var2479824837_ (reverse _var2479724824_)))
                      ((lambda (_L24841_)
                         (let ()
                           (let* ((_g2485724874_
                                   (lambda (_g2485824870_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2485824870_)))
                                  (_g2485625392_
                                   (lambda (_g2485824878_)
                                     (if (gx#stx-pair/null? _g2485824878_)
                                         (let ((_g42157_
                                                (gx#syntax-split-splice
                                                 _g2485824878_
                                                 '0)))
                                           (begin
                                             (let ((_g42158_
                                                    (if (##values? _g42157_)
                                                        (##vector-length
                                                         _g42157_)
                                                        1)))
                                               (if (not (##fx= _g42158_ 2))
                                                   (error "Context expects 2 values"
                                                          _g42158_)))
                                             (let ((_target2486024881_
                                                    (##vector-ref _g42157_ 0))
                                                   (_tl2486224884_
                                                    (##vector-ref _g42157_ 1)))
                                               (if (gx#stx-null?
                                                    _tl2486224884_)
                                                   (letrec ((_loop2486324887_
                                                             (lambda (_hd2486124891_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _var-r2486724894_)
                       (if (gx#stx-pair? _hd2486124891_)
                           (let ((_e2486424897_ (gx#syntax-e _hd2486124891_)))
                             (let ((_lp-hd2486524901_ (##car _e2486424897_))
                                   (_lp-tl2486624904_ (##cdr _e2486424897_)))
                               (_loop2486324887_
                                _lp-tl2486624904_
                                (cons _lp-hd2486524901_ _var-r2486724894_))))
                           (let ((_var-r2486824907_
                                  (reverse _var-r2486724894_)))
                             ((lambda (_L24911_)
                                (let ()
                                  (let* ((_g2492824945_
                                          (lambda (_g2492924941_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g2492924941_)))
                                         (_g2492725380_
                                          (lambda (_g2492924949_)
                                            (if (gx#stx-pair/null?
                                                 _g2492924949_)
                                                (let ((_g42159_
                                                       (gx#syntax-split-splice
                                                        _g2492924949_
                                                        '0)))
                                                  (begin
                                                    (let ((_g42160_
                                                           (if (##values?
                                                                _g42159_)
                                                               (##vector-length
                                                                _g42159_)
                                                               1)))
                                                      (if (not (##fx= _g42160_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                  (error "Context expects 2 values" _g42160_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2493124952_
                                                           (##vector-ref
                                                            _g42159_
                                                            0))
                                                          (_tl2493324955_
                                                           (##vector-ref
                                                            _g42159_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl2493324955_)
                                                          (letrec ((_loop2493424958_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2493224962_ _init2493824965_)
                              (if (gx#stx-pair? _hd2493224962_)
                                  (let ((_e2493524968_
                                         (gx#syntax-e _hd2493224962_)))
                                    (let ((_lp-hd2493624972_
                                           (##car _e2493524968_))
                                          (_lp-tl2493724975_
                                           (##cdr _e2493524968_)))
                                      (_loop2493424958_
                                       _lp-tl2493724975_
                                       (cons _lp-hd2493624972_
                                             _init2493824965_))))
                                  (let ((_init2493924978_
                                         (reverse _init2493824965_)))
                                    ((lambda (_L24982_)
                                       (let ()
                                         (let* ((_g2499925007_
                                                 (lambda (_g2500025003_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g2500025003_)))
                                                (_g2499825376_
                                                 (lambda (_g2500025011_)
                                                   ((lambda (_L25014_)
                                                      (let ()
                                                        (let* ((_g2502725035_
                                                                (lambda (_g2502825031_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g2502825031_)))
                       (_g2502625372_
                        (lambda (_g2502825039_)
                          ((lambda (_L25042_)
                             (let ()
                               (let* ((_g2505525063_
                                       (lambda (_g2505625059_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2505625059_)))
                                      (_g2505425368_
                                       (lambda (_g2505625067_)
                                         ((lambda (_L25070_)
                                            (let ()
                                              (let* ((_g2508325091_
                                                      (lambda (_g2508425087_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g2508425087_)))
                                                     (_g2508225364_
                                                      (lambda (_g2508425095_)
                                                        ((lambda (_L25098_)
                                                           (let ()
                                                             (let* ((_g2511125119_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g2511225115_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g2511225115_)))
                            (_g2511025360_
                             (lambda (_g2511225123_)
                               ((lambda (_L25126_)
                                  (let ()
                                    (let* ((_g2513925147_
                                            (lambda (_g2514025143_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2514025143_)))
                                           (_g2513825356_
                                            (lambda (_g2514025151_)
                                              ((lambda (_L25154_)
                                                 (let ()
                                                   (let* ((_g2516725175_
                                                           (lambda (_g2516825171_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g2516825171_)))
                                                          (_g2516625352_
                                                           (lambda (_g2516825179_)
                                                             ((lambda (_L25182_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g2519525203_
                                  (lambda (_g2519625199_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g2519625199_)))
                                 (_g2519425337_
                                  (lambda (_g2519625207_)
                                    ((lambda (_L25210_)
                                       (let ()
                                         (let* ((_g2522325231_
                                                 (lambda (_g2522425227_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g2522425227_)))
                                                (_g2522225325_
                                                 (lambda (_g2522425235_)
                                                   ((lambda (_L25238_)
                                                      (let ()
                                                        (let* ((_g2525125259_
                                                                (lambda (_g2525225255_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g2525225255_)))
                       (_g2525025321_
                        (lambda (_g2525225263_)
                          ((lambda (_L25266_)
                             (let ()
                               (let ()
                                 (cons (gx#datum->syntax '#f 'letrec)
                                       (cons (cons (cons _L25042_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lambda)
                             (cons (cons _L25154_
                                         (foldr (lambda (_g2528025291_
                                                         _g2528125294_)
                                                  (cons _g2528025291_
                                                        _g2528125294_))
                                                '()
                                                _L24841_))
                                   (cons _L25182_ '())))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons _L25098_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'lambda)
                                   (cons (cons _L25126_
                                               (cons _L25154_
                                                     (foldr (lambda (_g2528225297_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g2528325300_)
                      (cons _g2528225297_ _g2528325300_))
                    '()
                    _L24911_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons _L25266_ '())))
                             '()))
                 (cons (cons _L25070_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons (cons _L25154_
                                                     (foldr (lambda (_g2528425303_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g2528525306_)
                      (cons _g2528425303_ _g2528525306_))
                    '()
                    _L24911_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'pair?)
                               (cons _L25154_ '()))
                         (cons (cons _L25098_
                                     (cons (cons (gx#datum->syntax '#f '##car)
                                                 (cons _L25154_ '()))
                                           (cons _L25154_
                                                 (foldr (lambda (_g2528625309_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2528725312_)
                  (cons _g2528625309_ _g2528725312_))
                '()
                _L24911_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _L25238_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   '()))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _L25070_
                                                         (cons _L25014_
                                                               (foldr (lambda (_g2528825315_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g2528925318_)
                                (cons _g2528825315_ _g2528925318_))
                              '()
                              _L24982_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))))
                           _g2525225263_))))
                  (_g2525025321_
                   (_generate123785_ _L25126_ _hd24782_ _L25210_ _L25238_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2522425235_))))
                                           (_g2522225325_
                                            (cons _L25042_
                                                  (cons _L25154_
                                                        (foldr (lambda (_g2532825331_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2532925334_)
                         (cons (cons (gx#datum->syntax '#f 'reverse)
                                     (cons _g2532825331_ '()))
                               _g2532925334_))
                       '()
                       _L24911_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _g2519625207_))))
                            (_g2519425337_
                             (cons _L25070_
                                   (cons (cons (gx#datum->syntax '#f '##cdr)
                                               (cons _L25154_ '()))
                                         (begin
                                           (gx#syntax-check-splice-targets
                                            _L24911_
                                            _L24841_)
                                           (foldr (lambda (_g2534025344_
                                                           _g2534125347_
                                                           _g2534225349_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'cons)
                        (cons _g2534125347_ (cons _g2534025344_ '())))
                  _g2534225349_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()
                                                  _L24911_
                                                  _L24841_))))))))
                      _g2516825179_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2516625352_
                                                      (_generate123785_
                                                       _L25154_
                                                       _rest24783_
                                                       _K24784_
                                                       _E24785_)))))
                                               _g2514025151_))))
                                      (_g2513825356_ (gx#genident 'rest)))))
                                _g2511225123_))))
                       (_g2511025360_ (gx#genident 'hd)))))
                 _g2508425095_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2508225364_
                                                 (gx#genident 'splice-try)))))
                                          _g2505625067_))))
                                 (_g2505425368_ (gx#genident 'splice-loop)))))
                           _g2502825039_))))
                  (_g2502625372_ (gx#genident 'splice-rest)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2500025011_))))
                                           (_g2499825376_ _tgt24780_))))
                                     _init2493924978_))))))
                    (_loop2493424958_ _target2493124952_ '()))
                  (_g2492824945_ _g2492924949_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2492824945_
                                                 _g2492924949_)))))
                                    (_g2492725380_
                                     (make-list
                                      (gx#stx-length
                                       (foldr (lambda (_g2538325386_
                                                       _g2538425389_)
                                                (cons _g2538325386_
                                                      _g2538425389_))
                                              '()
                                              _L24841_))
                                      (cons (gx#datum->syntax '#f '@list)
                                            '()))))))
                              _var-r2486824907_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop2486324887_
                                                      _target2486024881_
                                                      '()))
                                                   (_g2485724874_
                                                    _g2485824878_)))))
                                         (_g2485724874_ _g2485824878_)))))
                             (_g2485625392_
                              (gx#gentemps
                               (foldr (lambda (_g2539525398_ _g2539625401_)
                                        (cons _g2539525398_ _g2539625401_))
                                      '()
                                      _L24841_))))))
                       _var2479824837_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop2479324817_
                                               _target2479024811_
                                               '()))
                                            (_g2478724804_ _g2478824808_)))))
                                  (_g2478724804_ _g2478824808_)))))
                      (_g2478625404_
                       (|gerbil/core$<match>[1]#match-pattern-vars|
                        _hd24782_)))))
                 (_generate-simple-vector23788_
                  (lambda (_tgt24622_
                           _body24624_
                           _start24625_
                           _K24626_
                           _E24627_)
                    (let _recur24629_ ((_rest24632_ _body24624_)
                                       (_off24634_ _start24625_))
                      (let* ((___stx4085140852_ _rest24632_)
                             (_g2463724649_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx4085140852_))))
                        (let ((___kont4085440855_
                               (lambda (_L24677_ _L24679_)
                                 (let* ((_g2469424713_
                                         (lambda (_g2469524709_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g2469524709_)))
                                        (_g2469324772_
                                         (lambda (_g2469524717_)
                                           (if (gx#stx-pair? _g2469524717_)
                                               (let ((_e2469924720_
                                                      (gx#syntax-e
                                                       _g2469524717_)))
                                                 (let ((_hd2470024724_
                                                        (##car _e2469924720_))
                                                       (_tl2470124727_
                                                        (##cdr _e2469924720_)))
                                                   (if (gx#stx-pair?
                                                        _tl2470124727_)
                                                       (let ((_e2470224730_
                                                              (gx#syntax-e
                                                               _tl2470124727_)))
                                                         (let ((_hd2470324734_
                                                                (##car _e2470224730_))
                                                               (_tl2470424737_
                                                                (##cdr _e2470224730_)))
                                                           (if (gx#stx-pair?
                                                                _tl2470424737_)
                                                               (let ((_e2470524740_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl2470424737_)))
                         (let ((_hd2470624744_ (##car _e2470524740_))
                               (_tl2470724747_ (##cdr _e2470524740_)))
                           (if (gx#stx-null? _tl2470724747_)
                               ((lambda (_L24750_ _L24752_ _L24753_)
                                  (let ()
                                    (cons 'let
                                          (cons (cons (cons _L24753_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '##vector-ref)
                                (cons _L24752_ (cons _L24750_ '())))
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (_generate123785_
                                                       _L24753_
                                                       _L24679_
                                                       (_recur24629_
                                                        _L24677_
                                                        (fx1+ _off24634_))
                                                       _E24627_)
                                                      '())))))
                                _hd2470624744_
                                _hd2470324734_
                                _hd2470024724_)
                               (_g2469424713_ _g2469524717_))))
                       (_g2469424713_ _g2469524717_))))
               (_g2469424713_ _g2469524717_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2469424713_
                                                _g2469524717_)))))
                                   (_g2469324772_
                                    (list (gx#genident 'e)
                                          _tgt24622_
                                          _off24634_)))))
                              (___kont4085640857_ (lambda () _K24626_)))
                          (if (gx#stx-pair? ___stx4085140852_)
                              (let ((_e2464124667_
                                     (gx#syntax-e ___stx4085140852_)))
                                (let ((_tl2464324674_ (##cdr _e2464124667_))
                                      (_hd2464224671_ (##car _e2464124667_)))
                                  (___kont4085440855_
                                   _tl2464324674_
                                   _hd2464224671_)))
                              (___kont4085640857_)))))))
                 (_generate-list-vector23789_
                  (lambda (_tgt24514_
                           _body24516_
                           _->list24517_
                           _K24518_
                           _E24519_)
                    (let* ((_g2452124529_
                            (lambda (_g2452224525_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2452224525_)))
                           (_g2452024618_
                            (lambda (_g2452224533_)
                              ((lambda (_L24536_)
                                 (let ()
                                   (let* ((_g2454824556_
                                           (lambda (_g2454924552_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g2454924552_)))
                                          (_g2454724614_
                                           (lambda (_g2454924560_)
                                             ((lambda (_L24563_)
                                                (let ()
                                                  (let* ((_g2457624584_
                                                          (lambda (_g2457724580_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g2457724580_)))
                                                         (_g2457524606_
                                                          (lambda (_g2457724588_)
                                                            ((lambda (_L24591_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (cons 'let
                                 (cons (cons (cons _L24536_
                                                   (cons _L24591_ '()))
                                             '())
                                       (cons (_generate123785_
                                              _L24536_
                                              _body24516_
                                              _K24518_
                                              _E24519_)
                                             '()))))))
                     _g2457724588_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2457524606_
                                                     (let ((_$e24610_
                                                            _->list24517_))
                                                       (if (eq? 'values->list
                                                                _$e24610_)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'values->list)
                         (cons _L24563_ '()))
                   (if (eq? 'vector->list _$e24610_)
                       (cons (gx#datum->syntax '#f '##vector->list)
                             (cons _L24563_ '()))
                       (if (eq? 'struct->list _$e24610_)
                           (cons (gx#datum->syntax '#f '##cdr)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              '##vector->list)
                                             (cons _L24563_ '()))
                                       '()))
                           (gx#raise-syntax-error
                            '#f
                            '"Unexpected list conversion"
                            _stx23778_
                            _->list24517_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _g2454924560_))))
                                     (_g2454724614_ _tgt24514_))))
                               _g2452224533_))))
                      (_g2452024618_ (gx#genident 'e)))))
                 (_generate-struct23790_
                  (lambda (_info24172_
                           _tgt24174_
                           _body24175_
                           _K24176_
                           _E24177_)
                    (let* ((_rtd24179_
                            (if (|gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info?|
                                 _info24172_)
                                (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
                                 _info24172_)
                                '#f))
                           (_fields24189_
                            (let _lp24182_ ((_rtd24185_ _rtd24179_)
                                            (_k24187_ '0))
                              (if _rtd24185_
                                  (_lp24182_
                                   (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
                                    (##structure-ref
                                     _rtd24185_
                                     '2
                                     |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
                                     '#f))
                                   (fx+ (length (##structure-ref
                                                 _rtd24185_
                                                 '6
                                                 |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|
                                                 '#f))
                                        _k24187_))
                                  _k24187_)))
                           (_final?24192_
                            (if _rtd24179_
                                (assgetq 'final:
                                         (##structure-ref
                                          _rtd24179_
                                          '5
                                          |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
                                          '#f))
                                '#f))
                           (_g2419524203_
                            (lambda (_g2419624199_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2419624199_)))
                           (_g2419424510_
                            (lambda (_g2419624207_)
                              ((lambda (_L24210_)
                                 (let ()
                                   (let* ((_g2422524233_
                                           (lambda (_g2422624229_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g2422624229_)))
                                          (_g2422424412_
                                           (lambda (_g2422624237_)
                                             ((lambda (_L24240_)
                                                (let ()
                                                  (let ()
                                                    (let* ((___stx4086740868_
                                                            _body24175_)
                                                           (_g2425624279_
                                                            (lambda ()
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               ___stx4086740868_))))
                                                      (let ((___kont4087040871_
                                                             (lambda (_L24358_)
                                                               (let ((_K24372_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (_generate-simple-vector23788_
                               _tgt24174_
                               _L24358_
                               '1
                               _K24176_
                               _E24177_))
                             (_len24374_ (gx#stx-length _L24358_)))
                         (if (and _rtd24179_ (fx<= _len24374_ _fields24189_))
                             (cons 'if
                                   (cons _L24240_
                                         (cons _K24372_ (cons _E24177_ '()))))
                             (let* ((_g2437624384_
                                     (lambda (_g2437724380_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g2437724380_)))
                                    (_g2437524404_
                                     (lambda (_g2437724388_)
                                       ((lambda (_L24391_)
                                          (let ()
                                            (cons 'if
                                                  (cons _L24240_
                                                        (cons (cons 'if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f '##fx<)
                                        (cons _L24391_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '##vector-length)
                                                          (cons _L24210_ '()))
                                                    '())))
                                  (cons _K24372_ (cons _E24177_ '()))))
                      (cons _E24177_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g2437724388_))))
                               (_g2437524404_ _len24374_))))))
                    (___kont4087240873_
                     (lambda (_L24310_)
                       (cons 'if
                             (cons _L24240_
                                   (cons (_generate-list-vector23789_
                                          _tgt24174_
                                          _L24310_
                                          'struct->list
                                          _K24176_
                                          _E24177_)
                                         (cons _E24177_ '())))))))
                (if (gx#stx-pair? ___stx4086740868_)
                    (let ((_e2425924334_ (gx#syntax-e ___stx4086740868_)))
                      (let ((_tl2426124341_ (##cdr _e2425924334_))
                            (_hd2426024338_ (##car _e2425924334_)))
                        (if (gx#stx-datum? _hd2426024338_)
                            (let ((_e2426224344_ (gx#stx-e _hd2426024338_)))
                              (if (equal? _e2426224344_ 'simple:)
                                  (if (gx#stx-pair? _tl2426124341_)
                                      (let ((_e2426324348_
                                             (gx#syntax-e _tl2426124341_)))
                                        (let ((_tl2426524355_
                                               (##cdr _e2426324348_))
                                              (_hd2426424352_
                                               (##car _e2426324348_)))
                                          (if (gx#stx-null? _tl2426524355_)
                                              (___kont4087040871_
                                               _hd2426424352_)
                                              (_g2425624279_))))
                                      (_g2425624279_))
                                  (if (equal? _e2426224344_ 'list:)
                                      (if (gx#stx-pair? _tl2426124341_)
                                          (let ((_e2427124300_
                                                 (gx#syntax-e _tl2426124341_)))
                                            (let ((_tl2427324307_
                                                   (##cdr _e2427124300_))
                                                  (_hd2427224304_
                                                   (##car _e2427124300_)))
                                              (if (gx#stx-null? _tl2427324307_)
                                                  (___kont4087240873_
                                                   _hd2427224304_)
                                                  (_g2425624279_))))
                                          (_g2425624279_))
                                      (_g2425624279_))))
                            (_g2425624279_))))
                    (_g2425624279_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _g2422624237_))))
                                     (_g2422424412_
                                      (if (|gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info?|
                                           _info24172_)
                                          (let* ((_g2441624424_
                                                  (lambda (_g2441724420_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2441724420_)))
                                                 (_g2441524443_
                                                  (lambda (_g2441724428_)
                                                    ((lambda (_L24431_)
                                                       (let ()
                                                         (cons _L24431_
                                                               (cons _L24210_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2441724428_))))
                                            (_g2441524443_
                                             (cadddr (|gerbil/core$<MOP>$<MOP:2>[1]#expander-type-identifiers|
                                                      _info24172_))))
                                          (let* ((_g2444724462_
                                                  (lambda (_g2444824458_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2444824458_)))
                                                 (_g2444624506_
                                                  (lambda (_g2444824466_)
                                                    (if (gx#stx-pair?
                                                         _g2444824466_)
                                                        (let ((_e2445124469_
                                                               (gx#syntax-e
                                                                _g2444824466_)))
                                                          (let ((_hd2445224473_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2445124469_))
                        (_tl2445324476_ (##cdr _e2445124469_)))
                    (if (gx#stx-pair? _tl2445324476_)
                        (let ((_e2445424479_ (gx#syntax-e _tl2445324476_)))
                          (let ((_hd2445524483_ (##car _e2445424479_))
                                (_tl2445624486_ (##cdr _e2445424479_)))
                            (if (gx#stx-null? _tl2445624486_)
                                ((lambda (_L24489_ _L24491_)
                                   (let ()
                                     (cons _L24489_
                                           (cons _L24491_
                                                 (cons _L24210_ '())))))
                                 _hd2445524483_
                                 _hd2445224473_)
                                (_g2444724462_ _g2444824466_))))
                        (_g2444724462_ _g2444824466_))))
                (_g2444724462_ _g2444824466_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2444624506_
                                             (list (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                    _info24172_)
                                                   (if _final?24192_
                                                       (gx#datum->syntax
                                                        '#f
                                                        'direct-instance?)
                                                       (gx#datum->syntax
                                                        '#f
                                                        'struct-instance?))))))))))
                               _g2419624207_))))
                      (_g2419424510_ _tgt24174_))))
                 (_generate-class23791_
                  (lambda (_info23793_
                           _tgt23795_
                           _body23796_
                           _K23797_
                           _E23798_)
                    (letrec* ((_rtd23800_
                               (if (|gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info?|
                                    _info23793_)
                                   (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
                                    _info23793_)
                                   '#f))
                              (_known-slot?23802_
                               (if _rtd23800_
                                   (lambda (_key24166_)
                                     (let ((_slot24169_
                                            (keyword->symbol
                                             (gx#stx-e _key24166_))))
                                       (_rtd-known-slot?23804_
                                        _rtd23800_
                                        _slot24169_)))
                                   false))
                              (_final?23803_
                               (if _rtd23800_
                                   (assgetq 'final:
                                            (##structure-ref
                                             _rtd23800_
                                             '5
                                             |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
                                             '#f))
                                   '#f))
                              (_rtd-known-slot?23804_
                               (lambda (_rtd24153_ _slot24155_)
                                 (if _rtd24153_
                                     (let ((_$e24157_
                                            (memq _slot24155_
                                                  (##structure-ref
                                                   _rtd24153_
                                                   '6
                                                   |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
                                                   '#f))))
                                       (if _$e24157_
                                           _$e24157_
                                           (ormap (lambda (_g2416024162_)
                                                    (_rtd-known-slot?23804_
                                                     _g2416024162_
                                                     _slot24155_))
                                                  (map |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
                                                       (##structure-ref
                                                        _rtd24153_
                                                        '2
                                                        |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
                                                        '#f)))))
                                     '#f)))
                              (_recur23805_
                               (lambda (_klass23939_ _rest23941_)
                                 (let* ((___stx4091740918_ _rest23941_)
                                        (_g2394423960_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx4091740918_))))
                                   (let ((___kont4092040921_
                                          (lambda (_L23998_ _L24000_ _L24001_)
                                            (let* ((_g2401724025_
                                                    (lambda (_g2401824021_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g2401824021_)))
                                                   (_g2401624145_
                                                    (lambda (_g2401824029_)
                                                      ((lambda (_L24032_)
                                                         (let ()
                                                           (let* ((_g2404424052_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g2404524048_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2404524048_)))
                          (_g2404324141_
                           (lambda (_g2404524056_)
                             ((lambda (_L24059_)
                                (let ()
                                  (let* ((_g2407224080_
                                          (lambda (_g2407324076_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g2407324076_)))
                                         (_g2407124137_
                                          (lambda (_g2407324084_)
                                            ((lambda (_L24087_)
                                               (let ()
                                                 (let* ((_g2410024108_
                                                         (lambda (_g2410124104_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g2410124104_)))
                                                        (_g2409924133_
                                                         (lambda (_g2410124112_)
                                                           ((lambda (_L24115_)
                                                              (let ()
                                                                (let ((_K24128_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons 'let
                                     (cons (cons (cons _L24115_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##vector-ref)
                           (cons _L24032_
                                 (cons (cons (gx#datum->syntax '#f 'fx1+)
                                             (cons _L24087_ '()))
                                       '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (_generate123785_
                                                  _L24115_
                                                  _L24000_
                                                  (_recur23805_
                                                   _klass23939_
                                                   _L23998_)
                                                  _E23798_)
                                                 '())))))
                          (if (_known-slot?23802_ _L24001_)
                              (cons 'let
                                    (cons (cons (cons _L24087_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'class-slot-offset)
                          (cons _L24059_ (cons _L24001_ '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons _K24128_ '())))
                              (cons 'let
                                    (cons (cons (cons _L24087_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'class-slot-offset)
                          (cons _L24059_ (cons _L24001_ '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons 'if
                                                      (cons _L24087_
                                                            (cons _K24128_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _E23798_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))))))
                    _g2410124112_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2409924133_
                                                    (gx#genident 'e)))))
                                             _g2407324084_))))
                                    (_g2407124137_ (gx#genident 'slot)))))
                              _g2404524056_))))
                     (_g2404324141_ _klass23939_))))
               _g2401824029_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2401624145_ _tgt23795_))))
                                         (___kont4092240923_
                                          (lambda () _K23797_)))
                                     (if (gx#stx-pair? ___stx4091740918_)
                                         (let ((_e2394923978_
                                                (gx#syntax-e
                                                 ___stx4091740918_)))
                                           (let ((_tl2395123985_
                                                  (##cdr _e2394923978_))
                                                 (_hd2395023982_
                                                  (##car _e2394923978_)))
                                             (if (gx#stx-pair? _tl2395123985_)
                                                 (let ((_e2395223988_
                                                        (gx#syntax-e
                                                         _tl2395123985_)))
                                                   (let ((_tl2395423995_
                                                          (##cdr _e2395223988_))
                                                         (_hd2395323992_
                                                          (##car _e2395223988_)))
                                                     (___kont4092040921_
                                                      _tl2395423995_
                                                      _hd2395323992_
                                                      _hd2395023982_)))
                                                 (___kont4092240923_))))
                                         (___kont4092240923_)))))))
                      (let* ((_g2380723815_
                              (lambda (_g2380823811_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2380823811_)))
                             (_g2380623935_
                              (lambda (_g2380823819_)
                                ((lambda (_L23822_)
                                   (let ()
                                     (let* ((_g2383723845_
                                             (lambda (_g2383823841_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2383823841_)))
                                            (_g2383623931_
                                             (lambda (_g2383823849_)
                                               ((lambda (_L23852_)
                                                  (let ()
                                                    (let* ((_g2386523873_
                                                            (lambda (_g2386623869_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g2386623869_)))
                                                           (_g2386423927_
                                                            (lambda (_g2386623877_)
                                                              ((lambda (_L23880_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2389323901_
                                   (lambda (_g2389423897_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2389423897_)))
                                  (_g2389223923_
                                   (lambda (_g2389423905_)
                                     ((lambda (_L23908_)
                                        (let ()
                                          (let ()
                                            (cons 'if
                                                  (cons (cons _L23908_
                                                              (cons _L23880_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _L23852_ '())))
                (cons (cons 'let
                            (cons (cons (cons _L23822_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'object-type)
                                                          (cons _L23852_ '()))
                                                    '()))
                                        '())
                                  (cons (_recur23805_ _L23822_ _body23796_)
                                        '())))
                      (cons _E23798_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2389423905_))))
                             (_g2389223923_
                              (if _final?23803_
                                  (gx#datum->syntax '#f 'direct-instance?)
                                  (gx#datum->syntax '#f 'class-instance?))))))
                       _g2386623877_))))
              (_g2386423927_
               (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                _info23793_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2383823849_))))
                                       (_g2383623931_ _tgt23795_))))
                                 _g2380823819_))))
                        (_g2380623935_ (gx#genident 'class)))))))
          (_generate123785_ _tgt23780_ _ptree23781_ _K23782_ _E23783_))))
    (define |gerbil/core$<match>[1]#generate-match*|
      (lambda (_stx22674_ _tgt-lst22676_ _clauses22677_)
        (letrec ((_parse-body22679_
                  (lambda (_hd-len23600_)
                    (let _lp23603_ ((_rest23606_ _clauses22677_)
                                    (_r23608_ '()))
                      (let* ((___stx4096740968_ _rest23606_)
                             (_g2361123623_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx4096740968_))))
                        (let ((___kont4097040971_
                               (lambda (_L23651_ _L23653_)
                                 (let* ((___stx4093940940_ _L23653_)
                                        (_g2367023686_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx4093940940_))))
                                   (let ((___kont4094240943_
                                          (lambda (_L23755_)
                                            (if (gx#stx-null? _L23651_)
                                                (cons (cons (gx#genident 'else)
                                                            (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'begin) _L23755_)
                                 (let ((_$e23766_ (gx#stx-source _L23653_)))
                                   (if _$e23766_
                                       _$e23766_
                                       (gx#stx-source _stx22674_))))
                                '())))
              _r23608_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; misplaced else"
                                                 _stx22674_
                                                 _L23653_))))
                                         (___kont4094440945_
                                          (lambda (_L23714_ _L23716_)
                                            (_lp23603_
                                             _L23651_
                                             (cons (cons (gx#genident
                                                          'try-match)
                                                         (cons (gx#stx-map
                                                                (lambda (_g2372823730_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (|gerbil/core$<match>[1]#parse-match-pattern__%|
                           _g2372823730_
                           _stx22674_))
                        _L23716_)
                       (cons (gx#stx-wrap-source
                              (cons (gx#datum->syntax '#f 'begin) _L23714_)
                              (let ((_$e23734_ (gx#stx-source _L23653_)))
                                (if _$e23734_
                                    _$e23734_
                                    (gx#stx-source _stx22674_))))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _r23608_))))
                                         (___kont4094640947_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; illegal match clause"
                                             _stx22674_
                                             _L23653_))))
                                     (let* ((___match4096440965_
                                             (lambda (_e2367823704_
                                                      _hd2367923708_
                                                      _tl2368023711_)
                                               (let ((_L23714_ _tl2368023711_)
                                                     (_L23716_ _hd2367923708_))
                                                 (if (and (gx#stx-list?
                                                           _L23716_)
                                                          (fx= (gx#stx-length
                                                                _L23716_)
                                                               _hd-len23600_)
                                                          (gx#stx-list?
                                                           _L23714_)
                                                          (not (gx#stx-null?
                                                                _L23714_)))
                                                     (___kont4094440945_
                                                      _L23714_
                                                      _L23716_)
                                                     (___kont4094640947_)))))
                                            (___match4095840959_
                                             (lambda (_e2367323745_
                                                      _hd2367423749_
                                                      _tl2367523752_)
                                               (let ((_L23755_ _tl2367523752_))
                                                 (if (and (gx#stx-list?
                                                           _L23755_)
                                                          (not (gx#stx-null?
                                                                _L23755_)))
                                                     (___kont4094240943_
                                                      _L23755_)
                                                     (___match4096440965_
                                                      _e2367323745_
                                                      _hd2367423749_
                                                      _tl2367523752_))))))
                                       (if (gx#stx-pair? ___stx4093940940_)
                                           (let ((_e2367323745_
                                                  (gx#syntax-e
                                                   ___stx4093940940_)))
                                             (let ((_tl2367523752_
                                                    (##cdr _e2367323745_))
                                                   (_hd2367423749_
                                                    (##car _e2367323745_)))
                                               (if (gx#identifier?
                                                    _hd2367423749_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core$<match>[1]#_g42161_|
                                                        _hd2367423749_)
                                                       (___match4095840959_
                                                        _e2367323745_
                                                        _hd2367423749_
                                                        _tl2367523752_)
                                                       (___match4096440965_
                                                        _e2367323745_
                                                        _hd2367423749_
                                                        _tl2367523752_))
                                                   (___match4096440965_
                                                    _e2367323745_
                                                    _hd2367423749_
                                                    _tl2367523752_))))
                                           (___kont4094640947_)))))))
                              (___kont4097240973_ (lambda () _r23608_)))
                          (if (gx#stx-pair? ___stx4096740968_)
                              (let ((_e2361523641_
                                     (gx#syntax-e ___stx4096740968_)))
                                (let ((_tl2361723648_ (##cdr _e2361523641_))
                                      (_hd2361623645_ (##car _e2361523641_)))
                                  (___kont4097040971_
                                   _tl2361723648_
                                   _hd2361623645_)))
                              (___kont4097240973_)))))))
                 (_generate-body22681_
                  (lambda (_body23385_)
                    (let* ((_g2338823396_
                            (lambda (_g2338923392_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2338923392_)))
                           (_g2338723596_
                            (lambda (_g2338923400_)
                              ((lambda (_L23403_)
                                 (let ()
                                   (let* ((_g2341523432_
                                           (lambda (_g2341623428_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g2341623428_)))
                                          (_g2341423592_
                                           (lambda (_g2341623436_)
                                             (if (gx#stx-pair/null?
                                                  _g2341623436_)
                                                 (let ((_g42162_
                                                        (gx#syntax-split-splice
                                                         _g2341623436_
                                                         '0)))
                                                   (begin
                                                     (let ((_g42163_
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g42162_)
                        (##vector-length _g42162_)
                        1)))
               (if (not (##fx= _g42163_ 2))
                   (error "Context expects 2 values" _g42163_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2341823439_
                                                            (##vector-ref
                                                             _g42162_
                                                             0))
                                                           (_tl2342023442_
                                                            (##vector-ref
                                                             _g42162_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2342023442_)
                                                           (letrec ((_loop2342123445_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2341923449_ _target2342523452_)
                               (if (gx#stx-pair? _hd2341923449_)
                                   (let ((_e2342223455_
                                          (gx#syntax-e _hd2341923449_)))
                                     (let ((_lp-hd2342323459_
                                            (##car _e2342223455_))
                                           (_lp-tl2342423462_
                                            (##cdr _e2342223455_)))
                                       (_loop2342123445_
                                        _lp-tl2342423462_
                                        (cons _lp-hd2342323459_
                                              _target2342523452_))))
                                   (let ((_target2342623465_
                                          (reverse _target2342523452_)))
                                     ((lambda (_L23469_)
                                        (let ()
                                          (let* ((_g2348623494_
                                                  (lambda (_g2348723490_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2348723490_)))
                                                 (_g2348523580_
                                                  (lambda (_g2348723498_)
                                                    ((lambda (_L23501_)
                                                       (let ()
                                                         (let* ((_g2351423522_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2351523518_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g2351523518_)))
                        (_g2351323576_
                         (lambda (_g2351523526_)
                           ((lambda (_L23529_)
                              (let ()
                                (let* ((_g2354223550_
                                        (lambda (_g2354323546_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g2354323546_)))
                                       (_g2354123572_
                                        (lambda (_g2354323554_)
                                          ((lambda (_L23557_)
                                             (let ()
                                               (let ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '@match)
                                                             (cons _L23557_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g2354323554_))))
                                  (_g2354123572_
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'let)
                                          (cons (cons (cons _L23403_
                                                            (cons _L23501_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _L23529_ '())))
                                    (gx#stx-source _stx22674_))))))
                            _g2351523526_))))
                   (_g2351323576_
                    (_generate-clauses22682_
                     _body23385_
                     (cons _L23403_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2348723498_))))
                                            (_g2348523580_
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
                                    (foldr (lambda (_g2358323586_
                                                    _g2358423589_)
                                             (cons _g2358323586_
                                                   _g2358423589_))
                                           '()
                                           _L23469_)))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx22674_))))))
                                      _target2342623465_))))))
                     (_loop2342123445_ _target2341823439_ '()))
                   (_g2341523432_ _g2341623436_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2341523432_
                                                  _g2341623436_)))))
                                     (_g2341423592_ _tgt-lst22676_))))
                               _g2338923400_))))
                      (_g2338723596_ (gx#genident 'E)))))
                 (_generate-clauses22682_
                  (lambda (_rest23037_ _E23039_)
                    (let* ((___stx4098340984_ _rest23037_)
                           (_g2304323059_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx4098340984_))))
                      (let ((___kont4098640987_
                             (lambda (_L23293_)
                               (let* ((_g2330423322_
                                       (lambda (_g2330523318_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2330523318_)))
                                      (_g2330323377_
                                       (lambda (_g2330523326_)
                                         (if (gx#stx-pair? _g2330523326_)
                                             (let ((_e2330823329_
                                                    (gx#syntax-e
                                                     _g2330523326_)))
                                               (let ((_hd2330923333_
                                                      (##car _e2330823329_))
                                                     (_tl2331023336_
                                                      (##cdr _e2330823329_)))
                                                 (if (gx#stx-pair?
                                                      _tl2331023336_)
                                                     (let ((_e2331123339_
                                                            (gx#syntax-e
                                                             _tl2331023336_)))
                                                       (let ((_hd2331223343_
                                                              (##car _e2331123339_))
                                                             (_tl2331323346_
                                                              (##cdr _e2331123339_)))
                                                         (if (gx#stx-pair?
                                                              _tl2331323346_)
                                                             (let ((_e2331423349_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl2331323346_)))
                       (let ((_hd2331523353_ (##car _e2331423349_))
                             (_tl2331623356_ (##cdr _e2331423349_)))
                         (if (gx#stx-null? _tl2331623356_)
                             ((lambda (_L23359_ _L23361_)
                                (cons 'begin-annotation
                                      (cons '@match-body
                                            (cons (if (gx#stx-e _L23361_)
                                                      (_generate122683_
                                                       _L23361_
                                                       _L23359_
                                                       _E23039_)
                                                      _L23359_)
                                                  '()))))
                              _hd2331523353_
                              _hd2331223343_)
                             (_g2330423322_ _g2330523326_))))
                     (_g2330423322_ _g2330523326_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2330423322_
                                                      _g2330523326_))))
                                             (_g2330423322_ _g2330523326_)))))
                                 (_g2330323377_ _L23293_))))
                            (___kont4098840989_
                             (lambda (_L23087_ _L23089_)
                               (let* ((_g2310223121_
                                       (lambda (_g2310323117_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2310323117_)))
                                      (_g2310123272_
                                       (lambda (_g2310323125_)
                                         (if (gx#stx-pair? _g2310323125_)
                                             (let ((_e2310723128_
                                                    (gx#syntax-e
                                                     _g2310323125_)))
                                               (let ((_hd2310823132_
                                                      (##car _e2310723128_))
                                                     (_tl2310923135_
                                                      (##cdr _e2310723128_)))
                                                 (if (gx#stx-pair?
                                                      _tl2310923135_)
                                                     (let ((_e2311023138_
                                                            (gx#syntax-e
                                                             _tl2310923135_)))
                                                       (let ((_hd2311123142_
                                                              (##car _e2311023138_))
                                                             (_tl2311223145_
                                                              (##cdr _e2311023138_)))
                                                         (if (gx#stx-pair?
                                                              _tl2311223145_)
                                                             (let ((_e2311323148_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl2311223145_)))
                       (let ((_hd2311423152_ (##car _e2311323148_))
                             (_tl2311523155_ (##cdr _e2311323148_)))
                         (if (gx#stx-null? _tl2311523155_)
                             ((lambda (_L23158_ _L23160_ _L23161_)
                                (if (gx#stx-e _L23160_)
                                    (let* ((_g2317823193_
                                            (lambda (_g2317923189_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2317923189_)))
                                           (_g2317723238_
                                            (lambda (_g2317923197_)
                                              (if (gx#stx-pair? _g2317923197_)
                                                  (let ((_e2318223200_
                                                         (gx#syntax-e
                                                          _g2317923197_)))
                                                    (let ((_hd2318323204_
                                                           (##car _e2318223200_))
                                                          (_tl2318423207_
                                                           (##cdr _e2318223200_)))
                                                      (if (gx#stx-pair?
                                                           _tl2318423207_)
                                                          (let ((_e2318523210_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2318423207_)))
                    (let ((_hd2318623214_ (##car _e2318523210_))
                          (_tl2318723217_ (##cdr _e2318523210_)))
                      (if (gx#stx-null? _tl2318723217_)
                          ((lambda (_L23220_ _L23222_)
                             (let ()
                               (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _L23161_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'lambda)
                           (cons '() (cons _L23222_ '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons _L23220_ '())))))
                           _hd2318623214_
                           _hd2318323204_)
                          (_g2317823193_ _g2317923197_))))
                  (_g2317823193_ _g2317923197_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2317823193_
                                                   _g2317923197_)))))
                                      (_g2317723238_
                                       (list (_generate122683_
                                              _L23160_
                                              _L23158_
                                              _E23039_)
                                             (_generate-clauses22682_
                                              _L23087_
                                              (cons _L23161_ '())))))
                                    (let* ((_g2324223250_
                                            (lambda (_g2324323246_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g2324323246_)))
                                           (_g2324123268_
                                            (lambda (_g2324323254_)
                                              ((lambda (_L23257_)
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (cons (cons _L23161_
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
                         (cons '() (cons _L23158_ '())))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))
                             '())
                       (cons _L23257_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g2324323254_))))
                                      (_g2324123268_
                                       (_generate-clauses22682_
                                        _L23087_
                                        (cons _L23161_ '()))))))
                              _hd2311423152_
                              _hd2311123142_
                              _hd2310823132_)
                             (_g2310223121_ _g2310323125_))))
                     (_g2310223121_ _g2310323125_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2310223121_
                                                      _g2310323125_))))
                                             (_g2310223121_ _g2310323125_)))))
                                 (_g2310123272_ _L23089_))))
                            (___kont4099040991_
                             (lambda ()
                               (cons 'begin-annotation
                                     (cons '@match-body
                                           (cons _E23039_ '()))))))
                        (if (gx#stx-pair? ___stx4098340984_)
                            (let ((_e2304623283_
                                   (gx#syntax-e ___stx4098340984_)))
                              (let ((_tl2304823290_ (##cdr _e2304623283_))
                                    (_hd2304723287_ (##car _e2304623283_)))
                                (if (gx#stx-null? _tl2304823290_)
                                    (___kont4098640987_ _hd2304723287_)
                                    (___kont4098840989_
                                     _tl2304823290_
                                     _hd2304723287_))))
                            (___kont4099040991_))))))
                 (_generate122683_
                  (lambda (_clause22685_ _body22687_ _E22688_)
                    (let* ((_g2269022714_
                            (lambda (_g2269122710_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g2269122710_)))
                           (_g2268923033_
                            (lambda (_g2269122718_)
                              (if (gx#stx-pair? _g2269122718_)
                                  (let ((_e2269422721_
                                         (gx#syntax-e _g2269122718_)))
                                    (let ((_hd2269522725_
                                           (##car _e2269422721_))
                                          (_tl2269622728_
                                           (##cdr _e2269422721_)))
                                      (if (gx#stx-pair? _tl2269622728_)
                                          (let ((_e2269722731_
                                                 (gx#syntax-e _tl2269622728_)))
                                            (let ((_hd2269822735_
                                                   (##car _e2269722731_))
                                                  (_tl2269922738_
                                                   (##cdr _e2269722731_)))
                                              (if (gx#stx-pair/null?
                                                   _hd2269822735_)
                                                  (let ((_g42164_
                                                         (gx#syntax-split-splice
                                                          _hd2269822735_
                                                          '0)))
                                                    (begin
                                                      (let ((_g42165_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g42164_)
                         (##vector-length _g42164_)
                         1)))
                (if (not (##fx= _g42165_ 2))
                    (error "Context expects 2 values" _g42165_)))
              (let ((_target2270022741_ (##vector-ref _g42164_ 0))
                    (_tl2270222744_ (##vector-ref _g42164_ 1)))
                (if (gx#stx-null? _tl2270222744_)
                    (letrec ((_loop2270322747_
                              (lambda (_hd2270122751_ _var2270722754_)
                                (if (gx#stx-pair? _hd2270122751_)
                                    (let ((_e2270422757_
                                           (gx#syntax-e _hd2270122751_)))
                                      (let ((_lp-hd2270522761_
                                             (##car _e2270422757_))
                                            (_lp-tl2270622764_
                                             (##cdr _e2270422757_)))
                                        (_loop2270322747_
                                         _lp-tl2270622764_
                                         (cons _lp-hd2270522761_
                                               _var2270722754_))))
                                    (let ((_var2270822767_
                                           (reverse _var2270722754_)))
                                      (if (gx#stx-null? _tl2269922738_)
                                          ((lambda (_L22771_ _L22773_)
                                             (let ()
                                               (gx#check-duplicate-identifiers
                                                (foldr (lambda (_g2279422797_
                                                                _g2279522800_)
                                                         (cons _g2279422797_
                                                               _g2279522800_))
                                                       '()
                                                       _L22771_)
                                                _stx22674_)
                                               (let* ((_g2280322811_
                                                       (lambda (_g2280422807_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g2280422807_)))
                                                      (_g2280222905_
                                                       (lambda (_g2280422815_)
                                                         ((lambda (_L22818_)
                                                            (let ()
                                                              (let* ((_g2283122839_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2283222835_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2283222835_)))
                             (_g2283022901_
                              (lambda (_g2283222843_)
                                ((lambda (_L22846_)
                                   (let ()
                                     (let* ((_g2285922867_
                                             (lambda (_g2286022863_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2286022863_)))
                                            (_g2285822889_
                                             (lambda (_g2286022871_)
                                               ((lambda (_L22874_)
                                                  (let ()
                                                    (let ()
                                                      (gx#stx-wrap-source
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons _L22773_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _L22874_ '()))
                           (cons _L22818_ '())))
               (gx#stx-source _stx22674_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2286022871_))))
                                       (_g2285822889_
                                        (gx#stx-wrap-source
                                         (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (foldr (lambda (_g2289222895_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g2289322898_)
                      (cons _g2289222895_ _g2289322898_))
                    '()
                    _L22771_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _L22846_ '())))
                                         (gx#stx-source _stx22674_))))))
                                 _g2283222843_))))
                        (_g2283022901_ _body22687_))))
                  _g2280422815_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2280222905_
                                                  (let _recur22909_ ((_rest22912_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _clause22685_)
                             (_rest-targets22914_ _tgt-lst22676_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((___stx4100941010_
                                                            _rest22912_)
                                                           (_g2291722929_
                                                            (lambda ()
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               ___stx4100941010_))))
                                                      (let ((___kont4101241013_
                                                             (lambda (_L22965_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L22967_)
                       (let* ((_g2298222994_
                               (lambda (_g2298322990_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g2298322990_)))
                              (_g2298123025_
                               (lambda (_g2298322998_)
                                 (if (gx#stx-pair? _g2298322998_)
                                     (let ((_e2298623001_
                                            (gx#syntax-e _g2298322998_)))
                                       (let ((_hd2298723005_
                                              (##car _e2298623001_))
                                             (_tl2298823008_
                                              (##cdr _e2298623001_)))
                                         ((lambda (_L23011_ _L23013_)
                                            (|gerbil/core$<match>[1]#generate-match1|
                                             _stx22674_
                                             _L23013_
                                             _L22967_
                                             (_recur22909_ _L22965_ _L23011_)
                                             _E22688_))
                                          _tl2298823008_
                                          _hd2298723005_)))
                                     (_g2298222994_ _g2298322998_)))))
                         (_g2298123025_ _rest-targets22914_))))
                    (___kont4101441015_
                     (lambda ()
                       (cons _L22773_
                             (foldr (lambda (_g2293922942_ _g2294022945_)
                                      (cons _g2293922942_ _g2294022945_))
                                    '()
                                    _L22771_)))))
                (if (gx#stx-pair? ___stx4100941010_)
                    (let ((_e2292122955_ (gx#syntax-e ___stx4100941010_)))
                      (let ((_tl2292322962_ (##cdr _e2292122955_))
                            (_hd2292222959_ (##car _e2292122955_)))
                        (___kont4101241013_ _tl2292322962_ _hd2292222959_)))
                    (___kont4101441015_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _var2270822767_
                                           _hd2269522725_)
                                          (_g2269022714_ _g2269122718_)))))))
                      (_loop2270322747_ _target2270022741_ '()))
                    (_g2269022714_ _g2269122718_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2269022714_
                                                   _g2269122718_))))
                                          (_g2269022714_ _g2269122718_))))
                                  (_g2269022714_ _g2269122718_)))))
                      (_g2268923033_
                       (list (gx#genident 'K)
                             (apply append
                                    (map |gerbil/core$<match>[1]#match-pattern-vars|
                                         _clause22685_))))))))
          (_generate-body22681_
           (_parse-body22679_ (gx#stx-length _tgt-lst22676_))))))
    (define |gerbil/core$<match>[1]#generate-match|
      (lambda (_stx22576_ _tgt22578_ _clauses22579_)
        (letrec ((_reclause22581_
                  (lambda (_clause22584_)
                    (let* ((___stx4102541026_ _clause22584_)
                           (_g2258922604_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx4102541026_))))
                      (let ((___kont4102841029_ (lambda () _clause22584_))
                            (___kont4103041031_
                             (lambda (_L22632_ _L22634_)
                               (gx#stx-wrap-source
                                (cons (cons _L22634_ '()) _L22632_)
                                (gx#stx-source
                                 (gx#datum->syntax '#f 'clause)))))
                            (___kont4103241033_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal match clause"
                                _stx22576_
                                _clause22584_))))
                        (if (gx#stx-pair? ___stx4102541026_)
                            (let ((_e2259122656_
                                   (gx#syntax-e ___stx4102541026_)))
                              (let ((_tl2259322663_ (##cdr _e2259122656_))
                                    (_hd2259222660_ (##car _e2259122656_)))
                                (if (gx#identifier? _hd2259222660_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<match>[1]#_g42166_|
                                         _hd2259222660_)
                                        (___kont4102841029_)
                                        (___kont4103041031_
                                         _tl2259322663_
                                         _hd2259222660_))
                                    (___kont4103041031_
                                     _tl2259322663_
                                     _hd2259222660_))))
                            (___kont4103241033_)))))))
          (|gerbil/core$<match>[1]#generate-match*|
           _stx22576_
           (cons _tgt22578_ '())
           (gx#stx-map _reclause22581_ _clauses22579_)))))
    (define |gerbil/core$<match>[:0:]#match|
      (lambda (_stx30215_)
        (let* ((___stx4105341054_ _stx30215_)
               (_g3022030249_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx4105341054_))))
          (let ((___kont4105641057_
                 (lambda (_L30489_)
                   (let* ((_g3050230510_
                           (lambda (_g3050330506_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g3050330506_)))
                          (_g3050130563_
                           (lambda (_g3050330514_)
                             ((lambda (_L30517_)
                                (let ()
                                  (let* ((_g3052930537_
                                          (lambda (_g3053030533_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g3053030533_)))
                                         (_g3052830559_
                                          (lambda (_g3053030541_)
                                            ((lambda (_L30544_)
                                               (let ()
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'lambda)
                                                         (cons (cons _L30517_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons _L30544_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _g3053030541_))))
                                    (_g3052830559_
                                     (gx#stx-wrap-source
                                      (cons (gx#datum->syntax '#f 'match)
                                            (cons _L30517_ _L30489_))
                                      (gx#stx-source _stx30215_))))))
                              _g3050330514_))))
                     (_g3050130563_ (gx#genident 'e)))))
                (___kont4105841059_
                 (lambda (_L30384_)
                   (let* ((_g3039730405_
                           (lambda (_g3039830401_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g3039830401_)))
                          (_g3039630458_
                           (lambda (_g3039830409_)
                             ((lambda (_L30412_)
                                (let ()
                                  (let* ((_g3042430432_
                                          (lambda (_g3042530428_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g3042530428_)))
                                         (_g3042330454_
                                          (lambda (_g3042530436_)
                                            ((lambda (_L30439_)
                                               (let ()
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'lambda)
                                                         (cons _L30412_
                                                               (cons _L30439_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _g3042530436_))))
                                    (_g3042330454_
                                     (gx#stx-wrap-source
                                      (cons (gx#datum->syntax '#f 'match)
                                            (cons _L30412_ _L30384_))
                                      (gx#stx-source _stx30215_))))))
                              _g3039830409_))))
                     (_g3039630458_ (gx#genident 'args)))))
                (___kont4106041061_
                 (lambda (_L30276_ _L30278_)
                   (let* ((_g3029230300_
                           (lambda (_g3029330296_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g3029330296_)))
                          (_g3029130353_
                           (lambda (_g3029330304_)
                             ((lambda (_L30307_)
                                (let ()
                                  (let* ((_g3031930327_
                                          (lambda (_g3032030323_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g3032030323_)))
                                         (_g3031830349_
                                          (lambda (_g3032030331_)
                                            ((lambda (_L30334_)
                                               (let ()
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (cons (cons _L30307_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _L30278_ '()))
                             '())
                       (cons _L30334_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _g3032030331_))))
                                    (_g3031830349_
                                     (|gerbil/core$<match>[1]#generate-match|
                                      _stx30215_
                                      _L30307_
                                      _L30276_)))))
                              _g3029330304_))))
                     (_g3029130353_ (gx#genident _L30278_))))))
            (let* ((___match4110641107_
                    (lambda (_e3023830256_
                             _hd3023930260_
                             _tl3024030263_
                             _e3024130266_
                             _hd3024230270_
                             _tl3024330273_)
                      (let ((_L30276_ _tl3024330273_)
                            (_L30278_ _hd3024230270_))
                        (if (gx#stx-list? _L30276_)
                            (___kont4106041061_ _L30276_ _L30278_)
                            (_g3022030249_)))))
                   (___match4109441095_
                    (lambda (_e3023030364_
                             _hd3023130368_
                             _tl3023230371_
                             _e3023330374_
                             _hd3023430378_
                             _tl3023530381_)
                      (let ((_L30384_ _tl3023530381_))
                        (if (gx#stx-list? _L30384_)
                            (___kont4105841059_ _L30384_)
                            (___match4110641107_
                             _e3023030364_
                             _hd3023130368_
                             _tl3023230371_
                             _e3023330374_
                             _hd3023430378_
                             _tl3023530381_)))))
                   (___match4107841079_
                    (lambda (_e3022330469_
                             _hd3022430473_
                             _tl3022530476_
                             _e3022630479_
                             _hd3022730483_
                             _tl3022830486_)
                      (let ((_L30489_ _tl3022830486_))
                        (if (gx#stx-list? _L30489_)
                            (___kont4105641057_ _L30489_)
                            (___match4110641107_
                             _e3022330469_
                             _hd3022430473_
                             _tl3022530476_
                             _e3022630479_
                             _hd3022730483_
                             _tl3022830486_))))))
              (if (gx#stx-pair? ___stx4105341054_)
                  (let ((_e3022330469_ (gx#syntax-e ___stx4105341054_)))
                    (let ((_tl3022530476_ (##cdr _e3022330469_))
                          (_hd3022430473_ (##car _e3022330469_)))
                      (if (gx#stx-pair? _tl3022530476_)
                          (let ((_e3022630479_ (gx#syntax-e _tl3022530476_)))
                            (let ((_tl3022830486_ (##cdr _e3022630479_))
                                  (_hd3022730483_ (##car _e3022630479_)))
                              (if (gx#identifier? _hd3022730483_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g42167_|
                                       _hd3022730483_)
                                      (___match4107841079_
                                       _e3022330469_
                                       _hd3022430473_
                                       _tl3022530476_
                                       _e3022630479_
                                       _hd3022730483_
                                       _tl3022830486_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g42168_|
                                           _hd3022730483_)
                                          (___match4109441095_
                                           _e3022330469_
                                           _hd3022430473_
                                           _tl3022530476_
                                           _e3022630479_
                                           _hd3022730483_
                                           _tl3022830486_)
                                          (___match4110641107_
                                           _e3022330469_
                                           _hd3022430473_
                                           _tl3022530476_
                                           _e3022630479_
                                           _hd3022730483_
                                           _tl3022830486_)))
                                  (___match4110641107_
                                   _e3022330469_
                                   _hd3022430473_
                                   _tl3022530476_
                                   _e3022630479_
                                   _hd3022730483_
                                   _tl3022830486_))))
                          (_g3022030249_))))
                  (_g3022030249_)))))))
    (define |gerbil/core$<match>[:0:]#match*|
      (lambda (_stx30571_)
        (let* ((_g3057430598_
                (lambda (_g3057530594_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g3057530594_)))
               (_g3057330810_
                (lambda (_g3057530602_)
                  (if (gx#stx-pair? _g3057530602_)
                      (let ((_e3057830605_ (gx#syntax-e _g3057530602_)))
                        (let ((_hd3057930609_ (##car _e3057830605_))
                              (_tl3058030612_ (##cdr _e3057830605_)))
                          (if (gx#stx-pair? _tl3058030612_)
                              (let ((_e3058130615_
                                     (gx#syntax-e _tl3058030612_)))
                                (let ((_hd3058230619_ (##car _e3058130615_))
                                      (_tl3058330622_ (##cdr _e3058130615_)))
                                  (if (gx#stx-pair/null? _hd3058230619_)
                                      (let ((_g42169_
                                             (gx#syntax-split-splice
                                              _hd3058230619_
                                              '0)))
                                        (begin
                                          (let ((_g42170_
                                                 (if (##values? _g42169_)
                                                     (##vector-length _g42169_)
                                                     1)))
                                            (if (not (##fx= _g42170_ 2))
                                                (error "Context expects 2 values"
                                                       _g42170_)))
                                          (let ((_target3058430625_
                                                 (##vector-ref _g42169_ 0))
                                                (_tl3058630628_
                                                 (##vector-ref _g42169_ 1)))
                                            (if (gx#stx-null? _tl3058630628_)
                                                (letrec ((_loop3058730631_
                                                          (lambda (_hd3058530635_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e3059130638_)
                    (if (gx#stx-pair? _hd3058530635_)
                        (let ((_e3058830641_ (gx#syntax-e _hd3058530635_)))
                          (let ((_lp-hd3058930645_ (##car _e3058830641_))
                                (_lp-tl3059030648_ (##cdr _e3058830641_)))
                            (_loop3058730631_
                             _lp-tl3059030648_
                             (cons _lp-hd3058930645_ _e3059130638_))))
                        (let ((_e3059230651_ (reverse _e3059130638_)))
                          ((lambda (_L30655_ _L30657_)
                             (if (gx#stx-list? _L30655_)
                                 (let* ((_g3067530692_
                                         (lambda (_g3067630688_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g3067630688_)))
                                        (_g3067430798_
                                         (lambda (_g3067630696_)
                                           (if (gx#stx-pair/null?
                                                _g3067630696_)
                                               (let ((_g42171_
                                                      (gx#syntax-split-splice
                                                       _g3067630696_
                                                       '0)))
                                                 (begin
                                                   (let ((_g42172_
                                                          (if (##values?
                                                               _g42171_)
                                                              (##vector-length
                                                               _g42171_)
                                                              1)))
                                                     (if (not (##fx= _g42172_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                 (error "Context expects 2 values" _g42172_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target3067830699_
                                                          (##vector-ref
                                                           _g42171_
                                                           0))
                                                         (_tl3068030702_
                                                          (##vector-ref
                                                           _g42171_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl3068030702_)
                                                         (letrec ((_loop3068130705_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd3067930709_ _$e3068530712_)
                             (if (gx#stx-pair? _hd3067930709_)
                                 (let ((_e3068230715_
                                        (gx#syntax-e _hd3067930709_)))
                                   (let ((_lp-hd3068330719_
                                          (##car _e3068230715_))
                                         (_lp-tl3068430722_
                                          (##cdr _e3068230715_)))
                                     (_loop3068130705_
                                      _lp-tl3068430722_
                                      (cons _lp-hd3068330719_
                                            _$e3068530712_))))
                                 (let ((_$e3068630725_
                                        (reverse _$e3068530712_)))
                                   ((lambda (_L30729_)
                                      (let ()
                                        (let* ((_g3074530753_
                                                (lambda (_g3074630749_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g3074630749_)))
                                               (_g3074430786_
                                                (lambda (_g3074630757_)
                                                  ((lambda (_L30760_)
                                                     (let ()
                                                       (let ()
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#syntax-check-splice-targets
                                _L30657_
                                _L30729_)
                               (foldr (lambda (_g3077430778_
                                               _g3077530781_
                                               _g3077630783_)
                                        (cons (cons _g3077530781_
                                                    (cons _g3077430778_ '()))
                                              _g3077630783_))
                                      '()
                                      _L30657_
                                      _L30729_))
                             (cons _L30760_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g3074630757_))))
                                          (_g3074430786_
                                           (|gerbil/core$<match>[1]#generate-match*|
                                            _stx30571_
                                            (foldr (lambda (_g3078930792_
                                                            _g3079030795_)
                                                     (cons _g3078930792_
                                                           _g3079030795_))
                                                   '()
                                                   _L30729_)
                                            _L30655_)))))
                                    _$e3068630725_))))))
                   (_loop3068130705_ _target3067830699_ '()))
                 (_g3067530692_ _g3067630696_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g3067530692_
                                                _g3067630696_)))))
                                   (_g3067430798_
                                    (gx#gentemps
                                     (foldr (lambda (_g3080130804_
                                                     _g3080230807_)
                                              (cons _g3080130804_
                                                    _g3080230807_))
                                            '()
                                            _L30657_))))
                                 (_g3057430598_ _g3057530602_)))
                           _tl3058330622_
                           _e3059230651_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop3058730631_
                                                   _target3058430625_
                                                   '()))
                                                (_g3057430598_
                                                 _g3057530602_)))))
                                      (_g3057430598_ _g3057530602_))))
                              (_g3057430598_ _g3057530602_))))
                      (_g3057430598_ _g3057530602_)))))
          (_g3057330810_ _stx30571_))))
    (define |gerbil/core$<match>[:0:]#with|
      (lambda (_$stx30816_)
        (let* ((___stx4110941110_ _$stx30816_)
               (_g3082230905_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx4110941110_))))
          (let ((___kont4111241113_
                 (lambda (_L31235_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_g3125131254_ _g3125231257_)
                                        (cons _g3125131254_ _g3125231257_))
                                      '()
                                      _L31235_)))))
                (___kont4111641117_
                 (lambda (_L31143_ _L31145_ _L31146_ _L31147_)
                   (cons _L31147_
                         (cons (cons (cons _L31146_ (cons _L31145_ '())) '())
                               (foldr (lambda (_g3116931172_ _g3117031175_)
                                        (cons _g3116931172_ _g3117031175_))
                                      '()
                                      _L31143_)))))
                (___kont4112041121_
                 (lambda (_L31016_ _L31018_ _L31019_)
                   (cons (gx#datum->syntax '#f 'match*)
                         (cons (foldr (lambda (_g3104131048_ _g3104231051_)
                                        (cons _g3104131048_ _g3104231051_))
                                      '()
                                      _L31018_)
                               (cons (cons (foldr (lambda (_g3104331054_
                                                           _g3104431057_)
                                                    (cons _g3104331054_
                                                          _g3104431057_))
                                                  '()
                                                  _L31019_)
                                           (foldr (lambda (_g3104531060_
                                                           _g3104631063_)
                                                    (cons _g3104531060_
                                                          _g3104631063_))
                                                  '()
                                                  _L31016_))
                                     '()))))))
            (let* ((___match4120241203_
                    (lambda (_e3086830912_
                             _hd3086930916_
                             _tl3087030919_
                             _e3087130922_
                             _hd3087230926_
                             _tl3087330929_
                             ___splice4112241123_
                             _target3087430932_
                             _tl3087630935_)
                      (letrec ((_loop3087730938_
                                (lambda (_hd3087530942_
                                         _expr3088130945_
                                         _hd3088230947_)
                                  (if (gx#stx-pair? _hd3087530942_)
                                      (let ((_e3087830950_
                                             (gx#syntax-e _hd3087530942_)))
                                        (let ((_lp-tl3088030957_
                                               (##cdr _e3087830950_))
                                              (_lp-hd3087930954_
                                               (##car _e3087830950_)))
                                          (if (gx#stx-pair? _lp-hd3087930954_)
                                              (let ((_e3088530960_
                                                     (gx#syntax-e
                                                      _lp-hd3087930954_)))
                                                (let ((_tl3088730967_
                                                       (##cdr _e3088530960_))
                                                      (_hd3088630964_
                                                       (##car _e3088530960_)))
                                                  (if (gx#stx-pair?
                                                       _tl3088730967_)
                                                      (let ((_e3088830970_
                                                             (gx#syntax-e
                                                              _tl3088730967_)))
                                                        (let ((_tl3089030977_
                                                               (##cdr _e3088830970_))
                                                              (_hd3088930974_
                                                               (##car _e3088830970_)))
                                                          (if (gx#stx-null?
                                                               _tl3089030977_)
                                                              (_loop3087730938_
                                                               _lp-tl3088030957_
                                                               (cons _hd3088930974_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr3088130945_)
                       (cons _hd3088630964_ _hd3088230947_))
                      (_g3082230905_))))
              (_g3082230905_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g3082230905_))))
                                      (let ((_hd3088430983_
                                             (reverse _hd3088230947_))
                                            (_expr3088330980_
                                             (reverse _expr3088130945_)))
                                        (if (gx#stx-pair/null? _tl3087330929_)
                                            (let ((___splice4112441125_
                                                   (gx#syntax-split-splice
                                                    _tl3087330929_
                                                    '0)))
                                              (let ((_tl3089330989_
                                                     (##vector-ref
                                                      ___splice4112441125_
                                                      '1))
                                                    (_target3089130986_
                                                     (##vector-ref
                                                      ___splice4112441125_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl3089330989_)
                                                    (letrec ((_loop3089430992_
                                                              (lambda (_hd3089230996_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body3089830999_)
                        (if (gx#stx-pair? _hd3089230996_)
                            (let ((_e3089531002_ (gx#syntax-e _hd3089230996_)))
                              (let ((_lp-tl3089731009_ (##cdr _e3089531002_))
                                    (_lp-hd3089631006_ (##car _e3089531002_)))
                                (_loop3089430992_
                                 _lp-tl3089731009_
                                 (cons _lp-hd3089631006_ _body3089830999_))))
                            (let ((_body3089931012_
                                   (reverse _body3089830999_)))
                              (___kont4112041121_
                               _body3089931012_
                               _expr3088330980_
                               _hd3088430983_))))))
              (_loop3089430992_ _target3089130986_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3082230905_))))
                                            (_g3082230905_)))))))
                        (_loop3087730938_ _target3087430932_ '() '()))))
                   (___match4119441195_
                    (lambda (_e3086830912_
                             _hd3086930916_
                             _tl3087030919_
                             _e3087130922_
                             _hd3087230926_
                             _tl3087330929_)
                      (if (gx#stx-pair/null? _hd3087230926_)
                          (let ((___splice4112241123_
                                 (gx#syntax-split-splice _hd3087230926_ '0)))
                            (let ((_tl3087630935_
                                   (##vector-ref ___splice4112241123_ '1))
                                  (_target3087430932_
                                   (##vector-ref ___splice4112241123_ '0)))
                              (if (gx#stx-null? _tl3087630935_)
                                  (___match4120241203_
                                   _e3086830912_
                                   _hd3086930916_
                                   _tl3087030919_
                                   _e3087130922_
                                   _hd3087230926_
                                   _tl3087330929_
                                   ___splice4112241123_
                                   _target3087430932_
                                   _tl3087630935_)
                                  (_g3082230905_))))
                          (_g3082230905_))))
                   (___match4118241183_
                    (lambda (_e3084431073_
                             _hd3084531077_
                             _tl3084631080_
                             _e3084731083_
                             _hd3084831087_
                             _tl3084931090_
                             _e3085031093_
                             _hd3085131097_
                             _tl3085231100_
                             _e3085331103_
                             _hd3085431107_
                             _tl3085531110_
                             ___splice4111841119_
                             _target3085631113_
                             _tl3085831116_)
                      (letrec ((_loop3085931119_
                                (lambda (_hd3085731123_ _body3086331126_)
                                  (if (gx#stx-pair? _hd3085731123_)
                                      (let ((_e3086031129_
                                             (gx#syntax-e _hd3085731123_)))
                                        (let ((_lp-tl3086231136_
                                               (##cdr _e3086031129_))
                                              (_lp-hd3086131133_
                                               (##car _e3086031129_)))
                                          (_loop3085931119_
                                           _lp-tl3086231136_
                                           (cons _lp-hd3086131133_
                                                 _body3086331126_))))
                                      (let ((_body3086431139_
                                             (reverse _body3086331126_)))
                                        (let ((_L31143_ _body3086431139_)
                                              (_L31145_ _hd3085431107_)
                                              (_L31146_ _hd3085131097_)
                                              (_L31147_ _hd3084531077_))
                                          (if (|gerbil/core$<match>[1]#match-pattern?|
                                               _L31146_)
                                              (___kont4111641117_
                                               _L31143_
                                               _L31145_
                                               _L31146_
                                               _L31147_)
                                              (___match4119441195_
                                               _e3084431073_
                                               _hd3084531077_
                                               _tl3084631080_
                                               _e3084731083_
                                               _hd3084831087_
                                               _tl3084931090_))))))))
                        (_loop3085931119_ _target3085631113_ '()))))
                   (___match4114841149_
                    (lambda (_e3082531185_
                             _hd3082631189_
                             _tl3082731192_
                             _e3082831195_
                             _hd3082931199_
                             _tl3083031202_
                             ___splice4111441115_
                             _target3083131205_
                             _tl3083331208_)
                      (letrec ((_loop3083431211_
                                (lambda (_hd3083231215_ _body3083831218_)
                                  (if (gx#stx-pair? _hd3083231215_)
                                      (let ((_e3083531221_
                                             (gx#syntax-e _hd3083231215_)))
                                        (let ((_lp-tl3083731228_
                                               (##cdr _e3083531221_))
                                              (_lp-hd3083631225_
                                               (##car _e3083531221_)))
                                          (_loop3083431211_
                                           _lp-tl3083731228_
                                           (cons _lp-hd3083631225_
                                                 _body3083831218_))))
                                      (let ((_body3083931231_
                                             (reverse _body3083831218_)))
                                        (___kont4111241113_
                                         _body3083931231_))))))
                        (_loop3083431211_ _target3083131205_ '())))))
              (if (gx#stx-pair? ___stx4110941110_)
                  (let ((_e3082531185_ (gx#syntax-e ___stx4110941110_)))
                    (let ((_tl3082731192_ (##cdr _e3082531185_))
                          (_hd3082631189_ (##car _e3082531185_)))
                      (if (gx#stx-pair? _tl3082731192_)
                          (let ((_e3082831195_ (gx#syntax-e _tl3082731192_)))
                            (let ((_tl3083031202_ (##cdr _e3082831195_))
                                  (_hd3082931199_ (##car _e3082831195_)))
                              (if (gx#stx-null? _hd3082931199_)
                                  (if (gx#stx-pair/null? _tl3083031202_)
                                      (let ((___splice4111441115_
                                             (gx#syntax-split-splice
                                              _tl3083031202_
                                              '0)))
                                        (let ((_tl3083331208_
                                               (##vector-ref
                                                ___splice4111441115_
                                                '1))
                                              (_target3083131205_
                                               (##vector-ref
                                                ___splice4111441115_
                                                '0)))
                                          (if (gx#stx-null? _tl3083331208_)
                                              (___match4114841149_
                                               _e3082531185_
                                               _hd3082631189_
                                               _tl3082731192_
                                               _e3082831195_
                                               _hd3082931199_
                                               _tl3083031202_
                                               ___splice4111441115_
                                               _target3083131205_
                                               _tl3083331208_)
                                              (if (gx#stx-pair/null?
                                                   _hd3082931199_)
                                                  (let ((___splice4112241123_
                                                         (gx#syntax-split-splice
                                                          _hd3082931199_
                                                          '0)))
                                                    (let ((_tl3087630935_
                                                           (##vector-ref
                                                            ___splice4112241123_
                                                            '1))
                                                          (_target3087430932_
                                                           (##vector-ref
                                                            ___splice4112241123_
                                                            '0)))
                                                      (if (gx#stx-null?
                                                           _tl3087630935_)
                                                          (___match4120241203_
                                                           _e3082531185_
                                                           _hd3082631189_
                                                           _tl3082731192_
                                                           _e3082831195_
                                                           _hd3082931199_
                                                           _tl3083031202_
                                                           ___splice4112241123_
                                                           _target3087430932_
                                                           _tl3087630935_)
                                                          (_g3082230905_))))
                                                  (_g3082230905_)))))
                                      (if (gx#stx-pair/null? _hd3082931199_)
                                          (let ((___splice4112241123_
                                                 (gx#syntax-split-splice
                                                  _hd3082931199_
                                                  '0)))
                                            (let ((_tl3087630935_
                                                   (##vector-ref
                                                    ___splice4112241123_
                                                    '1))
                                                  (_target3087430932_
                                                   (##vector-ref
                                                    ___splice4112241123_
                                                    '0)))
                                              (if (gx#stx-null? _tl3087630935_)
                                                  (___match4120241203_
                                                   _e3082531185_
                                                   _hd3082631189_
                                                   _tl3082731192_
                                                   _e3082831195_
                                                   _hd3082931199_
                                                   _tl3083031202_
                                                   ___splice4112241123_
                                                   _target3087430932_
                                                   _tl3087630935_)
                                                  (_g3082230905_))))
                                          (_g3082230905_)))
                                  (if (gx#stx-pair? _hd3082931199_)
                                      (let ((_e3085031093_
                                             (gx#syntax-e _hd3082931199_)))
                                        (let ((_tl3085231100_
                                               (##cdr _e3085031093_))
                                              (_hd3085131097_
                                               (##car _e3085031093_)))
                                          (if (gx#stx-pair? _tl3085231100_)
                                              (let ((_e3085331103_
                                                     (gx#syntax-e
                                                      _tl3085231100_)))
                                                (let ((_tl3085531110_
                                                       (##cdr _e3085331103_))
                                                      (_hd3085431107_
                                                       (##car _e3085331103_)))
                                                  (if (gx#stx-null?
                                                       _tl3085531110_)
                                                      (if (gx#stx-pair/null?
                                                           _tl3083031202_)
                                                          (let ((___splice4111841119_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _tl3083031202_ '0)))
                    (let ((_tl3085831116_
                           (##vector-ref ___splice4111841119_ '1))
                          (_target3085631113_
                           (##vector-ref ___splice4111841119_ '0)))
                      (if (gx#stx-null? _tl3085831116_)
                          (___match4118241183_
                           _e3082531185_
                           _hd3082631189_
                           _tl3082731192_
                           _e3082831195_
                           _hd3082931199_
                           _tl3083031202_
                           _e3085031093_
                           _hd3085131097_
                           _tl3085231100_
                           _e3085331103_
                           _hd3085431107_
                           _tl3085531110_
                           ___splice4111841119_
                           _target3085631113_
                           _tl3085831116_)
                          (if (gx#stx-pair/null? _hd3082931199_)
                              (let ((___splice4112241123_
                                     (gx#syntax-split-splice
                                      _hd3082931199_
                                      '0)))
                                (let ((_tl3087630935_
                                       (##vector-ref ___splice4112241123_ '1))
                                      (_target3087430932_
                                       (##vector-ref ___splice4112241123_ '0)))
                                  (if (gx#stx-null? _tl3087630935_)
                                      (___match4120241203_
                                       _e3082531185_
                                       _hd3082631189_
                                       _tl3082731192_
                                       _e3082831195_
                                       _hd3082931199_
                                       _tl3083031202_
                                       ___splice4112241123_
                                       _target3087430932_
                                       _tl3087630935_)
                                      (_g3082230905_))))
                              (_g3082230905_)))))
                  (if (gx#stx-pair/null? _hd3082931199_)
                      (let ((___splice4112241123_
                             (gx#syntax-split-splice _hd3082931199_ '0)))
                        (let ((_tl3087630935_
                               (##vector-ref ___splice4112241123_ '1))
                              (_target3087430932_
                               (##vector-ref ___splice4112241123_ '0)))
                          (if (gx#stx-null? _tl3087630935_)
                              (___match4120241203_
                               _e3082531185_
                               _hd3082631189_
                               _tl3082731192_
                               _e3082831195_
                               _hd3082931199_
                               _tl3083031202_
                               ___splice4112241123_
                               _target3087430932_
                               _tl3087630935_)
                              (_g3082230905_))))
                      (_g3082230905_)))
              (if (gx#stx-pair/null? _hd3082931199_)
                  (let ((___splice4112241123_
                         (gx#syntax-split-splice _hd3082931199_ '0)))
                    (let ((_tl3087630935_
                           (##vector-ref ___splice4112241123_ '1))
                          (_target3087430932_
                           (##vector-ref ___splice4112241123_ '0)))
                      (if (gx#stx-null? _tl3087630935_)
                          (___match4120241203_
                           _e3082531185_
                           _hd3082631189_
                           _tl3082731192_
                           _e3082831195_
                           _hd3082931199_
                           _tl3083031202_
                           ___splice4112241123_
                           _target3087430932_
                           _tl3087630935_)
                          (_g3082230905_))))
                  (_g3082230905_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _hd3082931199_)
                                                  (let ((___splice4112241123_
                                                         (gx#syntax-split-splice
                                                          _hd3082931199_
                                                          '0)))
                                                    (let ((_tl3087630935_
                                                           (##vector-ref
                                                            ___splice4112241123_
                                                            '1))
                                                          (_target3087430932_
                                                           (##vector-ref
                                                            ___splice4112241123_
                                                            '0)))
                                                      (if (gx#stx-null?
                                                           _tl3087630935_)
                                                          (___match4120241203_
                                                           _e3082531185_
                                                           _hd3082631189_
                                                           _tl3082731192_
                                                           _e3082831195_
                                                           _hd3082931199_
                                                           _tl3083031202_
                                                           ___splice4112241123_
                                                           _target3087430932_
                                                           _tl3087630935_)
                                                          (_g3082230905_))))
                                                  (_g3082230905_)))))
                                      (if (gx#stx-pair/null? _hd3082931199_)
                                          (let ((___splice4112241123_
                                                 (gx#syntax-split-splice
                                                  _hd3082931199_
                                                  '0)))
                                            (let ((_tl3087630935_
                                                   (##vector-ref
                                                    ___splice4112241123_
                                                    '1))
                                                  (_target3087430932_
                                                   (##vector-ref
                                                    ___splice4112241123_
                                                    '0)))
                                              (if (gx#stx-null? _tl3087630935_)
                                                  (___match4120241203_
                                                   _e3082531185_
                                                   _hd3082631189_
                                                   _tl3082731192_
                                                   _e3082831195_
                                                   _hd3082931199_
                                                   _tl3083031202_
                                                   ___splice4112241123_
                                                   _target3087430932_
                                                   _tl3087630935_)
                                                  (_g3082230905_))))
                                          (_g3082230905_))))))
                          (_g3082230905_))))
                  (_g3082230905_)))))))
    (define |gerbil/core$<match>[:0:]#with*|
      (lambda (_$stx31268_)
        (let* ((___stx4120541206_ _$stx31268_)
               (_g3127331325_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx4120541206_))))
          (let ((___kont4120841209_
                 (lambda (_L31495_ _L31497_ _L31498_ _L31499_ _L31500_)
                   (cons (gx#datum->syntax '#f 'with)
                         (cons (cons (cons _L31499_ (cons _L31498_ '())) '())
                               (cons (cons _L31500_
                                           (cons _L31497_
                                                 (foldr (lambda (_g3152531528_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g3152631531_)
                  (cons _g3152531528_ _g3152631531_))
                '()
                _L31495_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont4121241213_
                 (lambda (_L31382_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_g3139931402_ _g3140031405_)
                                        (cons _g3139931402_ _g3140031405_))
                                      '()
                                      _L31382_))))))
            (let* ((___match4127841279_
                    (lambda (_e3130531332_
                             _hd3130631336_
                             _tl3130731339_
                             _e3130831342_
                             _hd3130931346_
                             _tl3131031349_
                             ___splice4121441215_
                             _target3131131352_
                             _tl3131331355_)
                      (letrec ((_loop3131431358_
                                (lambda (_hd3131231362_ _body3131831365_)
                                  (if (gx#stx-pair? _hd3131231362_)
                                      (let ((_e3131531368_
                                             (gx#syntax-e _hd3131231362_)))
                                        (let ((_lp-tl3131731375_
                                               (##cdr _e3131531368_))
                                              (_lp-hd3131631372_
                                               (##car _e3131531368_)))
                                          (_loop3131431358_
                                           _lp-tl3131731375_
                                           (cons _lp-hd3131631372_
                                                 _body3131831365_))))
                                      (let ((_body3131931378_
                                             (reverse _body3131831365_)))
                                        (___kont4121241213_
                                         _body3131931378_))))))
                        (_loop3131431358_ _target3131131352_ '()))))
                   (___match4125641257_
                    (lambda (_e3128031415_
                             _hd3128131419_
                             _tl3128231422_
                             _e3128331425_
                             _hd3128431429_
                             _tl3128531432_
                             _e3128631435_
                             _hd3128731439_
                             _tl3128831442_
                             _e3128931445_
                             _hd3129031449_
                             _tl3129131452_
                             _e3129231455_
                             _hd3129331459_
                             _tl3129431462_
                             ___splice4121041211_
                             _target3129531465_
                             _tl3129731468_)
                      (letrec ((_loop3129831471_
                                (lambda (_hd3129631475_ _body3130231478_)
                                  (if (gx#stx-pair? _hd3129631475_)
                                      (let ((_e3129931481_
                                             (gx#syntax-e _hd3129631475_)))
                                        (let ((_lp-tl3130131488_
                                               (##cdr _e3129931481_))
                                              (_lp-hd3130031485_
                                               (##car _e3129931481_)))
                                          (_loop3129831471_
                                           _lp-tl3130131488_
                                           (cons _lp-hd3130031485_
                                                 _body3130231478_))))
                                      (let ((_body3130331491_
                                             (reverse _body3130231478_)))
                                        (___kont4120841209_
                                         _body3130331491_
                                         _tl3128831442_
                                         _hd3129331459_
                                         _hd3129031449_
                                         _hd3128131419_))))))
                        (_loop3129831471_ _target3129531465_ '())))))
              (if (gx#stx-pair? ___stx4120541206_)
                  (let ((_e3128031415_ (gx#syntax-e ___stx4120541206_)))
                    (let ((_tl3128231422_ (##cdr _e3128031415_))
                          (_hd3128131419_ (##car _e3128031415_)))
                      (if (gx#stx-pair? _tl3128231422_)
                          (let ((_e3128331425_ (gx#syntax-e _tl3128231422_)))
                            (let ((_tl3128531432_ (##cdr _e3128331425_))
                                  (_hd3128431429_ (##car _e3128331425_)))
                              (if (gx#stx-pair? _hd3128431429_)
                                  (let ((_e3128631435_
                                         (gx#syntax-e _hd3128431429_)))
                                    (let ((_tl3128831442_
                                           (##cdr _e3128631435_))
                                          (_hd3128731439_
                                           (##car _e3128631435_)))
                                      (if (gx#stx-pair? _hd3128731439_)
                                          (let ((_e3128931445_
                                                 (gx#syntax-e _hd3128731439_)))
                                            (let ((_tl3129131452_
                                                   (##cdr _e3128931445_))
                                                  (_hd3129031449_
                                                   (##car _e3128931445_)))
                                              (if (gx#stx-pair? _tl3129131452_)
                                                  (let ((_e3129231455_
                                                         (gx#syntax-e
                                                          _tl3129131452_)))
                                                    (let ((_tl3129431462_
                                                           (##cdr _e3129231455_))
                                                          (_hd3129331459_
                                                           (##car _e3129231455_)))
                                                      (if (gx#stx-null?
                                                           _tl3129431462_)
                                                          (if (gx#stx-pair/null?
                                                               _tl3128531432_)
                                                              (let ((___splice4121041211_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _tl3128531432_ '0)))
                        (let ((_tl3129731468_
                               (##vector-ref ___splice4121041211_ '1))
                              (_target3129531465_
                               (##vector-ref ___splice4121041211_ '0)))
                          (if (gx#stx-null? _tl3129731468_)
                              (___match4125641257_
                               _e3128031415_
                               _hd3128131419_
                               _tl3128231422_
                               _e3128331425_
                               _hd3128431429_
                               _tl3128531432_
                               _e3128631435_
                               _hd3128731439_
                               _tl3128831442_
                               _e3128931445_
                               _hd3129031449_
                               _tl3129131452_
                               _e3129231455_
                               _hd3129331459_
                               _tl3129431462_
                               ___splice4121041211_
                               _target3129531465_
                               _tl3129731468_)
                              (_g3127331325_))))
                      (_g3127331325_))
                  (_g3127331325_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3127331325_))))
                                          (_g3127331325_))))
                                  (if (gx#stx-null? _hd3128431429_)
                                      (if (gx#stx-pair/null? _tl3128531432_)
                                          (let ((___splice4121441215_
                                                 (gx#syntax-split-splice
                                                  _tl3128531432_
                                                  '0)))
                                            (let ((_tl3131331355_
                                                   (##vector-ref
                                                    ___splice4121441215_
                                                    '1))
                                                  (_target3131131352_
                                                   (##vector-ref
                                                    ___splice4121441215_
                                                    '0)))
                                              (if (gx#stx-null? _tl3131331355_)
                                                  (___match4127841279_
                                                   _e3128031415_
                                                   _hd3128131419_
                                                   _tl3128231422_
                                                   _e3128331425_
                                                   _hd3128431429_
                                                   _tl3128531432_
                                                   ___splice4121441215_
                                                   _target3131131352_
                                                   _tl3131331355_)
                                                  (_g3127331325_))))
                                          (_g3127331325_))
                                      (_g3127331325_)))))
                          (_g3127331325_))))
                  (_g3127331325_)))))))
    (define |gerbil/core$<match>[:0:]#?|
      (lambda (_$stx31540_)
        (let* ((___stx4128141282_ _$stx31540_)
               (_g3155131697_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx4128141282_))))
          (let ((___kont4128441285_
                 (lambda (_L32301_ _L32303_ _L32304_)
                   (cons (gx#datum->syntax '#f 'and)
                         (foldr (lambda (_g3232532328_ _g3232632331_)
                                  (cons (cons _L32304_
                                              (cons _g3232532328_
                                                    (cons _L32301_ '())))
                                        _g3232632331_))
                                '()
                                _L32303_))))
                (___kont4128841289_
                 (lambda (_L32191_ _L32193_ _L32194_)
                   (cons (gx#datum->syntax '#f 'or)
                         (foldr (lambda (_g3221532218_ _g3221632221_)
                                  (cons (cons _L32194_
                                              (cons _g3221532218_
                                                    (cons _L32191_ '())))
                                        _g3221632221_))
                                '()
                                _L32193_))))
                (___kont4129241293_
                 (lambda (_L32091_ _L32093_ _L32094_)
                   (cons (gx#datum->syntax '#f 'not)
                         (cons (cons _L32094_
                                     (cons _L32093_ (cons _L32091_ '())))
                               '()))))
                (___kont4129441295_
                 (lambda (_L32017_ _L32019_)
                   (cons _L32019_ (cons _L32017_ '()))))
                (___kont4129641297_
                 (lambda (_L31965_ _L31967_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons _L31967_
                                           (cons _L31965_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$obj)
                                                       '())))
                                     '())))))
                (___kont4129841299_
                 (lambda (_L31917_ _L31919_ _L31920_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _L31920_
                                                       (cons _L31919_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L31917_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont4130041301_
                 (lambda (_L31848_ _L31850_ _L31851_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'alet)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '$val)
                                                       (cons (cons _L31851_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _L31850_
                                 (cons (gx#datum->syntax '#f '$obj) '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L31848_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$val)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont4130241303_
                 (lambda (_L31768_ _L31770_ _L31771_ _L31772_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _L31772_
                                                       (cons _L31771_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L31768_
                                                             (cons (cons _L31770_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (gx#datum->syntax '#f '$obj) '()))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((___match4145441455_
                    (lambda (_e3164131877_
                             _hd3164231881_
                             _tl3164331884_
                             _e3164431887_
                             _hd3164531891_
                             _tl3164631894_
                             _e3164731897_
                             _hd3164831901_
                             _tl3164931904_)
                      (if (gx#identifier? _hd3164831901_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g42173_|
                               _hd3164831901_)
                              (if (gx#stx-pair? _tl3164931904_)
                                  (let ((_e3165031907_
                                         (gx#syntax-e _tl3164931904_)))
                                    (let ((_tl3165231914_
                                           (##cdr _e3165031907_))
                                          (_hd3165131911_
                                           (##car _e3165031907_)))
                                      (if (gx#stx-null? _tl3165231914_)
                                          (___kont4129841299_
                                           _hd3165131911_
                                           _hd3164531891_
                                           _hd3164231881_)
                                          (_g3155131697_))))
                                  (_g3155131697_))
                              (_g3155131697_))
                          (if (gx#stx-datum? _hd3164831901_)
                              (let ((_e3166531834_ (gx#stx-e _hd3164831901_)))
                                (if (equal? _e3166531834_ '::)
                                    (if (gx#stx-pair? _tl3164931904_)
                                        (let ((_e3166631838_
                                               (gx#syntax-e _tl3164931904_)))
                                          (let ((_tl3166831845_
                                                 (##cdr _e3166631838_))
                                                (_hd3166731842_
                                                 (##car _e3166631838_)))
                                            (if (gx#stx-null? _tl3166831845_)
                                                (___kont4130041301_
                                                 _hd3166731842_
                                                 _hd3164531891_
                                                 _hd3164231881_)
                                                (if (gx#stx-pair?
                                                     _tl3166831845_)
                                                    (let ((_e3168631748_
                                                           (gx#syntax-e
                                                            _tl3166831845_)))
                                                      (let ((_tl3168831755_
                                                             (##cdr _e3168631748_))
                                                            (_hd3168731752_
                                                             (##car _e3168631748_)))
                                                        (if (gx#identifier?
                                                             _hd3168731752_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core$<match>[1]#_g42174_|
                         _hd3168731752_)
                        (if (gx#stx-pair? _tl3168831755_)
                            (let ((_e3168931758_ (gx#syntax-e _tl3168831755_)))
                              (let ((_tl3169131765_ (##cdr _e3168931758_))
                                    (_hd3169031762_ (##car _e3168931758_)))
                                (if (gx#stx-null? _tl3169131765_)
                                    (___kont4130241303_
                                     _hd3169031762_
                                     _hd3166731842_
                                     _hd3164531891_
                                     _hd3164231881_)
                                    (_g3155131697_))))
                            (_g3155131697_))
                        (_g3155131697_))
                    (_g3155131697_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3155131697_)))))
                                        (_g3155131697_))
                                    (_g3155131697_)))
                              (_g3155131697_)))))
                   (___match4143441435_
                    (lambda (_e3163231945_
                             _hd3163331949_
                             _tl3163431952_
                             _e3163531955_
                             _hd3163631959_
                             _tl3163731962_)
                      (if (gx#stx-null? _tl3163731962_)
                          (___kont4129641297_ _hd3163631959_ _hd3163331949_)
                          (if (gx#stx-pair? _tl3163731962_)
                              (let ((_e3164731897_
                                     (gx#syntax-e _tl3163731962_)))
                                (let ((_tl3164931904_ (##cdr _e3164731897_))
                                      (_hd3164831901_ (##car _e3164731897_)))
                                  (if (gx#identifier? _hd3164831901_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g42173_|
                                           _hd3164831901_)
                                          (if (gx#stx-pair? _tl3164931904_)
                                              (let ((_e3165031907_
                                                     (gx#syntax-e
                                                      _tl3164931904_)))
                                                (let ((_tl3165231914_
                                                       (##cdr _e3165031907_))
                                                      (_hd3165131911_
                                                       (##car _e3165031907_)))
                                                  (if (gx#stx-null?
                                                       _tl3165231914_)
                                                      (___kont4129841299_
                                                       _hd3165131911_
                                                       _hd3163631959_
                                                       _hd3163331949_)
                                                      (_g3155131697_))))
                                              (_g3155131697_))
                                          (_g3155131697_))
                                      (if (gx#stx-datum? _hd3164831901_)
                                          (let ((_e3166531834_
                                                 (gx#stx-e _hd3164831901_)))
                                            (if (equal? _e3166531834_ '::)
                                                (if (gx#stx-pair?
                                                     _tl3164931904_)
                                                    (let ((_e3166631838_
                                                           (gx#syntax-e
                                                            _tl3164931904_)))
                                                      (let ((_tl3166831845_
                                                             (##cdr _e3166631838_))
                                                            (_hd3166731842_
                                                             (##car _e3166631838_)))
                                                        (if (gx#stx-null?
                                                             _tl3166831845_)
                                                            (___kont4130041301_
                                                             _hd3166731842_
                                                             _hd3163631959_
                                                             _hd3163331949_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3166831845_)
                        (let ((_e3168631748_ (gx#syntax-e _tl3166831845_)))
                          (let ((_tl3168831755_ (##cdr _e3168631748_))
                                (_hd3168731752_ (##car _e3168631748_)))
                            (if (gx#identifier? _hd3168731752_)
                                (if (gx#free-identifier=?
                                     |gerbil/core$<match>[1]#_g42174_|
                                     _hd3168731752_)
                                    (if (gx#stx-pair? _tl3168831755_)
                                        (let ((_e3168931758_
                                               (gx#syntax-e _tl3168831755_)))
                                          (let ((_tl3169131765_
                                                 (##cdr _e3168931758_))
                                                (_hd3169031762_
                                                 (##car _e3168931758_)))
                                            (if (gx#stx-null? _tl3169131765_)
                                                (___kont4130241303_
                                                 _hd3169031762_
                                                 _hd3166731842_
                                                 _hd3163631959_
                                                 _hd3163331949_)
                                                (_g3155131697_))))
                                        (_g3155131697_))
                                    (_g3155131697_))
                                (_g3155131697_))))
                        (_g3155131697_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3155131697_))
                                                (_g3155131697_)))
                                          (_g3155131697_)))))
                              (_g3155131697_)))))
                   (___match4136441365_
                    (lambda (_e3158032121_
                             _hd3158132125_
                             _tl3158232128_
                             _e3158332131_
                             _hd3158432135_
                             _tl3158532138_
                             _e3158632141_
                             _hd3158732145_
                             _tl3158832148_
                             ___splice4129041291_
                             _target3158932151_
                             _tl3159132154_)
                      (letrec ((_loop3159232157_
                                (lambda (_hd3159032161_ _pred3159632164_)
                                  (if (gx#stx-pair? _hd3159032161_)
                                      (let ((_e3159332167_
                                             (gx#syntax-e _hd3159032161_)))
                                        (let ((_lp-tl3159532174_
                                               (##cdr _e3159332167_))
                                              (_lp-hd3159432171_
                                               (##car _e3159332167_)))
                                          (_loop3159232157_
                                           _lp-tl3159532174_
                                           (cons _lp-hd3159432171_
                                                 _pred3159632164_))))
                                      (let ((_pred3159732177_
                                             (reverse _pred3159632164_)))
                                        (if (gx#stx-pair? _tl3158532138_)
                                            (let ((_e3159832181_
                                                   (gx#syntax-e
                                                    _tl3158532138_)))
                                              (let ((_tl3160032188_
                                                     (##cdr _e3159832181_))
                                                    (_hd3159932185_
                                                     (##car _e3159832181_)))
                                                (if (gx#stx-null?
                                                     _tl3160032188_)
                                                    (___kont4128841289_
                                                     _hd3159932185_
                                                     _pred3159732177_
                                                     _hd3158132125_)
                                                    (___match4145441455_
                                                     _e3158032121_
                                                     _hd3158132125_
                                                     _tl3158232128_
                                                     _e3158332131_
                                                     _hd3158432135_
                                                     _tl3158532138_
                                                     _e3159832181_
                                                     _hd3159932185_
                                                     _tl3160032188_))))
                                            (___match4143441435_
                                             _e3158032121_
                                             _hd3158132125_
                                             _tl3158232128_
                                             _e3158332131_
                                             _hd3158432135_
                                             _tl3158532138_)))))))
                        (_loop3159232157_ _target3158932151_ '()))))
                   (___match4133441335_
                    (lambda (_e3155632231_
                             _hd3155732235_
                             _tl3155832238_
                             _e3155932241_
                             _hd3156032245_
                             _tl3156132248_
                             _e3156232251_
                             _hd3156332255_
                             _tl3156432258_
                             ___splice4128641287_
                             _target3156532261_
                             _tl3156732264_)
                      (letrec ((_loop3156832267_
                                (lambda (_hd3156632271_ _pred3157232274_)
                                  (if (gx#stx-pair? _hd3156632271_)
                                      (let ((_e3156932277_
                                             (gx#syntax-e _hd3156632271_)))
                                        (let ((_lp-tl3157132284_
                                               (##cdr _e3156932277_))
                                              (_lp-hd3157032281_
                                               (##car _e3156932277_)))
                                          (_loop3156832267_
                                           _lp-tl3157132284_
                                           (cons _lp-hd3157032281_
                                                 _pred3157232274_))))
                                      (let ((_pred3157332287_
                                             (reverse _pred3157232274_)))
                                        (if (gx#stx-pair? _tl3156132248_)
                                            (let ((_e3157432291_
                                                   (gx#syntax-e
                                                    _tl3156132248_)))
                                              (let ((_tl3157632298_
                                                     (##cdr _e3157432291_))
                                                    (_hd3157532295_
                                                     (##car _e3157432291_)))
                                                (if (gx#stx-null?
                                                     _tl3157632298_)
                                                    (___kont4128441285_
                                                     _hd3157532295_
                                                     _pred3157332287_
                                                     _hd3155732235_)
                                                    (___match4145441455_
                                                     _e3155632231_
                                                     _hd3155732235_
                                                     _tl3155832238_
                                                     _e3155932241_
                                                     _hd3156032245_
                                                     _tl3156132248_
                                                     _e3157432291_
                                                     _hd3157532295_
                                                     _tl3157632298_))))
                                            (___match4143441435_
                                             _e3155632231_
                                             _hd3155732235_
                                             _tl3155832238_
                                             _e3155932241_
                                             _hd3156032245_
                                             _tl3156132248_)))))))
                        (_loop3156832267_ _target3156532261_ '())))))
              (if (gx#stx-pair? ___stx4128141282_)
                  (let ((_e3155632231_ (gx#syntax-e ___stx4128141282_)))
                    (let ((_tl3155832238_ (##cdr _e3155632231_))
                          (_hd3155732235_ (##car _e3155632231_)))
                      (if (gx#stx-pair? _tl3155832238_)
                          (let ((_e3155932241_ (gx#syntax-e _tl3155832238_)))
                            (let ((_tl3156132248_ (##cdr _e3155932241_))
                                  (_hd3156032245_ (##car _e3155932241_)))
                              (if (gx#stx-pair? _hd3156032245_)
                                  (let ((_e3156232251_
                                         (gx#syntax-e _hd3156032245_)))
                                    (let ((_tl3156432258_
                                           (##cdr _e3156232251_))
                                          (_hd3156332255_
                                           (##car _e3156232251_)))
                                      (if (gx#identifier? _hd3156332255_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g42175_|
                                               _hd3156332255_)
                                              (if (gx#stx-pair/null?
                                                   _tl3156432258_)
                                                  (let ((___splice4128641287_
                                                         (gx#syntax-split-splice
                                                          _tl3156432258_
                                                          '0)))
                                                    (let ((_tl3156732264_
                                                           (##vector-ref
                                                            ___splice4128641287_
                                                            '1))
                                                          (_target3156532261_
                                                           (##vector-ref
                                                            ___splice4128641287_
                                                            '0)))
                                                      (if (gx#stx-null?
                                                           _tl3156732264_)
                                                          (___match4133441335_
                                                           _e3155632231_
                                                           _hd3155732235_
                                                           _tl3155832238_
                                                           _e3155932241_
                                                           _hd3156032245_
                                                           _tl3156132248_
                                                           _e3156232251_
                                                           _hd3156332255_
                                                           _tl3156432258_
                                                           ___splice4128641287_
                                                           _target3156532261_
                                                           _tl3156732264_)
                                                          (if (gx#stx-pair?
                                                               _tl3156132248_)
                                                              (let ((_e3162732007_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl3156132248_)))
                        (let ((_tl3162932014_ (##cdr _e3162732007_))
                              (_hd3162832011_ (##car _e3162732007_)))
                          (if (gx#stx-null? _tl3162932014_)
                              (___kont4129441295_
                               _hd3162832011_
                               _hd3156032245_)
                              (if (gx#identifier? _hd3162832011_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g42173_|
                                       _hd3162832011_)
                                      (if (gx#stx-pair? _tl3162932014_)
                                          (let ((_e3165031907_
                                                 (gx#syntax-e _tl3162932014_)))
                                            (let ((_tl3165231914_
                                                   (##cdr _e3165031907_))
                                                  (_hd3165131911_
                                                   (##car _e3165031907_)))
                                              (if (gx#stx-null? _tl3165231914_)
                                                  (___kont4129841299_
                                                   _hd3165131911_
                                                   _hd3156032245_
                                                   _hd3155732235_)
                                                  (_g3155131697_))))
                                          (_g3155131697_))
                                      (_g3155131697_))
                                  (if (gx#stx-datum? _hd3162832011_)
                                      (let ((_e3166531834_
                                             (gx#stx-e _hd3162832011_)))
                                        (if (equal? _e3166531834_ '::)
                                            (if (gx#stx-pair? _tl3162932014_)
                                                (let ((_e3166631838_
                                                       (gx#syntax-e
                                                        _tl3162932014_)))
                                                  (let ((_tl3166831845_
                                                         (##cdr _e3166631838_))
                                                        (_hd3166731842_
                                                         (##car _e3166631838_)))
                                                    (if (gx#stx-null?
                                                         _tl3166831845_)
                                                        (___kont4130041301_
                                                         _hd3166731842_
                                                         _hd3156032245_
                                                         _hd3155732235_)
                                                        (if (gx#stx-pair?
                                                             _tl3166831845_)
                                                            (let ((_e3168631748_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3166831845_)))
                      (let ((_tl3168831755_ (##cdr _e3168631748_))
                            (_hd3168731752_ (##car _e3168631748_)))
                        (if (gx#identifier? _hd3168731752_)
                            (if (gx#free-identifier=?
                                 |gerbil/core$<match>[1]#_g42174_|
                                 _hd3168731752_)
                                (if (gx#stx-pair? _tl3168831755_)
                                    (let ((_e3168931758_
                                           (gx#syntax-e _tl3168831755_)))
                                      (let ((_tl3169131765_
                                             (##cdr _e3168931758_))
                                            (_hd3169031762_
                                             (##car _e3168931758_)))
                                        (if (gx#stx-null? _tl3169131765_)
                                            (___kont4130241303_
                                             _hd3169031762_
                                             _hd3166731842_
                                             _hd3156032245_
                                             _hd3155732235_)
                                            (_g3155131697_))))
                                    (_g3155131697_))
                                (_g3155131697_))
                            (_g3155131697_))))
                    (_g3155131697_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3155131697_))
                                            (_g3155131697_)))
                                      (_g3155131697_))))))
                      (if (gx#stx-null? _tl3156132248_)
                          (___kont4129641297_ _hd3156032245_ _hd3155732235_)
                          (_g3155131697_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _tl3156132248_)
                                                      (let ((_e3162732007_
                                                             (gx#syntax-e
                                                              _tl3156132248_)))
                                                        (let ((_tl3162932014_
                                                               (##cdr _e3162732007_))
                                                              (_hd3162832011_
                                                               (##car _e3162732007_)))
                                                          (if (gx#stx-null?
                                                               _tl3162932014_)
                                                              (___kont4129441295_
                                                               _hd3162832011_
                                                               _hd3156032245_)
                                                              (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd3162832011_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g42173_|
                               _hd3162832011_)
                              (if (gx#stx-pair? _tl3162932014_)
                                  (let ((_e3165031907_
                                         (gx#syntax-e _tl3162932014_)))
                                    (let ((_tl3165231914_
                                           (##cdr _e3165031907_))
                                          (_hd3165131911_
                                           (##car _e3165031907_)))
                                      (if (gx#stx-null? _tl3165231914_)
                                          (___kont4129841299_
                                           _hd3165131911_
                                           _hd3156032245_
                                           _hd3155732235_)
                                          (_g3155131697_))))
                                  (_g3155131697_))
                              (_g3155131697_))
                          (if (gx#stx-datum? _hd3162832011_)
                              (let ((_e3166531834_ (gx#stx-e _hd3162832011_)))
                                (if (equal? _e3166531834_ '::)
                                    (if (gx#stx-pair? _tl3162932014_)
                                        (let ((_e3166631838_
                                               (gx#syntax-e _tl3162932014_)))
                                          (let ((_tl3166831845_
                                                 (##cdr _e3166631838_))
                                                (_hd3166731842_
                                                 (##car _e3166631838_)))
                                            (if (gx#stx-null? _tl3166831845_)
                                                (___kont4130041301_
                                                 _hd3166731842_
                                                 _hd3156032245_
                                                 _hd3155732235_)
                                                (if (gx#stx-pair?
                                                     _tl3166831845_)
                                                    (let ((_e3168631748_
                                                           (gx#syntax-e
                                                            _tl3166831845_)))
                                                      (let ((_tl3168831755_
                                                             (##cdr _e3168631748_))
                                                            (_hd3168731752_
                                                             (##car _e3168631748_)))
                                                        (if (gx#identifier?
                                                             _hd3168731752_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core$<match>[1]#_g42174_|
                         _hd3168731752_)
                        (if (gx#stx-pair? _tl3168831755_)
                            (let ((_e3168931758_ (gx#syntax-e _tl3168831755_)))
                              (let ((_tl3169131765_ (##cdr _e3168931758_))
                                    (_hd3169031762_ (##car _e3168931758_)))
                                (if (gx#stx-null? _tl3169131765_)
                                    (___kont4130241303_
                                     _hd3169031762_
                                     _hd3166731842_
                                     _hd3156032245_
                                     _hd3155732235_)
                                    (_g3155131697_))))
                            (_g3155131697_))
                        (_g3155131697_))
                    (_g3155131697_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3155131697_)))))
                                        (_g3155131697_))
                                    (_g3155131697_)))
                              (_g3155131697_))))))
              (if (gx#stx-null? _tl3156132248_)
                  (___kont4129641297_ _hd3156032245_ _hd3155732235_)
                  (_g3155131697_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g42176_|
                                                   _hd3156332255_)
                                                  (if (gx#stx-pair/null?
                                                       _tl3156432258_)
                                                      (let ((___splice4129041291_
                                                             (gx#syntax-split-splice
                                                              _tl3156432258_
                                                              '0)))
                                                        (let ((_tl3159132154_
                                                               (##vector-ref
                                                                ___splice4129041291_
                                                                '1))
                                                              (_target3158932151_
                                                               (##vector-ref
                                                                ___splice4129041291_
                                                                '0)))
                                                          (if (gx#stx-null?
                                                               _tl3159132154_)
                                                              (___match4136441365_
                                                               _e3155632231_
                                                               _hd3155732235_
                                                               _tl3155832238_
                                                               _e3155932241_
                                                               _hd3156032245_
                                                               _tl3156132248_
                                                               _e3156232251_
                                                               _hd3156332255_
                                                               _tl3156432258_
                                                               ___splice4129041291_
                                                               _target3158932151_
                                                               _tl3159132154_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl3156132248_)
                          (let ((_e3162732007_ (gx#syntax-e _tl3156132248_)))
                            (let ((_tl3162932014_ (##cdr _e3162732007_))
                                  (_hd3162832011_ (##car _e3162732007_)))
                              (if (gx#stx-null? _tl3162932014_)
                                  (___kont4129441295_
                                   _hd3162832011_
                                   _hd3156032245_)
                                  (if (gx#identifier? _hd3162832011_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g42173_|
                                           _hd3162832011_)
                                          (if (gx#stx-pair? _tl3162932014_)
                                              (let ((_e3165031907_
                                                     (gx#syntax-e
                                                      _tl3162932014_)))
                                                (let ((_tl3165231914_
                                                       (##cdr _e3165031907_))
                                                      (_hd3165131911_
                                                       (##car _e3165031907_)))
                                                  (if (gx#stx-null?
                                                       _tl3165231914_)
                                                      (___kont4129841299_
                                                       _hd3165131911_
                                                       _hd3156032245_
                                                       _hd3155732235_)
                                                      (_g3155131697_))))
                                              (_g3155131697_))
                                          (_g3155131697_))
                                      (if (gx#stx-datum? _hd3162832011_)
                                          (let ((_e3166531834_
                                                 (gx#stx-e _hd3162832011_)))
                                            (if (equal? _e3166531834_ '::)
                                                (if (gx#stx-pair?
                                                     _tl3162932014_)
                                                    (let ((_e3166631838_
                                                           (gx#syntax-e
                                                            _tl3162932014_)))
                                                      (let ((_tl3166831845_
                                                             (##cdr _e3166631838_))
                                                            (_hd3166731842_
                                                             (##car _e3166631838_)))
                                                        (if (gx#stx-null?
                                                             _tl3166831845_)
                                                            (___kont4130041301_
                                                             _hd3166731842_
                                                             _hd3156032245_
                                                             _hd3155732235_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3166831845_)
                        (let ((_e3168631748_ (gx#syntax-e _tl3166831845_)))
                          (let ((_tl3168831755_ (##cdr _e3168631748_))
                                (_hd3168731752_ (##car _e3168631748_)))
                            (if (gx#identifier? _hd3168731752_)
                                (if (gx#free-identifier=?
                                     |gerbil/core$<match>[1]#_g42174_|
                                     _hd3168731752_)
                                    (if (gx#stx-pair? _tl3168831755_)
                                        (let ((_e3168931758_
                                               (gx#syntax-e _tl3168831755_)))
                                          (let ((_tl3169131765_
                                                 (##cdr _e3168931758_))
                                                (_hd3169031762_
                                                 (##car _e3168931758_)))
                                            (if (gx#stx-null? _tl3169131765_)
                                                (___kont4130241303_
                                                 _hd3169031762_
                                                 _hd3166731842_
                                                 _hd3156032245_
                                                 _hd3155732235_)
                                                (_g3155131697_))))
                                        (_g3155131697_))
                                    (_g3155131697_))
                                (_g3155131697_))))
                        (_g3155131697_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3155131697_))
                                                (_g3155131697_)))
                                          (_g3155131697_))))))
                          (if (gx#stx-null? _tl3156132248_)
                              (___kont4129641297_
                               _hd3156032245_
                               _hd3155732235_)
                              (_g3155131697_))))))
              (if (gx#stx-pair? _tl3156132248_)
                  (let ((_e3162732007_ (gx#syntax-e _tl3156132248_)))
                    (let ((_tl3162932014_ (##cdr _e3162732007_))
                          (_hd3162832011_ (##car _e3162732007_)))
                      (if (gx#stx-null? _tl3162932014_)
                          (___kont4129441295_ _hd3162832011_ _hd3156032245_)
                          (if (gx#identifier? _hd3162832011_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g42173_|
                                   _hd3162832011_)
                                  (if (gx#stx-pair? _tl3162932014_)
                                      (let ((_e3165031907_
                                             (gx#syntax-e _tl3162932014_)))
                                        (let ((_tl3165231914_
                                               (##cdr _e3165031907_))
                                              (_hd3165131911_
                                               (##car _e3165031907_)))
                                          (if (gx#stx-null? _tl3165231914_)
                                              (___kont4129841299_
                                               _hd3165131911_
                                               _hd3156032245_
                                               _hd3155732235_)
                                              (_g3155131697_))))
                                      (_g3155131697_))
                                  (_g3155131697_))
                              (if (gx#stx-datum? _hd3162832011_)
                                  (let ((_e3166531834_
                                         (gx#stx-e _hd3162832011_)))
                                    (if (equal? _e3166531834_ '::)
                                        (if (gx#stx-pair? _tl3162932014_)
                                            (let ((_e3166631838_
                                                   (gx#syntax-e
                                                    _tl3162932014_)))
                                              (let ((_tl3166831845_
                                                     (##cdr _e3166631838_))
                                                    (_hd3166731842_
                                                     (##car _e3166631838_)))
                                                (if (gx#stx-null?
                                                     _tl3166831845_)
                                                    (___kont4130041301_
                                                     _hd3166731842_
                                                     _hd3156032245_
                                                     _hd3155732235_)
                                                    (if (gx#stx-pair?
                                                         _tl3166831845_)
                                                        (let ((_e3168631748_
                                                               (gx#syntax-e
                                                                _tl3166831845_)))
                                                          (let ((_tl3168831755_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3168631748_))
                        (_hd3168731752_ (##car _e3168631748_)))
                    (if (gx#identifier? _hd3168731752_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g42174_|
                             _hd3168731752_)
                            (if (gx#stx-pair? _tl3168831755_)
                                (let ((_e3168931758_
                                       (gx#syntax-e _tl3168831755_)))
                                  (let ((_tl3169131765_ (##cdr _e3168931758_))
                                        (_hd3169031762_ (##car _e3168931758_)))
                                    (if (gx#stx-null? _tl3169131765_)
                                        (___kont4130241303_
                                         _hd3169031762_
                                         _hd3166731842_
                                         _hd3156032245_
                                         _hd3155732235_)
                                        (_g3155131697_))))
                                (_g3155131697_))
                            (_g3155131697_))
                        (_g3155131697_))))
                (_g3155131697_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g3155131697_))
                                        (_g3155131697_)))
                                  (_g3155131697_))))))
                  (if (gx#stx-null? _tl3156132248_)
                      (___kont4129641297_ _hd3156032245_ _hd3155732235_)
                      (_g3155131697_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g42177_|
                                                       _hd3156332255_)
                                                      (if (gx#stx-pair?
                                                           _tl3156432258_)
                                                          (let ((_e3161332071_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3156432258_)))
                    (let ((_tl3161532078_ (##cdr _e3161332071_))
                          (_hd3161432075_ (##car _e3161332071_)))
                      (if (gx#stx-null? _tl3161532078_)
                          (if (gx#stx-pair? _tl3156132248_)
                              (let ((_e3161632081_
                                     (gx#syntax-e _tl3156132248_)))
                                (let ((_tl3161832088_ (##cdr _e3161632081_))
                                      (_hd3161732085_ (##car _e3161632081_)))
                                  (if (gx#stx-null? _tl3161832088_)
                                      (___kont4129241293_
                                       _hd3161732085_
                                       _hd3161432075_
                                       _hd3155732235_)
                                      (if (gx#identifier? _hd3161732085_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g42173_|
                                               _hd3161732085_)
                                              (if (gx#stx-pair? _tl3161832088_)
                                                  (let ((_e3165031907_
                                                         (gx#syntax-e
                                                          _tl3161832088_)))
                                                    (let ((_tl3165231914_
                                                           (##cdr _e3165031907_))
                                                          (_hd3165131911_
                                                           (##car _e3165031907_)))
                                                      (if (gx#stx-null?
                                                           _tl3165231914_)
                                                          (___kont4129841299_
                                                           _hd3165131911_
                                                           _hd3156032245_
                                                           _hd3155732235_)
                                                          (_g3155131697_))))
                                                  (_g3155131697_))
                                              (_g3155131697_))
                                          (if (gx#stx-datum? _hd3161732085_)
                                              (let ((_e3166531834_
                                                     (gx#stx-e
                                                      _hd3161732085_)))
                                                (if (equal? _e3166531834_ '::)
                                                    (if (gx#stx-pair?
                                                         _tl3161832088_)
                                                        (let ((_e3166631838_
                                                               (gx#syntax-e
                                                                _tl3161832088_)))
                                                          (let ((_tl3166831845_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3166631838_))
                        (_hd3166731842_ (##car _e3166631838_)))
                    (if (gx#stx-null? _tl3166831845_)
                        (___kont4130041301_
                         _hd3166731842_
                         _hd3156032245_
                         _hd3155732235_)
                        (if (gx#stx-pair? _tl3166831845_)
                            (let ((_e3168631748_ (gx#syntax-e _tl3166831845_)))
                              (let ((_tl3168831755_ (##cdr _e3168631748_))
                                    (_hd3168731752_ (##car _e3168631748_)))
                                (if (gx#identifier? _hd3168731752_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<match>[1]#_g42174_|
                                         _hd3168731752_)
                                        (if (gx#stx-pair? _tl3168831755_)
                                            (let ((_e3168931758_
                                                   (gx#syntax-e
                                                    _tl3168831755_)))
                                              (let ((_tl3169131765_
                                                     (##cdr _e3168931758_))
                                                    (_hd3169031762_
                                                     (##car _e3168931758_)))
                                                (if (gx#stx-null?
                                                     _tl3169131765_)
                                                    (___kont4130241303_
                                                     _hd3169031762_
                                                     _hd3166731842_
                                                     _hd3156032245_
                                                     _hd3155732235_)
                                                    (_g3155131697_))))
                                            (_g3155131697_))
                                        (_g3155131697_))
                                    (_g3155131697_))))
                            (_g3155131697_)))))
                (_g3155131697_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3155131697_)))
                                              (_g3155131697_))))))
                              (if (gx#stx-null? _tl3156132248_)
                                  (___kont4129641297_
                                   _hd3156032245_
                                   _hd3155732235_)
                                  (_g3155131697_)))
                          (if (gx#stx-pair? _tl3156132248_)
                              (let ((_e3162732007_
                                     (gx#syntax-e _tl3156132248_)))
                                (let ((_tl3162932014_ (##cdr _e3162732007_))
                                      (_hd3162832011_ (##car _e3162732007_)))
                                  (if (gx#stx-null? _tl3162932014_)
                                      (___kont4129441295_
                                       _hd3162832011_
                                       _hd3156032245_)
                                      (if (gx#identifier? _hd3162832011_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g42173_|
                                               _hd3162832011_)
                                              (if (gx#stx-pair? _tl3162932014_)
                                                  (let ((_e3165031907_
                                                         (gx#syntax-e
                                                          _tl3162932014_)))
                                                    (let ((_tl3165231914_
                                                           (##cdr _e3165031907_))
                                                          (_hd3165131911_
                                                           (##car _e3165031907_)))
                                                      (if (gx#stx-null?
                                                           _tl3165231914_)
                                                          (___kont4129841299_
                                                           _hd3165131911_
                                                           _hd3156032245_
                                                           _hd3155732235_)
                                                          (_g3155131697_))))
                                                  (_g3155131697_))
                                              (_g3155131697_))
                                          (if (gx#stx-datum? _hd3162832011_)
                                              (let ((_e3166531834_
                                                     (gx#stx-e
                                                      _hd3162832011_)))
                                                (if (equal? _e3166531834_ '::)
                                                    (if (gx#stx-pair?
                                                         _tl3162932014_)
                                                        (let ((_e3166631838_
                                                               (gx#syntax-e
                                                                _tl3162932014_)))
                                                          (let ((_tl3166831845_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3166631838_))
                        (_hd3166731842_ (##car _e3166631838_)))
                    (if (gx#stx-null? _tl3166831845_)
                        (___kont4130041301_
                         _hd3166731842_
                         _hd3156032245_
                         _hd3155732235_)
                        (if (gx#stx-pair? _tl3166831845_)
                            (let ((_e3168631748_ (gx#syntax-e _tl3166831845_)))
                              (let ((_tl3168831755_ (##cdr _e3168631748_))
                                    (_hd3168731752_ (##car _e3168631748_)))
                                (if (gx#identifier? _hd3168731752_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<match>[1]#_g42174_|
                                         _hd3168731752_)
                                        (if (gx#stx-pair? _tl3168831755_)
                                            (let ((_e3168931758_
                                                   (gx#syntax-e
                                                    _tl3168831755_)))
                                              (let ((_tl3169131765_
                                                     (##cdr _e3168931758_))
                                                    (_hd3169031762_
                                                     (##car _e3168931758_)))
                                                (if (gx#stx-null?
                                                     _tl3169131765_)
                                                    (___kont4130241303_
                                                     _hd3169031762_
                                                     _hd3166731842_
                                                     _hd3156032245_
                                                     _hd3155732235_)
                                                    (_g3155131697_))))
                                            (_g3155131697_))
                                        (_g3155131697_))
                                    (_g3155131697_))))
                            (_g3155131697_)))))
                (_g3155131697_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3155131697_)))
                                              (_g3155131697_))))))
                              (if (gx#stx-null? _tl3156132248_)
                                  (___kont4129641297_
                                   _hd3156032245_
                                   _hd3155732235_)
                                  (_g3155131697_))))))
                  (if (gx#stx-pair? _tl3156132248_)
                      (let ((_e3162732007_ (gx#syntax-e _tl3156132248_)))
                        (let ((_tl3162932014_ (##cdr _e3162732007_))
                              (_hd3162832011_ (##car _e3162732007_)))
                          (if (gx#stx-null? _tl3162932014_)
                              (___kont4129441295_
                               _hd3162832011_
                               _hd3156032245_)
                              (if (gx#identifier? _hd3162832011_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g42173_|
                                       _hd3162832011_)
                                      (if (gx#stx-pair? _tl3162932014_)
                                          (let ((_e3165031907_
                                                 (gx#syntax-e _tl3162932014_)))
                                            (let ((_tl3165231914_
                                                   (##cdr _e3165031907_))
                                                  (_hd3165131911_
                                                   (##car _e3165031907_)))
                                              (if (gx#stx-null? _tl3165231914_)
                                                  (___kont4129841299_
                                                   _hd3165131911_
                                                   _hd3156032245_
                                                   _hd3155732235_)
                                                  (_g3155131697_))))
                                          (_g3155131697_))
                                      (_g3155131697_))
                                  (if (gx#stx-datum? _hd3162832011_)
                                      (let ((_e3166531834_
                                             (gx#stx-e _hd3162832011_)))
                                        (if (equal? _e3166531834_ '::)
                                            (if (gx#stx-pair? _tl3162932014_)
                                                (let ((_e3166631838_
                                                       (gx#syntax-e
                                                        _tl3162932014_)))
                                                  (let ((_tl3166831845_
                                                         (##cdr _e3166631838_))
                                                        (_hd3166731842_
                                                         (##car _e3166631838_)))
                                                    (if (gx#stx-null?
                                                         _tl3166831845_)
                                                        (___kont4130041301_
                                                         _hd3166731842_
                                                         _hd3156032245_
                                                         _hd3155732235_)
                                                        (if (gx#stx-pair?
                                                             _tl3166831845_)
                                                            (let ((_e3168631748_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3166831845_)))
                      (let ((_tl3168831755_ (##cdr _e3168631748_))
                            (_hd3168731752_ (##car _e3168631748_)))
                        (if (gx#identifier? _hd3168731752_)
                            (if (gx#free-identifier=?
                                 |gerbil/core$<match>[1]#_g42174_|
                                 _hd3168731752_)
                                (if (gx#stx-pair? _tl3168831755_)
                                    (let ((_e3168931758_
                                           (gx#syntax-e _tl3168831755_)))
                                      (let ((_tl3169131765_
                                             (##cdr _e3168931758_))
                                            (_hd3169031762_
                                             (##car _e3168931758_)))
                                        (if (gx#stx-null? _tl3169131765_)
                                            (___kont4130241303_
                                             _hd3169031762_
                                             _hd3166731842_
                                             _hd3156032245_
                                             _hd3155732235_)
                                            (_g3155131697_))))
                                    (_g3155131697_))
                                (_g3155131697_))
                            (_g3155131697_))))
                    (_g3155131697_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3155131697_))
                                            (_g3155131697_)))
                                      (_g3155131697_))))))
                      (if (gx#stx-null? _tl3156132248_)
                          (___kont4129641297_ _hd3156032245_ _hd3155732235_)
                          (_g3155131697_))))
              (if (gx#stx-pair? _tl3156132248_)
                  (let ((_e3162732007_ (gx#syntax-e _tl3156132248_)))
                    (let ((_tl3162932014_ (##cdr _e3162732007_))
                          (_hd3162832011_ (##car _e3162732007_)))
                      (if (gx#stx-null? _tl3162932014_)
                          (___kont4129441295_ _hd3162832011_ _hd3156032245_)
                          (if (gx#identifier? _hd3162832011_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g42173_|
                                   _hd3162832011_)
                                  (if (gx#stx-pair? _tl3162932014_)
                                      (let ((_e3165031907_
                                             (gx#syntax-e _tl3162932014_)))
                                        (let ((_tl3165231914_
                                               (##cdr _e3165031907_))
                                              (_hd3165131911_
                                               (##car _e3165031907_)))
                                          (if (gx#stx-null? _tl3165231914_)
                                              (___kont4129841299_
                                               _hd3165131911_
                                               _hd3156032245_
                                               _hd3155732235_)
                                              (_g3155131697_))))
                                      (_g3155131697_))
                                  (_g3155131697_))
                              (if (gx#stx-datum? _hd3162832011_)
                                  (let ((_e3166531834_
                                         (gx#stx-e _hd3162832011_)))
                                    (if (equal? _e3166531834_ '::)
                                        (if (gx#stx-pair? _tl3162932014_)
                                            (let ((_e3166631838_
                                                   (gx#syntax-e
                                                    _tl3162932014_)))
                                              (let ((_tl3166831845_
                                                     (##cdr _e3166631838_))
                                                    (_hd3166731842_
                                                     (##car _e3166631838_)))
                                                (if (gx#stx-null?
                                                     _tl3166831845_)
                                                    (___kont4130041301_
                                                     _hd3166731842_
                                                     _hd3156032245_
                                                     _hd3155732235_)
                                                    (if (gx#stx-pair?
                                                         _tl3166831845_)
                                                        (let ((_e3168631748_
                                                               (gx#syntax-e
                                                                _tl3166831845_)))
                                                          (let ((_tl3168831755_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e3168631748_))
                        (_hd3168731752_ (##car _e3168631748_)))
                    (if (gx#identifier? _hd3168731752_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g42174_|
                             _hd3168731752_)
                            (if (gx#stx-pair? _tl3168831755_)
                                (let ((_e3168931758_
                                       (gx#syntax-e _tl3168831755_)))
                                  (let ((_tl3169131765_ (##cdr _e3168931758_))
                                        (_hd3169031762_ (##car _e3168931758_)))
                                    (if (gx#stx-null? _tl3169131765_)
                                        (___kont4130241303_
                                         _hd3169031762_
                                         _hd3166731842_
                                         _hd3156032245_
                                         _hd3155732235_)
                                        (_g3155131697_))))
                                (_g3155131697_))
                            (_g3155131697_))
                        (_g3155131697_))))
                (_g3155131697_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g3155131697_))
                                        (_g3155131697_)))
                                  (_g3155131697_))))))
                  (if (gx#stx-null? _tl3156132248_)
                      (___kont4129641297_ _hd3156032245_ _hd3155732235_)
                      (_g3155131697_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl3156132248_)
                                              (let ((_e3162732007_
                                                     (gx#syntax-e
                                                      _tl3156132248_)))
                                                (let ((_tl3162932014_
                                                       (##cdr _e3162732007_))
                                                      (_hd3162832011_
                                                       (##car _e3162732007_)))
                                                  (if (gx#stx-null?
                                                       _tl3162932014_)
                                                      (___kont4129441295_
                                                       _hd3162832011_
                                                       _hd3156032245_)
                                                      (if (gx#identifier?
                                                           _hd3162832011_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core$<match>[1]#_g42173_|
                                                               _hd3162832011_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl3162932014_)
                          (let ((_e3165031907_ (gx#syntax-e _tl3162932014_)))
                            (let ((_tl3165231914_ (##cdr _e3165031907_))
                                  (_hd3165131911_ (##car _e3165031907_)))
                              (if (gx#stx-null? _tl3165231914_)
                                  (___kont4129841299_
                                   _hd3165131911_
                                   _hd3156032245_
                                   _hd3155732235_)
                                  (_g3155131697_))))
                          (_g3155131697_))
                      (_g3155131697_))
                  (if (gx#stx-datum? _hd3162832011_)
                      (let ((_e3166531834_ (gx#stx-e _hd3162832011_)))
                        (if (equal? _e3166531834_ '::)
                            (if (gx#stx-pair? _tl3162932014_)
                                (let ((_e3166631838_
                                       (gx#syntax-e _tl3162932014_)))
                                  (let ((_tl3166831845_ (##cdr _e3166631838_))
                                        (_hd3166731842_ (##car _e3166631838_)))
                                    (if (gx#stx-null? _tl3166831845_)
                                        (___kont4130041301_
                                         _hd3166731842_
                                         _hd3156032245_
                                         _hd3155732235_)
                                        (if (gx#stx-pair? _tl3166831845_)
                                            (let ((_e3168631748_
                                                   (gx#syntax-e
                                                    _tl3166831845_)))
                                              (let ((_tl3168831755_
                                                     (##cdr _e3168631748_))
                                                    (_hd3168731752_
                                                     (##car _e3168631748_)))
                                                (if (gx#identifier?
                                                     _hd3168731752_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core$<match>[1]#_g42174_|
                                                         _hd3168731752_)
                                                        (if (gx#stx-pair?
                                                             _tl3168831755_)
                                                            (let ((_e3168931758_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3168831755_)))
                      (let ((_tl3169131765_ (##cdr _e3168931758_))
                            (_hd3169031762_ (##car _e3168931758_)))
                        (if (gx#stx-null? _tl3169131765_)
                            (___kont4130241303_
                             _hd3169031762_
                             _hd3166731842_
                             _hd3156032245_
                             _hd3155732235_)
                            (_g3155131697_))))
                    (_g3155131697_))
                (_g3155131697_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3155131697_))))
                                            (_g3155131697_)))))
                                (_g3155131697_))
                            (_g3155131697_)))
                      (_g3155131697_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null? _tl3156132248_)
                                                  (___kont4129641297_
                                                   _hd3156032245_
                                                   _hd3155732235_)
                                                  (_g3155131697_))))))
                                  (if (gx#stx-pair? _tl3156132248_)
                                      (let ((_e3162732007_
                                             (gx#syntax-e _tl3156132248_)))
                                        (let ((_tl3162932014_
                                               (##cdr _e3162732007_))
                                              (_hd3162832011_
                                               (##car _e3162732007_)))
                                          (if (gx#stx-null? _tl3162932014_)
                                              (___kont4129441295_
                                               _hd3162832011_
                                               _hd3156032245_)
                                              (if (gx#identifier?
                                                   _hd3162832011_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g42173_|
                                                       _hd3162832011_)
                                                      (if (gx#stx-pair?
                                                           _tl3162932014_)
                                                          (let ((_e3165031907_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3162932014_)))
                    (let ((_tl3165231914_ (##cdr _e3165031907_))
                          (_hd3165131911_ (##car _e3165031907_)))
                      (if (gx#stx-null? _tl3165231914_)
                          (___kont4129841299_
                           _hd3165131911_
                           _hd3156032245_
                           _hd3155732235_)
                          (_g3155131697_))))
                  (_g3155131697_))
              (_g3155131697_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-datum?
                                                       _hd3162832011_)
                                                      (let ((_e3166531834_
                                                             (gx#stx-e
                                                              _hd3162832011_)))
                                                        (if (equal? _e3166531834_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '::)
                    (if (gx#stx-pair? _tl3162932014_)
                        (let ((_e3166631838_ (gx#syntax-e _tl3162932014_)))
                          (let ((_tl3166831845_ (##cdr _e3166631838_))
                                (_hd3166731842_ (##car _e3166631838_)))
                            (if (gx#stx-null? _tl3166831845_)
                                (___kont4130041301_
                                 _hd3166731842_
                                 _hd3156032245_
                                 _hd3155732235_)
                                (if (gx#stx-pair? _tl3166831845_)
                                    (let ((_e3168631748_
                                           (gx#syntax-e _tl3166831845_)))
                                      (let ((_tl3168831755_
                                             (##cdr _e3168631748_))
                                            (_hd3168731752_
                                             (##car _e3168631748_)))
                                        (if (gx#identifier? _hd3168731752_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core$<match>[1]#_g42174_|
                                                 _hd3168731752_)
                                                (if (gx#stx-pair?
                                                     _tl3168831755_)
                                                    (let ((_e3168931758_
                                                           (gx#syntax-e
                                                            _tl3168831755_)))
                                                      (let ((_tl3169131765_
                                                             (##cdr _e3168931758_))
                                                            (_hd3169031762_
                                                             (##car _e3168931758_)))
                                                        (if (gx#stx-null?
                                                             _tl3169131765_)
                                                            (___kont4130241303_
                                                             _hd3169031762_
                                                             _hd3166731842_
                                                             _hd3156032245_
                                                             _hd3155732235_)
                                                            (_g3155131697_))))
                                                    (_g3155131697_))
                                                (_g3155131697_))
                                            (_g3155131697_))))
                                    (_g3155131697_)))))
                        (_g3155131697_))
                    (_g3155131697_)))
              (_g3155131697_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-null? _tl3156132248_)
                                          (___kont4129641297_
                                           _hd3156032245_
                                           _hd3155732235_)
                                          (_g3155131697_))))))
                          (_g3155131697_))))
                  (_g3155131697_)))))))
    (define |gerbil/core$<match>[:0:]#defsyntax-for-match|
      (lambda (_$stx32340_)
        (let* ((___stx4154941550_ _$stx32340_)
               (_g3234532379_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx4154941550_))))
          (let ((___kont4155241553_
                 (lambda (_L32483_ _L32485_ _L32486_)
                   (cons (gx#datum->syntax '#f 'defsyntax)
                         (cons _L32486_
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
                                       (cons _L32485_ '()))
                                 (cons (cons (gx#datum->syntax '#f '$macro-e)
                                             (cons _L32483_ '()))
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
                (___kont4155441555_
                 (lambda (_L32416_ _L32418_ _L32419_)
                   (cons _L32419_
                         (cons _L32418_
                               (cons _L32416_
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
            (let ((___match4158241583_
                   (lambda (_e3235032443_
                            _hd3235132447_
                            _tl3235232450_
                            _e3235332453_
                            _hd3235432457_
                            _tl3235532460_
                            _e3235632463_
                            _hd3235732467_
                            _tl3235832470_
                            _e3235932473_
                            _hd3236032477_
                            _tl3236132480_)
                     (let ((_L32483_ _hd3236032477_)
                           (_L32485_ _hd3235732467_)
                           (_L32486_ _hd3235432457_))
                       (if (gx#identifier? _L32486_)
                           (___kont4155241553_ _L32483_ _L32485_ _L32486_)
                           (_g3234532379_))))))
              (if (gx#stx-pair? ___stx4154941550_)
                  (let ((_e3235032443_ (gx#syntax-e ___stx4154941550_)))
                    (let ((_tl3235232450_ (##cdr _e3235032443_))
                          (_hd3235132447_ (##car _e3235032443_)))
                      (if (gx#stx-pair? _tl3235232450_)
                          (let ((_e3235332453_ (gx#syntax-e _tl3235232450_)))
                            (let ((_tl3235532460_ (##cdr _e3235332453_))
                                  (_hd3235432457_ (##car _e3235332453_)))
                              (if (gx#stx-pair? _tl3235532460_)
                                  (let ((_e3235632463_
                                         (gx#syntax-e _tl3235532460_)))
                                    (let ((_tl3235832470_
                                           (##cdr _e3235632463_))
                                          (_hd3235732467_
                                           (##car _e3235632463_)))
                                      (if (gx#stx-pair? _tl3235832470_)
                                          (let ((_e3235932473_
                                                 (gx#syntax-e _tl3235832470_)))
                                            (let ((_tl3236132480_
                                                   (##cdr _e3235932473_))
                                                  (_hd3236032477_
                                                   (##car _e3235932473_)))
                                              (if (gx#stx-null? _tl3236132480_)
                                                  (___match4158241583_
                                                   _e3235032443_
                                                   _hd3235132447_
                                                   _tl3235232450_
                                                   _e3235332453_
                                                   _hd3235432457_
                                                   _tl3235532460_
                                                   _e3235632463_
                                                   _hd3235732467_
                                                   _tl3235832470_
                                                   _e3235932473_
                                                   _hd3236032477_
                                                   _tl3236132480_)
                                                  (_g3234532379_))))
                                          (if (gx#stx-null? _tl3235832470_)
                                              (___kont4155441555_
                                               _hd3235732467_
                                               _hd3235432457_
                                               _hd3235132447_)
                                              (_g3234532379_)))))
                                  (_g3234532379_))))
                          (_g3234532379_))))
                  (_g3234532379_)))))))
    (define |gerbil/core$<match>[:0:]#defrules-for-match|
      (lambda (_$stx32508_)
        (let* ((_g3251232527_
                (lambda (_g3251332523_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g3251332523_)))
               (_g3251132570_
                (lambda (_g3251332531_)
                  (if (gx#stx-pair? _g3251332531_)
                      (let ((_e3251632534_ (gx#syntax-e _g3251332531_)))
                        (let ((_hd3251732538_ (##car _e3251632534_))
                              (_tl3251832541_ (##cdr _e3251632534_)))
                          (if (gx#stx-pair? _tl3251832541_)
                              (let ((_e3251932544_
                                     (gx#syntax-e _tl3251832541_)))
                                (let ((_hd3252032548_ (##car _e3251932544_))
                                      (_tl3252132551_ (##cdr _e3251932544_)))
                                  ((lambda (_L32554_ _L32556_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'defsyntax-for-match)
                                           (cons _L32556_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'syntax-rules)
                                                             _L32554_)
                                                       '()))))
                                   _tl3252132551_
                                   _hd3252032548_)))
                              (_g3251232527_ _g3251332531_))))
                      (_g3251232527_ _g3251332531_)))))
          (_g3251132570_ _$stx32508_))))))
