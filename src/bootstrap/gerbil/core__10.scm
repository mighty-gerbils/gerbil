(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<match>[1]#_g42830_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g42831_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g42835_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g42836_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g42837_|
    (##structure
     gx#syntax-quote::t
     'apply
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g42839_|
    (##structure
     gx#syntax-quote::t
     'vector
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g42840_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g42841_|
    (##structure gx#syntax-quote::t 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g42842_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g42843_|
    (##structure
     gx#syntax-quote::t
     'cons*
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g42844_|
    (##structure
     gx#syntax-quote::t
     'cons
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g42845_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g42846_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g42847_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g42848_|
    (##structure gx#syntax-quote::t '? #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g42911_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g42933_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g42936_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<match>[1]#_g42937_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g42943_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g42944_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g42945_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g42946_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core$<match>[1]#_g42947_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
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
      (lambda _$args30281_
        (apply make-class-instance
               |gerbil/core$<match>[1]#match-macro::t|
               _$args30281_)))
    (define |gerbil/core$<match>[1]#syntax-local-match-macro?|
      (lambda (_stx30278_)
        (if (gx#identifier? _stx30278_)
            (let ((__tmp42829 (gx#syntax-local-value _stx30278_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core$<match>[1]#match-macro::t|
               __tmp42829))
            '#f)))
    (define |gerbil/core$<match>[1]#parse-match-pattern__%|
      (lambda (_stx28584_ _match-stx28586_)
        (letrec ((_parse128588_
                  (lambda (_hd28941_)
                    (let* ((___stx4001440015_ _hd28941_)
                           (_g2896729109_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4001440015_))))
                      (let ((___kont4001740018_
                             (lambda (_L30041_ _L30043_)
                               (let* ((___stx3993439935_ _L30041_)
                                      (_g3006030093_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx3993439935_))))
                                 (let ((___kont3993739938_
                                        (lambda ()
                                          (cons '?: (cons _L30043_ '()))))
                                       (___kont3993939940_
                                        (lambda (_L30234_)
                                          (cons '?:
                                                (cons _L30043_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse128588_
                                                               _L30234_))
                                                            '())))))
                                       (___kont3994139942_
                                        (lambda (_L30204_)
                                          (cons '?:
                                                (cons _L30043_
                                                      (cons '=>:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (_parse128588_ _L30204_))
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (___kont3994339944_
                                        (lambda (_L30155_ _L30157_)
                                          (cons '?:
                                                (cons _L30043_
                                                      (cons '::
                                                            (cons _L30157_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '=>:
                                (cons (let ()
                                        (declare (not safe))
                                        (_parse128588_ _L30155_))
                                      '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (___kont3994539946_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (_parse-error28595_ _hd28941_)))))
                                   (let ((_g3005630245_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 ___stx3993439935_)
                                                (let ((_e3006530224_
                                                       (gx#syntax-e
                                                        ___stx3993439935_)))
                                                  (let ((_tl3006330231_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3006530224_)))
                                                        (_hd3006430228_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3006530224_))))
                                                    (if (gx#stx-null?
                                                         _tl3006330231_)
                                                        (___kont3993939940_
                                                         _hd3006430228_)
                                                        (if (gx#identifier?
                                                             _hd3006430228_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core$<match>[1]#_g42831_|
                         _hd3006430228_)
                        (if (gx#stx-pair? _tl3006330231_)
                            (let ((_e3007230194_ (gx#syntax-e _tl3006330231_)))
                              (let ((_tl3007030201_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3007230194_)))
                                    (_hd3007130198_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3007230194_))))
                                (if (gx#stx-null? _tl3007030201_)
                                    (___kont3994139942_ _hd3007130198_)
                                    (___kont3994539946_))))
                            (___kont3994539946_))
                        (___kont3994539946_))
                    (if (gx#stx-datum? _hd3006430228_)
                        (let ((_e3007830121_ (gx#stx-e _hd3006430228_)))
                          (if (equal? _e3007830121_ '::)
                              (if (gx#stx-pair? _tl3006330231_)
                                  (let ((_e3008130125_
                                         (gx#syntax-e _tl3006330231_)))
                                    (let ((_tl3007930132_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3008130125_)))
                                          (_hd3008030129_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3008130125_))))
                                      (if (gx#stx-pair? _tl3007930132_)
                                          (let ((_e3008430135_
                                                 (gx#syntax-e _tl3007930132_)))
                                            (let ((_tl3008230142_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3008430135_)))
                                                  (_hd3008330139_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3008430135_))))
                                              (if (gx#identifier?
                                                   _hd3008330139_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g42830_|
                                                       _hd3008330139_)
                                                      (if (gx#stx-pair?
                                                           _tl3008230142_)
                                                          (let ((_e3008730145_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3008230142_)))
                    (let ((_tl3008530152_
                           (let () (declare (not safe)) (##cdr _e3008730145_)))
                          (_hd3008630149_
                           (let ()
                             (declare (not safe))
                             (##car _e3008730145_))))
                      (if (gx#stx-null? _tl3008530152_)
                          (___kont3994339944_ _hd3008630149_ _hd3008030129_)
                          (___kont3994539946_))))
                  (___kont3994539946_))
              (___kont3994539946_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont3994539946_))))
                                          (___kont3994539946_))))
                                  (___kont3994539946_))
                              (___kont3994539946_)))
                        (___kont3994539946_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont3994539946_)))))
                                     (if (gx#stx-null? ___stx3993439935_)
                                         (___kont3993739938_)
                                         (let ()
                                           (declare (not safe))
                                           (_g3005630245_))))))))
                            (___kont4001940020_
                             (lambda (_L29946_)
                               (let* ((___stx3991639917_ _L29946_)
                                      (_g2995829969_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx3991639917_))))
                                 (let ((___kont3991939920_
                                        (lambda (_L29997_)
                                          (let ()
                                            (declare (not safe))
                                            (_parse128588_ _L29997_))))
                                       (___kont3992139922_
                                        (lambda ()
                                          (cons 'and:
                                                (gx#stx-map
                                                 _parse128588_
                                                 _L29946_)))))
                                   (if (gx#stx-pair? ___stx3991639917_)
                                       (let ((_e2996329987_
                                              (gx#syntax-e ___stx3991639917_)))
                                         (let ((_tl2996129994_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2996329987_)))
                                               (_hd2996229991_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2996329987_))))
                                           (if (gx#stx-null? _tl2996129994_)
                                               (___kont3991939920_
                                                _hd2996229991_)
                                               (___kont3992139922_))))
                                       (___kont3992139922_))))))
                            (___kont4002140022_
                             (lambda (_L29861_)
                               (let* ((___stx3989839899_ _L29861_)
                                      (_g2987329884_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx3989839899_))))
                                 (let ((___kont3990139902_
                                        (lambda (_L29912_)
                                          (let ()
                                            (declare (not safe))
                                            (_parse128588_ _L29912_))))
                                       (___kont3990339904_
                                        (lambda ()
                                          (cons 'or:
                                                (gx#stx-map
                                                 _parse128588_
                                                 _L29861_)))))
                                   (if (gx#stx-pair? ___stx3989839899_)
                                       (let ((_e2987829902_
                                              (gx#syntax-e ___stx3989839899_)))
                                         (let ((_tl2987629909_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2987829902_)))
                                               (_hd2987729906_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2987829902_))))
                                           (if (gx#stx-null? _tl2987629909_)
                                               (___kont3990139902_
                                                _hd2987729906_)
                                               (___kont3990339904_))))
                                       (___kont3990339904_))))))
                            (___kont4002340024_
                             (lambda (_L29831_)
                               (cons 'not:
                                     (cons (let ()
                                             (declare (not safe))
                                             (_parse128588_ _L29831_))
                                           '()))))
                            (___kont4002540026_
                             (lambda (_L29787_ _L29789_)
                               (cons 'cons:
                                     (cons (let ()
                                             (declare (not safe))
                                             (_parse128588_ _L29789_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_parse128588_ _L29787_))
                                                 '())))))
                            (___kont4002740028_
                             (lambda (_L29731_ _L29733_ _L29734_)
                               (if (gx#stx-null? _L29731_)
                                   (cons 'cons:
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (_parse128588_ _L29734_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (_parse128588_
                                                        _L29733_))
                                                     '())))
                                   (cons 'cons:
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (_parse128588_ _L29734_))
                                               (cons (let ((__tmp42832
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'cons*)
                          (cons _L29733_ _L29731_))))
               (declare (not safe))
               (_parse128588_ __tmp42832))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                            (___kont4002940030_
                             (lambda (_L29683_)
                               (let ()
                                 (declare (not safe))
                                 (_parse-list28590_ _L29683_))))
                            (___kont4003140032_
                             (lambda (_L29653_)
                               (cons 'box:
                                     (cons (let ()
                                             (declare (not safe))
                                             (_parse128588_ _L29653_))
                                           '()))))
                            (___kont4003340034_
                             (lambda (_L29616_)
                               (cons 'box:
                                     (cons (let ()
                                             (declare (not safe))
                                             (_parse128588_ _L29616_))
                                           '()))))
                            (___kont4003540036_
                             (lambda (_L29592_)
                               (let ()
                                 (declare (not safe))
                                 (_parse128588_ _L29592_))))
                            (___kont4003740038_
                             (lambda (_L29554_)
                               (cons 'values:
                                     (cons (let ()
                                             (declare (not safe))
                                             (_parse-vector28591_ _L29554_))
                                           '()))))
                            (___kont4003940040_
                             (lambda (_L29526_)
                               (cons 'vector:
                                     (cons (let ()
                                             (declare (not safe))
                                             (_parse-vector28591_ _L29526_))
                                           '()))))
                            (___kont4004140042_
                             (lambda (_L29487_)
                               (cons 'vector:
                                     (cons (let ((__tmp42833
                                                  (foldr (lambda (_g2950029503_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g2950129506_)
                   (cons _g2950029503_ _g2950129506_))
                 '()
                 _L29487_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (_parse-vector28591_ __tmp42833))
                                           '()))))
                            (___kont4004540046_
                             (lambda (_L29433_ _L29435_)
                               (cons 'struct:
                                     (cons (gx#syntax-local-value _L29435_)
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_parse-vector28591_
                                                    _L29433_))
                                                 '())))))
                            (___kont4004740048_
                             (lambda (_L29403_ _L29405_)
                               (cons 'class:
                                     (cons (gx#syntax-local-value _L29405_)
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_parse-class-body28593_
                                                    _L29403_))
                                                 '())))))
                            (___kont4004940050_
                             (lambda (_L29363_ _L29365_)
                               (cons '?:
                                     (cons (cons (gx#datum->syntax '#f 'cut)
                                                 (cons _L29365_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '<>)
                                                             (cons _L29363_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                            (___kont4005140052_
                             (lambda (_L29323_)
                               (cons 'datum: (cons (gx#stx-e _L29323_) '()))))
                            (___kont4005340054_
                             (lambda (_L29283_)
                               (let ()
                                 (declare (not safe))
                                 (_parse-qq28594_ _L29283_))))
                            (___kont4005540056_
                             (lambda (_L29239_ _L29241_)
                               (cons 'apply:
                                     (cons _L29241_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_parse128588_ _L29239_))
                                                 '())))))
                            (___kont4005740058_
                             (lambda (_L29187_)
                               (let ((__tmp42834
                                      (gx#core-apply-expander
                                       (gx#syntax-local-e _L29187_)
                                       (gx#stx-wrap-source
                                        (cons 'match: _hd28941_)
                                        (let ((_$e29198_
                                               (gx#stx-source _hd28941_)))
                                          (if _$e29198_
                                              _$e29198_
                                              (gx#stx-source _stx28584_)))))))
                                 (declare (not safe))
                                 (_parse128588_ __tmp42834))))
                            (___kont4005940060_
                             (lambda (_L29161_) (cons 'any: '())))
                            (___kont4006140062_
                             (lambda (_L29145_)
                               (cons 'var: (cons _L29145_ '()))))
                            (___kont4006340064_
                             (lambda (_L29127_)
                               (cons 'datum: (cons (gx#stx-e _L29127_) '()))))
                            (___kont4006540066_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_parse-error28595_ _hd28941_)))))
                        (let* ((_g2896529138_
                                (lambda ()
                                  (let ((_L29127_ ___stx4001440015_))
                                    (if (gx#stx-datum? _L29127_)
                                        (___kont4006340064_ _L29127_)
                                        (___kont4006540066_)))))
                               (_g2896429154_
                                (lambda ()
                                  (let ((_L29145_ ___stx4001440015_))
                                    (if (and (gx#identifier? _L29145_)
                                             (not (gx#ellipsis? _L29145_)))
                                        (___kont4006140062_ _L29145_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2896529138_))))))
                               (_g2896329170_
                                (lambda ()
                                  (let ((_L29161_ ___stx4001440015_))
                                    (if (gx#underscore? _L29161_)
                                        (___kont4005940060_ _L29161_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2896429154_))))))
                               (___match4034140342_
                                (lambda (_e2910029177_
                                         _hd2909929181_
                                         _tl2909829184_)
                                  (let ((_L29187_ _hd2909929181_))
                                    (if (let ()
                                          (declare (not safe))
                                          (|gerbil/core$<match>[1]#syntax-local-match-macro?|
                                           _L29187_))
                                        (___kont4005740058_ _L29187_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2896329170_))))))
                               (___match4027540276_
                                (lambda (_e2906829343_
                                         _hd2906729347_
                                         _tl2906629350_
                                         _e2907129353_
                                         _hd2907029357_
                                         _tl2906929360_)
                                  (let ((_L29363_ _hd2907029357_)
                                        (_L29365_ _hd2906729347_))
                                    (if (and (gx#identifier? _L29365_)
                                             (or (gx#free-identifier=?
                                                  _L29365_
                                                  (gx#datum->syntax '#f 'eq?))
                                                 (gx#free-identifier=?
                                                  _L29365_
                                                  (gx#datum->syntax '#f 'eqv?))
                                                 (gx#free-identifier=?
                                                  _L29365_
                                                  (gx#datum->syntax
                                                   '#f
                                                   'equal?))))
                                        (___kont4004940050_ _L29363_ _L29365_)
                                        (if (gx#identifier? _hd2906729347_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core$<match>[1]#_g42836_|
                                                 _hd2906729347_)
                                                (___kont4005140052_
                                                 _hd2907029357_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core$<match>[1]#_g42835_|
                                                     _hd2906729347_)
                                                    (___kont4005340054_
                                                     _hd2907029357_)
                                                    (___match4034140342_
                                                     _e2906829343_
                                                     _hd2906729347_
                                                     _tl2906629350_)))
                                            (___match4034140342_
                                             _e2906829343_
                                             _hd2906729347_
                                             _tl2906629350_))))))
                               (___match4026140262_
                                (lambda (_e2906329393_
                                         _hd2906229397_
                                         _tl2906129400_)
                                  (let ((_L29403_ _tl2906129400_)
                                        (_L29405_ _hd2906229397_))
                                    (if (let ()
                                          (declare (not safe))
                                          (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-class-info?|
                                           _L29405_))
                                        (___kont4004740048_ _L29403_ _L29405_)
                                        (if (gx#stx-pair? _tl2906129400_)
                                            (let ((_e2907129353_
                                                   (gx#syntax-e
                                                    _tl2906129400_)))
                                              (let ((_tl2906929360_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e2907129353_)))
                                                    (_hd2907029357_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e2907129353_))))
                                                (if (gx#stx-null?
                                                     _tl2906929360_)
                                                    (___match4027540276_
                                                     _e2906329393_
                                                     _hd2906229397_
                                                     _tl2906129400_
                                                     _e2907129353_
                                                     _hd2907029357_
                                                     _tl2906929360_)
                                                    (if (gx#identifier?
                                                         _hd2906229397_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core$<match>[1]#_g42836_|
                                                             _hd2906229397_)
                                                            (___match4034140342_
                                                             _e2906329393_
                                                             _hd2906229397_
                                                             _tl2906129400_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core$<match>[1]#_g42835_|
                         _hd2906229397_)
                        (___match4034140342_
                         _e2906329393_
                         _hd2906229397_
                         _tl2906129400_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g42837_|
                             _hd2906229397_)
                            (if (gx#stx-pair? _tl2906929360_)
                                (let ((_e2909629229_
                                       (gx#syntax-e _tl2906929360_)))
                                  (let ((_tl2909429236_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2909629229_)))
                                        (_hd2909529233_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2909629229_))))
                                    (if (gx#stx-null? _tl2909429236_)
                                        (___kont4005540056_
                                         _hd2909529233_
                                         _hd2907029357_)
                                        (___match4034140342_
                                         _e2906329393_
                                         _hd2906229397_
                                         _tl2906129400_))))
                                (___match4034140342_
                                 _e2906329393_
                                 _hd2906229397_
                                 _tl2906129400_))
                            (___match4034140342_
                             _e2906329393_
                             _hd2906229397_
                             _tl2906129400_))))
                (___match4034140342_
                 _e2906329393_
                 _hd2906229397_
                 _tl2906129400_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___match4034140342_
                                             _e2906329393_
                                             _hd2906229397_
                                             _tl2906129400_))))))
                               (___match4025540256_
                                (lambda (_e2905829423_
                                         _hd2905729427_
                                         _tl2905629430_)
                                  (let ((_L29433_ _tl2905629430_)
                                        (_L29435_ _hd2905729427_))
                                    (if (let ()
                                          (declare (not safe))
                                          (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
                                           _L29435_))
                                        (___kont4004540046_ _L29433_ _L29435_)
                                        (___match4026140262_
                                         _e2905829423_
                                         _hd2905729427_
                                         _tl2905629430_)))))
                               (___match4024940250_
                                (lambda (_e2904429453_
                                         ___splice4004340044_
                                         _target2904529457_
                                         _tl2904729460_)
                                  (letrec ((_loop2904829463_
                                            (lambda (_hd2904629467_
                                                     _body2905229470_)
                                              (if (gx#stx-pair? _hd2904629467_)
                                                  (let ((_e2904929473_
                                                         (gx#syntax-e
                                                          _hd2904629467_)))
                                                    (let ((_lp-tl2905129480_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2904929473_)))
                                                          (_lp-hd2905029477_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2904929473_))))
                                                      (let ((__tmp42838
                                                             (cons _lp-hd2905029477_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body2905229470_)))
                (declare (not safe))
                (_loop2904829463_ _lp-tl2905129480_ __tmp42838))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_body2905329483_
                                                         (reverse _body2905229470_)))
                                                    (___kont4004140042_
                                                     _body2905329483_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop2904829463_
                                       _target2904529457_
                                       '())))))
                               (_g2895529509_
                                (lambda ()
                                  (if (gx#stx-vector? ___stx4001440015_)
                                      (let ((_e2904429453_
                                             (vector->list
                                              (gx#syntax-e
                                               ___stx4001440015_))))
                                        (if (gx#stx-pair/null? _e2904429453_)
                                            (let ((___splice4004340044_
                                                   (gx#syntax-split-splice
                                                    _e2904429453_
                                                    '0)))
                                              (let ((_tl2904729460_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4004340044_
                                                        '1)))
                                                    (_target2904529457_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4004340044_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl2904729460_)
                                                    (___match4024940250_
                                                     _e2904429453_
                                                     ___splice4004340044_
                                                     _target2904529457_
                                                     _tl2904729460_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g2896329170_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g2896329170_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2896329170_)))))
                               (_g2895129626_
                                (lambda ()
                                  (if (gx#stx-box? ___stx4001440015_)
                                      (let ((_e2902729612_
                                             (unbox (gx#syntax-e
                                                     ___stx4001440015_))))
                                        (___kont4003340034_ _e2902729612_))
                                      (let ()
                                        (declare (not safe))
                                        (_g2895529509_)))))
                               (___match4010340104_
                                (lambda (_e2898429851_
                                         _hd2898329855_
                                         _tl2898229858_)
                                  (let ((_L29861_ _tl2898229858_))
                                    (if (gx#stx-list? _L29861_)
                                        (___kont4002140022_ _L29861_)
                                        (___match4025540256_
                                         _e2898429851_
                                         _hd2898329855_
                                         _tl2898229858_)))))
                               (___match4009340094_
                                (lambda (_e2898029936_
                                         _hd2897929940_
                                         _tl2897829943_)
                                  (let ((_L29946_ _tl2897829943_))
                                    (if (gx#stx-list? _L29946_)
                                        (___kont4001940020_ _L29946_)
                                        (___match4025540256_
                                         _e2898029936_
                                         _hd2897929940_
                                         _tl2897829943_))))))
                          (if (gx#stx-pair? ___stx4001440015_)
                              (let ((_e2897330021_
                                     (gx#syntax-e ___stx4001440015_)))
                                (let ((_tl2897130028_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2897330021_)))
                                      (_hd2897230025_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2897330021_))))
                                  (if (gx#identifier? _hd2897230025_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g42848_|
                                           _hd2897230025_)
                                          (if (gx#stx-pair? _tl2897130028_)
                                              (let ((_e2897630031_
                                                     (gx#syntax-e
                                                      _tl2897130028_)))
                                                (let ((_tl2897430038_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2897630031_)))
                                                      (_hd2897530035_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2897630031_))))
                                                  (___kont4001740018_
                                                   _tl2897430038_
                                                   _hd2897530035_)))
                                              (___match4025540256_
                                               _e2897330021_
                                               _hd2897230025_
                                               _tl2897130028_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g42847_|
                                               _hd2897230025_)
                                              (___match4009340094_
                                               _e2897330021_
                                               _hd2897230025_
                                               _tl2897130028_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g42846_|
                                                   _hd2897230025_)
                                                  (___match4010340104_
                                                   _e2897330021_
                                                   _hd2897230025_
                                                   _tl2897130028_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g42845_|
                                                       _hd2897230025_)
                                                      (if (gx#stx-pair?
                                                           _tl2897130028_)
                                                          (let ((_e2899129821_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2897130028_)))
                    (let ((_tl2898929828_
                           (let () (declare (not safe)) (##cdr _e2899129821_)))
                          (_hd2899029825_
                           (let ()
                             (declare (not safe))
                             (##car _e2899129821_))))
                      (if (gx#stx-null? _tl2898929828_)
                          (___kont4002340024_ _hd2899029825_)
                          (___match4025540256_
                           _e2897330021_
                           _hd2897230025_
                           _tl2897130028_))))
                  (___match4025540256_
                   _e2897330021_
                   _hd2897230025_
                   _tl2897130028_))
              (if (gx#free-identifier=?
                   |gerbil/core$<match>[1]#_g42844_|
                   _hd2897230025_)
                  (if (gx#stx-pair? _tl2897130028_)
                      (let ((_e2899929767_ (gx#syntax-e _tl2897130028_)))
                        (let ((_tl2899729774_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2899929767_)))
                              (_hd2899829771_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2899929767_))))
                          (if (gx#stx-pair? _tl2899729774_)
                              (let ((_e2900229777_
                                     (gx#syntax-e _tl2899729774_)))
                                (let ((_tl2900029784_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2900229777_)))
                                      (_hd2900129781_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2900229777_))))
                                  (if (gx#stx-null? _tl2900029784_)
                                      (___kont4002540026_
                                       _hd2900129781_
                                       _hd2899829771_)
                                      (___match4025540256_
                                       _e2897330021_
                                       _hd2897230025_
                                       _tl2897130028_))))
                              (___match4025540256_
                               _e2897330021_
                               _hd2897230025_
                               _tl2897130028_))))
                      (___match4025540256_
                       _e2897330021_
                       _hd2897230025_
                       _tl2897130028_))
                  (if (gx#free-identifier=?
                       |gerbil/core$<match>[1]#_g42843_|
                       _hd2897230025_)
                      (if (gx#stx-pair? _tl2897130028_)
                          (let ((_e2901129711_ (gx#syntax-e _tl2897130028_)))
                            (let ((_tl2900929718_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2901129711_)))
                                  (_hd2901029715_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2901129711_))))
                              (if (gx#stx-pair? _tl2900929718_)
                                  (let ((_e2901429721_
                                         (gx#syntax-e _tl2900929718_)))
                                    (let ((_tl2901229728_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2901429721_)))
                                          (_hd2901329725_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2901429721_))))
                                      (___kont4002740028_
                                       _tl2901229728_
                                       _hd2901329725_
                                       _hd2901029715_)))
                                  (___match4025540256_
                                   _e2897330021_
                                   _hd2897230025_
                                   _tl2897130028_))))
                          (___match4025540256_
                           _e2897330021_
                           _hd2897230025_
                           _tl2897130028_))
                      (if (gx#free-identifier=?
                           |gerbil/core$<match>[1]#_g42842_|
                           _hd2897230025_)
                          (___kont4002940030_ _tl2897130028_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g42841_|
                               _hd2897230025_)
                              (if (gx#stx-pair? _tl2897130028_)
                                  (let ((_e2902529643_
                                         (gx#syntax-e _tl2897130028_)))
                                    (let ((_tl2902329650_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2902529643_)))
                                          (_hd2902429647_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2902529643_))))
                                      (if (gx#stx-null? _tl2902329650_)
                                          (___kont4003140032_ _hd2902429647_)
                                          (___match4025540256_
                                           _e2897330021_
                                           _hd2897230025_
                                           _tl2897130028_))))
                                  (___match4025540256_
                                   _e2897330021_
                                   _hd2897230025_
                                   _tl2897130028_))
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g42840_|
                                   _hd2897230025_)
                                  (if (gx#stx-pair? _tl2897130028_)
                                      (let ((_e2903429582_
                                             (gx#syntax-e _tl2897130028_)))
                                        (let ((_tl2903229589_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2903429582_)))
                                              (_hd2903329586_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2903429582_))))
                                          (if (gx#stx-null? _tl2903229589_)
                                              (___kont4003540036_
                                               _hd2903329586_)
                                              (___kont4003740038_
                                               _tl2897130028_))))
                                      (___kont4003740038_ _tl2897130028_))
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g42839_|
                                       _hd2897230025_)
                                      (___kont4003940040_ _tl2897130028_)
                                      (___match4025540256_
                                       _e2897330021_
                                       _hd2897230025_
                                       _tl2897130028_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (___match4025540256_
                                       _e2897330021_
                                       _hd2897230025_
                                       _tl2897130028_))))
                              (let ()
                                (declare (not safe))
                                (_g2895129626_))))))))
                 (_parse-list28590_
                  (lambda (_body28770_)
                    (let* ((___stx4034440345_ _body28770_)
                           (_g2877628805_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4034440345_))))
                      (let ((___kont4034740348_
                             (lambda (_L28923_)
                               (let ()
                                 (declare (not safe))
                                 (_parse128588_ _L28923_))))
                            (___kont4034940350_
                             (lambda (_L28875_ _L28877_ _L28878_)
                               (cons 'splice:
                                     (cons (let ()
                                             (declare (not safe))
                                             (_parse128588_ _L28878_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_parse-list28590_
                                                    _L28875_))
                                                 '())))))
                            (___kont4035140352_
                             (lambda (_L28833_ _L28835_)
                               (cons 'cons:
                                     (cons (let ()
                                             (declare (not safe))
                                             (_parse128588_ _L28835_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_parse-list28590_
                                                    _L28833_))
                                                 '())))))
                            (___kont4035340354_
                             (lambda ()
                               (if (gx#stx-null? _body28770_)
                                   (cons 'null: '())
                                   (if (not (gx#stx-pair? _body28770_))
                                       (let ()
                                         (declare (not safe))
                                         (_parse128588_ _body28770_))
                                       (let ()
                                         (declare (not safe))
                                         (_parse-error28595_ _body28770_)))))))
                        (let* ((___match4039340394_
                                (lambda (_e2879928823_
                                         _hd2879828827_
                                         _tl2879728830_)
                                  (let ((_L28833_ _tl2879728830_)
                                        (_L28835_ _hd2879828827_))
                                    (if (not (gx#ellipsis? _L28835_))
                                        (___kont4035140352_ _L28833_ _L28835_)
                                        (___kont4035340354_)))))
                               (___match4038740388_
                                (lambda (_e2879128855_
                                         _hd2879028859_
                                         _tl2878928862_
                                         _e2879428865_
                                         _hd2879328869_
                                         _tl2879228872_)
                                  (let ((_L28875_ _tl2879228872_)
                                        (_L28877_ _hd2879328869_)
                                        (_L28878_ _hd2879028859_))
                                    (if (gx#ellipsis? _L28877_)
                                        (___kont4034940350_
                                         _L28875_
                                         _L28877_
                                         _L28878_)
                                        (___match4039340394_
                                         _e2879128855_
                                         _hd2879028859_
                                         _tl2878928862_))))))
                          (if (gx#stx-pair? ___stx4034440345_)
                              (let ((_e2878128899_
                                     (gx#syntax-e ___stx4034440345_)))
                                (let ((_tl2877928906_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2878128899_)))
                                      (_hd2878028903_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2878128899_))))
                                  (if (gx#stx-datum? _hd2878028903_)
                                      (let ((_e2878228909_
                                             (gx#stx-e _hd2878028903_)))
                                        (if (equal? _e2878228909_ '::)
                                            (if (gx#stx-pair? _tl2877928906_)
                                                (let ((_e2878528913_
                                                       (gx#syntax-e
                                                        _tl2877928906_)))
                                                  (let ((_tl2878328920_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2878528913_)))
                                                        (_hd2878428917_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2878528913_))))
                                                    (if (gx#stx-null?
                                                         _tl2878328920_)
                                                        (___kont4034740348_
                                                         _hd2878428917_)
                                                        (___match4038740388_
                                                         _e2878128899_
                                                         _hd2878028903_
                                                         _tl2877928906_
                                                         _e2878528913_
                                                         _hd2878428917_
                                                         _tl2878328920_))))
                                                (___match4039340394_
                                                 _e2878128899_
                                                 _hd2878028903_
                                                 _tl2877928906_))
                                            (if (gx#stx-pair? _tl2877928906_)
                                                (let ((_e2879428865_
                                                       (gx#syntax-e
                                                        _tl2877928906_)))
                                                  (let ((_tl2879228872_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2879428865_)))
                                                        (_hd2879328869_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2879428865_))))
                                                    (___match4038740388_
                                                     _e2878128899_
                                                     _hd2878028903_
                                                     _tl2877928906_
                                                     _e2879428865_
                                                     _hd2879328869_
                                                     _tl2879228872_)))
                                                (___match4039340394_
                                                 _e2878128899_
                                                 _hd2878028903_
                                                 _tl2877928906_))))
                                      (if (gx#stx-pair? _tl2877928906_)
                                          (let ((_e2879428865_
                                                 (gx#syntax-e _tl2877928906_)))
                                            (let ((_tl2879228872_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2879428865_)))
                                                  (_hd2879328869_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2879428865_))))
                                              (___match4038740388_
                                               _e2878128899_
                                               _hd2878028903_
                                               _tl2877928906_
                                               _e2879428865_
                                               _hd2879328869_
                                               _tl2879228872_)))
                                          (___match4039340394_
                                           _e2878128899_
                                           _hd2878028903_
                                           _tl2877928906_)))))
                              (___kont4035340354_)))))))
                 (_parse-vector28591_
                  (lambda (_body28767_)
                    (if (let ()
                          (declare (not safe))
                          (_simple-vector?28592_ _body28767_))
                        (cons 'simple:
                              (cons (gx#stx-map _parse128588_ _body28767_)
                                    '()))
                        (cons 'list:
                              (cons (let ()
                                      (declare (not safe))
                                      (_parse-list28590_ _body28767_))
                                    '())))))
                 (_simple-vector?28592_
                  (lambda (_body28704_)
                    (let* ((___stx4039640397_ _body28704_)
                           (_g2870828720_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4039640397_))))
                      (let ((___kont4039940400_
                             (lambda (_L28748_ _L28750_)
                               (if (not (gx#ellipsis? _L28750_))
                                   (let ()
                                     (declare (not safe))
                                     (_simple-vector?28592_ _L28748_))
                                   '#f)))
                            (___kont4040140402_
                             (lambda () (gx#stx-null? _body28704_))))
                        (if (gx#stx-pair? ___stx4039640397_)
                            (let ((_e2871428738_
                                   (gx#syntax-e ___stx4039640397_)))
                              (let ((_tl2871228745_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2871428738_)))
                                    (_hd2871328742_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2871428738_))))
                                (___kont4039940400_
                                 _tl2871228745_
                                 _hd2871328742_)))
                            (___kont4040140402_))))))
                 (_parse-class-body28593_
                  (lambda (_body28613_)
                    (let _recur28616_ ((_rest28619_ _body28613_))
                      (let* ((___stx4041240413_ _rest28619_)
                             (_g2862328639_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4041240413_))))
                        (let ((___kont4041540416_
                               (lambda (_L28677_ _L28679_ _L28680_)
                                 (cons* _L28680_
                                        (let ()
                                          (declare (not safe))
                                          (_parse128588_ _L28679_))
                                        (let ()
                                          (declare (not safe))
                                          (_recur28616_ _L28677_)))))
                              (___kont4041740418_
                               (lambda ()
                                 (if (gx#stx-null? _rest28619_)
                                     '()
                                     (let ()
                                       (declare (not safe))
                                       (_parse-error28595_ _rest28619_))))))
                          (let ((___match4043140432_
                                 (lambda (_e2863028657_
                                          _hd2862928661_
                                          _tl2862828664_
                                          _e2863328667_
                                          _hd2863228671_
                                          _tl2863128674_)
                                   (let ((_L28677_ _tl2863128674_)
                                         (_L28679_ _hd2863228671_)
                                         (_L28680_ _hd2862928661_))
                                     (if (gx#stx-keyword? _L28680_)
                                         (___kont4041540416_
                                          _L28677_
                                          _L28679_
                                          _L28680_)
                                         (___kont4041740418_))))))
                            (if (gx#stx-pair? ___stx4041240413_)
                                (let ((_e2863028657_
                                       (gx#syntax-e ___stx4041240413_)))
                                  (let ((_tl2862828664_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2863028657_)))
                                        (_hd2862928661_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2863028657_))))
                                    (if (gx#stx-pair? _tl2862828664_)
                                        (let ((_e2863328667_
                                               (gx#syntax-e _tl2862828664_)))
                                          (let ((_tl2863128674_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2863328667_)))
                                                (_hd2863228671_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2863328667_))))
                                            (___match4043140432_
                                             _e2863028657_
                                             _hd2862928661_
                                             _tl2862828664_
                                             _e2863328667_
                                             _hd2863228671_
                                             _tl2863128674_)))
                                        (___kont4041740418_))))
                                (___kont4041740418_))))))))
                 (_parse-qq28594_
                  (lambda (_hd28600_)
                    (let ((_g2860228609_
                           (lambda (_g2860328605_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g2860328605_))))
                      (declare (not safe))
                      (_g2860228609_ _hd28600_))))
                 (_parse-error28595_
                  (lambda (_hd28597_)
                    (apply gx#raise-syntax-error
                           '#f
                           '"Bad syntax; illegal pattern"
                           (if _match-stx28586_
                               (cons _match-stx28586_
                                     (cons _stx28584_ (cons _hd28597_ '())))
                               (cons _stx28584_ (cons _hd28597_ '())))))))
          (let () (declare (not safe)) (_parse128588_ _stx28584_)))))
    (define |gerbil/core$<match>[1]#parse-match-pattern__0|
      (lambda (_stx30268_)
        (let ((_match-stx30271_ '#f))
          (declare (not safe))
          (|gerbil/core$<match>[1]#parse-match-pattern__%|
           _stx30268_
           _match-stx30271_))))
    (define |gerbil/core$<match>[1]#parse-match-pattern|
      (lambda _g42850_
        (let ((_g42849_ (let () (declare (not safe)) (##length _g42850_))))
          (cond ((let () (declare (not safe)) (##fx= _g42849_ 1))
                 (apply (lambda (_stx30268_)
                          (let ()
                            (declare (not safe))
                            (|gerbil/core$<match>[1]#parse-match-pattern__0|
                             _stx30268_)))
                        _g42850_))
                ((let () (declare (not safe)) (##fx= _g42849_ 2))
                 (apply (lambda (_stx30274_ _match-stx30276_)
                          (let ()
                            (declare (not safe))
                            (|gerbil/core$<match>[1]#parse-match-pattern__%|
                             _stx30274_
                             _match-stx30276_)))
                        _g42850_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core$<match>[1]#parse-match-pattern|
                  _g42850_))))))
    (define |gerbil/core$<match>[1]#match-pattern?|
      (lambda (_stx28568_)
        (call-with-current-continuation
         (lambda (_E28572_)
           (with-exception-handler
            (let ((_E!28575_ (current-exception-handler)))
              (lambda (_e28578_)
                (if (syntax-error? _e28578_)
                    (_E28572_ '#f)
                    (_E!28575_ _e28578_))))
            (lambda ()
              (let ()
                (declare (not safe))
                (|gerbil/core$<match>[1]#parse-match-pattern__0| _stx28568_))
              '#t))))))
    (define |gerbil/core$<match>[1]#match-pattern-vars|
      (lambda (_ptree27303_)
        (letrec ((_loop27306_
                  (lambda (_ptree27593_ _vars27595_ _K27596_)
                    (let* ((___stx4053040531_ _ptree27593_)
                           (_g2760927719_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4053040531_))))
                      (let ((___kont4053340534_
                             (lambda (_L28349_)
                               (let* ((___stx4045040451_ _L28349_)
                                      (_g2836628400_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4045040451_))))
                                 (let ((___kont4045340454_
                                        (lambda (_L28549_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop27306_
                                             _L28549_
                                             _vars27595_
                                             _K27596_))))
                                       (___kont4045540456_
                                        (lambda (_L28518_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop27306_
                                             _L28518_
                                             _vars27595_
                                             _K27596_))))
                                       (___kont4045740458_
                                        (lambda (_L28466_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop27306_
                                             _L28466_
                                             _vars27595_
                                             _K27596_))))
                                       (___kont4045940460_
                                        (lambda () (_K27596_ _vars27595_))))
                                   (if (gx#stx-pair? ___stx4045040451_)
                                       (let ((_e2837128539_
                                              (gx#syntax-e ___stx4045040451_)))
                                         (let ((_tl2836928546_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2837128539_)))
                                               (_hd2837028543_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2837128539_))))
                                           (if (gx#stx-null? _tl2836928546_)
                                               (___kont4045340454_
                                                _hd2837028543_)
                                               (if (gx#stx-datum?
                                                    _hd2837028543_)
                                                   (let ((_e2837628504_
                                                          (gx#stx-e
                                                           _hd2837028543_)))
                                                     (if (equal? _e2837628504_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '=>:)
                 (if (gx#stx-pair? _tl2836928546_)
                     (let ((_e2837928508_ (gx#syntax-e _tl2836928546_)))
                       (let ((_tl2837728515_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2837928508_)))
                             (_hd2837828512_
                              (let ()
                                (declare (not safe))
                                (##car _e2837928508_))))
                         (if (gx#stx-null? _tl2837728515_)
                             (___kont4045540456_ _hd2837828512_)
                             (___kont4045940460_))))
                     (___kont4045940460_))
                 (if (equal? _e2837628504_ '::)
                     (if (gx#stx-pair? _tl2836928546_)
                         (let ((_e2838728432_ (gx#syntax-e _tl2836928546_)))
                           (let ((_tl2838528439_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e2838728432_)))
                                 (_hd2838628436_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e2838728432_))))
                             (if (gx#stx-pair? _tl2838528439_)
                                 (let ((_e2839028442_
                                        (gx#syntax-e _tl2838528439_)))
                                   (let ((_tl2838828449_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2839028442_)))
                                         (_hd2838928446_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2839028442_))))
                                     (if (gx#stx-datum? _hd2838928446_)
                                         (let ((_e2839128452_
                                                (gx#stx-e _hd2838928446_)))
                                           (if (equal? _e2839128452_ '=>:)
                                               (if (gx#stx-pair?
                                                    _tl2838828449_)
                                                   (let ((_e2839428456_
                                                          (gx#syntax-e
                                                           _tl2838828449_)))
                                                     (let ((_tl2839228463_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e2839428456_)))
                                                           (_hd2839328460_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e2839428456_))))
                                                       (if (gx#stx-null?
                                                            _tl2839228463_)
                                                           (___kont4045740458_
                                                            _hd2839328460_)
                                                           (___kont4045940460_))))
                                                   (___kont4045940460_))
                                               (___kont4045940460_)))
                                         (___kont4045940460_))))
                                 (___kont4045940460_))))
                         (___kont4045940460_))
                     (___kont4045940460_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4045940460_)))))
                                       (___kont4045940460_))))))
                            (___kont4053540536_
                             (lambda (_L28236_ _L28238_)
                               (let* ((___stx4043440435_ _L28236_)
                                      (_g2825428266_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4043440435_))))
                                 (let ((___kont4043740438_
                                        (lambda (_L28294_ _L28296_)
                                          (let ((__tmp42851
                                                 (lambda (_g2830828310_)
                                                   (let ((__tmp42852
                                                          (cons _L28238_
                                                                _L28294_)))
                                                     (declare (not safe))
                                                     (_loop27306_
                                                      __tmp42852
                                                      _g2830828310_
                                                      _K27596_)))))
                                            (declare (not safe))
                                            (_loop27306_
                                             _L28296_
                                             _vars27595_
                                             __tmp42851))))
                                       (___kont4043940440_
                                        (lambda () (_K27596_ _vars27595_))))
                                   (if (gx#stx-pair? ___stx4043440435_)
                                       (let ((_e2826028284_
                                              (gx#syntax-e ___stx4043440435_)))
                                         (let ((_tl2825828291_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2826028284_)))
                                               (_hd2825928288_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2826028284_))))
                                           (___kont4043740438_
                                            _tl2825828291_
                                            _hd2825928288_)))
                                       (___kont4043940440_))))))
                            (___kont4053740538_
                             (lambda (_L28205_)
                               (let ()
                                 (declare (not safe))
                                 (_loop27306_ _L28205_ _vars27595_ _K27596_))))
                            (___kont4053940540_
                             (lambda (_L28151_ _L28153_)
                               (let ((__tmp42853
                                      (lambda (_g2816828170_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop27306_
                                           _L28151_
                                           _g2816828170_
                                           _K27596_)))))
                                 (declare (not safe))
                                 (_loop27306_
                                  _L28153_
                                  _vars27595_
                                  __tmp42853))))
                            (___kont4054140542_
                             (lambda (_L28087_ _L28089_)
                               (let ((__tmp42854
                                      (lambda (_g2810428106_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop27306_
                                           _L28087_
                                           _g2810428106_
                                           _K27596_)))))
                                 (declare (not safe))
                                 (_loop27306_
                                  _L28089_
                                  _vars27595_
                                  __tmp42854))))
                            (___kont4054340544_
                             (lambda (_L28032_)
                               (let ()
                                 (declare (not safe))
                                 (_loop27306_ _L28032_ _vars27595_ _K27596_))))
                            (___kont4054540546_
                             (lambda (_L27982_ _L27984_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-vector27308_
                                  _L27982_
                                  _vars27595_
                                  _K27596_))))
                            (___kont4054740548_
                             (lambda (_L27939_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-vector27308_
                                  _L27939_
                                  _vars27595_
                                  _K27596_))))
                            (___kont4054940550_
                             (lambda (_L27882_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-class-list27310_
                                  _L27882_
                                  _vars27595_
                                  _K27596_))))
                            (___kont4055140552_
                             (lambda (_L27823_ _L27825_)
                               (let ()
                                 (declare (not safe))
                                 (_loop27306_ _L27823_ _vars27595_ _K27596_))))
                            (___kont4055340554_
                             (lambda (_L27761_)
                               (if (find (lambda (_g2777627778_)
                                           (gx#bound-identifier=?
                                            _g2777627778_
                                            _L27761_))
                                         _vars27595_)
                                   (_K27596_ _vars27595_)
                                   (_K27596_ (cons _L27761_ _vars27595_)))))
                            (___kont4055540556_
                             (lambda () (_K27596_ _vars27595_))))
                        (let* ((___match4068740688_
                                (lambda (_e2766827962_
                                         _hd2766727966_
                                         _tl2766627969_
                                         _e2767127972_
                                         _hd2767027976_
                                         _tl2766927979_)
                                  (let ((_L27982_ _hd2767027976_)
                                        (_L27984_ _hd2766727966_))
                                    (if (or (gx#stx-eq? 'values: _L27984_)
                                            (gx#stx-eq? 'vector: _L27984_))
                                        (___kont4054540546_ _L27982_ _L27984_)
                                        (if (gx#stx-datum? _hd2766727966_)
                                            (let ((_e2767627915_
                                                   (gx#stx-e _hd2766727966_)))
                                              (if (equal? _e2767627915_
                                                          'struct:)
                                                  (___kont4055540556_)
                                                  (if (equal? _e2767627915_
                                                              'class:)
                                                      (___kont4055540556_)
                                                      (if (equal? _e2767627915_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'apply:)
                  (___kont4055540556_)
                  (if (equal? _e2767627915_ 'var:)
                      (___kont4055340554_ _hd2767027976_)
                      (___kont4055540556_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont4055540556_))))))
                               (___match4058140582_
                                (lambda (_e2762328226_
                                         _hd2762228230_
                                         _tl2762128233_)
                                  (let ((_L28236_ _tl2762128233_)
                                        (_L28238_ _hd2762228230_))
                                    (if (or (gx#stx-eq? 'and: _L28238_)
                                            (gx#stx-eq? 'or: _L28238_))
                                        (___kont4053540536_ _L28236_ _L28238_)
                                        (if (gx#stx-datum? _hd2762228230_)
                                            (let ((_e2762828191_
                                                   (gx#stx-e _hd2762228230_)))
                                              (if (equal? _e2762828191_ 'not:)
                                                  (if (gx#stx-pair?
                                                       _tl2762128233_)
                                                      (let ((_e2763128195_
                                                             (gx#syntax-e
                                                              _tl2762128233_)))
                                                        (let ((_tl2762928202_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2763128195_)))
                      (_hd2763028199_
                       (let () (declare (not safe)) (##car _e2763128195_))))
                  (if (gx#stx-null? _tl2762928202_)
                      (___kont4053740538_ _hd2763028199_)
                      (___kont4055540556_))))
              (___kont4055540556_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (equal? _e2762828191_
                                                              'cons:)
                                                      (if (gx#stx-pair?
                                                           _tl2762128233_)
                                                          (let ((_e2764028131_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2762128233_)))
                    (let ((_tl2763828138_
                           (let () (declare (not safe)) (##cdr _e2764028131_)))
                          (_hd2763928135_
                           (let ()
                             (declare (not safe))
                             (##car _e2764028131_))))
                      (if (gx#stx-pair? _tl2763828138_)
                          (let ((_e2764328141_ (gx#syntax-e _tl2763828138_)))
                            (let ((_tl2764128148_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2764328141_)))
                                  (_hd2764228145_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2764328141_))))
                              (if (gx#stx-null? _tl2764128148_)
                                  (___kont4053940540_
                                   _hd2764228145_
                                   _hd2763928135_)
                                  (___kont4055540556_))))
                          (if (gx#stx-null? _tl2763828138_)
                              (___match4068740688_
                               _e2762328226_
                               _hd2762228230_
                               _tl2762128233_
                               _e2764028131_
                               _hd2763928135_
                               _tl2763828138_)
                              (___kont4055540556_)))))
                  (___kont4055540556_))
              (if (equal? _e2762828191_ 'splice:)
                  (if (gx#stx-pair? _tl2762128233_)
                      (let ((_e2765228067_ (gx#syntax-e _tl2762128233_)))
                        (let ((_tl2765028074_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2765228067_)))
                              (_hd2765128071_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2765228067_))))
                          (if (gx#stx-pair? _tl2765028074_)
                              (let ((_e2765528077_
                                     (gx#syntax-e _tl2765028074_)))
                                (let ((_tl2765328084_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2765528077_)))
                                      (_hd2765428081_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2765528077_))))
                                  (if (gx#stx-null? _tl2765328084_)
                                      (___kont4054140542_
                                       _hd2765428081_
                                       _hd2765128071_)
                                      (___kont4055540556_))))
                              (if (gx#stx-null? _tl2765028074_)
                                  (___match4068740688_
                                   _e2762328226_
                                   _hd2762228230_
                                   _tl2762128233_
                                   _e2765228067_
                                   _hd2765128071_
                                   _tl2765028074_)
                                  (___kont4055540556_)))))
                      (___kont4055540556_))
                  (if (equal? _e2762828191_ 'box:)
                      (if (gx#stx-pair? _tl2762128233_)
                          (let ((_e2766328022_ (gx#syntax-e _tl2762128233_)))
                            (let ((_tl2766128029_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2766328022_)))
                                  (_hd2766228026_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2766328022_))))
                              (if (gx#stx-null? _tl2766128029_)
                                  (___kont4054340544_ _hd2766228026_)
                                  (___kont4055540556_))))
                          (___kont4055540556_))
                      (if (gx#stx-pair? _tl2762128233_)
                          (let ((_e2767127972_ (gx#syntax-e _tl2762128233_)))
                            (let ((_tl2766927979_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2767127972_)))
                                  (_hd2767027976_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2767127972_))))
                              (if (gx#stx-null? _tl2766927979_)
                                  (___match4068740688_
                                   _e2762328226_
                                   _hd2762228230_
                                   _tl2762128233_
                                   _e2767127972_
                                   _hd2767027976_
                                   _tl2766927979_)
                                  (if (equal? _e2762828191_ 'struct:)
                                      (if (gx#stx-pair? _tl2766927979_)
                                          (let ((_e2768227929_
                                                 (gx#syntax-e _tl2766927979_)))
                                            (let ((_tl2768027936_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2768227929_)))
                                                  (_hd2768127933_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2768227929_))))
                                              (if (gx#stx-null? _tl2768027936_)
                                                  (___kont4054740548_
                                                   _hd2768127933_)
                                                  (___kont4055540556_))))
                                          (___kont4055540556_))
                                      (if (equal? _e2762828191_ 'class:)
                                          (if (gx#stx-pair? _tl2766927979_)
                                              (let ((_e2769327872_
                                                     (gx#syntax-e
                                                      _tl2766927979_)))
                                                (let ((_tl2769127879_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2769327872_)))
                                                      (_hd2769227876_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2769327872_))))
                                                  (if (gx#stx-null?
                                                       _tl2769127879_)
                                                      (___kont4054940550_
                                                       _hd2769227876_)
                                                      (___kont4055540556_))))
                                              (___kont4055540556_))
                                          (if (equal? _e2762828191_ 'apply:)
                                              (if (gx#stx-pair? _tl2766927979_)
                                                  (let ((_e2770527813_
                                                         (gx#syntax-e
                                                          _tl2766927979_)))
                                                    (let ((_tl2770327820_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2770527813_)))
                                                          (_hd2770427817_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2770527813_))))
                                                      (if (gx#stx-null?
                                                           _tl2770327820_)
                                                          (___kont4055140552_
                                                           _hd2770427817_
                                                           _hd2767027976_)
                                                          (___kont4055540556_))))
                                                  (___kont4055540556_))
                                              (___kont4055540556_)))))))
                          (___kont4055540556_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _tl2762128233_)
                                                (let ((_e2767127972_
                                                       (gx#syntax-e
                                                        _tl2762128233_)))
                                                  (let ((_tl2766927979_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2767127972_)))
                                                        (_hd2767027976_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2767127972_))))
                                                    (if (gx#stx-null?
                                                         _tl2766927979_)
                                                        (___match4068740688_
                                                         _e2762328226_
                                                         _hd2762228230_
                                                         _tl2762128233_
                                                         _e2767127972_
                                                         _hd2767027976_
                                                         _tl2766927979_)
                                                        (___kont4055540556_))))
                                                (___kont4055540556_))))))))
                          (if (gx#stx-pair? ___stx4053040531_)
                              (let ((_e2761428325_
                                     (gx#syntax-e ___stx4053040531_)))
                                (let ((_tl2761228332_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2761428325_)))
                                      (_hd2761328329_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2761428325_))))
                                  (if (gx#stx-datum? _hd2761328329_)
                                      (let ((_e2761528335_
                                             (gx#stx-e _hd2761328329_)))
                                        (if (equal? _e2761528335_ '?:)
                                            (if (gx#stx-pair? _tl2761228332_)
                                                (let ((_e2761828339_
                                                       (gx#syntax-e
                                                        _tl2761228332_)))
                                                  (let ((_tl2761628346_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2761828339_)))
                                                        (_hd2761728343_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2761828339_))))
                                                    (___kont4053340534_
                                                     _tl2761628346_)))
                                                (___match4058140582_
                                                 _e2761428325_
                                                 _hd2761328329_
                                                 _tl2761228332_))
                                            (___match4058140582_
                                             _e2761428325_
                                             _hd2761328329_
                                             _tl2761228332_)))
                                      (___match4058140582_
                                       _e2761428325_
                                       _hd2761328329_
                                       _tl2761228332_))))
                              (___kont4055540556_)))))))
                 (_loop-vector27308_
                  (lambda (_body27469_ _vars27471_ _K27472_)
                    (let* ((___stx4078840789_ _body27469_)
                           (_g2747527498_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4078840789_))))
                      (let ((___kont4079140792_
                             (lambda (_L27575_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-list27309_
                                  _L27575_
                                  _vars27471_
                                  _K27472_))))
                            (___kont4079340794_
                             (lambda (_L27529_)
                               (let ()
                                 (declare (not safe))
                                 (_loop27306_
                                  _L27529_
                                  _vars27471_
                                  _K27472_)))))
                        (if (gx#stx-pair? ___stx4078840789_)
                            (let ((_e2748027551_
                                   (gx#syntax-e ___stx4078840789_)))
                              (let ((_tl2747827558_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2748027551_)))
                                    (_hd2747927555_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2748027551_))))
                                (if (gx#stx-datum? _hd2747927555_)
                                    (let ((_e2748127561_
                                           (gx#stx-e _hd2747927555_)))
                                      (if (equal? _e2748127561_ 'simple:)
                                          (if (gx#stx-pair? _tl2747827558_)
                                              (let ((_e2748427565_
                                                     (gx#syntax-e
                                                      _tl2747827558_)))
                                                (let ((_tl2748227572_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2748427565_)))
                                                      (_hd2748327569_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2748427565_))))
                                                  (if (gx#stx-null?
                                                       _tl2748227572_)
                                                      (___kont4079140792_
                                                       _hd2748327569_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g2747527498_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g2747527498_)))
                                          (if (equal? _e2748127561_ 'list:)
                                              (if (gx#stx-pair? _tl2747827558_)
                                                  (let ((_e2749227519_
                                                         (gx#syntax-e
                                                          _tl2747827558_)))
                                                    (let ((_tl2749027526_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2749227519_)))
                                                          (_hd2749127523_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2749227519_))))
                                                      (if (gx#stx-null?
                                                           _tl2749027526_)
                                                          (___kont4079340794_
                                                           _hd2749127523_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g2747527498_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2747527498_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g2747527498_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2747527498_)))))
                            (let () (declare (not safe)) (_g2747527498_)))))))
                 (_loop-list27309_
                  (lambda (_rest27399_ _vars27401_ _K27402_)
                    (let* ((___stx4083840839_ _rest27399_)
                           (_g2740527417_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4083840839_))))
                      (let ((___kont4084140842_
                             (lambda (_L27445_ _L27447_)
                               (let ((__tmp42855
                                      (lambda (_g2745927461_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop-list27309_
                                           _L27445_
                                           _g2745927461_
                                           _K27402_)))))
                                 (declare (not safe))
                                 (_loop27306_
                                  _L27447_
                                  _vars27401_
                                  __tmp42855))))
                            (___kont4084340844_
                             (lambda () (_K27402_ _vars27401_))))
                        (if (gx#stx-pair? ___stx4083840839_)
                            (let ((_e2741127435_
                                   (gx#syntax-e ___stx4083840839_)))
                              (let ((_tl2740927442_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2741127435_)))
                                    (_hd2741027439_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2741127435_))))
                                (___kont4084140842_
                                 _tl2740927442_
                                 _hd2741027439_)))
                            (___kont4084340844_))))))
                 (_loop-class-list27310_
                  (lambda (_rest27312_ _vars27314_ _K27315_)
                    (let* ((___stx4085440855_ _rest27312_)
                           (_g2731827333_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4085440855_))))
                      (let ((___kont4085740858_
                             (lambda (_L27371_ _L27373_)
                               (let ((__tmp42856
                                      (lambda (_g2738927391_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop-class-list27310_
                                           _L27371_
                                           _g2738927391_
                                           _K27315_)))))
                                 (declare (not safe))
                                 (_loop27306_
                                  _L27373_
                                  _vars27314_
                                  __tmp42856))))
                            (___kont4085940860_
                             (lambda () (_K27315_ _vars27314_))))
                        (if (gx#stx-pair? ___stx4085440855_)
                            (let ((_e2732427351_
                                   (gx#syntax-e ___stx4085440855_)))
                              (let ((_tl2732227358_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2732427351_)))
                                    (_hd2732327355_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2732427351_))))
                                (if (gx#stx-pair? _tl2732227358_)
                                    (let ((_e2732727361_
                                           (gx#syntax-e _tl2732227358_)))
                                      (let ((_tl2732527368_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2732727361_)))
                                            (_hd2732627365_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2732727361_))))
                                        (___kont4085740858_
                                         _tl2732527368_
                                         _hd2732627365_)))
                                    (___kont4085940860_))))
                            (___kont4085940860_)))))))
          (let ()
            (declare (not safe))
            (_loop27306_ _ptree27303_ '() values)))))
    (define |gerbil/core$<match>[1]#generate-match1|
      (lambda (_stx23886_ _tgt23888_ _ptree23889_ _K23890_ _E23891_)
        (letrec ((_generate123893_
                  (lambda (_tgt25516_ _ptree25518_ _K25519_ _E25520_)
                    (let* ((_g2552225530_
                            (lambda (_g2552325526_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2552325526_)))
                           (_g2552127299_
                            (lambda (_g2552325534_)
                              ((lambda (_L25537_)
                                 (let ()
                                   (let* ((___stx4109041091_ _ptree25518_)
                                          (_g2556425706_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx4109041091_))))
                                     (let ((___kont4109341094_
                                            (lambda (_L27014_ _L27016_)
                                              (let* ((___stx4100841009_
                                                      _L27014_)
                                                     (_g2703327068_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4100841009_))))
                                                (let ((___kont4101141012_
                                                       (lambda ()
                                                         (cons 'if
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '?)
                                   (cons _L27016_ (cons _L25537_ '())))
                             (cons _K25519_ (cons _E25520_ '()))))))
              (___kont4101341014_
               (lambda (_L27269_)
                 (cons 'if
                       (cons (cons (gx#datum->syntax '#f '?)
                                   (cons _L27016_ (cons _L25537_ '())))
                             (cons (let ()
                                     (declare (not safe))
                                     (_generate123893_
                                      _tgt25516_
                                      _L27269_
                                      _K25519_
                                      _E25520_))
                                   (cons _E25520_ '()))))))
              (___kont4101541016_
               (lambda (_L27207_)
                 (let* ((_g2722127229_
                         (lambda (_g2722227225_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2722227225_)))
                        (_g2722027248_
                         (lambda (_g2722227233_)
                           ((lambda (_L27236_)
                              (let ()
                                (cons 'let
                                      (cons (cons (cons _L27236_
                                                        (cons (cons _L27016_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _L25537_ '()))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())
                                            (cons (cons 'if
                                                        (cons _L27236_
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (_generate123893_
                               _L27236_
                               _L27207_
                               _K25519_
                               _E25520_))
                            (cons _E25520_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                            _g2722227233_)))
                        (__tmp42857 (gx#genident 'e)))
                   (declare (not safe))
                   (_g2722027248_ __tmp42857))))
              (___kont4101741018_
               (lambda (_L27123_ _L27125_)
                 (let* ((_g2714527153_
                         (lambda (_g2714627149_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2714627149_)))
                        (_g2714427172_
                         (lambda (_g2714627157_)
                           ((lambda (_L27160_)
                              (let ()
                                (cons 'if
                                      (cons (cons (gx#datum->syntax '#f '?)
                                                  (cons _L27016_
                                                        (cons _L25537_ '())))
                                            (cons (cons 'let
                                                        (cons (cons (cons _L27160_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (cons _L27125_ (cons _L25537_ '()))
                                        '()))
                            '())
                      (cons (let ()
                              (declare (not safe))
                              (_generate123893_
                               _L27160_
                               _L27123_
                               _K25519_
                               _E25520_))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _E25520_ '()))))))
                            _g2714627157_)))
                        (__tmp42858 (gx#genident 'e)))
                   (declare (not safe))
                   (_g2714427172_ __tmp42858)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g2703027280_
                                                         (lambda ()
                                                           (if (gx#stx-pair?
                                                                ___stx4100841009_)
                                                               (let ((_e2703827259_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e ___stx4100841009_)))
                         (let ((_tl2703627266_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e2703827259_)))
                               (_hd2703727263_
                                (let ()
                                  (declare (not safe))
                                  (##car _e2703827259_))))
                           (if (gx#stx-null? _tl2703627266_)
                               (___kont4101341014_ _hd2703727263_)
                               (if (gx#stx-datum? _hd2703727263_)
                                   (let ((_e2704327193_
                                          (gx#stx-e _hd2703727263_)))
                                     (if (equal? _e2704327193_ '=>:)
                                         (if (gx#stx-pair? _tl2703627266_)
                                             (let ((_e2704627197_
                                                    (gx#syntax-e
                                                     _tl2703627266_)))
                                               (let ((_tl2704427204_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2704627197_)))
                                                     (_hd2704527201_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2704627197_))))
                                                 (if (gx#stx-null?
                                                      _tl2704427204_)
                                                     (___kont4101541016_
                                                      _hd2704527201_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2703327068_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2703327068_)))
                                         (if (equal? _e2704327193_ '::)
                                             (if (gx#stx-pair? _tl2703627266_)
                                                 (let ((_e2705527089_
                                                        (gx#syntax-e
                                                         _tl2703627266_)))
                                                   (let ((_tl2705327096_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e2705527089_)))
                                                         (_hd2705427093_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e2705527089_))))
                                                     (if (gx#stx-pair?
                                                          _tl2705327096_)
                                                         (let ((_e2705827099_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2705327096_)))
                   (let ((_tl2705627106_
                          (let () (declare (not safe)) (##cdr _e2705827099_)))
                         (_hd2705727103_
                          (let () (declare (not safe)) (##car _e2705827099_))))
                     (if (gx#stx-datum? _hd2705727103_)
                         (let ((_e2705927109_ (gx#stx-e _hd2705727103_)))
                           (if (equal? _e2705927109_ '=>:)
                               (if (gx#stx-pair? _tl2705627106_)
                                   (let ((_e2706227113_
                                          (gx#syntax-e _tl2705627106_)))
                                     (let ((_tl2706027120_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2706227113_)))
                                           (_hd2706127117_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2706227113_))))
                                       (if (gx#stx-null? _tl2706027120_)
                                           (___kont4101741018_
                                            _hd2706127117_
                                            _hd2705427093_)
                                           (let ()
                                             (declare (not safe))
                                             (_g2703327068_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g2703327068_)))
                               (let () (declare (not safe)) (_g2703327068_))))
                         (let () (declare (not safe)) (_g2703327068_)))))
                 (let () (declare (not safe)) (_g2703327068_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2703327068_)))
                                             (let ()
                                               (declare (not safe))
                                               (_g2703327068_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g2703327068_))))))
                       (let () (declare (not safe)) (_g2703327068_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         ___stx4100841009_)
                                                        (___kont4101141012_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g2703027280_))))))))
                                           (___kont4109541096_
                                            (lambda (_L26911_)
                                              (let* ((___stx4099240993_
                                                      _L26911_)
                                                     (_g2692426936_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4099240993_))))
                                                (let ((___kont4099540996_
                                                       (lambda (_L26964_
                                                                _L26966_)
                                                         (let ((__tmp42859
                                                                (let ((__tmp42860
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons 'and: _L26964_)))
                          (declare (not safe))
                          (_generate123893_
                           _tgt25516_
                           __tmp42860
                           _K25519_
                           _E25520_))))
                   (declare (not safe))
                   (_generate123893_
                    _tgt25516_
                    _L26966_
                    __tmp42859
                    _E25520_))))
              (___kont4099740998_ (lambda () _K25519_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4099240993_)
                                                      (let ((_e2693026954_
                                                             (gx#syntax-e
                                                              ___stx4099240993_)))
                                                        (let ((_tl2692826961_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2693026954_)))
                      (_hd2692926958_
                       (let () (declare (not safe)) (##car _e2693026954_))))
                  (___kont4099540996_ _tl2692826961_ _hd2692926958_)))
              (___kont4099740998_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4109741098_
                                            (lambda (_L26818_)
                                              (let* ((___stx4097640977_
                                                      _L26818_)
                                                     (_g2683126843_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4097640977_))))
                                                (let ((___kont4097940980_
                                                       (lambda (_L26871_
                                                                _L26873_)
                                                         (let ((__tmp42861
                                                                (let ((__tmp42862
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons 'or: _L26871_)))
                          (declare (not safe))
                          (_generate123893_
                           _tgt25516_
                           __tmp42862
                           _K25519_
                           _E25520_))))
                   (declare (not safe))
                   (_generate123893_
                    _tgt25516_
                    _L26873_
                    _K25519_
                    __tmp42861))))
              (___kont4098140982_ (lambda () _E25520_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4097640977_)
                                                      (let ((_e2683726861_
                                                             (gx#syntax-e
                                                              ___stx4097640977_)))
                                                        (let ((_tl2683526868_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2683726861_)))
                      (_hd2683626865_
                       (let () (declare (not safe)) (##car _e2683726861_))))
                  (___kont4097940980_ _tl2683526868_ _hd2683626865_)))
              (___kont4098140982_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4109941100_
                                            (lambda (_L26783_)
                                              (let ()
                                                (declare (not safe))
                                                (_generate123893_
                                                 _tgt25516_
                                                 _L26783_
                                                 _E25520_
                                                 _K25519_))))
                                           (___kont4110141102_
                                            (lambda (_L26665_ _L26667_)
                                              (let* ((_g2668426699_
                                                      (lambda (_g2668526695_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g2668526695_)))
                                                     (_g2668326748_
                                                      (lambda (_g2668526703_)
                                                        (if (gx#stx-pair?
                                                             _g2668526703_)
                                                            (let ((_e2669026706_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _g2668526703_)))
                      (let ((_hd2668926710_
                             (let ()
                               (declare (not safe))
                               (##car _e2669026706_)))
                            (_tl2668826713_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2669026706_))))
                        (if (gx#stx-pair? _tl2668826713_)
                            (let ((_e2669326716_ (gx#syntax-e _tl2668826713_)))
                              (let ((_hd2669226720_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2669326716_)))
                                    (_tl2669126723_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2669326716_))))
                                (if (gx#stx-null? _tl2669126723_)
                                    ((lambda (_L26726_ _L26728_)
                                       (let ()
                                         (cons 'if
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '##pair?)
                                                           (cons _L25537_ '()))
                                                     (cons (let ((_hd-pat26744_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _L26667_))
                         (_tl-pat26746_ (gx#stx-e _L26665_)))
                     (if (and (equal? _hd-pat26744_ '(any:))
                              (equal? _tl-pat26746_ '(any:)))
                         _K25519_
                         (if (equal? _tl-pat26746_ '(any:))
                             (cons 'let
                                   (cons (cons (cons _L26728_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##car)
                         (cons _L25537_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (_generate123893_
                                                  _L26728_
                                                  _L26667_
                                                  _K25519_
                                                  _E25520_))
                                               '())))
                             (if (equal? _hd-pat26744_ '(any:))
                                 (cons 'let
                                       (cons (cons (cons _L26726_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '##cdr)
                             (cons _L25537_ '()))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (_generate123893_
                                                      _L26726_
                                                      _L26665_
                                                      _K25519_
                                                      _E25520_))
                                                   '())))
                                 (cons 'let
                                       (cons (cons (cons _L26728_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '##car)
                             (cons _L25537_ '()))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons _L26726_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '##cdr)
                                   (cons _L25537_ '()))
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (let ((__tmp42863
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_generate123893_
                                                             _L26726_
                                                             _L26665_
                                                             _K25519_
                                                             _E25520_))))
                                                     (declare (not safe))
                                                     (_generate123893_
                                                      _L26728_
                                                      _L26667_
                                                      __tmp42863
                                                      _E25520_))
                                                   '())))))))
                   (cons _E25520_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _hd2669226720_
                                     _hd2668926710_)
                                    (let ()
                                      (declare (not safe))
                                      (_g2668426699_ _g2668526703_)))))
                            (let ()
                              (declare (not safe))
                              (_g2668426699_ _g2668526703_)))))
                    (let ()
                      (declare (not safe))
                      (_g2668426699_ _g2668526703_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp42864
                                                      (list (gx#genident 'hd)
                                                            (gx#genident
                                                             'tl))))
                                                (declare (not safe))
                                                (_g2668326748_ __tmp42864))))
                                           (___kont4110341104_
                                            (lambda ()
                                              (cons 'if
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##null?)
                        (cons _L25537_ '()))
                  (cons _K25519_ (cons _E25520_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4110541106_
                                            (lambda (_L26581_ _L26583_)
                                              (let ()
                                                (declare (not safe))
                                                (_generate-splice23895_
                                                 _tgt25516_
                                                 _L26583_
                                                 _L26581_
                                                 _K25519_
                                                 _E25520_))))
                                           (___kont4110741108_
                                            (lambda (_L26495_)
                                              (let* ((_g2650926517_
                                                      (lambda (_g2651026513_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g2651026513_)))
                                                     (_g2650826536_
                                                      (lambda (_g2651026521_)
                                                        ((lambda (_L26524_)
                                                           (let ()
                                                             (cons 'if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f '##box?)
                                       (cons _L25537_ '()))
                                 (cons (cons 'let
                                             (cons (cons (cons _L26524_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '##unbox)
                                   (cons _L25537_ '()))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (_generate123893_
                                                            _L26524_
                                                            _L26495_
                                                            _K25519_
                                                            _E25520_))
                                                         '())))
                                       (cons _E25520_ '()))))))
                 _g2651026521_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp42865
                                                      (gx#genident 'e)))
                                                (declare (not safe))
                                                (_g2650826536_ __tmp42865))))
                                           (___kont4110941110_
                                            (lambda (_L26300_)
                                              (let* ((___stx4092640927_
                                                      _L26300_)
                                                     (_g2631526338_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4092640927_))))
                                                (let ((___kont4092940930_
                                                       (lambda (_L26415_)
                                                         (let* ((_g2642926437_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2643026433_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2643026433_)))
                        (_g2642826456_
                         (lambda (_g2643026441_)
                           ((lambda (_L26444_)
                              (let ()
                                (cons 'if
                                      (cons (cons (gx#datum->syntax '#f '##fx=)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'values-count)
                                                              (cons _L25537_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _L26444_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (_generate-simple-vector23896_
                                                     _tgt25516_
                                                     _L26415_
                                                     '0
                                                     _K25519_
                                                     _E25520_))
                                                  (cons _E25520_ '()))))))
                            _g2643026441_)))
                        (__tmp42866 (gx#stx-length _L26415_)))
                   (declare (not safe))
                   (_g2642826456_ __tmp42866))))
              (___kont4093140932_
               (lambda (_L26369_)
                 (let ()
                   (declare (not safe))
                   (_generate-list-vector23897_
                    _tgt25516_
                    _L26369_
                    'values->list
                    _K25519_
                    _E25520_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4092640927_)
                                                      (let ((_e2632026391_
                                                             (gx#syntax-e
                                                              ___stx4092640927_)))
                                                        (let ((_tl2631826398_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2632026391_)))
                      (_hd2631926395_
                       (let () (declare (not safe)) (##car _e2632026391_))))
                  (if (gx#stx-datum? _hd2631926395_)
                      (let ((_e2632126401_ (gx#stx-e _hd2631926395_)))
                        (if (equal? _e2632126401_ 'simple:)
                            (if (gx#stx-pair? _tl2631826398_)
                                (let ((_e2632426405_
                                       (gx#syntax-e _tl2631826398_)))
                                  (let ((_tl2632226412_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2632426405_)))
                                        (_hd2632326409_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2632426405_))))
                                    (if (gx#stx-null? _tl2632226412_)
                                        (___kont4092940930_ _hd2632326409_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2631526338_)))))
                                (let () (declare (not safe)) (_g2631526338_)))
                            (if (equal? _e2632126401_ 'list:)
                                (if (gx#stx-pair? _tl2631826398_)
                                    (let ((_e2633226359_
                                           (gx#syntax-e _tl2631826398_)))
                                      (let ((_tl2633026366_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2633226359_)))
                                            (_hd2633126363_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2633226359_))))
                                        (if (gx#stx-null? _tl2633026366_)
                                            (___kont4093140932_ _hd2633126363_)
                                            (let ()
                                              (declare (not safe))
                                              (_g2631526338_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2631526338_)))
                                (let ()
                                  (declare (not safe))
                                  (_g2631526338_)))))
                      (let () (declare (not safe)) (_g2631526338_)))))
              (let () (declare (not safe)) (_g2631526338_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4111141112_
                                            (lambda (_L26105_)
                                              (let* ((___stx4087640877_
                                                      _L26105_)
                                                     (_g2612026143_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4087640877_))))
                                                (let ((___kont4087940880_
                                                       (lambda (_L26220_)
                                                         (let* ((_g2623426242_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2623526238_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2623526238_)))
                        (_g2623326261_
                         (lambda (_g2623526246_)
                           ((lambda (_L26249_)
                              (let ()
                                (cons 'if
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   '##vector?)
                                                  (cons _L25537_ '()))
                                            (cons (cons 'if
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '##fx=)
                            (cons (cons (gx#datum->syntax '#f '##vector-length)
                                        (cons _L25537_ '()))
                                  (cons _L26249_ '())))
                      (cons (let ()
                              (declare (not safe))
                              (_generate-simple-vector23896_
                               _tgt25516_
                               _L26220_
                               '0
                               _K25519_
                               _E25520_))
                            (cons _E25520_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _E25520_ '()))))))
                            _g2623526246_)))
                        (__tmp42867 (gx#stx-length _L26220_)))
                   (declare (not safe))
                   (_g2623326261_ __tmp42867))))
              (___kont4088140882_
               (lambda (_L26174_)
                 (cons 'if
                       (cons (cons (gx#datum->syntax '#f '##vector?)
                                   (cons _L25537_ '()))
                             (cons (let ()
                                     (declare (not safe))
                                     (_generate-list-vector23897_
                                      _tgt25516_
                                      _L26174_
                                      'vector->list
                                      _K25519_
                                      _E25520_))
                                   (cons _E25520_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4087640877_)
                                                      (let ((_e2612526196_
                                                             (gx#syntax-e
                                                              ___stx4087640877_)))
                                                        (let ((_tl2612326203_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2612526196_)))
                      (_hd2612426200_
                       (let () (declare (not safe)) (##car _e2612526196_))))
                  (if (gx#stx-datum? _hd2612426200_)
                      (let ((_e2612626206_ (gx#stx-e _hd2612426200_)))
                        (if (equal? _e2612626206_ 'simple:)
                            (if (gx#stx-pair? _tl2612326203_)
                                (let ((_e2612926210_
                                       (gx#syntax-e _tl2612326203_)))
                                  (let ((_tl2612726217_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2612926210_)))
                                        (_hd2612826214_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2612926210_))))
                                    (if (gx#stx-null? _tl2612726217_)
                                        (___kont4087940880_ _hd2612826214_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2612026143_)))))
                                (let () (declare (not safe)) (_g2612026143_)))
                            (if (equal? _e2612626206_ 'list:)
                                (if (gx#stx-pair? _tl2612326203_)
                                    (let ((_e2613726164_
                                           (gx#syntax-e _tl2612326203_)))
                                      (let ((_tl2613526171_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2613726164_)))
                                            (_hd2613626168_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2613726164_))))
                                        (if (gx#stx-null? _tl2613526171_)
                                            (___kont4088140882_ _hd2613626168_)
                                            (let ()
                                              (declare (not safe))
                                              (_g2612026143_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2612026143_)))
                                (let ()
                                  (declare (not safe))
                                  (_g2612026143_)))))
                      (let () (declare (not safe)) (_g2612026143_)))))
              (let () (declare (not safe)) (_g2612026143_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4111341114_
                                            (lambda (_L26056_ _L26058_)
                                              (let ((__tmp42868
                                                     (gx#stx-e _L26058_)))
                                                (declare (not safe))
                                                (_generate-struct23898_
                                                 __tmp42868
                                                 _tgt25516_
                                                 _L26056_
                                                 _K25519_
                                                 _E25520_))))
                                           (___kont4111541116_
                                            (lambda (_L25997_ _L25999_)
                                              (let ((__tmp42869
                                                     (gx#stx-e _L25999_)))
                                                (declare (not safe))
                                                (_generate-class23899_
                                                 __tmp42869
                                                 _tgt25516_
                                                 _L25997_
                                                 _K25519_
                                                 _E25520_))))
                                           (___kont4111741118_
                                            (lambda (_L25900_)
                                              (let* ((_g2591425922_
                                                      (lambda (_g2591525918_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g2591525918_)))
                                                     (_g2591325941_
                                                      (lambda (_g2591525926_)
                                                        ((lambda (_L25929_)
                                                           (let ()
                                                             (cons 'if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _L25929_
                                       (cons _L25537_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'quote)
                                                         (cons _L25900_ '()))
                                                   '())))
                                 (cons _K25519_ (cons _E25520_ '()))))))
                 _g2591525926_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp42870
                                                      (let ((_e25945_
                                                             (gx#stx-e
                                                              _L25900_)))
                                                        (if (or (symbol? _e25945_)
                                                                (keyword?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e25945_)
                        (immediate? _e25945_))
                    '##eq?
                    (if (number? _e25945_) 'eqv? 'equal?)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g2591325941_ __tmp42870))))
                                           (___kont4111941120_
                                            (lambda (_L25820_ _L25822_)
                                              (let* ((_g2583825846_
                                                      (lambda (_g2583925842_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g2583925842_)))
                                                     (_g2583725865_
                                                      (lambda (_g2583925850_)
                                                        ((lambda (_L25853_)
                                                           (let ()
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _L25853_
                                             (cons (cons _L25822_
                                                         (cons _L25537_ '()))
                                                   '()))
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (_generate123893_
                                          _L25853_
                                          _L25820_
                                          _K25519_
                                          _E25520_))
                                       '())))))
                 _g2583925850_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp42871
                                                      (gx#genident 'e)))
                                                (declare (not safe))
                                                (_g2583725865_ __tmp42871))))
                                           (___kont4112141122_
                                            (lambda (_L25762_)
                                              (cons 'let
                                                    (cons (cons (cons _L25762_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _L25537_ '()))
                        '())
                  (cons _K25519_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4112341124_
                                            (lambda () _K25519_)))
                                       (if (gx#stx-pair? ___stx4109041091_)
                                           (let ((_e2557026990_
                                                  (gx#syntax-e
                                                   ___stx4109041091_)))
                                             (let ((_tl2556826997_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2557026990_)))
                                                   (_hd2556926994_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2557026990_))))
                                               (if (gx#stx-datum?
                                                    _hd2556926994_)
                                                   (let ((_e2557127000_
                                                          (gx#stx-e
                                                           _hd2556926994_)))
                                                     (if (equal? _e2557127000_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '?:)
                 (if (gx#stx-pair? _tl2556826997_)
                     (let ((_e2557427004_ (gx#syntax-e _tl2556826997_)))
                       (let ((_tl2557227011_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2557427004_)))
                             (_hd2557327008_
                              (let ()
                                (declare (not safe))
                                (##car _e2557427004_))))
                         (___kont4109341094_ _tl2557227011_ _hd2557327008_)))
                     (let () (declare (not safe)) (_g2556425706_)))
                 (if (equal? _e2557127000_ 'and:)
                     (___kont4109541096_ _tl2556826997_)
                     (if (equal? _e2557127000_ 'or:)
                         (___kont4109741098_ _tl2556826997_)
                         (if (equal? _e2557127000_ 'not:)
                             (if (gx#stx-pair? _tl2556826997_)
                                 (let ((_e2559226773_
                                        (gx#syntax-e _tl2556826997_)))
                                   (let ((_tl2559026780_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2559226773_)))
                                         (_hd2559126777_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2559226773_))))
                                     (if (gx#stx-null? _tl2559026780_)
                                         (___kont4109941100_ _hd2559126777_)
                                         (let ()
                                           (declare (not safe))
                                           (_g2556425706_)))))
                                 (let () (declare (not safe)) (_g2556425706_)))
                             (if (equal? _e2557127000_ 'cons:)
                                 (if (gx#stx-pair? _tl2556826997_)
                                     (let ((_e2560126645_
                                            (gx#syntax-e _tl2556826997_)))
                                       (let ((_tl2559926652_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e2560126645_)))
                                             (_hd2560026649_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e2560126645_))))
                                         (if (gx#stx-pair? _tl2559926652_)
                                             (let ((_e2560426655_
                                                    (gx#syntax-e
                                                     _tl2559926652_)))
                                               (let ((_tl2560226662_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2560426655_)))
                                                     (_hd2560326659_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2560426655_))))
                                                 (if (gx#stx-null?
                                                      _tl2560226662_)
                                                     (___kont4110141102_
                                                      _hd2560326659_
                                                      _hd2560026649_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2556425706_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2556425706_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_g2556425706_)))
                                 (if (equal? _e2557127000_ 'null:)
                                     (if (gx#stx-null? _tl2556826997_)
                                         (___kont4110341104_)
                                         (let ()
                                           (declare (not safe))
                                           (_g2556425706_)))
                                     (if (equal? _e2557127000_ 'splice:)
                                         (if (gx#stx-pair? _tl2556826997_)
                                             (let ((_e2561726561_
                                                    (gx#syntax-e
                                                     _tl2556826997_)))
                                               (let ((_tl2561526568_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2561726561_)))
                                                     (_hd2561626565_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2561726561_))))
                                                 (if (gx#stx-pair?
                                                      _tl2561526568_)
                                                     (let ((_e2562026571_
                                                            (gx#syntax-e
                                                             _tl2561526568_)))
                                                       (let ((_tl2561826578_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e2562026571_)))
                     (_hd2561926575_
                      (let () (declare (not safe)) (##car _e2562026571_))))
                 (if (gx#stx-null? _tl2561826578_)
                     (___kont4110541106_ _hd2561926575_ _hd2561626565_)
                     (let () (declare (not safe)) (_g2556425706_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2556425706_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2556425706_)))
                                         (if (equal? _e2557127000_ 'box:)
                                             (if (gx#stx-pair? _tl2556826997_)
                                                 (let ((_e2562826485_
                                                        (gx#syntax-e
                                                         _tl2556826997_)))
                                                   (let ((_tl2562626492_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e2562826485_)))
                                                         (_hd2562726489_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e2562826485_))))
                                                     (if (gx#stx-null?
                                                          _tl2562626492_)
                                                         (___kont4110741108_
                                                          _hd2562726489_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_g2556425706_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2556425706_)))
                                             (if (equal? _e2557127000_
                                                         'values:)
                                                 (if (gx#stx-pair?
                                                      _tl2556826997_)
                                                     (let ((_e2563626290_
                                                            (gx#syntax-e
                                                             _tl2556826997_)))
                                                       (let ((_tl2563426297_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e2563626290_)))
                     (_hd2563526294_
                      (let () (declare (not safe)) (##car _e2563626290_))))
                 (if (gx#stx-null? _tl2563426297_)
                     (___kont4110941110_ _hd2563526294_)
                     (let () (declare (not safe)) (_g2556425706_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2556425706_)))
                                                 (if (equal? _e2557127000_
                                                             'vector:)
                                                     (if (gx#stx-pair?
                                                          _tl2556826997_)
                                                         (let ((_e2564426095_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2556826997_)))
                   (let ((_tl2564226102_
                          (let () (declare (not safe)) (##cdr _e2564426095_)))
                         (_hd2564326099_
                          (let () (declare (not safe)) (##car _e2564426095_))))
                     (if (gx#stx-null? _tl2564226102_)
                         (___kont4111141112_ _hd2564326099_)
                         (let () (declare (not safe)) (_g2556425706_)))))
                 (let () (declare (not safe)) (_g2556425706_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (equal? _e2557127000_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'struct:)
                 (if (gx#stx-pair? _tl2556826997_)
                     (let ((_e2565326036_ (gx#syntax-e _tl2556826997_)))
                       (let ((_tl2565126043_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2565326036_)))
                             (_hd2565226040_
                              (let ()
                                (declare (not safe))
                                (##car _e2565326036_))))
                         (if (gx#stx-pair? _tl2565126043_)
                             (let ((_e2565626046_
                                    (gx#syntax-e _tl2565126043_)))
                               (let ((_tl2565426053_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e2565626046_)))
                                     (_hd2565526050_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e2565626046_))))
                                 (if (gx#stx-null? _tl2565426053_)
                                     (___kont4111341114_
                                      _hd2565526050_
                                      _hd2565226040_)
                                     (let ()
                                       (declare (not safe))
                                       (_g2556425706_)))))
                             (let () (declare (not safe)) (_g2556425706_)))))
                     (let () (declare (not safe)) (_g2556425706_)))
                 (if (equal? _e2557127000_ 'class:)
                     (if (gx#stx-pair? _tl2556826997_)
                         (let ((_e2566525977_ (gx#syntax-e _tl2556826997_)))
                           (let ((_tl2566325984_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e2566525977_)))
                                 (_hd2566425981_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e2566525977_))))
                             (if (gx#stx-pair? _tl2566325984_)
                                 (let ((_e2566825987_
                                        (gx#syntax-e _tl2566325984_)))
                                   (let ((_tl2566625994_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2566825987_)))
                                         (_hd2566725991_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2566825987_))))
                                     (if (gx#stx-null? _tl2566625994_)
                                         (___kont4111541116_
                                          _hd2566725991_
                                          _hd2566425981_)
                                         (let ()
                                           (declare (not safe))
                                           (_g2556425706_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g2556425706_)))))
                         (let () (declare (not safe)) (_g2556425706_)))
                     (if (equal? _e2557127000_ 'datum:)
                         (if (gx#stx-pair? _tl2556826997_)
                             (let ((_e2567625890_
                                    (gx#syntax-e _tl2556826997_)))
                               (let ((_tl2567425897_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e2567625890_)))
                                     (_hd2567525894_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e2567625890_))))
                                 (if (gx#stx-null? _tl2567425897_)
                                     (___kont4111741118_ _hd2567525894_)
                                     (let ()
                                       (declare (not safe))
                                       (_g2556425706_)))))
                             (let () (declare (not safe)) (_g2556425706_)))
                         (if (equal? _e2557127000_ 'apply:)
                             (if (gx#stx-pair? _tl2556826997_)
                                 (let ((_e2568525800_
                                        (gx#syntax-e _tl2556826997_)))
                                   (let ((_tl2568325807_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e2568525800_)))
                                         (_hd2568425804_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e2568525800_))))
                                     (if (gx#stx-pair? _tl2568325807_)
                                         (let ((_e2568825810_
                                                (gx#syntax-e _tl2568325807_)))
                                           (let ((_tl2568625817_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e2568825810_)))
                                                 (_hd2568725814_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e2568825810_))))
                                             (if (gx#stx-null? _tl2568625817_)
                                                 (___kont4111941120_
                                                  _hd2568725814_
                                                  _hd2568425804_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2556425706_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_g2556425706_)))))
                                 (let () (declare (not safe)) (_g2556425706_)))
                             (if (equal? _e2557127000_ 'var:)
                                 (if (gx#stx-pair? _tl2556826997_)
                                     (let ((_e2569625752_
                                            (gx#syntax-e _tl2556826997_)))
                                       (let ((_tl2569425759_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e2569625752_)))
                                             (_hd2569525756_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e2569625752_))))
                                         (if (gx#stx-null? _tl2569425759_)
                                             (___kont4112141122_
                                              _hd2569525756_)
                                             (let ()
                                               (declare (not safe))
                                               (_g2556425706_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_g2556425706_)))
                                 (if (equal? _e2557127000_ 'any:)
                                     (if (gx#stx-null? _tl2556826997_)
                                         (___kont4112341124_)
                                         (let ()
                                           (declare (not safe))
                                           (_g2556425706_)))
                                     (let ()
                                       (declare (not safe))
                                       (_g2556425706_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g2556425706_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g2556425706_)))))))
                               _g2552325534_))))
                      (declare (not safe))
                      (_g2552127299_ _tgt25516_))))
                 (_generate-splice23895_
                  (lambda (_tgt24888_ _hd24890_ _rest24891_ _K24892_ _E24893_)
                    (let* ((_g2489524912_
                            (lambda (_g2489624908_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2489624908_)))
                           (_g2489425512_
                            (lambda (_g2489624916_)
                              (if (gx#stx-pair/null? _g2489624916_)
                                  (let ((_g42872_
                                         (gx#syntax-split-splice
                                          _g2489624916_
                                          '0)))
                                    (begin
                                      (let ((_g42873_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g42872_)
                                                   (##vector-length _g42872_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g42873_ 2)))
                                            (error "Context expects 2 values"
                                                   _g42873_)))
                                      (let ((_target2489824919_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g42872_ 0)))
                                            (_tl2490024922_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g42872_ 1))))
                                        (if (gx#stx-null? _tl2490024922_)
                                            (letrec ((_loop2490124925_
                                                      (lambda (_hd2489924929_
                                                               _var2490524932_)
                                                        (if (gx#stx-pair?
                                                             _hd2489924929_)
                                                            (let ((_e2490224935_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd2489924929_)))
                      (let ((_lp-hd2490324939_
                             (let ()
                               (declare (not safe))
                               (##car _e2490224935_)))
                            (_lp-tl2490424942_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2490224935_))))
                        (let ((__tmp42891
                               (cons _lp-hd2490324939_ _var2490524932_)))
                          (declare (not safe))
                          (_loop2490124925_ _lp-tl2490424942_ __tmp42891))))
                    (let ((_var2490624945_ (reverse _var2490524932_)))
                      ((lambda (_L24949_)
                         (let ()
                           (let* ((_g2496524982_
                                   (lambda (_g2496624978_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g2496624978_)))
                                  (_g2496425500_
                                   (lambda (_g2496624986_)
                                     (if (gx#stx-pair/null? _g2496624986_)
                                         (let ((_g42874_
                                                (gx#syntax-split-splice
                                                 _g2496624986_
                                                 '0)))
                                           (begin
                                             (let ((_g42875_
                                                    (let ()
                                                      (declare (not safe))
                                                      (if (##values? _g42874_)
                                                          (##vector-length
                                                           _g42874_)
                                                          1))))
                                               (if (not (let ()
                                                          (declare (not safe))
                                                          (##fx= _g42875_ 2)))
                                                   (error "Context expects 2 values"
                                                          _g42875_)))
                                             (let ((_target2496824989_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g42874_
                                                       0)))
                                                   (_tl2497024992_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g42874_
                                                       1))))
                                               (if (gx#stx-null?
                                                    _tl2497024992_)
                                                   (letrec ((_loop2497124995_
                                                             (lambda (_hd2496924999_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _var-r2497525002_)
                       (if (gx#stx-pair? _hd2496924999_)
                           (let ((_e2497225005_ (gx#syntax-e _hd2496924999_)))
                             (let ((_lp-hd2497325009_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e2497225005_)))
                                   (_lp-tl2497425012_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e2497225005_))))
                               (let ((__tmp42889
                                      (cons _lp-hd2497325009_
                                            _var-r2497525002_)))
                                 (declare (not safe))
                                 (_loop2497124995_
                                  _lp-tl2497425012_
                                  __tmp42889))))
                           (let ((_var-r2497625015_
                                  (reverse _var-r2497525002_)))
                             ((lambda (_L25019_)
                                (let ()
                                  (let* ((_g2503625053_
                                          (lambda (_g2503725049_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g2503725049_)))
                                         (_g2503525488_
                                          (lambda (_g2503725057_)
                                            (if (gx#stx-pair/null?
                                                 _g2503725057_)
                                                (let ((_g42876_
                                                       (gx#syntax-split-splice
                                                        _g2503725057_
                                                        '0)))
                                                  (begin
                                                    (let ((_g42877_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g42876_)
                         (##vector-length _g42876_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g42877_ 2)))
                  (error "Context expects 2 values" _g42877_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2503925060_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g42876_
                                                              0)))
                                                          (_tl2504125063_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g42876_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl2504125063_)
                                                          (letrec ((_loop2504225066_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2504025070_ _init2504625073_)
                              (if (gx#stx-pair? _hd2504025070_)
                                  (let ((_e2504325076_
                                         (gx#syntax-e _hd2504025070_)))
                                    (let ((_lp-hd2504425080_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2504325076_)))
                                          (_lp-tl2504525083_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2504325076_))))
                                      (let ((__tmp42887
                                             (cons _lp-hd2504425080_
                                                   _init2504625073_)))
                                        (declare (not safe))
                                        (_loop2504225066_
                                         _lp-tl2504525083_
                                         __tmp42887))))
                                  (let ((_init2504725086_
                                         (reverse _init2504625073_)))
                                    ((lambda (_L25090_)
                                       (let ()
                                         (let* ((_g2510725115_
                                                 (lambda (_g2510825111_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g2510825111_)))
                                                (_g2510625484_
                                                 (lambda (_g2510825119_)
                                                   ((lambda (_L25122_)
                                                      (let ()
                                                        (let* ((_g2513525143_
                                                                (lambda (_g2513625139_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g2513625139_)))
                       (_g2513425480_
                        (lambda (_g2513625147_)
                          ((lambda (_L25150_)
                             (let ()
                               (let* ((_g2516325171_
                                       (lambda (_g2516425167_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2516425167_)))
                                      (_g2516225476_
                                       (lambda (_g2516425175_)
                                         ((lambda (_L25178_)
                                            (let ()
                                              (let* ((_g2519125199_
                                                      (lambda (_g2519225195_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g2519225195_)))
                                                     (_g2519025472_
                                                      (lambda (_g2519225203_)
                                                        ((lambda (_L25206_)
                                                           (let ()
                                                             (let* ((_g2521925227_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g2522025223_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g2522025223_)))
                            (_g2521825468_
                             (lambda (_g2522025231_)
                               ((lambda (_L25234_)
                                  (let ()
                                    (let* ((_g2524725255_
                                            (lambda (_g2524825251_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g2524825251_)))
                                           (_g2524625464_
                                            (lambda (_g2524825259_)
                                              ((lambda (_L25262_)
                                                 (let ()
                                                   (let* ((_g2527525283_
                                                           (lambda (_g2527625279_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g2527625279_)))
                                                          (_g2527425460_
                                                           (lambda (_g2527625287_)
                                                             ((lambda (_L25290_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g2530325311_
                                  (lambda (_g2530425307_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g2530425307_)))
                                 (_g2530225445_
                                  (lambda (_g2530425315_)
                                    ((lambda (_L25318_)
                                       (let ()
                                         (let* ((_g2533125339_
                                                 (lambda (_g2533225335_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g2533225335_)))
                                                (_g2533025433_
                                                 (lambda (_g2533225343_)
                                                   ((lambda (_L25346_)
                                                      (let ()
                                                        (let* ((_g2535925367_
                                                                (lambda (_g2536025363_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g2536025363_)))
                       (_g2535825429_
                        (lambda (_g2536025371_)
                          ((lambda (_L25374_)
                             (let ()
                               (let ()
                                 (cons (gx#datum->syntax '#f 'letrec)
                                       (cons (cons (cons _L25150_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lambda)
                             (cons (cons _L25262_
                                         (foldr (lambda (_g2539625399_
                                                         _g2539725402_)
                                                  (cons _g2539625399_
                                                        _g2539725402_))
                                                '()
                                                _L24949_))
                                   (cons _L25290_ '())))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons _L25206_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'lambda)
                                   (cons (cons _L25234_
                                               (cons _L25262_
                                                     (foldr (lambda (_g2539425405_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g2539525408_)
                      (cons _g2539425405_ _g2539525408_))
                    '()
                    _L25019_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons _L25374_ '())))
                             '()))
                 (cons (cons _L25178_
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons (cons _L25262_
                                                     (foldr (lambda (_g2539225411_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g2539325414_)
                      (cons _g2539225411_ _g2539325414_))
                    '()
                    _L25019_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'if)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'pair?)
                               (cons _L25262_ '()))
                         (cons (cons _L25206_
                                     (cons (cons (gx#datum->syntax '#f '##car)
                                                 (cons _L25262_ '()))
                                           (cons _L25262_
                                                 (foldr (lambda (_g2539025417_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2539125420_)
                  (cons _g2539025417_ _g2539125420_))
                '()
                _L25019_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _L25346_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   '()))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _L25178_
                                                         (cons _L25122_
                                                               (foldr (lambda (_g2538825423_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g2538925426_)
                                (cons _g2538825423_ _g2538925426_))
                              '()
                              _L25090_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))))
                           _g2536025371_)))
                       (__tmp42878
                        (let ()
                          (declare (not safe))
                          (_generate123893_
                           _L25234_
                           _hd24890_
                           _L25318_
                           _L25346_))))
                  (declare (not safe))
                  (_g2535825429_ __tmp42878))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2533225343_)))
                                                (__tmp42879
                                                 (cons _L25150_
                                                       (cons _L25262_
                                                             (foldr (lambda (_g2543625439_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g2543725442_)
                              (cons (cons (gx#datum->syntax '#f 'reverse)
                                          (cons _g2543625439_ '()))
                                    _g2543725442_))
                            '()
                            _L25019_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g2533025433_ __tmp42879))))
                                     _g2530425315_)))
                                 (__tmp42880
                                  (cons _L25178_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '##cdr)
                                                    (cons _L25262_ '()))
                                              (begin
                                                (gx#syntax-check-splice-targets
                                                 _L25019_
                                                 _L24949_)
                                                (foldr (lambda (_g2544825452_
                                                                _g2544925455_
                                                                _g2545025457_)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'cons)
                             (cons _g2544925455_ (cons _g2544825452_ '())))
                       _g2545025457_))
               '()
               _L25019_
               _L24949_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (declare (not safe))
                            (_g2530225445_ __tmp42880))))
                      _g2527625287_)))
                  (__tmp42881
                   (let ()
                     (declare (not safe))
                     (_generate123893_
                      _L25262_
                      _rest24891_
                      _K24892_
                      _E24893_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_g2527425460_
                                                      __tmp42881))))
                                               _g2524825259_)))
                                           (__tmp42882 (gx#genident 'rest)))
                                      (declare (not safe))
                                      (_g2524625464_ __tmp42882))))
                                _g2522025231_)))
                            (__tmp42883 (gx#genident 'hd)))
                       (declare (not safe))
                       (_g2521825468_ __tmp42883))))
                 _g2519225203_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp42884
                                                      (gx#genident
                                                       'splice-try)))
                                                (declare (not safe))
                                                (_g2519025472_ __tmp42884))))
                                          _g2516425175_)))
                                      (__tmp42885 (gx#genident 'splice-loop)))
                                 (declare (not safe))
                                 (_g2516225476_ __tmp42885))))
                           _g2513625147_)))
                       (__tmp42886 (gx#genident 'splice-rest)))
                  (declare (not safe))
                  (_g2513425480_ __tmp42886))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2510825119_))))
                                           (declare (not safe))
                                           (_g2510625484_ _tgt24888_))))
                                     _init2504725086_))))))
                    (let ()
                      (declare (not safe))
                      (_loop2504225066_ _target2503925060_ '())))
                  (let ()
                    (declare (not safe))
                    (_g2503625053_ _g2503725057_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2503625053_
                                                   _g2503725057_)))))
                                         (__tmp42888
                                          (make-list
                                           (gx#stx-length
                                            (foldr (lambda (_g2549125494_
                                                            _g2549225497_)
                                                     (cons _g2549125494_
                                                           _g2549225497_))
                                                   '()
                                                   _L24949_))
                                           (cons (gx#datum->syntax '#f '@list)
                                                 '()))))
                                    (declare (not safe))
                                    (_g2503525488_ __tmp42888))))
                              _var-r2497625015_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_loop2497124995_
                                                        _target2496824989_
                                                        '())))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g2496524982_
                                                      _g2496624986_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g2496524982_ _g2496624986_)))))
                                  (__tmp42890
                                   (gx#gentemps
                                    (foldr (lambda (_g2550325506_
                                                    _g2550425509_)
                                             (cons _g2550325506_
                                                   _g2550425509_))
                                           '()
                                           _L24949_))))
                             (declare (not safe))
                             (_g2496425500_ __tmp42890))))
                       _var2490624945_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop2490124925_
                                                 _target2489824919_
                                                 '())))
                                            (let ()
                                              (declare (not safe))
                                              (_g2489524912_
                                               _g2489624916_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2489524912_ _g2489624916_)))))
                           (__tmp42892
                            (let ()
                              (declare (not safe))
                              (|gerbil/core$<match>[1]#match-pattern-vars|
                               _hd24890_))))
                      (declare (not safe))
                      (_g2489425512_ __tmp42892))))
                 (_generate-simple-vector23896_
                  (lambda (_tgt24730_
                           _body24732_
                           _start24733_
                           _K24734_
                           _E24735_)
                    (let _recur24737_ ((_rest24740_ _body24732_)
                                       (_off24742_ _start24733_))
                      (let* ((___stx4144841449_ _rest24740_)
                             (_g2474524757_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4144841449_))))
                        (let ((___kont4145141452_
                               (lambda (_L24785_ _L24787_)
                                 (let* ((_g2480224821_
                                         (lambda (_g2480324817_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g2480324817_)))
                                        (_g2480124880_
                                         (lambda (_g2480324825_)
                                           (if (gx#stx-pair? _g2480324825_)
                                               (let ((_e2480924828_
                                                      (gx#syntax-e
                                                       _g2480324825_)))
                                                 (let ((_hd2480824832_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e2480924828_)))
                                                       (_tl2480724835_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e2480924828_))))
                                                   (if (gx#stx-pair?
                                                        _tl2480724835_)
                                                       (let ((_e2481224838_
                                                              (gx#syntax-e
                                                               _tl2480724835_)))
                                                         (let ((_hd2481124842_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e2481224838_)))
                       (_tl2481024845_
                        (let () (declare (not safe)) (##cdr _e2481224838_))))
                   (if (gx#stx-pair? _tl2481024845_)
                       (let ((_e2481524848_ (gx#syntax-e _tl2481024845_)))
                         (let ((_hd2481424852_
                                (let ()
                                  (declare (not safe))
                                  (##car _e2481524848_)))
                               (_tl2481324855_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e2481524848_))))
                           (if (gx#stx-null? _tl2481324855_)
                               ((lambda (_L24858_ _L24860_ _L24861_)
                                  (let ()
                                    (cons 'let
                                          (cons (cons (cons _L24861_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '##vector-ref)
                                (cons _L24860_ (cons _L24858_ '())))
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (let ((__tmp42893
                                                             (let ((__tmp42894
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (fx1+ _off24742_)))
                       (declare (not safe))
                       (_recur24737_ _L24785_ __tmp42894))))
                (declare (not safe))
                (_generate123893_ _L24861_ _L24787_ __tmp42893 _E24735_))
              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _hd2481424852_
                                _hd2481124842_
                                _hd2480824832_)
                               (let ()
                                 (declare (not safe))
                                 (_g2480224821_ _g2480324825_)))))
                       (let ()
                         (declare (not safe))
                         (_g2480224821_ _g2480324825_)))))
               (let () (declare (not safe)) (_g2480224821_ _g2480324825_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g2480224821_
                                                  _g2480324825_)))))
                                        (__tmp42895
                                         (list (gx#genident 'e)
                                               _tgt24730_
                                               _off24742_)))
                                   (declare (not safe))
                                   (_g2480124880_ __tmp42895))))
                              (___kont4145341454_ (lambda () _K24734_)))
                          (if (gx#stx-pair? ___stx4144841449_)
                              (let ((_e2475124775_
                                     (gx#syntax-e ___stx4144841449_)))
                                (let ((_tl2474924782_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2475124775_)))
                                      (_hd2475024779_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2475124775_))))
                                  (___kont4145141452_
                                   _tl2474924782_
                                   _hd2475024779_)))
                              (___kont4145341454_)))))))
                 (_generate-list-vector23897_
                  (lambda (_tgt24622_
                           _body24624_
                           _->list24625_
                           _K24626_
                           _E24627_)
                    (let* ((_g2462924637_
                            (lambda (_g2463024633_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2463024633_)))
                           (_g2462824726_
                            (lambda (_g2463024641_)
                              ((lambda (_L24644_)
                                 (let ()
                                   (let* ((_g2465624664_
                                           (lambda (_g2465724660_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g2465724660_)))
                                          (_g2465524722_
                                           (lambda (_g2465724668_)
                                             ((lambda (_L24671_)
                                                (let ()
                                                  (let* ((_g2468424692_
                                                          (lambda (_g2468524688_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g2468524688_)))
                                                         (_g2468324714_
                                                          (lambda (_g2468524696_)
                                                            ((lambda (_L24699_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (cons 'let
                                 (cons (cons (cons _L24644_
                                                   (cons _L24699_ '()))
                                             '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (_generate123893_
                                                _L24644_
                                                _body24624_
                                                _K24626_
                                                _E24627_))
                                             '()))))))
                     _g2468524696_)))
                 (__tmp42896
                  (let ((_$e24718_ _->list24625_))
                    (if (eq? 'values->list _$e24718_)
                        (cons (gx#datum->syntax '#f 'values->list)
                              (cons _L24671_ '()))
                        (if (eq? 'vector->list _$e24718_)
                            (cons (gx#datum->syntax '#f '##vector->list)
                                  (cons _L24671_ '()))
                            (if (eq? 'struct->list _$e24718_)
                                (cons (gx#datum->syntax '#f '##cdr)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   '##vector->list)
                                                  (cons _L24671_ '()))
                                            '()))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Unexpected list conversion"
                                 _stx23886_
                                 _->list24625_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_g2468324714_
                                                     __tmp42896))))
                                              _g2465724668_))))
                                     (declare (not safe))
                                     (_g2465524722_ _tgt24622_))))
                               _g2463024641_)))
                           (__tmp42897 (gx#genident 'e)))
                      (declare (not safe))
                      (_g2462824726_ __tmp42897))))
                 (_generate-struct23898_
                  (lambda (_info24280_
                           _tgt24282_
                           _body24283_
                           _K24284_
                           _E24285_)
                    (let* ((_rtd24287_
                            (if (let ()
                                  (declare (not safe))
                                  (class-instance?
                                   |gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info::t|
                                   _info24280_))
                                (let ()
                                  (declare (not safe))
                                  (unchecked-slot-ref
                                   _info24280_
                                   'type-exhibitor))
                                '#f))
                           (_fields24297_
                            (let _lp24290_ ((_rtd24293_ _rtd24287_)
                                            (_k24295_ '0))
                              (if _rtd24293_
                                  (let ((__tmp42899
                                         (let ((__tmp42900
                                                (##structure-ref
                                                 _rtd24293_
                                                 '2
                                                 |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
                                                 '#f)))
                                           (declare (not safe))
                                           (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
                                            __tmp42900)))
                                        (__tmp42898
                                         (fx+ (length (##structure-ref
                                                       _rtd24293_
                                                       '6
                                                       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|
                                                       '#f))
                                              _k24295_)))
                                    (declare (not safe))
                                    (_lp24290_ __tmp42899 __tmp42898))
                                  _k24295_)))
                           (_final?24300_
                            (if _rtd24287_
                                (assgetq 'final:
                                         (##structure-ref
                                          _rtd24287_
                                          '5
                                          |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
                                          '#f))
                                '#f))
                           (_g2430324311_
                            (lambda (_g2430424307_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2430424307_)))
                           (_g2430224618_
                            (lambda (_g2430424315_)
                              ((lambda (_L24318_)
                                 (let ()
                                   (let* ((_g2433324341_
                                           (lambda (_g2433424337_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g2433424337_)))
                                          (_g2433224520_
                                           (lambda (_g2433424345_)
                                             ((lambda (_L24348_)
                                                (let ()
                                                  (let ()
                                                    (let* ((___stx4146441465_
                                                            _body24283_)
                                                           (_g2436424387_
                                                            (lambda ()
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               ___stx4146441465_))))
                                                      (let ((___kont4146741468_
                                                             (lambda (_L24466_)
                                                               (let ((_K24480_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (_generate-simple-vector23896_
                                 _tgt24282_
                                 _L24466_
                                 '1
                                 _K24284_
                                 _E24285_)))
                             (_len24482_ (gx#stx-length _L24466_)))
                         (if (and _rtd24287_ (fx<= _len24482_ _fields24297_))
                             (cons 'if
                                   (cons _L24348_
                                         (cons _K24480_ (cons _E24285_ '()))))
                             (let* ((_g2448424492_
                                     (lambda (_g2448524488_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g2448524488_)))
                                    (_g2448324512_
                                     (lambda (_g2448524496_)
                                       ((lambda (_L24499_)
                                          (let ()
                                            (cons 'if
                                                  (cons _L24348_
                                                        (cons (cons 'if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f '##fx<)
                                        (cons _L24499_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '##vector-length)
                                                          (cons _L24318_ '()))
                                                    '())))
                                  (cons _K24480_ (cons _E24285_ '()))))
                      (cons _E24285_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g2448524496_))))
                               (declare (not safe))
                               (_g2448324512_ _len24482_))))))
                    (___kont4146941470_
                     (lambda (_L24418_)
                       (cons 'if
                             (cons _L24348_
                                   (cons (let ()
                                           (declare (not safe))
                                           (_generate-list-vector23897_
                                            _tgt24282_
                                            _L24418_
                                            'struct->list
                                            _K24284_
                                            _E24285_))
                                         (cons _E24285_ '())))))))
                (if (gx#stx-pair? ___stx4146441465_)
                    (let ((_e2436924442_ (gx#syntax-e ___stx4146441465_)))
                      (let ((_tl2436724449_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2436924442_)))
                            (_hd2436824446_
                             (let ()
                               (declare (not safe))
                               (##car _e2436924442_))))
                        (if (gx#stx-datum? _hd2436824446_)
                            (let ((_e2437024452_ (gx#stx-e _hd2436824446_)))
                              (if (equal? _e2437024452_ 'simple:)
                                  (if (gx#stx-pair? _tl2436724449_)
                                      (let ((_e2437324456_
                                             (gx#syntax-e _tl2436724449_)))
                                        (let ((_tl2437124463_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2437324456_)))
                                              (_hd2437224460_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2437324456_))))
                                          (if (gx#stx-null? _tl2437124463_)
                                              (___kont4146741468_
                                               _hd2437224460_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2436424387_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2436424387_)))
                                  (if (equal? _e2437024452_ 'list:)
                                      (if (gx#stx-pair? _tl2436724449_)
                                          (let ((_e2438124408_
                                                 (gx#syntax-e _tl2436724449_)))
                                            (let ((_tl2437924415_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2438124408_)))
                                                  (_hd2438024412_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2438124408_))))
                                              (if (gx#stx-null? _tl2437924415_)
                                                  (___kont4146941470_
                                                   _hd2438024412_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2436424387_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g2436424387_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g2436424387_)))))
                            (let () (declare (not safe)) (_g2436424387_)))))
                    (let () (declare (not safe)) (_g2436424387_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _g2433424345_)))
                                          (__tmp42901
                                           (if (let ()
                                                 (declare (not safe))
                                                 (class-instance?
                                                  |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
                                                  _info24280_))
                                               (let* ((_g2452424532_
                                                       (lambda (_g2452524528_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2452524528_)))
                                                      (_g2452324551_
                                                       (lambda (_g2452524536_)
                                                         ((lambda (_L24539_)
                                                            (let ()
                                                              (cons _L24539_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _L24318_ '()))))
                  _g2452524536_)))
              (__tmp42903
               (cadddr (let ()
                         (declare (not safe))
                         (unchecked-slot-ref
                          _info24280_
                          'expander-identifiers)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2452324551_ __tmp42903))
                                               (let* ((_g2455524570_
                                                       (lambda (_g2455624566_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2455624566_)))
                                                      (_g2455424614_
                                                       (lambda (_g2455624574_)
                                                         (if (gx#stx-pair?
                                                              _g2455624574_)
                                                             (let ((_e2456124577_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g2455624574_)))
                       (let ((_hd2456024581_
                              (let ()
                                (declare (not safe))
                                (##car _e2456124577_)))
                             (_tl2455924584_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2456124577_))))
                         (if (gx#stx-pair? _tl2455924584_)
                             (let ((_e2456424587_
                                    (gx#syntax-e _tl2455924584_)))
                               (let ((_hd2456324591_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e2456424587_)))
                                     (_tl2456224594_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e2456424587_))))
                                 (if (gx#stx-null? _tl2456224594_)
                                     ((lambda (_L24597_ _L24599_)
                                        (let ()
                                          (cons _L24597_
                                                (cons _L24599_
                                                      (cons _L24318_ '())))))
                                      _hd2456324591_
                                      _hd2456024581_)
                                     (let ()
                                       (declare (not safe))
                                       (_g2455524570_ _g2455624574_)))))
                             (let ()
                               (declare (not safe))
                               (_g2455524570_ _g2455624574_)))))
                     (let ()
                       (declare (not safe))
                       (_g2455524570_ _g2455624574_)))))
              (__tmp42902
               (list (let ()
                       (declare (not safe))
                       (unchecked-slot-ref _info24280_ 'runtime-identifier))
                     (if _final?24300_
                         (gx#datum->syntax '#f 'direct-instance?)
                         (gx#datum->syntax '#f 'struct-instance?)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2455424614_ __tmp42902)))))
                                     (declare (not safe))
                                     (_g2433224520_ __tmp42901))))
                               _g2430424315_))))
                      (declare (not safe))
                      (_g2430224618_ _tgt24282_))))
                 (_generate-class23899_
                  (lambda (_info23901_
                           _tgt23903_
                           _body23904_
                           _K23905_
                           _E23906_)
                    (letrec* ((_rtd23908_
                               (if (let ()
                                     (declare (not safe))
                                     (class-instance?
                                      |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
                                      _info23901_))
                                   (let ()
                                     (declare (not safe))
                                     (unchecked-slot-ref
                                      _info23901_
                                      'type-exhibitor))
                                   '#f))
                              (_known-slot?23910_
                               (if _rtd23908_
                                   (lambda (_key24274_)
                                     (let ((_slot24277_
                                            (keyword->symbol
                                             (gx#stx-e _key24274_))))
                                       (declare (not safe))
                                       (_rtd-known-slot?23912_
                                        _rtd23908_
                                        _slot24277_)))
                                   false))
                              (_final?23911_
                               (if _rtd23908_
                                   (assgetq 'final:
                                            (##structure-ref
                                             _rtd23908_
                                             '5
                                             |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
                                             '#f))
                                   '#f))
                              (_rtd-known-slot?23912_
                               (lambda (_rtd24261_ _slot24263_)
                                 (if _rtd24261_
                                     (let ((_$e24265_
                                            (memq _slot24263_
                                                  (##structure-ref
                                                   _rtd24261_
                                                   '6
                                                   |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
                                                   '#f))))
                                       (if _$e24265_
                                           _$e24265_
                                           (ormap (lambda (_g2426824270_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_rtd-known-slot?23912_
                                                       _g2426824270_
                                                       _slot24263_)))
                                                  (map |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
                                                       (##structure-ref
                                                        _rtd24261_
                                                        '2
                                                        |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
                                                        '#f)))))
                                     '#f)))
                              (_recur23913_
                               (lambda (_klass24047_ _rest24049_)
                                 (let* ((___stx4151441515_ _rest24049_)
                                        (_g2405224068_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx4151441515_))))
                                   (let ((___kont4151741518_
                                          (lambda (_L24106_ _L24108_ _L24109_)
                                            (let* ((_g2412524133_
                                                    (lambda (_g2412624129_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g2412624129_)))
                                                   (_g2412424253_
                                                    (lambda (_g2412624137_)
                                                      ((lambda (_L24140_)
                                                         (let ()
                                                           (let* ((_g2415224160_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g2415324156_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g2415324156_)))
                          (_g2415124249_
                           (lambda (_g2415324164_)
                             ((lambda (_L24167_)
                                (let ()
                                  (let* ((_g2418024188_
                                          (lambda (_g2418124184_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g2418124184_)))
                                         (_g2417924245_
                                          (lambda (_g2418124192_)
                                            ((lambda (_L24195_)
                                               (let ()
                                                 (let* ((_g2420824216_
                                                         (lambda (_g2420924212_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _g2420924212_)))
                                                        (_g2420724241_
                                                         (lambda (_g2420924220_)
                                                           ((lambda (_L24223_)
                                                              (let ()
                                                                (let ((_K24236_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons 'let
                                     (cons (cons (cons _L24223_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##vector-ref)
                           (cons _L24140_
                                 (cons (cons (gx#datum->syntax '#f 'fx1+)
                                             (cons _L24195_ '()))
                                       '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons (let ((__tmp42904
                                                        (let ()
                                                          (declare (not safe))
                                                          (_recur23913_
                                                           _klass24047_
                                                           _L24106_))))
                                                   (declare (not safe))
                                                   (_generate123893_
                                                    _L24223_
                                                    _L24108_
                                                    __tmp42904
                                                    _E23906_))
                                                 '())))))
                          (if (_known-slot?23910_ _L24109_)
                              (cons 'let
                                    (cons (cons (cons _L24195_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'class-slot-offset)
                          (cons _L24167_ (cons _L24109_ '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons _K24236_ '())))
                              (cons 'let
                                    (cons (cons (cons _L24195_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'class-slot-offset)
                          (cons _L24167_ (cons _L24109_ '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons 'if
                                                      (cons _L24195_
                                                            (cons _K24236_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _E23906_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))))))
                    _g2420924220_)))
                (__tmp42905 (gx#genident 'e)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_g2420724241_
                                                    __tmp42905))))
                                             _g2418124192_)))
                                         (__tmp42906 (gx#genident 'slot)))
                                    (declare (not safe))
                                    (_g2417924245_ __tmp42906))))
                              _g2415324164_))))
                     (declare (not safe))
                     (_g2415124249_ _klass24047_))))
               _g2412624137_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_g2412424253_ _tgt23903_))))
                                         (___kont4151941520_
                                          (lambda () _K23905_)))
                                     (if (gx#stx-pair? ___stx4151441515_)
                                         (let ((_e2405924086_
                                                (gx#syntax-e
                                                 ___stx4151441515_)))
                                           (let ((_tl2405724093_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e2405924086_)))
                                                 (_hd2405824090_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e2405924086_))))
                                             (if (gx#stx-pair? _tl2405724093_)
                                                 (let ((_e2406224096_
                                                        (gx#syntax-e
                                                         _tl2405724093_)))
                                                   (let ((_tl2406024103_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e2406224096_)))
                                                         (_hd2406124100_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e2406224096_))))
                                                     (___kont4151741518_
                                                      _tl2406024103_
                                                      _hd2406124100_
                                                      _hd2405824090_)))
                                                 (___kont4151941520_))))
                                         (___kont4151941520_)))))))
                      (let* ((_g2391523923_
                              (lambda (_g2391623919_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g2391623919_)))
                             (_g2391424043_
                              (lambda (_g2391623927_)
                                ((lambda (_L23930_)
                                   (let ()
                                     (let* ((_g2394523953_
                                             (lambda (_g2394623949_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g2394623949_)))
                                            (_g2394424039_
                                             (lambda (_g2394623957_)
                                               ((lambda (_L23960_)
                                                  (let ()
                                                    (let* ((_g2397323981_
                                                            (lambda (_g2397423977_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g2397423977_)))
                                                           (_g2397224035_
                                                            (lambda (_g2397423985_)
                                                              ((lambda (_L23988_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2400124009_
                                   (lambda (_g2400224005_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g2400224005_)))
                                  (_g2400024031_
                                   (lambda (_g2400224013_)
                                     ((lambda (_L24016_)
                                        (let ()
                                          (let ()
                                            (cons 'if
                                                  (cons (cons _L24016_
                                                              (cons _L23988_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _L23960_ '())))
                (cons (cons 'let
                            (cons (cons (cons _L23930_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'object-type)
                                                          (cons _L23960_ '()))
                                                    '()))
                                        '())
                                  (cons (let ()
                                          (declare (not safe))
                                          (_recur23913_ _L23930_ _body23904_))
                                        '())))
                      (cons _E23906_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g2400224013_)))
                                  (__tmp42907
                                   (if _final?23911_
                                       (gx#datum->syntax '#f 'direct-instance?)
                                       (gx#datum->syntax
                                        '#f
                                        'class-instance?))))
                             (declare (not safe))
                             (_g2400024031_ __tmp42907))))
                       _g2397423985_)))
                   (__tmp42908
                    (let ()
                      (declare (not safe))
                      (unchecked-slot-ref _info23901_ 'runtime-identifier))))
              (declare (not safe))
              (_g2397224035_ __tmp42908))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2394623957_))))
                                       (declare (not safe))
                                       (_g2394424039_ _tgt23903_))))
                                 _g2391623927_)))
                             (__tmp42909 (gx#genident 'class)))
                        (declare (not safe))
                        (_g2391424043_ __tmp42909))))))
          (let ()
            (declare (not safe))
            (_generate123893_ _tgt23888_ _ptree23889_ _K23890_ _E23891_)))))
    (define |gerbil/core$<match>[1]#generate-match*|
      (lambda (_stx22782_ _tgt-lst22784_ _clauses22785_)
        (letrec ((_parse-body22787_
                  (lambda (_hd-len23708_)
                    (let _lp23711_ ((_rest23714_ _clauses22785_)
                                    (_r23716_ '()))
                      (let* ((___stx4156441565_ _rest23714_)
                             (_g2371923731_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4156441565_))))
                        (let ((___kont4156741568_
                               (lambda (_L23759_ _L23761_)
                                 (let* ((___stx4153641537_ _L23761_)
                                        (_g2377823794_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx4153641537_))))
                                   (let ((___kont4153941540_
                                          (lambda (_L23863_)
                                            (if (gx#stx-null? _L23759_)
                                                (cons (cons (gx#genident 'else)
                                                            (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'begin) _L23863_)
                                 (let ((_$e23874_ (gx#stx-source _L23761_)))
                                   (if _$e23874_
                                       _$e23874_
                                       (gx#stx-source _stx22782_))))
                                '())))
              _r23716_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; misplaced else"
                                                 _stx22782_
                                                 _L23761_))))
                                         (___kont4154141542_
                                          (lambda (_L23822_ _L23824_)
                                            (let ((__tmp42910
                                                   (cons (cons (gx#genident
                                                                'try-match)
                                                               (cons (gx#stx-map
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2383623838_)
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core$<match>[1]#parse-match-pattern__%|
                                   _g2383623838_
                                   _stx22782_)))
                              _L23824_)
                             (cons (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'begin)
                                          _L23822_)
                                    (let ((_$e23842_ (gx#stx-source _L23761_)))
                                      (if _$e23842_
                                          _$e23842_
                                          (gx#stx-source _stx22782_))))
                                   '())))
                 _r23716_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (_lp23711_
                                               _L23759_
                                               __tmp42910))))
                                         (___kont4154341544_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; illegal match clause"
                                             _stx22782_
                                             _L23761_))))
                                     (let* ((___match4156141562_
                                             (lambda (_e2378823812_
                                                      _hd2378723816_
                                                      _tl2378623819_)
                                               (let ((_L23822_ _tl2378623819_)
                                                     (_L23824_ _hd2378723816_))
                                                 (if (and (gx#stx-list?
                                                           _L23824_)
                                                          (fx= (gx#stx-length
                                                                _L23824_)
                                                               _hd-len23708_)
                                                          (gx#stx-list?
                                                           _L23822_)
                                                          (not (gx#stx-null?
                                                                _L23822_)))
                                                     (___kont4154141542_
                                                      _L23822_
                                                      _L23824_)
                                                     (___kont4154341544_)))))
                                            (___match4155541556_
                                             (lambda (_e2378323853_
                                                      _hd2378223857_
                                                      _tl2378123860_)
                                               (let ((_L23863_ _tl2378123860_))
                                                 (if (and (gx#stx-list?
                                                           _L23863_)
                                                          (not (gx#stx-null?
                                                                _L23863_)))
                                                     (___kont4153941540_
                                                      _L23863_)
                                                     (___match4156141562_
                                                      _e2378323853_
                                                      _hd2378223857_
                                                      _tl2378123860_))))))
                                       (if (gx#stx-pair? ___stx4153641537_)
                                           (let ((_e2378323853_
                                                  (gx#syntax-e
                                                   ___stx4153641537_)))
                                             (let ((_tl2378123860_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2378323853_)))
                                                   (_hd2378223857_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2378323853_))))
                                               (if (gx#identifier?
                                                    _hd2378223857_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core$<match>[1]#_g42911_|
                                                        _hd2378223857_)
                                                       (___match4155541556_
                                                        _e2378323853_
                                                        _hd2378223857_
                                                        _tl2378123860_)
                                                       (___match4156141562_
                                                        _e2378323853_
                                                        _hd2378223857_
                                                        _tl2378123860_))
                                                   (___match4156141562_
                                                    _e2378323853_
                                                    _hd2378223857_
                                                    _tl2378123860_))))
                                           (___kont4154341544_)))))))
                              (___kont4156941570_ (lambda () _r23716_)))
                          (if (gx#stx-pair? ___stx4156441565_)
                              (let ((_e2372523749_
                                     (gx#syntax-e ___stx4156441565_)))
                                (let ((_tl2372323756_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2372523749_)))
                                      (_hd2372423753_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2372523749_))))
                                  (___kont4156741568_
                                   _tl2372323756_
                                   _hd2372423753_)))
                              (___kont4156941570_)))))))
                 (_generate-body22789_
                  (lambda (_body23493_)
                    (let* ((_g2349623504_
                            (lambda (_g2349723500_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2349723500_)))
                           (_g2349523704_
                            (lambda (_g2349723508_)
                              ((lambda (_L23511_)
                                 (let ()
                                   (let* ((_g2352323540_
                                           (lambda (_g2352423536_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g2352423536_)))
                                          (_g2352223700_
                                           (lambda (_g2352423544_)
                                             (if (gx#stx-pair/null?
                                                  _g2352423544_)
                                                 (let ((_g42912_
                                                        (gx#syntax-split-splice
                                                         _g2352423544_
                                                         '0)))
                                                   (begin
                                                     (let ((_g42913_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g42912_)
                          (##vector-length _g42912_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g42913_ 2)))
                   (error "Context expects 2 values" _g42913_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2352623547_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g42912_
                                                               0)))
                                                           (_tl2352823550_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g42912_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _tl2352823550_)
                                                           (letrec ((_loop2352923553_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2352723557_ _target2353323560_)
                               (if (gx#stx-pair? _hd2352723557_)
                                   (let ((_e2353023563_
                                          (gx#syntax-e _hd2352723557_)))
                                     (let ((_lp-hd2353123567_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2353023563_)))
                                           (_lp-tl2353223570_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2353023563_))))
                                       (let ((__tmp42918
                                              (cons _lp-hd2353123567_
                                                    _target2353323560_)))
                                         (declare (not safe))
                                         (_loop2352923553_
                                          _lp-tl2353223570_
                                          __tmp42918))))
                                   (let ((_target2353423573_
                                          (reverse _target2353323560_)))
                                     ((lambda (_L23577_)
                                        (let ()
                                          (let* ((_g2359423602_
                                                  (lambda (_g2359523598_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g2359523598_)))
                                                 (_g2359323688_
                                                  (lambda (_g2359523606_)
                                                    ((lambda (_L23609_)
                                                       (let ()
                                                         (let* ((_g2362223630_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2362323626_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2362323626_)))
                        (_g2362123684_
                         (lambda (_g2362323634_)
                           ((lambda (_L23637_)
                              (let ()
                                (let* ((_g2365023658_
                                        (lambda (_g2365123654_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g2365123654_)))
                                       (_g2364923680_
                                        (lambda (_g2365123662_)
                                          ((lambda (_L23665_)
                                             (let ()
                                               (let ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '@match)
                                                             (cons _L23665_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g2365123662_)))
                                       (__tmp42914
                                        (gx#stx-wrap-source
                                         (cons (gx#datum->syntax '#f 'let)
                                               (cons (cons (cons _L23511_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L23609_ '()))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _L23637_ '())))
                                         (gx#stx-source _stx22782_))))
                                  (declare (not safe))
                                  (_g2364923680_ __tmp42914))))
                            _g2362323634_)))
                        (__tmp42915
                         (let ((__tmp42916 (cons _L23511_ '())))
                           (declare (not safe))
                           (_generate-clauses22790_ _body23493_ __tmp42916))))
                   (declare (not safe))
                   (_g2362123684_ __tmp42915))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2359523606_)))
                                                 (__tmp42917
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
                                         (foldr (lambda (_g2369123694_
                                                         _g2369223697_)
                                                  (cons _g2369123694_
                                                        _g2369223697_))
                                                '()
                                                _L23577_)))
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _stx22782_))))
                                            (declare (not safe))
                                            (_g2359323688_ __tmp42917))))
                                      _target2353423573_))))))
                     (let ()
                       (declare (not safe))
                       (_loop2352923553_ _target2352623547_ '())))
                   (let ()
                     (declare (not safe))
                     (_g2352323540_ _g2352423544_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2352323540_
                                                    _g2352423544_))))))
                                     (declare (not safe))
                                     (_g2352223700_ _tgt-lst22784_))))
                               _g2349723508_)))
                           (__tmp42919 (gx#genident 'E)))
                      (declare (not safe))
                      (_g2349523704_ __tmp42919))))
                 (_generate-clauses22790_
                  (lambda (_rest23145_ _E23147_)
                    (let* ((___stx4158041581_ _rest23145_)
                           (_g2315123167_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4158041581_))))
                      (let ((___kont4158341584_
                             (lambda (_L23401_)
                               (let* ((_g2341223430_
                                       (lambda (_g2341323426_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2341323426_)))
                                      (_g2341123485_
                                       (lambda (_g2341323434_)
                                         (if (gx#stx-pair? _g2341323434_)
                                             (let ((_e2341823437_
                                                    (gx#syntax-e
                                                     _g2341323434_)))
                                               (let ((_hd2341723441_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2341823437_)))
                                                     (_tl2341623444_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2341823437_))))
                                                 (if (gx#stx-pair?
                                                      _tl2341623444_)
                                                     (let ((_e2342123447_
                                                            (gx#syntax-e
                                                             _tl2341623444_)))
                                                       (let ((_hd2342023451_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e2342123447_)))
                     (_tl2341923454_
                      (let () (declare (not safe)) (##cdr _e2342123447_))))
                 (if (gx#stx-pair? _tl2341923454_)
                     (let ((_e2342423457_ (gx#syntax-e _tl2341923454_)))
                       (let ((_hd2342323461_
                              (let ()
                                (declare (not safe))
                                (##car _e2342423457_)))
                             (_tl2342223464_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2342423457_))))
                         (if (gx#stx-null? _tl2342223464_)
                             ((lambda (_L23467_ _L23469_)
                                (cons 'begin-annotation
                                      (cons '@match-body
                                            (cons (if (gx#stx-e _L23469_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate122791_
                                                         _L23469_
                                                         _L23467_
                                                         _E23147_))
                                                      _L23467_)
                                                  '()))))
                              _hd2342323461_
                              _hd2342023451_)
                             (let ()
                               (declare (not safe))
                               (_g2341223430_ _g2341323434_)))))
                     (let ()
                       (declare (not safe))
                       (_g2341223430_ _g2341323434_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2341223430_
                                                        _g2341323434_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2341223430_
                                                _g2341323434_))))))
                                 (declare (not safe))
                                 (_g2341123485_ _L23401_))))
                            (___kont4158541586_
                             (lambda (_L23195_ _L23197_)
                               (let* ((_g2321023229_
                                       (lambda (_g2321123225_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2321123225_)))
                                      (_g2320923380_
                                       (lambda (_g2321123233_)
                                         (if (gx#stx-pair? _g2321123233_)
                                             (let ((_e2321723236_
                                                    (gx#syntax-e
                                                     _g2321123233_)))
                                               (let ((_hd2321623240_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2321723236_)))
                                                     (_tl2321523243_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2321723236_))))
                                                 (if (gx#stx-pair?
                                                      _tl2321523243_)
                                                     (let ((_e2322023246_
                                                            (gx#syntax-e
                                                             _tl2321523243_)))
                                                       (let ((_hd2321923250_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e2322023246_)))
                     (_tl2321823253_
                      (let () (declare (not safe)) (##cdr _e2322023246_))))
                 (if (gx#stx-pair? _tl2321823253_)
                     (let ((_e2322323256_ (gx#syntax-e _tl2321823253_)))
                       (let ((_hd2322223260_
                              (let ()
                                (declare (not safe))
                                (##car _e2322323256_)))
                             (_tl2322123263_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2322323256_))))
                         (if (gx#stx-null? _tl2322123263_)
                             ((lambda (_L23266_ _L23268_ _L23269_)
                                (if (gx#stx-e _L23268_)
                                    (let* ((_g2328623301_
                                            (lambda (_g2328723297_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g2328723297_)))
                                           (_g2328523346_
                                            (lambda (_g2328723305_)
                                              (if (gx#stx-pair? _g2328723305_)
                                                  (let ((_e2329223308_
                                                         (gx#syntax-e
                                                          _g2328723305_)))
                                                    (let ((_hd2329123312_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2329223308_)))
                                                          (_tl2329023315_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2329223308_))))
                                                      (if (gx#stx-pair?
                                                           _tl2329023315_)
                                                          (let ((_e2329523318_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2329023315_)))
                    (let ((_hd2329423322_
                           (let () (declare (not safe)) (##car _e2329523318_)))
                          (_tl2329323325_
                           (let ()
                             (declare (not safe))
                             (##cdr _e2329523318_))))
                      (if (gx#stx-null? _tl2329323325_)
                          ((lambda (_L23328_ _L23330_)
                             (let ()
                               (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _L23269_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'lambda)
                           (cons '() (cons _L23330_ '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons _L23328_ '())))))
                           _hd2329423322_
                           _hd2329123312_)
                          (let ()
                            (declare (not safe))
                            (_g2328623301_ _g2328723305_)))))
                  (let ()
                    (declare (not safe))
                    (_g2328623301_ _g2328723305_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2328623301_
                                                     _g2328723305_)))))
                                           (__tmp42922
                                            (list (let ()
                                                    (declare (not safe))
                                                    (_generate122791_
                                                     _L23268_
                                                     _L23266_
                                                     _E23147_))
                                                  (let ((__tmp42923
                                                         (cons _L23269_ '())))
                                                    (declare (not safe))
                                                    (_generate-clauses22790_
                                                     _L23195_
                                                     __tmp42923)))))
                                      (declare (not safe))
                                      (_g2328523346_ __tmp42922))
                                    (let* ((_g2335023358_
                                            (lambda (_g2335123354_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g2335123354_)))
                                           (_g2334923376_
                                            (lambda (_g2335123362_)
                                              ((lambda (_L23365_)
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (cons (cons _L23269_
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
                         (cons '() (cons _L23266_ '())))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))
                             '())
                       (cons _L23365_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g2335123362_)))
                                           (__tmp42920
                                            (let ((__tmp42921
                                                   (cons _L23269_ '())))
                                              (declare (not safe))
                                              (_generate-clauses22790_
                                               _L23195_
                                               __tmp42921))))
                                      (declare (not safe))
                                      (_g2334923376_ __tmp42920))))
                              _hd2322223260_
                              _hd2321923250_
                              _hd2321623240_)
                             (let ()
                               (declare (not safe))
                               (_g2321023229_ _g2321123233_)))))
                     (let ()
                       (declare (not safe))
                       (_g2321023229_ _g2321123233_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2321023229_
                                                        _g2321123233_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g2321023229_
                                                _g2321123233_))))))
                                 (declare (not safe))
                                 (_g2320923380_ _L23197_))))
                            (___kont4158741588_
                             (lambda ()
                               (cons 'begin-annotation
                                     (cons '@match-body
                                           (cons _E23147_ '()))))))
                        (if (gx#stx-pair? ___stx4158041581_)
                            (let ((_e2315623391_
                                   (gx#syntax-e ___stx4158041581_)))
                              (let ((_tl2315423398_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2315623391_)))
                                    (_hd2315523395_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2315623391_))))
                                (if (gx#stx-null? _tl2315423398_)
                                    (___kont4158341584_ _hd2315523395_)
                                    (___kont4158541586_
                                     _tl2315423398_
                                     _hd2315523395_))))
                            (___kont4158741588_))))))
                 (_generate122791_
                  (lambda (_clause22793_ _body22795_ _E22796_)
                    (let* ((_g2279822822_
                            (lambda (_g2279922818_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g2279922818_)))
                           (_g2279723141_
                            (lambda (_g2279922826_)
                              (if (gx#stx-pair? _g2279922826_)
                                  (let ((_e2280422829_
                                         (gx#syntax-e _g2279922826_)))
                                    (let ((_hd2280322833_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2280422829_)))
                                          (_tl2280222836_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2280422829_))))
                                      (if (gx#stx-pair? _tl2280222836_)
                                          (let ((_e2280722839_
                                                 (gx#syntax-e _tl2280222836_)))
                                            (let ((_hd2280622843_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2280722839_)))
                                                  (_tl2280522846_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2280722839_))))
                                              (if (gx#stx-pair/null?
                                                   _hd2280622843_)
                                                  (let ((_g42924_
                                                         (gx#syntax-split-splice
                                                          _hd2280622843_
                                                          '0)))
                                                    (begin
                                                      (let ((_g42925_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g42924_)
                           (##vector-length _g42924_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g42925_ 2)))
                    (error "Context expects 2 values" _g42925_)))
              (let ((_target2280822849_
                     (let () (declare (not safe)) (##vector-ref _g42924_ 0)))
                    (_tl2281022852_
                     (let () (declare (not safe)) (##vector-ref _g42924_ 1))))
                (if (gx#stx-null? _tl2281022852_)
                    (letrec ((_loop2281122855_
                              (lambda (_hd2280922859_ _var2281522862_)
                                (if (gx#stx-pair? _hd2280922859_)
                                    (let ((_e2281222865_
                                           (gx#syntax-e _hd2280922859_)))
                                      (let ((_lp-hd2281322869_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2281222865_)))
                                            (_lp-tl2281422872_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2281222865_))))
                                        (let ((__tmp42929
                                               (cons _lp-hd2281322869_
                                                     _var2281522862_)))
                                          (declare (not safe))
                                          (_loop2281122855_
                                           _lp-tl2281422872_
                                           __tmp42929))))
                                    (let ((_var2281622875_
                                           (reverse _var2281522862_)))
                                      (if (gx#stx-null? _tl2280522846_)
                                          ((lambda (_L22879_ _L22881_)
                                             (let ()
                                               (gx#check-duplicate-identifiers
                                                (foldr (lambda (_g2290222905_
                                                                _g2290322908_)
                                                         (cons _g2290222905_
                                                               _g2290322908_))
                                                       '()
                                                       _L22879_)
                                                _stx22782_)
                                               (let* ((_g2291122919_
                                                       (lambda (_g2291222915_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2291222915_)))
                                                      (_g2291023013_
                                                       (lambda (_g2291222923_)
                                                         ((lambda (_L22926_)
                                                            (let ()
                                                              (let* ((_g2293922947_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2294022943_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g2294022943_)))
                             (_g2293823009_
                              (lambda (_g2294022951_)
                                ((lambda (_L22954_)
                                   (let ()
                                     (let* ((_g2296722975_
                                             (lambda (_g2296822971_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g2296822971_)))
                                            (_g2296622997_
                                             (lambda (_g2296822979_)
                                               ((lambda (_L22982_)
                                                  (let ()
                                                    (let ()
                                                      (gx#stx-wrap-source
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons _L22881_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _L22982_ '()))
                           (cons _L22926_ '())))
               (gx#stx-source _stx22782_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2296822979_)))
                                            (__tmp42926
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons (foldr (lambda (_g2300023003_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g2300123006_)
                           (cons _g2300023003_ _g2300123006_))
                         '()
                         _L22879_)
                  (cons _L22954_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx22782_))))
                                       (declare (not safe))
                                       (_g2296622997_ __tmp42926))))
                                 _g2294022951_))))
                        (declare (not safe))
                        (_g2293823009_ _body22795_))))
                  _g2291222923_)))
              (__tmp42927
               (let _recur23017_ ((_rest23020_ _clause22793_)
                                  (_rest-targets23022_ _tgt-lst22784_))
                 (let* ((___stx4160641607_ _rest23020_)
                        (_g2302523037_
                         (lambda ()
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            ___stx4160641607_))))
                   (let ((___kont4160941610_
                          (lambda (_L23073_ _L23075_)
                            (let* ((_g2309023102_
                                    (lambda (_g2309123098_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _g2309123098_)))
                                   (_g2308923133_
                                    (lambda (_g2309123106_)
                                      (if (gx#stx-pair? _g2309123106_)
                                          (let ((_e2309623109_
                                                 (gx#syntax-e _g2309123106_)))
                                            (let ((_hd2309523113_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2309623109_)))
                                                  (_tl2309423116_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2309623109_))))
                                              ((lambda (_L23119_ _L23121_)
                                                 (let ((__tmp42928
                                                        (let ()
                                                          (declare (not safe))
                                                          (_recur23017_
                                                           _L23073_
                                                           _L23119_))))
                                                   (declare (not safe))
                                                   (|gerbil/core$<match>[1]#generate-match1|
                                                    _stx22782_
                                                    _L23121_
                                                    _L23075_
                                                    __tmp42928
                                                    _E22796_)))
                                               _tl2309423116_
                                               _hd2309523113_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g2309023102_ _g2309123106_))))))
                              (declare (not safe))
                              (_g2308923133_ _rest-targets23022_))))
                         (___kont4161141612_
                          (lambda ()
                            (cons _L22881_
                                  (foldr (lambda (_g2304723050_ _g2304823053_)
                                           (cons _g2304723050_ _g2304823053_))
                                         '()
                                         _L22879_)))))
                     (if (gx#stx-pair? ___stx4160641607_)
                         (let ((_e2303123063_ (gx#syntax-e ___stx4160641607_)))
                           (let ((_tl2302923070_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e2303123063_)))
                                 (_hd2303023067_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e2303123063_))))
                             (___kont4160941610_
                              _tl2302923070_
                              _hd2303023067_)))
                         (___kont4161141612_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2291023013_ __tmp42927))))
                                           _var2281622875_
                                           _hd2280322833_)
                                          (let ()
                                            (declare (not safe))
                                            (_g2279822822_
                                             _g2279922826_))))))))
                      (let ()
                        (declare (not safe))
                        (_loop2281122855_ _target2280822849_ '())))
                    (let ()
                      (declare (not safe))
                      (_g2279822822_ _g2279922826_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2279822822_
                                                     _g2279922826_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g2279822822_ _g2279922826_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2279822822_ _g2279922826_)))))
                           (__tmp42930
                            (list (gx#genident 'K)
                                  (apply append
                                         (map |gerbil/core$<match>[1]#match-pattern-vars|
                                              _clause22793_)))))
                      (declare (not safe))
                      (_g2279723141_ __tmp42930)))))
          (let ((__tmp42931
                 (let ((__tmp42932 (gx#stx-length _tgt-lst22784_)))
                   (declare (not safe))
                   (_parse-body22787_ __tmp42932))))
            (declare (not safe))
            (_generate-body22789_ __tmp42931)))))
    (define |gerbil/core$<match>[1]#generate-match|
      (lambda (_stx22684_ _tgt22686_ _clauses22687_)
        (letrec ((_reclause22689_
                  (lambda (_clause22692_)
                    (let* ((___stx4162241623_ _clause22692_)
                           (_g2269722712_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4162241623_))))
                      (let ((___kont4162541626_ (lambda () _clause22692_))
                            (___kont4162741628_
                             (lambda (_L22740_ _L22742_)
                               (gx#stx-wrap-source
                                (cons (cons _L22742_ '()) _L22740_)
                                (gx#stx-source
                                 (gx#datum->syntax '#f 'clause)))))
                            (___kont4162941630_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal match clause"
                                _stx22684_
                                _clause22692_))))
                        (if (gx#stx-pair? ___stx4162241623_)
                            (let ((_e2270122764_
                                   (gx#syntax-e ___stx4162241623_)))
                              (let ((_tl2269922771_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2270122764_)))
                                    (_hd2270022768_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2270122764_))))
                                (if (gx#identifier? _hd2270022768_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<match>[1]#_g42933_|
                                         _hd2270022768_)
                                        (___kont4162541626_)
                                        (___kont4162741628_
                                         _tl2269922771_
                                         _hd2270022768_))
                                    (___kont4162741628_
                                     _tl2269922771_
                                     _hd2270022768_))))
                            (___kont4162941630_)))))))
          (let ((__tmp42935 (cons _tgt22686_ '()))
                (__tmp42934 (gx#stx-map _reclause22689_ _clauses22687_)))
            (declare (not safe))
            (|gerbil/core$<match>[1]#generate-match*|
             _stx22684_
             __tmp42935
             __tmp42934)))))
    (define |gerbil/core$<match>[:0:]#match|
      (lambda (_stx30293_)
        (let* ((___stx4165041651_ _stx30293_)
               (_g3029830327_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4165041651_))))
          (let ((___kont4165341654_
                 (lambda (_L30567_)
                   (let* ((_g3058030588_
                           (lambda (_g3058130584_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g3058130584_)))
                          (_g3057930641_
                           (lambda (_g3058130592_)
                             ((lambda (_L30595_)
                                (let ()
                                  (let* ((_g3060730615_
                                          (lambda (_g3060830611_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g3060830611_)))
                                         (_g3060630637_
                                          (lambda (_g3060830619_)
                                            ((lambda (_L30622_)
                                               (let ()
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'lambda)
                                                         (cons (cons _L30595_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons _L30622_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _g3060830619_))))
                                    (_g3060630637_
                                     (gx#stx-wrap-source
                                      (cons (gx#datum->syntax '#f 'match)
                                            (cons _L30595_ _L30567_))
                                      (gx#stx-source _stx30293_))))))
                              _g3058130592_))))
                     (_g3057930641_ (gx#genident 'e)))))
                (___kont4165541656_
                 (lambda (_L30462_)
                   (let* ((_g3047530483_
                           (lambda (_g3047630479_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g3047630479_)))
                          (_g3047430536_
                           (lambda (_g3047630487_)
                             ((lambda (_L30490_)
                                (let ()
                                  (let* ((_g3050230510_
                                          (lambda (_g3050330506_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g3050330506_)))
                                         (_g3050130532_
                                          (lambda (_g3050330514_)
                                            ((lambda (_L30517_)
                                               (let ()
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'lambda)
                                                         (cons _L30490_
                                                               (cons _L30517_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _g3050330514_))))
                                    (_g3050130532_
                                     (gx#stx-wrap-source
                                      (cons (gx#datum->syntax '#f 'match)
                                            (cons _L30490_ _L30462_))
                                      (gx#stx-source _stx30293_))))))
                              _g3047630487_))))
                     (_g3047430536_ (gx#genident 'args)))))
                (___kont4165741658_
                 (lambda (_L30354_ _L30356_)
                   (let* ((_g3037030378_
                           (lambda (_g3037130374_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g3037130374_)))
                          (_g3036930431_
                           (lambda (_g3037130382_)
                             ((lambda (_L30385_)
                                (let ()
                                  (let* ((_g3039730405_
                                          (lambda (_g3039830401_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g3039830401_)))
                                         (_g3039630427_
                                          (lambda (_g3039830409_)
                                            ((lambda (_L30412_)
                                               (let ()
                                                 (let ()
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (cons (cons _L30385_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _L30356_ '()))
                             '())
                       (cons _L30412_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _g3039830409_))))
                                    (_g3039630427_
                                     (let ()
                                       (declare (not safe))
                                       (|gerbil/core$<match>[1]#generate-match|
                                        _stx30293_
                                        _L30385_
                                        _L30354_))))))
                              _g3037130382_))))
                     (_g3036930431_ (gx#genident _L30356_))))))
            (let* ((___match4170341704_
                    (lambda (_e3031830334_
                             _hd3031730338_
                             _tl3031630341_
                             _e3032130344_
                             _hd3032030348_
                             _tl3031930351_)
                      (let ((_L30354_ _tl3031930351_)
                            (_L30356_ _hd3032030348_))
                        (if (gx#stx-list? _L30354_)
                            (___kont4165741658_ _L30354_ _L30356_)
                            (let () (declare (not safe)) (_g3029830327_))))))
                   (___match4169141692_
                    (lambda (_e3031030442_
                             _hd3030930446_
                             _tl3030830449_
                             _e3031330452_
                             _hd3031230456_
                             _tl3031130459_)
                      (let ((_L30462_ _tl3031130459_))
                        (if (gx#stx-list? _L30462_)
                            (___kont4165541656_ _L30462_)
                            (___match4170341704_
                             _e3031030442_
                             _hd3030930446_
                             _tl3030830449_
                             _e3031330452_
                             _hd3031230456_
                             _tl3031130459_)))))
                   (___match4167541676_
                    (lambda (_e3030330547_
                             _hd3030230551_
                             _tl3030130554_
                             _e3030630557_
                             _hd3030530561_
                             _tl3030430564_)
                      (let ((_L30567_ _tl3030430564_))
                        (if (gx#stx-list? _L30567_)
                            (___kont4165341654_ _L30567_)
                            (___match4170341704_
                             _e3030330547_
                             _hd3030230551_
                             _tl3030130554_
                             _e3030630557_
                             _hd3030530561_
                             _tl3030430564_))))))
              (if (gx#stx-pair? ___stx4165041651_)
                  (let ((_e3030330547_ (gx#syntax-e ___stx4165041651_)))
                    (let ((_tl3030130554_
                           (let () (declare (not safe)) (##cdr _e3030330547_)))
                          (_hd3030230551_
                           (let ()
                             (declare (not safe))
                             (##car _e3030330547_))))
                      (if (gx#stx-pair? _tl3030130554_)
                          (let ((_e3030630557_ (gx#syntax-e _tl3030130554_)))
                            (let ((_tl3030430564_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3030630557_)))
                                  (_hd3030530561_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3030630557_))))
                              (if (gx#identifier? _hd3030530561_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g42937_|
                                       _hd3030530561_)
                                      (___match4167541676_
                                       _e3030330547_
                                       _hd3030230551_
                                       _tl3030130554_
                                       _e3030630557_
                                       _hd3030530561_
                                       _tl3030430564_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g42936_|
                                           _hd3030530561_)
                                          (___match4169141692_
                                           _e3030330547_
                                           _hd3030230551_
                                           _tl3030130554_
                                           _e3030630557_
                                           _hd3030530561_
                                           _tl3030430564_)
                                          (___match4170341704_
                                           _e3030330547_
                                           _hd3030230551_
                                           _tl3030130554_
                                           _e3030630557_
                                           _hd3030530561_
                                           _tl3030430564_)))
                                  (___match4170341704_
                                   _e3030330547_
                                   _hd3030230551_
                                   _tl3030130554_
                                   _e3030630557_
                                   _hd3030530561_
                                   _tl3030430564_))))
                          (let () (declare (not safe)) (_g3029830327_)))))
                  (let () (declare (not safe)) (_g3029830327_))))))))
    (define |gerbil/core$<match>[:0:]#match*|
      (lambda (_stx30649_)
        (let* ((_g3065230676_
                (lambda (_g3065330672_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g3065330672_)))
               (_g3065130888_
                (lambda (_g3065330680_)
                  (if (gx#stx-pair? _g3065330680_)
                      (let ((_e3065830683_ (gx#syntax-e _g3065330680_)))
                        (let ((_hd3065730687_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3065830683_)))
                              (_tl3065630690_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3065830683_))))
                          (if (gx#stx-pair? _tl3065630690_)
                              (let ((_e3066130693_
                                     (gx#syntax-e _tl3065630690_)))
                                (let ((_hd3066030697_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3066130693_)))
                                      (_tl3065930700_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3066130693_))))
                                  (if (gx#stx-pair/null? _hd3066030697_)
                                      (let ((_g42938_
                                             (gx#syntax-split-splice
                                              _hd3066030697_
                                              '0)))
                                        (begin
                                          (let ((_g42939_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g42938_)
                                                       (##vector-length
                                                        _g42938_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g42939_ 2)))
                                                (error "Context expects 2 values"
                                                       _g42939_)))
                                          (let ((_target3066230703_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42938_ 0)))
                                                (_tl3066430706_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g42938_ 1))))
                                            (if (gx#stx-null? _tl3066430706_)
                                                (letrec ((_loop3066530709_
                                                          (lambda (_hd3066330713_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e3066930716_)
                    (if (gx#stx-pair? _hd3066330713_)
                        (let ((_e3066630719_ (gx#syntax-e _hd3066330713_)))
                          (let ((_lp-hd3066730723_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3066630719_)))
                                (_lp-tl3066830726_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3066630719_))))
                            (_loop3066530709_
                             _lp-tl3066830726_
                             (cons _lp-hd3066730723_ _e3066930716_))))
                        (let ((_e3067030729_ (reverse _e3066930716_)))
                          ((lambda (_L30733_ _L30735_)
                             (if (gx#stx-list? _L30733_)
                                 (let* ((_g3075330770_
                                         (lambda (_g3075430766_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g3075430766_)))
                                        (_g3075230876_
                                         (lambda (_g3075430774_)
                                           (if (gx#stx-pair/null?
                                                _g3075430774_)
                                               (let ((_g42940_
                                                      (gx#syntax-split-splice
                                                       _g3075430774_
                                                       '0)))
                                                 (begin
                                                   (let ((_g42941_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g42940_)
                        (##vector-length _g42940_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g42941_ 2)))
                 (error "Context expects 2 values" _g42941_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target3075630777_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g42940_
                                                             0)))
                                                         (_tl3075830780_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g42940_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _tl3075830780_)
                                                         (letrec ((_loop3075930783_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd3075730787_ _$e3076330790_)
                             (if (gx#stx-pair? _hd3075730787_)
                                 (let ((_e3076030793_
                                        (gx#syntax-e _hd3075730787_)))
                                   (let ((_lp-hd3076130797_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e3076030793_)))
                                         (_lp-tl3076230800_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e3076030793_))))
                                     (_loop3075930783_
                                      _lp-tl3076230800_
                                      (cons _lp-hd3076130797_
                                            _$e3076330790_))))
                                 (let ((_$e3076430803_
                                        (reverse _$e3076330790_)))
                                   ((lambda (_L30807_)
                                      (let ()
                                        (let* ((_g3082330831_
                                                (lambda (_g3082430827_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g3082430827_)))
                                               (_g3082230864_
                                                (lambda (_g3082430835_)
                                                  ((lambda (_L30838_)
                                                     (let ()
                                                       (let ()
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#syntax-check-splice-targets
                                _L30735_
                                _L30807_)
                               (foldr (lambda (_g3085230856_
                                               _g3085330859_
                                               _g3085430861_)
                                        (cons (cons _g3085330859_
                                                    (cons _g3085230856_ '()))
                                              _g3085430861_))
                                      '()
                                      _L30735_
                                      _L30807_))
                             (cons _L30838_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g3082430835_))))
                                          (_g3082230864_
                                           (let ((__tmp42942
                                                  (foldr (lambda (_g3086730870_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g3086830873_)
                   (cons _g3086730870_ _g3086830873_))
                 '()
                 _L30807_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (|gerbil/core$<match>[1]#generate-match*|
                                              _stx30649_
                                              __tmp42942
                                              _L30733_))))))
                                    _$e3076430803_))))))
                   (_loop3075930783_ _target3075630777_ '()))
                 (_g3075330770_ _g3075430774_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g3075330770_
                                                _g3075430774_)))))
                                   (_g3075230876_
                                    (gx#gentemps
                                     (foldr (lambda (_g3087930882_
                                                     _g3088030885_)
                                              (cons _g3087930882_
                                                    _g3088030885_))
                                            '()
                                            _L30735_))))
                                 (_g3065230676_ _g3065330680_)))
                           _tl3065930700_
                           _e3067030729_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop3066530709_
                                                   _target3066230703_
                                                   '()))
                                                (_g3065230676_
                                                 _g3065330680_)))))
                                      (_g3065230676_ _g3065330680_))))
                              (_g3065230676_ _g3065330680_))))
                      (_g3065230676_ _g3065330680_)))))
          (_g3065130888_ _stx30649_))))
    (define |gerbil/core$<match>[:0:]#with|
      (lambda (_$stx30894_)
        (let* ((___stx4170641707_ _$stx30894_)
               (_g3090030983_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4170641707_))))
          (let ((___kont4170941710_
                 (lambda (_L31313_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_g3132931332_ _g3133031335_)
                                        (cons _g3132931332_ _g3133031335_))
                                      '()
                                      _L31313_)))))
                (___kont4171341714_
                 (lambda (_L31221_ _L31223_ _L31224_ _L31225_)
                   (cons _L31225_
                         (cons (cons (cons _L31224_ (cons _L31223_ '())) '())
                               (foldr (lambda (_g3124731250_ _g3124831253_)
                                        (cons _g3124731250_ _g3124831253_))
                                      '()
                                      _L31221_)))))
                (___kont4171741718_
                 (lambda (_L31094_ _L31096_ _L31097_)
                   (cons (gx#datum->syntax '#f 'match*)
                         (cons (foldr (lambda (_g3112331126_ _g3112431129_)
                                        (cons _g3112331126_ _g3112431129_))
                                      '()
                                      _L31096_)
                               (cons (cons (foldr (lambda (_g3112131132_
                                                           _g3112231135_)
                                                    (cons _g3112131132_
                                                          _g3112231135_))
                                                  '()
                                                  _L31097_)
                                           (foldr (lambda (_g3111931138_
                                                           _g3112031141_)
                                                    (cons _g3111931138_
                                                          _g3112031141_))
                                                  '()
                                                  _L31094_))
                                     '()))))))
            (let* ((___match4179941800_
                    (lambda (_e3094830990_
                             _hd3094730994_
                             _tl3094630997_
                             _e3095131000_
                             _hd3095031004_
                             _tl3094931007_
                             ___splice4171941720_
                             _target3095231010_
                             _tl3095431013_)
                      (letrec ((_loop3095531016_
                                (lambda (_hd3095331020_
                                         _expr3095931023_
                                         _hd3096031025_)
                                  (if (gx#stx-pair? _hd3095331020_)
                                      (let ((_e3095631028_
                                             (gx#syntax-e _hd3095331020_)))
                                        (let ((_lp-tl3095831035_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3095631028_)))
                                              (_lp-hd3095731032_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3095631028_))))
                                          (if (gx#stx-pair? _lp-hd3095731032_)
                                              (let ((_e3096531038_
                                                     (gx#syntax-e
                                                      _lp-hd3095731032_)))
                                                (let ((_tl3096331045_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3096531038_)))
                                                      (_hd3096431042_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3096531038_))))
                                                  (if (gx#stx-pair?
                                                       _tl3096331045_)
                                                      (let ((_e3096831048_
                                                             (gx#syntax-e
                                                              _tl3096331045_)))
                                                        (let ((_tl3096631055_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3096831048_)))
                      (_hd3096731052_
                       (let () (declare (not safe)) (##car _e3096831048_))))
                  (if (gx#stx-null? _tl3096631055_)
                      (_loop3095531016_
                       _lp-tl3095831035_
                       (cons _hd3096731052_ _expr3095931023_)
                       (cons _hd3096431042_ _hd3096031025_))
                      (let () (declare (not safe)) (_g3090030983_)))))
              (let () (declare (not safe)) (_g3090030983_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g3090030983_)))))
                                      (let ((_hd3096231061_
                                             (reverse _hd3096031025_))
                                            (_expr3096131058_
                                             (reverse _expr3095931023_)))
                                        (if (gx#stx-pair/null? _tl3094931007_)
                                            (let ((___splice4172141722_
                                                   (gx#syntax-split-splice
                                                    _tl3094931007_
                                                    '0)))
                                              (let ((_tl3097131067_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4172141722_
                                                        '1)))
                                                    (_target3096931064_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4172141722_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3097131067_)
                                                    (letrec ((_loop3097231070_
                                                              (lambda (_hd3097031074_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body3097631077_)
                        (if (gx#stx-pair? _hd3097031074_)
                            (let ((_e3097331080_ (gx#syntax-e _hd3097031074_)))
                              (let ((_lp-tl3097531087_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3097331080_)))
                                    (_lp-hd3097431084_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3097331080_))))
                                (_loop3097231070_
                                 _lp-tl3097531087_
                                 (cons _lp-hd3097431084_ _body3097631077_))))
                            (let ((_body3097731090_
                                   (reverse _body3097631077_)))
                              (___kont4171741718_
                               _body3097731090_
                               _expr3096131058_
                               _hd3096231061_))))))
              (_loop3097231070_ _target3096931064_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3090030983_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3090030983_))))))))
                        (_loop3095531016_ _target3095231010_ '() '()))))
                   (___match4179141792_
                    (lambda (_e3094830990_
                             _hd3094730994_
                             _tl3094630997_
                             _e3095131000_
                             _hd3095031004_
                             _tl3094931007_)
                      (if (gx#stx-pair/null? _hd3095031004_)
                          (let ((___splice4171941720_
                                 (gx#syntax-split-splice _hd3095031004_ '0)))
                            (let ((_tl3095431013_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4171941720_ '1)))
                                  (_target3095231010_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4171941720_ '0))))
                              (if (gx#stx-null? _tl3095431013_)
                                  (___match4179941800_
                                   _e3094830990_
                                   _hd3094730994_
                                   _tl3094630997_
                                   _e3095131000_
                                   _hd3095031004_
                                   _tl3094931007_
                                   ___splice4171941720_
                                   _target3095231010_
                                   _tl3095431013_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3090030983_)))))
                          (let () (declare (not safe)) (_g3090030983_)))))
                   (___match4177941780_
                    (lambda (_e3092431151_
                             _hd3092331155_
                             _tl3092231158_
                             _e3092731161_
                             _hd3092631165_
                             _tl3092531168_
                             _e3093031171_
                             _hd3092931175_
                             _tl3092831178_
                             _e3093331181_
                             _hd3093231185_
                             _tl3093131188_
                             ___splice4171541716_
                             _target3093431191_
                             _tl3093631194_)
                      (letrec ((_loop3093731197_
                                (lambda (_hd3093531201_ _body3094131204_)
                                  (if (gx#stx-pair? _hd3093531201_)
                                      (let ((_e3093831207_
                                             (gx#syntax-e _hd3093531201_)))
                                        (let ((_lp-tl3094031214_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3093831207_)))
                                              (_lp-hd3093931211_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3093831207_))))
                                          (_loop3093731197_
                                           _lp-tl3094031214_
                                           (cons _lp-hd3093931211_
                                                 _body3094131204_))))
                                      (let ((_body3094231217_
                                             (reverse _body3094131204_)))
                                        (let ((_L31221_ _body3094231217_)
                                              (_L31223_ _hd3093231185_)
                                              (_L31224_ _hd3092931175_)
                                              (_L31225_ _hd3092331155_))
                                          (if (let ()
                                                (declare (not safe))
                                                (|gerbil/core$<match>[1]#match-pattern?|
                                                 _L31224_))
                                              (___kont4171341714_
                                               _L31221_
                                               _L31223_
                                               _L31224_
                                               _L31225_)
                                              (___match4179141792_
                                               _e3092431151_
                                               _hd3092331155_
                                               _tl3092231158_
                                               _e3092731161_
                                               _hd3092631165_
                                               _tl3092531168_))))))))
                        (_loop3093731197_ _target3093431191_ '()))))
                   (___match4174541746_
                    (lambda (_e3090531263_
                             _hd3090431267_
                             _tl3090331270_
                             _e3090831273_
                             _hd3090731277_
                             _tl3090631280_
                             ___splice4171141712_
                             _target3090931283_
                             _tl3091131286_)
                      (letrec ((_loop3091231289_
                                (lambda (_hd3091031293_ _body3091631296_)
                                  (if (gx#stx-pair? _hd3091031293_)
                                      (let ((_e3091331299_
                                             (gx#syntax-e _hd3091031293_)))
                                        (let ((_lp-tl3091531306_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3091331299_)))
                                              (_lp-hd3091431303_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3091331299_))))
                                          (_loop3091231289_
                                           _lp-tl3091531306_
                                           (cons _lp-hd3091431303_
                                                 _body3091631296_))))
                                      (let ((_body3091731309_
                                             (reverse _body3091631296_)))
                                        (___kont4170941710_
                                         _body3091731309_))))))
                        (_loop3091231289_ _target3090931283_ '())))))
              (if (gx#stx-pair? ___stx4170641707_)
                  (let ((_e3090531263_ (gx#syntax-e ___stx4170641707_)))
                    (let ((_tl3090331270_
                           (let () (declare (not safe)) (##cdr _e3090531263_)))
                          (_hd3090431267_
                           (let ()
                             (declare (not safe))
                             (##car _e3090531263_))))
                      (if (gx#stx-pair? _tl3090331270_)
                          (let ((_e3090831273_ (gx#syntax-e _tl3090331270_)))
                            (let ((_tl3090631280_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3090831273_)))
                                  (_hd3090731277_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3090831273_))))
                              (if (gx#stx-null? _hd3090731277_)
                                  (if (gx#stx-pair/null? _tl3090631280_)
                                      (let ((___splice4171141712_
                                             (gx#syntax-split-splice
                                              _tl3090631280_
                                              '0)))
                                        (let ((_tl3091131286_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4171141712_
                                                  '1)))
                                              (_target3090931283_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4171141712_
                                                  '0))))
                                          (if (gx#stx-null? _tl3091131286_)
                                              (___match4174541746_
                                               _e3090531263_
                                               _hd3090431267_
                                               _tl3090331270_
                                               _e3090831273_
                                               _hd3090731277_
                                               _tl3090631280_
                                               ___splice4171141712_
                                               _target3090931283_
                                               _tl3091131286_)
                                              (if (gx#stx-pair/null?
                                                   _hd3090731277_)
                                                  (let ((___splice4171941720_
                                                         (gx#syntax-split-splice
                                                          _hd3090731277_
                                                          '0)))
                                                    (let ((_tl3095431013_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4171941720_
                                                              '1)))
                                                          (_target3095231010_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4171941720_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl3095431013_)
                                                          (___match4179941800_
                                                           _e3090531263_
                                                           _hd3090431267_
                                                           _tl3090331270_
                                                           _e3090831273_
                                                           _hd3090731277_
                                                           _tl3090631280_
                                                           ___splice4171941720_
                                                           _target3095231010_
                                                           _tl3095431013_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3090030983_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3090030983_))))))
                                      (if (gx#stx-pair/null? _hd3090731277_)
                                          (let ((___splice4171941720_
                                                 (gx#syntax-split-splice
                                                  _hd3090731277_
                                                  '0)))
                                            (let ((_tl3095431013_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4171941720_
                                                      '1)))
                                                  (_target3095231010_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4171941720_
                                                      '0))))
                                              (if (gx#stx-null? _tl3095431013_)
                                                  (___match4179941800_
                                                   _e3090531263_
                                                   _hd3090431267_
                                                   _tl3090331270_
                                                   _e3090831273_
                                                   _hd3090731277_
                                                   _tl3090631280_
                                                   ___splice4171941720_
                                                   _target3095231010_
                                                   _tl3095431013_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3090030983_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3090030983_))))
                                  (if (gx#stx-pair? _hd3090731277_)
                                      (let ((_e3093031171_
                                             (gx#syntax-e _hd3090731277_)))
                                        (let ((_tl3092831178_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3093031171_)))
                                              (_hd3092931175_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3093031171_))))
                                          (if (gx#stx-pair? _tl3092831178_)
                                              (let ((_e3093331181_
                                                     (gx#syntax-e
                                                      _tl3092831178_)))
                                                (let ((_tl3093131188_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3093331181_)))
                                                      (_hd3093231185_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3093331181_))))
                                                  (if (gx#stx-null?
                                                       _tl3093131188_)
                                                      (if (gx#stx-pair/null?
                                                           _tl3090631280_)
                                                          (let ((___splice4171541716_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _tl3090631280_ '0)))
                    (let ((_tl3093631194_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4171541716_ '1)))
                          (_target3093431191_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4171541716_ '0))))
                      (if (gx#stx-null? _tl3093631194_)
                          (___match4177941780_
                           _e3090531263_
                           _hd3090431267_
                           _tl3090331270_
                           _e3090831273_
                           _hd3090731277_
                           _tl3090631280_
                           _e3093031171_
                           _hd3092931175_
                           _tl3092831178_
                           _e3093331181_
                           _hd3093231185_
                           _tl3093131188_
                           ___splice4171541716_
                           _target3093431191_
                           _tl3093631194_)
                          (if (gx#stx-pair/null? _hd3090731277_)
                              (let ((___splice4171941720_
                                     (gx#syntax-split-splice
                                      _hd3090731277_
                                      '0)))
                                (let ((_tl3095431013_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4171941720_
                                          '1)))
                                      (_target3095231010_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4171941720_
                                          '0))))
                                  (if (gx#stx-null? _tl3095431013_)
                                      (___match4179941800_
                                       _e3090531263_
                                       _hd3090431267_
                                       _tl3090331270_
                                       _e3090831273_
                                       _hd3090731277_
                                       _tl3090631280_
                                       ___splice4171941720_
                                       _target3095231010_
                                       _tl3095431013_)
                                      (let ()
                                        (declare (not safe))
                                        (_g3090030983_)))))
                              (let () (declare (not safe)) (_g3090030983_))))))
                  (if (gx#stx-pair/null? _hd3090731277_)
                      (let ((___splice4171941720_
                             (gx#syntax-split-splice _hd3090731277_ '0)))
                        (let ((_tl3095431013_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4171941720_ '1)))
                              (_target3095231010_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4171941720_ '0))))
                          (if (gx#stx-null? _tl3095431013_)
                              (___match4179941800_
                               _e3090531263_
                               _hd3090431267_
                               _tl3090331270_
                               _e3090831273_
                               _hd3090731277_
                               _tl3090631280_
                               ___splice4171941720_
                               _target3095231010_
                               _tl3095431013_)
                              (let () (declare (not safe)) (_g3090030983_)))))
                      (let () (declare (not safe)) (_g3090030983_))))
              (if (gx#stx-pair/null? _hd3090731277_)
                  (let ((___splice4171941720_
                         (gx#syntax-split-splice _hd3090731277_ '0)))
                    (let ((_tl3095431013_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4171941720_ '1)))
                          (_target3095231010_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4171941720_ '0))))
                      (if (gx#stx-null? _tl3095431013_)
                          (___match4179941800_
                           _e3090531263_
                           _hd3090431267_
                           _tl3090331270_
                           _e3090831273_
                           _hd3090731277_
                           _tl3090631280_
                           ___splice4171941720_
                           _target3095231010_
                           _tl3095431013_)
                          (let () (declare (not safe)) (_g3090030983_)))))
                  (let () (declare (not safe)) (_g3090030983_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _hd3090731277_)
                                                  (let ((___splice4171941720_
                                                         (gx#syntax-split-splice
                                                          _hd3090731277_
                                                          '0)))
                                                    (let ((_tl3095431013_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4171941720_
                                                              '1)))
                                                          (_target3095231010_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4171941720_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl3095431013_)
                                                          (___match4179941800_
                                                           _e3090531263_
                                                           _hd3090431267_
                                                           _tl3090331270_
                                                           _e3090831273_
                                                           _hd3090731277_
                                                           _tl3090631280_
                                                           ___splice4171941720_
                                                           _target3095231010_
                                                           _tl3095431013_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3090030983_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3090030983_))))))
                                      (if (gx#stx-pair/null? _hd3090731277_)
                                          (let ((___splice4171941720_
                                                 (gx#syntax-split-splice
                                                  _hd3090731277_
                                                  '0)))
                                            (let ((_tl3095431013_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4171941720_
                                                      '1)))
                                                  (_target3095231010_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4171941720_
                                                      '0))))
                                              (if (gx#stx-null? _tl3095431013_)
                                                  (___match4179941800_
                                                   _e3090531263_
                                                   _hd3090431267_
                                                   _tl3090331270_
                                                   _e3090831273_
                                                   _hd3090731277_
                                                   _tl3090631280_
                                                   ___splice4171941720_
                                                   _target3095231010_
                                                   _tl3095431013_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3090030983_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3090030983_)))))))
                          (let () (declare (not safe)) (_g3090030983_)))))
                  (let () (declare (not safe)) (_g3090030983_))))))))
    (define |gerbil/core$<match>[:0:]#with*|
      (lambda (_$stx31346_)
        (let* ((___stx4180241803_ _$stx31346_)
               (_g3135131403_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4180241803_))))
          (let ((___kont4180541806_
                 (lambda (_L31573_ _L31575_ _L31576_ _L31577_ _L31578_)
                   (cons (gx#datum->syntax '#f 'with)
                         (cons (cons (cons _L31577_ (cons _L31576_ '())) '())
                               (cons (cons _L31578_
                                           (cons _L31575_
                                                 (foldr (lambda (_g3160331606_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g3160431609_)
                  (cons _g3160331606_ _g3160431609_))
                '()
                _L31573_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont4180941810_
                 (lambda (_L31460_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_g3147731480_ _g3147831483_)
                                        (cons _g3147731480_ _g3147831483_))
                                      '()
                                      _L31460_))))))
            (let* ((___match4187541876_
                    (lambda (_e3138531410_
                             _hd3138431414_
                             _tl3138331417_
                             _e3138831420_
                             _hd3138731424_
                             _tl3138631427_
                             ___splice4181141812_
                             _target3138931430_
                             _tl3139131433_)
                      (letrec ((_loop3139231436_
                                (lambda (_hd3139031440_ _body3139631443_)
                                  (if (gx#stx-pair? _hd3139031440_)
                                      (let ((_e3139331446_
                                             (gx#syntax-e _hd3139031440_)))
                                        (let ((_lp-tl3139531453_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3139331446_)))
                                              (_lp-hd3139431450_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3139331446_))))
                                          (_loop3139231436_
                                           _lp-tl3139531453_
                                           (cons _lp-hd3139431450_
                                                 _body3139631443_))))
                                      (let ((_body3139731456_
                                             (reverse _body3139631443_)))
                                        (___kont4180941810_
                                         _body3139731456_))))))
                        (_loop3139231436_ _target3138931430_ '()))))
                   (___match4185341854_
                    (lambda (_e3136031493_
                             _hd3135931497_
                             _tl3135831500_
                             _e3136331503_
                             _hd3136231507_
                             _tl3136131510_
                             _e3136631513_
                             _hd3136531517_
                             _tl3136431520_
                             _e3136931523_
                             _hd3136831527_
                             _tl3136731530_
                             _e3137231533_
                             _hd3137131537_
                             _tl3137031540_
                             ___splice4180741808_
                             _target3137331543_
                             _tl3137531546_)
                      (letrec ((_loop3137631549_
                                (lambda (_hd3137431553_ _body3138031556_)
                                  (if (gx#stx-pair? _hd3137431553_)
                                      (let ((_e3137731559_
                                             (gx#syntax-e _hd3137431553_)))
                                        (let ((_lp-tl3137931566_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3137731559_)))
                                              (_lp-hd3137831563_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3137731559_))))
                                          (_loop3137631549_
                                           _lp-tl3137931566_
                                           (cons _lp-hd3137831563_
                                                 _body3138031556_))))
                                      (let ((_body3138131569_
                                             (reverse _body3138031556_)))
                                        (___kont4180541806_
                                         _body3138131569_
                                         _tl3136431520_
                                         _hd3137131537_
                                         _hd3136831527_
                                         _hd3135931497_))))))
                        (_loop3137631549_ _target3137331543_ '())))))
              (if (gx#stx-pair? ___stx4180241803_)
                  (let ((_e3136031493_ (gx#syntax-e ___stx4180241803_)))
                    (let ((_tl3135831500_
                           (let () (declare (not safe)) (##cdr _e3136031493_)))
                          (_hd3135931497_
                           (let ()
                             (declare (not safe))
                             (##car _e3136031493_))))
                      (if (gx#stx-pair? _tl3135831500_)
                          (let ((_e3136331503_ (gx#syntax-e _tl3135831500_)))
                            (let ((_tl3136131510_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3136331503_)))
                                  (_hd3136231507_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3136331503_))))
                              (if (gx#stx-pair? _hd3136231507_)
                                  (let ((_e3136631513_
                                         (gx#syntax-e _hd3136231507_)))
                                    (let ((_tl3136431520_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3136631513_)))
                                          (_hd3136531517_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3136631513_))))
                                      (if (gx#stx-pair? _hd3136531517_)
                                          (let ((_e3136931523_
                                                 (gx#syntax-e _hd3136531517_)))
                                            (let ((_tl3136731530_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3136931523_)))
                                                  (_hd3136831527_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3136931523_))))
                                              (if (gx#stx-pair? _tl3136731530_)
                                                  (let ((_e3137231533_
                                                         (gx#syntax-e
                                                          _tl3136731530_)))
                                                    (let ((_tl3137031540_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3137231533_)))
                                                          (_hd3137131537_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3137231533_))))
                                                      (if (gx#stx-null?
                                                           _tl3137031540_)
                                                          (if (gx#stx-pair/null?
                                                               _tl3136131510_)
                                                              (let ((___splice4180741808_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _tl3136131510_ '0)))
                        (let ((_tl3137531546_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4180741808_ '1)))
                              (_target3137331543_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4180741808_ '0))))
                          (if (gx#stx-null? _tl3137531546_)
                              (___match4185341854_
                               _e3136031493_
                               _hd3135931497_
                               _tl3135831500_
                               _e3136331503_
                               _hd3136231507_
                               _tl3136131510_
                               _e3136631513_
                               _hd3136531517_
                               _tl3136431520_
                               _e3136931523_
                               _hd3136831527_
                               _tl3136731530_
                               _e3137231533_
                               _hd3137131537_
                               _tl3137031540_
                               ___splice4180741808_
                               _target3137331543_
                               _tl3137531546_)
                              (let () (declare (not safe)) (_g3135131403_)))))
                      (let () (declare (not safe)) (_g3135131403_)))
                  (let () (declare (not safe)) (_g3135131403_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3135131403_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3135131403_)))))
                                  (if (gx#stx-null? _hd3136231507_)
                                      (if (gx#stx-pair/null? _tl3136131510_)
                                          (let ((___splice4181141812_
                                                 (gx#syntax-split-splice
                                                  _tl3136131510_
                                                  '0)))
                                            (let ((_tl3139131433_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4181141812_
                                                      '1)))
                                                  (_target3138931430_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4181141812_
                                                      '0))))
                                              (if (gx#stx-null? _tl3139131433_)
                                                  (___match4187541876_
                                                   _e3136031493_
                                                   _hd3135931497_
                                                   _tl3135831500_
                                                   _e3136331503_
                                                   _hd3136231507_
                                                   _tl3136131510_
                                                   ___splice4181141812_
                                                   _target3138931430_
                                                   _tl3139131433_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3135131403_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3135131403_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g3135131403_))))))
                          (let () (declare (not safe)) (_g3135131403_)))))
                  (let () (declare (not safe)) (_g3135131403_))))))))
    (define |gerbil/core$<match>[:0:]#?|
      (lambda (_$stx31618_)
        (let* ((___stx4187841879_ _$stx31618_)
               (_g3162931775_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4187841879_))))
          (let ((___kont4188141882_
                 (lambda (_L32379_ _L32381_ _L32382_)
                   (cons (gx#datum->syntax '#f 'and)
                         (foldr (lambda (_g3240332406_ _g3240432409_)
                                  (cons (cons _L32382_
                                              (cons _g3240332406_
                                                    (cons _L32379_ '())))
                                        _g3240432409_))
                                '()
                                _L32381_))))
                (___kont4188541886_
                 (lambda (_L32269_ _L32271_ _L32272_)
                   (cons (gx#datum->syntax '#f 'or)
                         (foldr (lambda (_g3229332296_ _g3229432299_)
                                  (cons (cons _L32272_
                                              (cons _g3229332296_
                                                    (cons _L32269_ '())))
                                        _g3229432299_))
                                '()
                                _L32271_))))
                (___kont4188941890_
                 (lambda (_L32169_ _L32171_ _L32172_)
                   (cons (gx#datum->syntax '#f 'not)
                         (cons (cons _L32172_
                                     (cons _L32171_ (cons _L32169_ '())))
                               '()))))
                (___kont4189141892_
                 (lambda (_L32095_ _L32097_)
                   (cons _L32097_ (cons _L32095_ '()))))
                (___kont4189341894_
                 (lambda (_L32043_ _L32045_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons _L32045_
                                           (cons _L32043_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$obj)
                                                       '())))
                                     '())))))
                (___kont4189541896_
                 (lambda (_L31995_ _L31997_ _L31998_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'alet)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '$val)
                                                       (cons (cons _L31998_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _L31997_
                                 (cons (gx#datum->syntax '#f '$obj) '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L31995_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$val)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont4189741898_
                 (lambda (_L31926_ _L31928_ _L31929_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _L31929_
                                                       (cons _L31928_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L31926_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont4189941900_
                 (lambda (_L31846_ _L31848_ _L31849_ _L31850_)
                   (cons (gx#datum->syntax '#f 'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax '#f 'and)
                                           (cons (cons _L31850_
                                                       (cons _L31849_
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$obj)
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L31846_
                                                             (cons (cons _L31848_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (gx#datum->syntax '#f '$obj) '()))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((___match4205142052_
                    (lambda (_e3172131955_
                             _hd3172031959_
                             _tl3171931962_
                             _e3172431965_
                             _hd3172331969_
                             _tl3172231972_
                             _e3172731975_
                             _hd3172631979_
                             _tl3172531982_)
                      (if (gx#identifier? _hd3172631979_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g42944_|
                               _hd3172631979_)
                              (if (gx#stx-pair? _tl3172531982_)
                                  (let ((_e3173031985_
                                         (gx#syntax-e _tl3172531982_)))
                                    (let ((_tl3172831992_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3173031985_)))
                                          (_hd3172931989_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3173031985_))))
                                      (if (gx#stx-null? _tl3172831992_)
                                          (___kont4189541896_
                                           _hd3172931989_
                                           _hd3172331969_
                                           _hd3172031959_)
                                          (let ()
                                            (declare (not safe))
                                            (_g3162931775_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3162931775_)))
                              (let () (declare (not safe)) (_g3162931775_)))
                          (if (gx#stx-datum? _hd3172631979_)
                              (let ((_e3174331912_ (gx#stx-e _hd3172631979_)))
                                (if (equal? _e3174331912_ '::)
                                    (if (gx#stx-pair? _tl3172531982_)
                                        (let ((_e3174631916_
                                               (gx#syntax-e _tl3172531982_)))
                                          (let ((_tl3174431923_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3174631916_)))
                                                (_hd3174531920_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3174631916_))))
                                            (if (gx#stx-null? _tl3174431923_)
                                                (___kont4189741898_
                                                 _hd3174531920_
                                                 _hd3172331969_
                                                 _hd3172031959_)
                                                (if (gx#stx-pair?
                                                     _tl3174431923_)
                                                    (let ((_e3176631826_
                                                           (gx#syntax-e
                                                            _tl3174431923_)))
                                                      (let ((_tl3176431833_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3176631826_)))
                    (_hd3176531830_
                     (let () (declare (not safe)) (##car _e3176631826_))))
                (if (gx#identifier? _hd3176531830_)
                    (if (gx#free-identifier=?
                         |gerbil/core$<match>[1]#_g42943_|
                         _hd3176531830_)
                        (if (gx#stx-pair? _tl3176431833_)
                            (let ((_e3176931836_ (gx#syntax-e _tl3176431833_)))
                              (let ((_tl3176731843_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3176931836_)))
                                    (_hd3176831840_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3176931836_))))
                                (if (gx#stx-null? _tl3176731843_)
                                    (___kont4189941900_
                                     _hd3176831840_
                                     _hd3174531920_
                                     _hd3172331969_
                                     _hd3172031959_)
                                    (let ()
                                      (declare (not safe))
                                      (_g3162931775_)))))
                            (let () (declare (not safe)) (_g3162931775_)))
                        (let () (declare (not safe)) (_g3162931775_)))
                    (let () (declare (not safe)) (_g3162931775_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3162931775_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3162931775_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3162931775_))))
                              (let () (declare (not safe)) (_g3162931775_))))))
                   (___match4203142032_
                    (lambda (_e3171232023_
                             _hd3171132027_
                             _tl3171032030_
                             _e3171532033_
                             _hd3171432037_
                             _tl3171332040_)
                      (if (gx#stx-null? _tl3171332040_)
                          (___kont4189341894_ _hd3171432037_ _hd3171132027_)
                          (if (gx#stx-pair? _tl3171332040_)
                              (let ((_e3172731975_
                                     (gx#syntax-e _tl3171332040_)))
                                (let ((_tl3172531982_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3172731975_)))
                                      (_hd3172631979_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3172731975_))))
                                  (if (gx#identifier? _hd3172631979_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g42944_|
                                           _hd3172631979_)
                                          (if (gx#stx-pair? _tl3172531982_)
                                              (let ((_e3173031985_
                                                     (gx#syntax-e
                                                      _tl3172531982_)))
                                                (let ((_tl3172831992_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3173031985_)))
                                                      (_hd3172931989_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3173031985_))))
                                                  (if (gx#stx-null?
                                                       _tl3172831992_)
                                                      (___kont4189541896_
                                                       _hd3172931989_
                                                       _hd3171432037_
                                                       _hd3171132027_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g3162931775_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3162931775_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g3162931775_)))
                                      (if (gx#stx-datum? _hd3172631979_)
                                          (let ((_e3174331912_
                                                 (gx#stx-e _hd3172631979_)))
                                            (if (equal? _e3174331912_ '::)
                                                (if (gx#stx-pair?
                                                     _tl3172531982_)
                                                    (let ((_e3174631916_
                                                           (gx#syntax-e
                                                            _tl3172531982_)))
                                                      (let ((_tl3174431923_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3174631916_)))
                    (_hd3174531920_
                     (let () (declare (not safe)) (##car _e3174631916_))))
                (if (gx#stx-null? _tl3174431923_)
                    (___kont4189741898_
                     _hd3174531920_
                     _hd3171432037_
                     _hd3171132027_)
                    (if (gx#stx-pair? _tl3174431923_)
                        (let ((_e3176631826_ (gx#syntax-e _tl3174431923_)))
                          (let ((_tl3176431833_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3176631826_)))
                                (_hd3176531830_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3176631826_))))
                            (if (gx#identifier? _hd3176531830_)
                                (if (gx#free-identifier=?
                                     |gerbil/core$<match>[1]#_g42943_|
                                     _hd3176531830_)
                                    (if (gx#stx-pair? _tl3176431833_)
                                        (let ((_e3176931836_
                                               (gx#syntax-e _tl3176431833_)))
                                          (let ((_tl3176731843_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3176931836_)))
                                                (_hd3176831840_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3176931836_))))
                                            (if (gx#stx-null? _tl3176731843_)
                                                (___kont4189941900_
                                                 _hd3176831840_
                                                 _hd3174531920_
                                                 _hd3171432037_
                                                 _hd3171132027_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3162931775_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3162931775_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3162931775_)))
                                (let ()
                                  (declare (not safe))
                                  (_g3162931775_)))))
                        (let () (declare (not safe)) (_g3162931775_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3162931775_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3162931775_))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3162931775_))))))
                              (let () (declare (not safe)) (_g3162931775_))))))
                   (___match4196141962_
                    (lambda (_e3166032199_
                             _hd3165932203_
                             _tl3165832206_
                             _e3166332209_
                             _hd3166232213_
                             _tl3166132216_
                             _e3166632219_
                             _hd3166532223_
                             _tl3166432226_
                             ___splice4188741888_
                             _target3166732229_
                             _tl3166932232_)
                      (letrec ((_loop3167032235_
                                (lambda (_hd3166832239_ _pred3167432242_)
                                  (if (gx#stx-pair? _hd3166832239_)
                                      (let ((_e3167132245_
                                             (gx#syntax-e _hd3166832239_)))
                                        (let ((_lp-tl3167332252_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3167132245_)))
                                              (_lp-hd3167232249_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3167132245_))))
                                          (_loop3167032235_
                                           _lp-tl3167332252_
                                           (cons _lp-hd3167232249_
                                                 _pred3167432242_))))
                                      (let ((_pred3167532255_
                                             (reverse _pred3167432242_)))
                                        (if (gx#stx-pair? _tl3166132216_)
                                            (let ((_e3167832259_
                                                   (gx#syntax-e
                                                    _tl3166132216_)))
                                              (let ((_tl3167632266_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3167832259_)))
                                                    (_hd3167732263_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3167832259_))))
                                                (if (gx#stx-null?
                                                     _tl3167632266_)
                                                    (___kont4188541886_
                                                     _hd3167732263_
                                                     _pred3167532255_
                                                     _hd3165932203_)
                                                    (___match4205142052_
                                                     _e3166032199_
                                                     _hd3165932203_
                                                     _tl3165832206_
                                                     _e3166332209_
                                                     _hd3166232213_
                                                     _tl3166132216_
                                                     _e3167832259_
                                                     _hd3167732263_
                                                     _tl3167632266_))))
                                            (___match4203142032_
                                             _e3166032199_
                                             _hd3165932203_
                                             _tl3165832206_
                                             _e3166332209_
                                             _hd3166232213_
                                             _tl3166132216_)))))))
                        (_loop3167032235_ _target3166732229_ '()))))
                   (___match4193141932_
                    (lambda (_e3163632309_
                             _hd3163532313_
                             _tl3163432316_
                             _e3163932319_
                             _hd3163832323_
                             _tl3163732326_
                             _e3164232329_
                             _hd3164132333_
                             _tl3164032336_
                             ___splice4188341884_
                             _target3164332339_
                             _tl3164532342_)
                      (letrec ((_loop3164632345_
                                (lambda (_hd3164432349_ _pred3165032352_)
                                  (if (gx#stx-pair? _hd3164432349_)
                                      (let ((_e3164732355_
                                             (gx#syntax-e _hd3164432349_)))
                                        (let ((_lp-tl3164932362_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3164732355_)))
                                              (_lp-hd3164832359_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3164732355_))))
                                          (_loop3164632345_
                                           _lp-tl3164932362_
                                           (cons _lp-hd3164832359_
                                                 _pred3165032352_))))
                                      (let ((_pred3165132365_
                                             (reverse _pred3165032352_)))
                                        (if (gx#stx-pair? _tl3163732326_)
                                            (let ((_e3165432369_
                                                   (gx#syntax-e
                                                    _tl3163732326_)))
                                              (let ((_tl3165232376_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3165432369_)))
                                                    (_hd3165332373_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3165432369_))))
                                                (if (gx#stx-null?
                                                     _tl3165232376_)
                                                    (___kont4188141882_
                                                     _hd3165332373_
                                                     _pred3165132365_
                                                     _hd3163532313_)
                                                    (___match4205142052_
                                                     _e3163632309_
                                                     _hd3163532313_
                                                     _tl3163432316_
                                                     _e3163932319_
                                                     _hd3163832323_
                                                     _tl3163732326_
                                                     _e3165432369_
                                                     _hd3165332373_
                                                     _tl3165232376_))))
                                            (___match4203142032_
                                             _e3163632309_
                                             _hd3163532313_
                                             _tl3163432316_
                                             _e3163932319_
                                             _hd3163832323_
                                             _tl3163732326_)))))))
                        (_loop3164632345_ _target3164332339_ '())))))
              (if (gx#stx-pair? ___stx4187841879_)
                  (let ((_e3163632309_ (gx#syntax-e ___stx4187841879_)))
                    (let ((_tl3163432316_
                           (let () (declare (not safe)) (##cdr _e3163632309_)))
                          (_hd3163532313_
                           (let ()
                             (declare (not safe))
                             (##car _e3163632309_))))
                      (if (gx#stx-pair? _tl3163432316_)
                          (let ((_e3163932319_ (gx#syntax-e _tl3163432316_)))
                            (let ((_tl3163732326_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3163932319_)))
                                  (_hd3163832323_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3163932319_))))
                              (if (gx#stx-pair? _hd3163832323_)
                                  (let ((_e3164232329_
                                         (gx#syntax-e _hd3163832323_)))
                                    (let ((_tl3164032336_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3164232329_)))
                                          (_hd3164132333_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3164232329_))))
                                      (if (gx#identifier? _hd3164132333_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g42947_|
                                               _hd3164132333_)
                                              (if (gx#stx-pair/null?
                                                   _tl3164032336_)
                                                  (let ((___splice4188341884_
                                                         (gx#syntax-split-splice
                                                          _tl3164032336_
                                                          '0)))
                                                    (let ((_tl3164532342_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4188341884_
                                                              '1)))
                                                          (_target3164332339_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4188341884_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl3164532342_)
                                                          (___match4193141932_
                                                           _e3163632309_
                                                           _hd3163532313_
                                                           _tl3163432316_
                                                           _e3163932319_
                                                           _hd3163832323_
                                                           _tl3163732326_
                                                           _e3164232329_
                                                           _hd3164132333_
                                                           _tl3164032336_
                                                           ___splice4188341884_
                                                           _target3164332339_
                                                           _tl3164532342_)
                                                          (if (gx#stx-pair?
                                                               _tl3163732326_)
                                                              (let ((_e3170732085_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl3163732326_)))
                        (let ((_tl3170532092_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3170732085_)))
                              (_hd3170632089_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3170732085_))))
                          (if (gx#stx-null? _tl3170532092_)
                              (___kont4189141892_
                               _hd3170632089_
                               _hd3163832323_)
                              (if (gx#identifier? _hd3170632089_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g42944_|
                                       _hd3170632089_)
                                      (if (gx#stx-pair? _tl3170532092_)
                                          (let ((_e3173031985_
                                                 (gx#syntax-e _tl3170532092_)))
                                            (let ((_tl3172831992_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3173031985_)))
                                                  (_hd3172931989_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3173031985_))))
                                              (if (gx#stx-null? _tl3172831992_)
                                                  (___kont4189541896_
                                                   _hd3172931989_
                                                   _hd3163832323_
                                                   _hd3163532313_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3162931775_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3162931775_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g3162931775_)))
                                  (if (gx#stx-datum? _hd3170632089_)
                                      (let ((_e3174331912_
                                             (gx#stx-e _hd3170632089_)))
                                        (if (equal? _e3174331912_ '::)
                                            (if (gx#stx-pair? _tl3170532092_)
                                                (let ((_e3174631916_
                                                       (gx#syntax-e
                                                        _tl3170532092_)))
                                                  (let ((_tl3174431923_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3174631916_)))
                                                        (_hd3174531920_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3174631916_))))
                                                    (if (gx#stx-null?
                                                         _tl3174431923_)
                                                        (___kont4189741898_
                                                         _hd3174531920_
                                                         _hd3163832323_
                                                         _hd3163532313_)
                                                        (if (gx#stx-pair?
                                                             _tl3174431923_)
                                                            (let ((_e3176631826_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3174431923_)))
                      (let ((_tl3176431833_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3176631826_)))
                            (_hd3176531830_
                             (let ()
                               (declare (not safe))
                               (##car _e3176631826_))))
                        (if (gx#identifier? _hd3176531830_)
                            (if (gx#free-identifier=?
                                 |gerbil/core$<match>[1]#_g42943_|
                                 _hd3176531830_)
                                (if (gx#stx-pair? _tl3176431833_)
                                    (let ((_e3176931836_
                                           (gx#syntax-e _tl3176431833_)))
                                      (let ((_tl3176731843_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3176931836_)))
                                            (_hd3176831840_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3176931836_))))
                                        (if (gx#stx-null? _tl3176731843_)
                                            (___kont4189941900_
                                             _hd3176831840_
                                             _hd3174531920_
                                             _hd3163832323_
                                             _hd3163532313_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3162931775_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3162931775_)))
                                (let () (declare (not safe)) (_g3162931775_)))
                            (let () (declare (not safe)) (_g3162931775_)))))
                    (let () (declare (not safe)) (_g3162931775_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3162931775_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g3162931775_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3162931775_)))))))
                      (if (gx#stx-null? _tl3163732326_)
                          (___kont4189341894_ _hd3163832323_ _hd3163532313_)
                          (let () (declare (not safe)) (_g3162931775_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _tl3163732326_)
                                                      (let ((_e3170732085_
                                                             (gx#syntax-e
                                                              _tl3163732326_)))
                                                        (let ((_tl3170532092_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3170732085_)))
                      (_hd3170632089_
                       (let () (declare (not safe)) (##car _e3170732085_))))
                  (if (gx#stx-null? _tl3170532092_)
                      (___kont4189141892_ _hd3170632089_ _hd3163832323_)
                      (if (gx#identifier? _hd3170632089_)
                          (if (gx#free-identifier=?
                               |gerbil/core$<match>[1]#_g42944_|
                               _hd3170632089_)
                              (if (gx#stx-pair? _tl3170532092_)
                                  (let ((_e3173031985_
                                         (gx#syntax-e _tl3170532092_)))
                                    (let ((_tl3172831992_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3173031985_)))
                                          (_hd3172931989_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3173031985_))))
                                      (if (gx#stx-null? _tl3172831992_)
                                          (___kont4189541896_
                                           _hd3172931989_
                                           _hd3163832323_
                                           _hd3163532313_)
                                          (let ()
                                            (declare (not safe))
                                            (_g3162931775_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3162931775_)))
                              (let () (declare (not safe)) (_g3162931775_)))
                          (if (gx#stx-datum? _hd3170632089_)
                              (let ((_e3174331912_ (gx#stx-e _hd3170632089_)))
                                (if (equal? _e3174331912_ '::)
                                    (if (gx#stx-pair? _tl3170532092_)
                                        (let ((_e3174631916_
                                               (gx#syntax-e _tl3170532092_)))
                                          (let ((_tl3174431923_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3174631916_)))
                                                (_hd3174531920_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3174631916_))))
                                            (if (gx#stx-null? _tl3174431923_)
                                                (___kont4189741898_
                                                 _hd3174531920_
                                                 _hd3163832323_
                                                 _hd3163532313_)
                                                (if (gx#stx-pair?
                                                     _tl3174431923_)
                                                    (let ((_e3176631826_
                                                           (gx#syntax-e
                                                            _tl3174431923_)))
                                                      (let ((_tl3176431833_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3176631826_)))
                    (_hd3176531830_
                     (let () (declare (not safe)) (##car _e3176631826_))))
                (if (gx#identifier? _hd3176531830_)
                    (if (gx#free-identifier=?
                         |gerbil/core$<match>[1]#_g42943_|
                         _hd3176531830_)
                        (if (gx#stx-pair? _tl3176431833_)
                            (let ((_e3176931836_ (gx#syntax-e _tl3176431833_)))
                              (let ((_tl3176731843_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3176931836_)))
                                    (_hd3176831840_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3176931836_))))
                                (if (gx#stx-null? _tl3176731843_)
                                    (___kont4189941900_
                                     _hd3176831840_
                                     _hd3174531920_
                                     _hd3163832323_
                                     _hd3163532313_)
                                    (let ()
                                      (declare (not safe))
                                      (_g3162931775_)))))
                            (let () (declare (not safe)) (_g3162931775_)))
                        (let () (declare (not safe)) (_g3162931775_)))
                    (let () (declare (not safe)) (_g3162931775_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3162931775_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3162931775_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3162931775_))))
                              (let ()
                                (declare (not safe))
                                (_g3162931775_)))))))
              (if (gx#stx-null? _tl3163732326_)
                  (___kont4189341894_ _hd3163832323_ _hd3163532313_)
                  (let () (declare (not safe)) (_g3162931775_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<match>[1]#_g42946_|
                                                   _hd3164132333_)
                                                  (if (gx#stx-pair/null?
                                                       _tl3164032336_)
                                                      (let ((___splice4188741888_
                                                             (gx#syntax-split-splice
                                                              _tl3164032336_
                                                              '0)))
                                                        (let ((_tl3166932232_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref ___splice4188741888_ '1)))
                      (_target3166732229_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice4188741888_ '0))))
                  (if (gx#stx-null? _tl3166932232_)
                      (___match4196141962_
                       _e3163632309_
                       _hd3163532313_
                       _tl3163432316_
                       _e3163932319_
                       _hd3163832323_
                       _tl3163732326_
                       _e3164232329_
                       _hd3164132333_
                       _tl3164032336_
                       ___splice4188741888_
                       _target3166732229_
                       _tl3166932232_)
                      (if (gx#stx-pair? _tl3163732326_)
                          (let ((_e3170732085_ (gx#syntax-e _tl3163732326_)))
                            (let ((_tl3170532092_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3170732085_)))
                                  (_hd3170632089_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3170732085_))))
                              (if (gx#stx-null? _tl3170532092_)
                                  (___kont4189141892_
                                   _hd3170632089_
                                   _hd3163832323_)
                                  (if (gx#identifier? _hd3170632089_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<match>[1]#_g42944_|
                                           _hd3170632089_)
                                          (if (gx#stx-pair? _tl3170532092_)
                                              (let ((_e3173031985_
                                                     (gx#syntax-e
                                                      _tl3170532092_)))
                                                (let ((_tl3172831992_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3173031985_)))
                                                      (_hd3172931989_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3173031985_))))
                                                  (if (gx#stx-null?
                                                       _tl3172831992_)
                                                      (___kont4189541896_
                                                       _hd3172931989_
                                                       _hd3163832323_
                                                       _hd3163532313_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g3162931775_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3162931775_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g3162931775_)))
                                      (if (gx#stx-datum? _hd3170632089_)
                                          (let ((_e3174331912_
                                                 (gx#stx-e _hd3170632089_)))
                                            (if (equal? _e3174331912_ '::)
                                                (if (gx#stx-pair?
                                                     _tl3170532092_)
                                                    (let ((_e3174631916_
                                                           (gx#syntax-e
                                                            _tl3170532092_)))
                                                      (let ((_tl3174431923_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3174631916_)))
                    (_hd3174531920_
                     (let () (declare (not safe)) (##car _e3174631916_))))
                (if (gx#stx-null? _tl3174431923_)
                    (___kont4189741898_
                     _hd3174531920_
                     _hd3163832323_
                     _hd3163532313_)
                    (if (gx#stx-pair? _tl3174431923_)
                        (let ((_e3176631826_ (gx#syntax-e _tl3174431923_)))
                          (let ((_tl3176431833_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3176631826_)))
                                (_hd3176531830_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3176631826_))))
                            (if (gx#identifier? _hd3176531830_)
                                (if (gx#free-identifier=?
                                     |gerbil/core$<match>[1]#_g42943_|
                                     _hd3176531830_)
                                    (if (gx#stx-pair? _tl3176431833_)
                                        (let ((_e3176931836_
                                               (gx#syntax-e _tl3176431833_)))
                                          (let ((_tl3176731843_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3176931836_)))
                                                (_hd3176831840_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3176931836_))))
                                            (if (gx#stx-null? _tl3176731843_)
                                                (___kont4189941900_
                                                 _hd3176831840_
                                                 _hd3174531920_
                                                 _hd3163832323_
                                                 _hd3163532313_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3162931775_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g3162931775_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3162931775_)))
                                (let ()
                                  (declare (not safe))
                                  (_g3162931775_)))))
                        (let () (declare (not safe)) (_g3162931775_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3162931775_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3162931775_))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3162931775_)))))))
                          (if (gx#stx-null? _tl3163732326_)
                              (___kont4189341894_
                               _hd3163832323_
                               _hd3163532313_)
                              (let ()
                                (declare (not safe))
                                (_g3162931775_)))))))
              (if (gx#stx-pair? _tl3163732326_)
                  (let ((_e3170732085_ (gx#syntax-e _tl3163732326_)))
                    (let ((_tl3170532092_
                           (let () (declare (not safe)) (##cdr _e3170732085_)))
                          (_hd3170632089_
                           (let ()
                             (declare (not safe))
                             (##car _e3170732085_))))
                      (if (gx#stx-null? _tl3170532092_)
                          (___kont4189141892_ _hd3170632089_ _hd3163832323_)
                          (if (gx#identifier? _hd3170632089_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g42944_|
                                   _hd3170632089_)
                                  (if (gx#stx-pair? _tl3170532092_)
                                      (let ((_e3173031985_
                                             (gx#syntax-e _tl3170532092_)))
                                        (let ((_tl3172831992_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3173031985_)))
                                              (_hd3172931989_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3173031985_))))
                                          (if (gx#stx-null? _tl3172831992_)
                                              (___kont4189541896_
                                               _hd3172931989_
                                               _hd3163832323_
                                               _hd3163532313_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3162931775_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3162931775_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g3162931775_)))
                              (if (gx#stx-datum? _hd3170632089_)
                                  (let ((_e3174331912_
                                         (gx#stx-e _hd3170632089_)))
                                    (if (equal? _e3174331912_ '::)
                                        (if (gx#stx-pair? _tl3170532092_)
                                            (let ((_e3174631916_
                                                   (gx#syntax-e
                                                    _tl3170532092_)))
                                              (let ((_tl3174431923_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3174631916_)))
                                                    (_hd3174531920_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3174631916_))))
                                                (if (gx#stx-null?
                                                     _tl3174431923_)
                                                    (___kont4189741898_
                                                     _hd3174531920_
                                                     _hd3163832323_
                                                     _hd3163532313_)
                                                    (if (gx#stx-pair?
                                                         _tl3174431923_)
                                                        (let ((_e3176631826_
                                                               (gx#syntax-e
                                                                _tl3174431923_)))
                                                          (let ((_tl3176431833_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3176631826_)))
                        (_hd3176531830_
                         (let () (declare (not safe)) (##car _e3176631826_))))
                    (if (gx#identifier? _hd3176531830_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g42943_|
                             _hd3176531830_)
                            (if (gx#stx-pair? _tl3176431833_)
                                (let ((_e3176931836_
                                       (gx#syntax-e _tl3176431833_)))
                                  (let ((_tl3176731843_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3176931836_)))
                                        (_hd3176831840_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3176931836_))))
                                    (if (gx#stx-null? _tl3176731843_)
                                        (___kont4189941900_
                                         _hd3176831840_
                                         _hd3174531920_
                                         _hd3163832323_
                                         _hd3163532313_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3162931775_)))))
                                (let () (declare (not safe)) (_g3162931775_)))
                            (let () (declare (not safe)) (_g3162931775_)))
                        (let () (declare (not safe)) (_g3162931775_)))))
                (let () (declare (not safe)) (_g3162931775_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_g3162931775_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g3162931775_))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3162931775_)))))))
                  (if (gx#stx-null? _tl3163732326_)
                      (___kont4189341894_ _hd3163832323_ _hd3163532313_)
                      (let () (declare (not safe)) (_g3162931775_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g42945_|
                                                       _hd3164132333_)
                                                      (if (gx#stx-pair?
                                                           _tl3164032336_)
                                                          (let ((_e3169332149_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3164032336_)))
                    (let ((_tl3169132156_
                           (let () (declare (not safe)) (##cdr _e3169332149_)))
                          (_hd3169232153_
                           (let ()
                             (declare (not safe))
                             (##car _e3169332149_))))
                      (if (gx#stx-null? _tl3169132156_)
                          (if (gx#stx-pair? _tl3163732326_)
                              (let ((_e3169632159_
                                     (gx#syntax-e _tl3163732326_)))
                                (let ((_tl3169432166_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3169632159_)))
                                      (_hd3169532163_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3169632159_))))
                                  (if (gx#stx-null? _tl3169432166_)
                                      (___kont4188941890_
                                       _hd3169532163_
                                       _hd3169232153_
                                       _hd3163532313_)
                                      (if (gx#identifier? _hd3169532163_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g42944_|
                                               _hd3169532163_)
                                              (if (gx#stx-pair? _tl3169432166_)
                                                  (let ((_e3173031985_
                                                         (gx#syntax-e
                                                          _tl3169432166_)))
                                                    (let ((_tl3172831992_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3173031985_)))
                                                          (_hd3172931989_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3173031985_))))
                                                      (if (gx#stx-null?
                                                           _tl3172831992_)
                                                          (___kont4189541896_
                                                           _hd3172931989_
                                                           _hd3163832323_
                                                           _hd3163532313_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3162931775_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3162931775_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g3162931775_)))
                                          (if (gx#stx-datum? _hd3169532163_)
                                              (let ((_e3174331912_
                                                     (gx#stx-e
                                                      _hd3169532163_)))
                                                (if (equal? _e3174331912_ '::)
                                                    (if (gx#stx-pair?
                                                         _tl3169432166_)
                                                        (let ((_e3174631916_
                                                               (gx#syntax-e
                                                                _tl3169432166_)))
                                                          (let ((_tl3174431923_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3174631916_)))
                        (_hd3174531920_
                         (let () (declare (not safe)) (##car _e3174631916_))))
                    (if (gx#stx-null? _tl3174431923_)
                        (___kont4189741898_
                         _hd3174531920_
                         _hd3163832323_
                         _hd3163532313_)
                        (if (gx#stx-pair? _tl3174431923_)
                            (let ((_e3176631826_ (gx#syntax-e _tl3174431923_)))
                              (let ((_tl3176431833_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3176631826_)))
                                    (_hd3176531830_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3176631826_))))
                                (if (gx#identifier? _hd3176531830_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<match>[1]#_g42943_|
                                         _hd3176531830_)
                                        (if (gx#stx-pair? _tl3176431833_)
                                            (let ((_e3176931836_
                                                   (gx#syntax-e
                                                    _tl3176431833_)))
                                              (let ((_tl3176731843_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3176931836_)))
                                                    (_hd3176831840_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3176931836_))))
                                                (if (gx#stx-null?
                                                     _tl3176731843_)
                                                    (___kont4189941900_
                                                     _hd3176831840_
                                                     _hd3174531920_
                                                     _hd3163832323_
                                                     _hd3163532313_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3162931775_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3162931775_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g3162931775_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3162931775_)))))
                            (let () (declare (not safe)) (_g3162931775_))))))
                (let () (declare (not safe)) (_g3162931775_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3162931775_))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3162931775_)))))))
                              (if (gx#stx-null? _tl3163732326_)
                                  (___kont4189341894_
                                   _hd3163832323_
                                   _hd3163532313_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3162931775_))))
                          (if (gx#stx-pair? _tl3163732326_)
                              (let ((_e3170732085_
                                     (gx#syntax-e _tl3163732326_)))
                                (let ((_tl3170532092_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3170732085_)))
                                      (_hd3170632089_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3170732085_))))
                                  (if (gx#stx-null? _tl3170532092_)
                                      (___kont4189141892_
                                       _hd3170632089_
                                       _hd3163832323_)
                                      (if (gx#identifier? _hd3170632089_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<match>[1]#_g42944_|
                                               _hd3170632089_)
                                              (if (gx#stx-pair? _tl3170532092_)
                                                  (let ((_e3173031985_
                                                         (gx#syntax-e
                                                          _tl3170532092_)))
                                                    (let ((_tl3172831992_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3173031985_)))
                                                          (_hd3172931989_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3173031985_))))
                                                      (if (gx#stx-null?
                                                           _tl3172831992_)
                                                          (___kont4189541896_
                                                           _hd3172931989_
                                                           _hd3163832323_
                                                           _hd3163532313_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3162931775_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3162931775_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g3162931775_)))
                                          (if (gx#stx-datum? _hd3170632089_)
                                              (let ((_e3174331912_
                                                     (gx#stx-e
                                                      _hd3170632089_)))
                                                (if (equal? _e3174331912_ '::)
                                                    (if (gx#stx-pair?
                                                         _tl3170532092_)
                                                        (let ((_e3174631916_
                                                               (gx#syntax-e
                                                                _tl3170532092_)))
                                                          (let ((_tl3174431923_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3174631916_)))
                        (_hd3174531920_
                         (let () (declare (not safe)) (##car _e3174631916_))))
                    (if (gx#stx-null? _tl3174431923_)
                        (___kont4189741898_
                         _hd3174531920_
                         _hd3163832323_
                         _hd3163532313_)
                        (if (gx#stx-pair? _tl3174431923_)
                            (let ((_e3176631826_ (gx#syntax-e _tl3174431923_)))
                              (let ((_tl3176431833_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3176631826_)))
                                    (_hd3176531830_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3176631826_))))
                                (if (gx#identifier? _hd3176531830_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<match>[1]#_g42943_|
                                         _hd3176531830_)
                                        (if (gx#stx-pair? _tl3176431833_)
                                            (let ((_e3176931836_
                                                   (gx#syntax-e
                                                    _tl3176431833_)))
                                              (let ((_tl3176731843_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3176931836_)))
                                                    (_hd3176831840_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3176931836_))))
                                                (if (gx#stx-null?
                                                     _tl3176731843_)
                                                    (___kont4189941900_
                                                     _hd3176831840_
                                                     _hd3174531920_
                                                     _hd3163832323_
                                                     _hd3163532313_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3162931775_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3162931775_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g3162931775_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g3162931775_)))))
                            (let () (declare (not safe)) (_g3162931775_))))))
                (let () (declare (not safe)) (_g3162931775_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3162931775_))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3162931775_)))))))
                              (if (gx#stx-null? _tl3163732326_)
                                  (___kont4189341894_
                                   _hd3163832323_
                                   _hd3163532313_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3162931775_)))))))
                  (if (gx#stx-pair? _tl3163732326_)
                      (let ((_e3170732085_ (gx#syntax-e _tl3163732326_)))
                        (let ((_tl3170532092_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3170732085_)))
                              (_hd3170632089_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3170732085_))))
                          (if (gx#stx-null? _tl3170532092_)
                              (___kont4189141892_
                               _hd3170632089_
                               _hd3163832323_)
                              (if (gx#identifier? _hd3170632089_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core$<match>[1]#_g42944_|
                                       _hd3170632089_)
                                      (if (gx#stx-pair? _tl3170532092_)
                                          (let ((_e3173031985_
                                                 (gx#syntax-e _tl3170532092_)))
                                            (let ((_tl3172831992_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3173031985_)))
                                                  (_hd3172931989_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3173031985_))))
                                              (if (gx#stx-null? _tl3172831992_)
                                                  (___kont4189541896_
                                                   _hd3172931989_
                                                   _hd3163832323_
                                                   _hd3163532313_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3162931775_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3162931775_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g3162931775_)))
                                  (if (gx#stx-datum? _hd3170632089_)
                                      (let ((_e3174331912_
                                             (gx#stx-e _hd3170632089_)))
                                        (if (equal? _e3174331912_ '::)
                                            (if (gx#stx-pair? _tl3170532092_)
                                                (let ((_e3174631916_
                                                       (gx#syntax-e
                                                        _tl3170532092_)))
                                                  (let ((_tl3174431923_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3174631916_)))
                                                        (_hd3174531920_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3174631916_))))
                                                    (if (gx#stx-null?
                                                         _tl3174431923_)
                                                        (___kont4189741898_
                                                         _hd3174531920_
                                                         _hd3163832323_
                                                         _hd3163532313_)
                                                        (if (gx#stx-pair?
                                                             _tl3174431923_)
                                                            (let ((_e3176631826_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3174431923_)))
                      (let ((_tl3176431833_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3176631826_)))
                            (_hd3176531830_
                             (let ()
                               (declare (not safe))
                               (##car _e3176631826_))))
                        (if (gx#identifier? _hd3176531830_)
                            (if (gx#free-identifier=?
                                 |gerbil/core$<match>[1]#_g42943_|
                                 _hd3176531830_)
                                (if (gx#stx-pair? _tl3176431833_)
                                    (let ((_e3176931836_
                                           (gx#syntax-e _tl3176431833_)))
                                      (let ((_tl3176731843_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3176931836_)))
                                            (_hd3176831840_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3176931836_))))
                                        (if (gx#stx-null? _tl3176731843_)
                                            (___kont4189941900_
                                             _hd3176831840_
                                             _hd3174531920_
                                             _hd3163832323_
                                             _hd3163532313_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3162931775_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3162931775_)))
                                (let () (declare (not safe)) (_g3162931775_)))
                            (let () (declare (not safe)) (_g3162931775_)))))
                    (let () (declare (not safe)) (_g3162931775_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3162931775_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g3162931775_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3162931775_)))))))
                      (if (gx#stx-null? _tl3163732326_)
                          (___kont4189341894_ _hd3163832323_ _hd3163532313_)
                          (let () (declare (not safe)) (_g3162931775_)))))
              (if (gx#stx-pair? _tl3163732326_)
                  (let ((_e3170732085_ (gx#syntax-e _tl3163732326_)))
                    (let ((_tl3170532092_
                           (let () (declare (not safe)) (##cdr _e3170732085_)))
                          (_hd3170632089_
                           (let ()
                             (declare (not safe))
                             (##car _e3170732085_))))
                      (if (gx#stx-null? _tl3170532092_)
                          (___kont4189141892_ _hd3170632089_ _hd3163832323_)
                          (if (gx#identifier? _hd3170632089_)
                              (if (gx#free-identifier=?
                                   |gerbil/core$<match>[1]#_g42944_|
                                   _hd3170632089_)
                                  (if (gx#stx-pair? _tl3170532092_)
                                      (let ((_e3173031985_
                                             (gx#syntax-e _tl3170532092_)))
                                        (let ((_tl3172831992_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3173031985_)))
                                              (_hd3172931989_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3173031985_))))
                                          (if (gx#stx-null? _tl3172831992_)
                                              (___kont4189541896_
                                               _hd3172931989_
                                               _hd3163832323_
                                               _hd3163532313_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3162931775_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3162931775_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g3162931775_)))
                              (if (gx#stx-datum? _hd3170632089_)
                                  (let ((_e3174331912_
                                         (gx#stx-e _hd3170632089_)))
                                    (if (equal? _e3174331912_ '::)
                                        (if (gx#stx-pair? _tl3170532092_)
                                            (let ((_e3174631916_
                                                   (gx#syntax-e
                                                    _tl3170532092_)))
                                              (let ((_tl3174431923_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3174631916_)))
                                                    (_hd3174531920_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3174631916_))))
                                                (if (gx#stx-null?
                                                     _tl3174431923_)
                                                    (___kont4189741898_
                                                     _hd3174531920_
                                                     _hd3163832323_
                                                     _hd3163532313_)
                                                    (if (gx#stx-pair?
                                                         _tl3174431923_)
                                                        (let ((_e3176631826_
                                                               (gx#syntax-e
                                                                _tl3174431923_)))
                                                          (let ((_tl3176431833_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e3176631826_)))
                        (_hd3176531830_
                         (let () (declare (not safe)) (##car _e3176631826_))))
                    (if (gx#identifier? _hd3176531830_)
                        (if (gx#free-identifier=?
                             |gerbil/core$<match>[1]#_g42943_|
                             _hd3176531830_)
                            (if (gx#stx-pair? _tl3176431833_)
                                (let ((_e3176931836_
                                       (gx#syntax-e _tl3176431833_)))
                                  (let ((_tl3176731843_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3176931836_)))
                                        (_hd3176831840_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3176931836_))))
                                    (if (gx#stx-null? _tl3176731843_)
                                        (___kont4189941900_
                                         _hd3176831840_
                                         _hd3174531920_
                                         _hd3163832323_
                                         _hd3163532313_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3162931775_)))))
                                (let () (declare (not safe)) (_g3162931775_)))
                            (let () (declare (not safe)) (_g3162931775_)))
                        (let () (declare (not safe)) (_g3162931775_)))))
                (let () (declare (not safe)) (_g3162931775_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_g3162931775_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g3162931775_))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3162931775_)))))))
                  (if (gx#stx-null? _tl3163732326_)
                      (___kont4189341894_ _hd3163832323_ _hd3163532313_)
                      (let () (declare (not safe)) (_g3162931775_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl3163732326_)
                                              (let ((_e3170732085_
                                                     (gx#syntax-e
                                                      _tl3163732326_)))
                                                (let ((_tl3170532092_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3170732085_)))
                                                      (_hd3170632089_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3170732085_))))
                                                  (if (gx#stx-null?
                                                       _tl3170532092_)
                                                      (___kont4189141892_
                                                       _hd3170632089_
                                                       _hd3163832323_)
                                                      (if (gx#identifier?
                                                           _hd3170632089_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core$<match>[1]#_g42944_|
                                                               _hd3170632089_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl3170532092_)
                          (let ((_e3173031985_ (gx#syntax-e _tl3170532092_)))
                            (let ((_tl3172831992_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3173031985_)))
                                  (_hd3172931989_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3173031985_))))
                              (if (gx#stx-null? _tl3172831992_)
                                  (___kont4189541896_
                                   _hd3172931989_
                                   _hd3163832323_
                                   _hd3163532313_)
                                  (let ()
                                    (declare (not safe))
                                    (_g3162931775_)))))
                          (let () (declare (not safe)) (_g3162931775_)))
                      (let () (declare (not safe)) (_g3162931775_)))
                  (if (gx#stx-datum? _hd3170632089_)
                      (let ((_e3174331912_ (gx#stx-e _hd3170632089_)))
                        (if (equal? _e3174331912_ '::)
                            (if (gx#stx-pair? _tl3170532092_)
                                (let ((_e3174631916_
                                       (gx#syntax-e _tl3170532092_)))
                                  (let ((_tl3174431923_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3174631916_)))
                                        (_hd3174531920_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3174631916_))))
                                    (if (gx#stx-null? _tl3174431923_)
                                        (___kont4189741898_
                                         _hd3174531920_
                                         _hd3163832323_
                                         _hd3163532313_)
                                        (if (gx#stx-pair? _tl3174431923_)
                                            (let ((_e3176631826_
                                                   (gx#syntax-e
                                                    _tl3174431923_)))
                                              (let ((_tl3176431833_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3176631826_)))
                                                    (_hd3176531830_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3176631826_))))
                                                (if (gx#identifier?
                                                     _hd3176531830_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core$<match>[1]#_g42943_|
                                                         _hd3176531830_)
                                                        (if (gx#stx-pair?
                                                             _tl3176431833_)
                                                            (let ((_e3176931836_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl3176431833_)))
                      (let ((_tl3176731843_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3176931836_)))
                            (_hd3176831840_
                             (let ()
                               (declare (not safe))
                               (##car _e3176931836_))))
                        (if (gx#stx-null? _tl3176731843_)
                            (___kont4189941900_
                             _hd3176831840_
                             _hd3174531920_
                             _hd3163832323_
                             _hd3163532313_)
                            (let () (declare (not safe)) (_g3162931775_)))))
                    (let () (declare (not safe)) (_g3162931775_)))
                (let () (declare (not safe)) (_g3162931775_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3162931775_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3162931775_))))))
                                (let () (declare (not safe)) (_g3162931775_)))
                            (let () (declare (not safe)) (_g3162931775_))))
                      (let () (declare (not safe)) (_g3162931775_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null? _tl3163732326_)
                                                  (___kont4189341894_
                                                   _hd3163832323_
                                                   _hd3163532313_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3162931775_)))))))
                                  (if (gx#stx-pair? _tl3163732326_)
                                      (let ((_e3170732085_
                                             (gx#syntax-e _tl3163732326_)))
                                        (let ((_tl3170532092_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3170732085_)))
                                              (_hd3170632089_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3170732085_))))
                                          (if (gx#stx-null? _tl3170532092_)
                                              (___kont4189141892_
                                               _hd3170632089_
                                               _hd3163832323_)
                                              (if (gx#identifier?
                                                   _hd3170632089_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<match>[1]#_g42944_|
                                                       _hd3170632089_)
                                                      (if (gx#stx-pair?
                                                           _tl3170532092_)
                                                          (let ((_e3173031985_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3170532092_)))
                    (let ((_tl3172831992_
                           (let () (declare (not safe)) (##cdr _e3173031985_)))
                          (_hd3172931989_
                           (let ()
                             (declare (not safe))
                             (##car _e3173031985_))))
                      (if (gx#stx-null? _tl3172831992_)
                          (___kont4189541896_
                           _hd3172931989_
                           _hd3163832323_
                           _hd3163532313_)
                          (let () (declare (not safe)) (_g3162931775_)))))
                  (let () (declare (not safe)) (_g3162931775_)))
              (let () (declare (not safe)) (_g3162931775_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-datum?
                                                       _hd3170632089_)
                                                      (let ((_e3174331912_
                                                             (gx#stx-e
                                                              _hd3170632089_)))
                                                        (if (equal? _e3174331912_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '::)
                    (if (gx#stx-pair? _tl3170532092_)
                        (let ((_e3174631916_ (gx#syntax-e _tl3170532092_)))
                          (let ((_tl3174431923_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3174631916_)))
                                (_hd3174531920_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3174631916_))))
                            (if (gx#stx-null? _tl3174431923_)
                                (___kont4189741898_
                                 _hd3174531920_
                                 _hd3163832323_
                                 _hd3163532313_)
                                (if (gx#stx-pair? _tl3174431923_)
                                    (let ((_e3176631826_
                                           (gx#syntax-e _tl3174431923_)))
                                      (let ((_tl3176431833_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3176631826_)))
                                            (_hd3176531830_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3176631826_))))
                                        (if (gx#identifier? _hd3176531830_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core$<match>[1]#_g42943_|
                                                 _hd3176531830_)
                                                (if (gx#stx-pair?
                                                     _tl3176431833_)
                                                    (let ((_e3176931836_
                                                           (gx#syntax-e
                                                            _tl3176431833_)))
                                                      (let ((_tl3176731843_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3176931836_)))
                    (_hd3176831840_
                     (let () (declare (not safe)) (##car _e3176931836_))))
                (if (gx#stx-null? _tl3176731843_)
                    (___kont4189941900_
                     _hd3176831840_
                     _hd3174531920_
                     _hd3163832323_
                     _hd3163532313_)
                    (let () (declare (not safe)) (_g3162931775_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3162931775_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3162931775_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g3162931775_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3162931775_))))))
                        (let () (declare (not safe)) (_g3162931775_)))
                    (let () (declare (not safe)) (_g3162931775_))))
              (let () (declare (not safe)) (_g3162931775_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-null? _tl3163732326_)
                                          (___kont4189341894_
                                           _hd3163832323_
                                           _hd3163532313_)
                                          (let ()
                                            (declare (not safe))
                                            (_g3162931775_)))))))
                          (let () (declare (not safe)) (_g3162931775_)))))
                  (let () (declare (not safe)) (_g3162931775_))))))))
    (define |gerbil/core$<match>[:0:]#defsyntax-for-match|
      (lambda (_$stx32418_)
        (let* ((___stx4214642147_ _$stx32418_)
               (_g3242332457_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4214642147_))))
          (let ((___kont4214942150_
                 (lambda (_L32561_ _L32563_ _L32564_)
                   (cons (gx#datum->syntax '#f 'defsyntax)
                         (cons _L32564_
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
                                       (cons _L32563_ '()))
                                 (cons (cons (gx#datum->syntax '#f '$macro-e)
                                             (cons _L32561_ '()))
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
                (___kont4215142152_
                 (lambda (_L32494_ _L32496_ _L32497_)
                   (cons _L32497_
                         (cons _L32496_
                               (cons _L32494_
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
                                 (cons '"Bad syntax; no macro definition for defsyntax-for-match"
                                       (cons (gx#datum->syntax '#f '$stx)
                                             '()))))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))))
            (let ((___match4217942180_
                   (lambda (_e3243032521_
                            _hd3242932525_
                            _tl3242832528_
                            _e3243332531_
                            _hd3243232535_
                            _tl3243132538_
                            _e3243632541_
                            _hd3243532545_
                            _tl3243432548_
                            _e3243932551_
                            _hd3243832555_
                            _tl3243732558_)
                     (let ((_L32561_ _hd3243832555_)
                           (_L32563_ _hd3243532545_)
                           (_L32564_ _hd3243232535_))
                       (if (gx#identifier? _L32564_)
                           (___kont4214942150_ _L32561_ _L32563_ _L32564_)
                           (let () (declare (not safe)) (_g3242332457_)))))))
              (if (gx#stx-pair? ___stx4214642147_)
                  (let ((_e3243032521_ (gx#syntax-e ___stx4214642147_)))
                    (let ((_tl3242832528_
                           (let () (declare (not safe)) (##cdr _e3243032521_)))
                          (_hd3242932525_
                           (let ()
                             (declare (not safe))
                             (##car _e3243032521_))))
                      (if (gx#stx-pair? _tl3242832528_)
                          (let ((_e3243332531_ (gx#syntax-e _tl3242832528_)))
                            (let ((_tl3243132538_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3243332531_)))
                                  (_hd3243232535_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3243332531_))))
                              (if (gx#stx-pair? _tl3243132538_)
                                  (let ((_e3243632541_
                                         (gx#syntax-e _tl3243132538_)))
                                    (let ((_tl3243432548_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3243632541_)))
                                          (_hd3243532545_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3243632541_))))
                                      (if (gx#stx-pair? _tl3243432548_)
                                          (let ((_e3243932551_
                                                 (gx#syntax-e _tl3243432548_)))
                                            (let ((_tl3243732558_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3243932551_)))
                                                  (_hd3243832555_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3243932551_))))
                                              (if (gx#stx-null? _tl3243732558_)
                                                  (___match4217942180_
                                                   _e3243032521_
                                                   _hd3242932525_
                                                   _tl3242832528_
                                                   _e3243332531_
                                                   _hd3243232535_
                                                   _tl3243132538_
                                                   _e3243632541_
                                                   _hd3243532545_
                                                   _tl3243432548_
                                                   _e3243932551_
                                                   _hd3243832555_
                                                   _tl3243732558_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3242332457_)))))
                                          (if (gx#stx-null? _tl3243432548_)
                                              (___kont4215142152_
                                               _hd3243532545_
                                               _hd3243232535_
                                               _hd3242932525_)
                                              (let ()
                                                (declare (not safe))
                                                (_g3242332457_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3242332457_)))))
                          (let () (declare (not safe)) (_g3242332457_)))))
                  (let () (declare (not safe)) (_g3242332457_))))))))
    (define |gerbil/core$<match>[:0:]#defrules-for-match|
      (lambda (_$stx32586_)
        (let* ((_g3259032605_
                (lambda (_g3259132601_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g3259132601_)))
               (_g3258932648_
                (lambda (_g3259132609_)
                  (if (gx#stx-pair? _g3259132609_)
                      (let ((_e3259632612_ (gx#syntax-e _g3259132609_)))
                        (let ((_hd3259532616_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3259632612_)))
                              (_tl3259432619_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3259632612_))))
                          (if (gx#stx-pair? _tl3259432619_)
                              (let ((_e3259932622_
                                     (gx#syntax-e _tl3259432619_)))
                                (let ((_hd3259832626_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3259932622_)))
                                      (_tl3259732629_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3259932622_))))
                                  ((lambda (_L32632_ _L32634_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'defsyntax-for-match)
                                           (cons _L32634_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'syntax-rules)
                                                             _L32632_)
                                                       '()))))
                                   _tl3259732629_
                                   _hd3259832626_)))
                              (_g3259032605_ _g3259132609_))))
                      (_g3259032605_ _g3259132609_)))))
          (_g3258932648_ _$stx32586_))))))
