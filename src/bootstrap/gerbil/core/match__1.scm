(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/match[1]#_g44538_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g44539_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g44595_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g44596_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g44597_|
    (##structure
     gx#syntax-quote::t
     'apply
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g44599_|
    (##structure
     gx#syntax-quote::t
     'vector
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g44600_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g44601_|
    (##structure gx#syntax-quote::t 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g44602_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g44603_|
    (##structure
     gx#syntax-quote::t
     'cons*
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g44604_|
    (##structure
     gx#syntax-quote::t
     'cons
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g44605_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g44606_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g44607_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g44608_|
    (##structure gx#syntax-quote::t '? #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g44988_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g45068_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g45088_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g45089_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g45206_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g45207_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g45208_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g45209_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g45210_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/match[1]#match-macro::t|
      (make-class-type
       'gerbil.core#match-macro::t
       'match-macro
       (list gerbil/core/macro-object#macro-object::t)
       '()
       '()
       '#f))
    (define |gerbil/core/match[1]#match-macro?|
      (make-class-predicate |gerbil/core/match[1]#match-macro::t|))
    (define |gerbil/core/match[1]#make-match-macro|
      (lambda _$args39824_
        (apply make-instance
               |gerbil/core/match[1]#match-macro::t|
               _$args39824_)))
    (define |gerbil/core/match[1]#match-macro-macro|
      (make-class-slot-accessor |gerbil/core/match[1]#match-macro::t| 'macro))
    (define |gerbil/core/match[1]#match-macro-macro-set!|
      (make-class-slot-mutator |gerbil/core/match[1]#match-macro::t| 'macro))
    (define |gerbil/core/match[1]#&match-macro-macro|
      (make-class-slot-unchecked-accessor
       |gerbil/core/match[1]#match-macro::t|
       'macro))
    (define |gerbil/core/match[1]#&match-macro-macro-set!|
      (make-class-slot-unchecked-mutator
       |gerbil/core/match[1]#match-macro::t|
       'macro))
    (define |gerbil/core/match[1]#syntax-local-match-macro?|
      (lambda (_stx39821_)
        (if (gx#identifier? _stx39821_)
            (let ((__tmp44523 (gx#syntax-local-value _stx39821_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/match[1]#match-macro::t|
               __tmp44523))
            '#f)))
    (define |gerbil/core/match[1]#parse-match-pattern__%|
      (lambda (_stx38127_ _match-stx38129_)
        (letrec ((_parse138131_
                  (lambda (_hd38484_)
                    (let* ((___stx4231142312_ _hd38484_)
                           (_g3851038652_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4231142312_))))
                      (let ((___kont4231442315_
                             (lambda (_L39584_ _L39586_)
                               (let* ((___stx4223142232_ _L39584_)
                                      (_g3960339636_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4223142232_))))
                                 (let ((___kont4223442235_
                                        (lambda ()
                                          (let ((__tmp44524
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L39586_ '()))))
                                            (declare (not safe))
                                            (cons '?: __tmp44524))))
                                       (___kont4223642237_
                                        (lambda (_L39777_)
                                          (let ((__tmp44525
                                                 (let ((__tmp44526
                                                        (let ((__tmp44527
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (_parse138131_ _L39777_))))
                  (declare (not safe))
                  (cons __tmp44527 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L39586_
                                                         __tmp44526))))
                                            (declare (not safe))
                                            (cons '?: __tmp44525))))
                                       (___kont4223842239_
                                        (lambda (_L39747_)
                                          (let ((__tmp44528
                                                 (let ((__tmp44529
                                                        (let ((__tmp44530
                                                               (let ((__tmp44531
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (_parse138131_ _L39747_))))
                         (declare (not safe))
                         (cons __tmp44531 '()))))
                  (declare (not safe))
                  (cons '=>: __tmp44530))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L39586_
                                                         __tmp44529))))
                                            (declare (not safe))
                                            (cons '?: __tmp44528))))
                                       (___kont4224042241_
                                        (lambda (_L39698_ _L39700_)
                                          (let ((__tmp44532
                                                 (let ((__tmp44533
                                                        (let ((__tmp44534
                                                               (let ((__tmp44535
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp44536
                                     (let ((__tmp44537
                                            (let ()
                                              (declare (not safe))
                                              (_parse138131_ _L39698_))))
                                       (declare (not safe))
                                       (cons __tmp44537 '()))))
                                (declare (not safe))
                                (cons '=>: __tmp44536))))
                         (declare (not safe))
                         (cons _L39700_ __tmp44535))))
                  (declare (not safe))
                  (cons ':: __tmp44534))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L39586_
                                                         __tmp44533))))
                                            (declare (not safe))
                                            (cons '?: __tmp44532))))
                                       (___kont4224242243_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (_parse-error38138_ _hd38484_)))))
                                   (let ((_g3959939788_
                                          (lambda ()
                                            (if (gx#stx-pair?
                                                 ___stx4223142232_)
                                                (let ((_e3960839767_
                                                       (gx#syntax-e
                                                        ___stx4223142232_)))
                                                  (let ((_tl3960639774_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3960839767_)))
                                                        (_hd3960739771_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3960839767_))))
                                                    (if (gx#stx-null?
                                                         _tl3960639774_)
                                                        (___kont4223642237_
                                                         _hd3960739771_)
                                                        (if (gx#identifier?
                                                             _hd3960739771_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g44539_|
                         _hd3960739771_)
                        (if (gx#stx-pair? _tl3960639774_)
                            (let ((_e3961539737_ (gx#syntax-e _tl3960639774_)))
                              (let ((_tl3961339744_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3961539737_)))
                                    (_hd3961439741_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3961539737_))))
                                (if (gx#stx-null? _tl3961339744_)
                                    (___kont4223842239_ _hd3961439741_)
                                    (___kont4224242243_))))
                            (___kont4224242243_))
                        (___kont4224242243_))
                    (if (gx#stx-datum? _hd3960739771_)
                        (let ((_e3962139664_ (gx#stx-e _hd3960739771_)))
                          (if (let ()
                                (declare (not safe))
                                (equal? _e3962139664_ '::))
                              (if (gx#stx-pair? _tl3960639774_)
                                  (let ((_e3962439668_
                                         (gx#syntax-e _tl3960639774_)))
                                    (let ((_tl3962239675_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3962439668_)))
                                          (_hd3962339672_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3962439668_))))
                                      (if (gx#stx-pair? _tl3962239675_)
                                          (let ((_e3962739678_
                                                 (gx#syntax-e _tl3962239675_)))
                                            (let ((_tl3962539685_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3962739678_)))
                                                  (_hd3962639682_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3962739678_))))
                                              (if (gx#identifier?
                                                   _hd3962639682_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g44538_|
                                                       _hd3962639682_)
                                                      (if (gx#stx-pair?
                                                           _tl3962539685_)
                                                          (let ((_e3963039688_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3962539685_)))
                    (let ((_tl3962839695_
                           (let () (declare (not safe)) (##cdr _e3963039688_)))
                          (_hd3962939692_
                           (let ()
                             (declare (not safe))
                             (##car _e3963039688_))))
                      (if (gx#stx-null? _tl3962839695_)
                          (___kont4224042241_ _hd3962939692_ _hd3962339672_)
                          (___kont4224242243_))))
                  (___kont4224242243_))
              (___kont4224242243_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont4224242243_))))
                                          (___kont4224242243_))))
                                  (___kont4224242243_))
                              (___kont4224242243_)))
                        (___kont4224242243_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4224242243_)))))
                                     (if (gx#stx-null? ___stx4223142232_)
                                         (___kont4223442235_)
                                         (let ()
                                           (declare (not safe))
                                           (_g3959939788_))))))))
                            (___kont4231642317_
                             (lambda (_L39489_)
                               (let* ((___stx4221342214_ _L39489_)
                                      (_g3950139512_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4221342214_))))
                                 (let ((___kont4221642217_
                                        (lambda (_L39540_)
                                          (let ()
                                            (declare (not safe))
                                            (_parse138131_ _L39540_))))
                                       (___kont4221842219_
                                        (lambda ()
                                          (let ((__tmp44540
                                                 (gx#stx-map
                                                  _parse138131_
                                                  _L39489_)))
                                            (declare (not safe))
                                            (cons 'and: __tmp44540)))))
                                   (if (gx#stx-pair? ___stx4221342214_)
                                       (let ((_e3950639530_
                                              (gx#syntax-e ___stx4221342214_)))
                                         (let ((_tl3950439537_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3950639530_)))
                                               (_hd3950539534_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3950639530_))))
                                           (if (gx#stx-null? _tl3950439537_)
                                               (___kont4221642217_
                                                _hd3950539534_)
                                               (___kont4221842219_))))
                                       (___kont4221842219_))))))
                            (___kont4231842319_
                             (lambda (_L39404_)
                               (let* ((___stx4219542196_ _L39404_)
                                      (_g3941639427_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4219542196_))))
                                 (let ((___kont4219842199_
                                        (lambda (_L39455_)
                                          (let ()
                                            (declare (not safe))
                                            (_parse138131_ _L39455_))))
                                       (___kont4220042201_
                                        (lambda ()
                                          (let ((__tmp44541
                                                 (gx#stx-map
                                                  _parse138131_
                                                  _L39404_)))
                                            (declare (not safe))
                                            (cons 'or: __tmp44541)))))
                                   (if (gx#stx-pair? ___stx4219542196_)
                                       (let ((_e3942139445_
                                              (gx#syntax-e ___stx4219542196_)))
                                         (let ((_tl3941939452_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3942139445_)))
                                               (_hd3942039449_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3942139445_))))
                                           (if (gx#stx-null? _tl3941939452_)
                                               (___kont4219842199_
                                                _hd3942039449_)
                                               (___kont4220042201_))))
                                       (___kont4220042201_))))))
                            (___kont4232042321_
                             (lambda (_L39374_)
                               (let ((__tmp44542
                                      (let ((__tmp44543
                                             (let ()
                                               (declare (not safe))
                                               (_parse138131_ _L39374_))))
                                        (declare (not safe))
                                        (cons __tmp44543 '()))))
                                 (declare (not safe))
                                 (cons 'not: __tmp44542))))
                            (___kont4232242323_
                             (lambda (_L39330_ _L39332_)
                               (let ((__tmp44544
                                      (let ((__tmp44547
                                             (let ()
                                               (declare (not safe))
                                               (_parse138131_ _L39332_)))
                                            (__tmp44545
                                             (let ((__tmp44546
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse138131_
                                                       _L39330_))))
                                               (declare (not safe))
                                               (cons __tmp44546 '()))))
                                        (declare (not safe))
                                        (cons __tmp44547 __tmp44545))))
                                 (declare (not safe))
                                 (cons 'cons: __tmp44544))))
                            (___kont4232442325_
                             (lambda (_L39274_ _L39276_ _L39277_)
                               (if (gx#stx-null? _L39274_)
                                   (let ((__tmp44555
                                          (let ((__tmp44558
                                                 (let ()
                                                   (declare (not safe))
                                                   (_parse138131_ _L39277_)))
                                                (__tmp44556
                                                 (let ((__tmp44557
                                                        (let ()
                                                          (declare (not safe))
                                                          (_parse138131_
                                                           _L39276_))))
                                                   (declare (not safe))
                                                   (cons __tmp44557 '()))))
                                            (declare (not safe))
                                            (cons __tmp44558 __tmp44556))))
                                     (declare (not safe))
                                     (cons 'cons: __tmp44555))
                                   (let ((__tmp44548
                                          (let ((__tmp44554
                                                 (let ()
                                                   (declare (not safe))
                                                   (_parse138131_ _L39277_)))
                                                (__tmp44549
                                                 (let ((__tmp44550
                                                        (let ((__tmp44551
                                                               (let ((__tmp44553
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'cons*))
                             (__tmp44552
                              (let ()
                                (declare (not safe))
                                (cons _L39276_ _L39274_))))
                         (declare (not safe))
                         (cons __tmp44553 __tmp44552))))
                  (declare (not safe))
                  (_parse138131_ __tmp44551))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp44550 '()))))
                                            (declare (not safe))
                                            (cons __tmp44554 __tmp44549))))
                                     (declare (not safe))
                                     (cons 'cons: __tmp44548)))))
                            (___kont4232642327_
                             (lambda (_L39226_)
                               (let ()
                                 (declare (not safe))
                                 (_parse-list38133_ _L39226_))))
                            (___kont4232842329_
                             (lambda (_L39196_)
                               (let ((__tmp44559
                                      (let ((__tmp44560
                                             (let ()
                                               (declare (not safe))
                                               (_parse138131_ _L39196_))))
                                        (declare (not safe))
                                        (cons __tmp44560 '()))))
                                 (declare (not safe))
                                 (cons 'box: __tmp44559))))
                            (___kont4233042331_
                             (lambda (_L39159_)
                               (let ((__tmp44561
                                      (let ((__tmp44562
                                             (let ()
                                               (declare (not safe))
                                               (_parse138131_ _L39159_))))
                                        (declare (not safe))
                                        (cons __tmp44562 '()))))
                                 (declare (not safe))
                                 (cons 'box: __tmp44561))))
                            (___kont4233242333_
                             (lambda (_L39135_)
                               (let ()
                                 (declare (not safe))
                                 (_parse138131_ _L39135_))))
                            (___kont4233442335_
                             (lambda (_L39097_)
                               (let ((__tmp44563
                                      (let ((__tmp44564
                                             (let ()
                                               (declare (not safe))
                                               (_parse-vector38134_
                                                _L39097_))))
                                        (declare (not safe))
                                        (cons __tmp44564 '()))))
                                 (declare (not safe))
                                 (cons 'values: __tmp44563))))
                            (___kont4233642337_
                             (lambda (_L39069_)
                               (let ((__tmp44565
                                      (let ((__tmp44566
                                             (let ()
                                               (declare (not safe))
                                               (_parse-vector38134_
                                                _L39069_))))
                                        (declare (not safe))
                                        (cons __tmp44566 '()))))
                                 (declare (not safe))
                                 (cons 'vector: __tmp44565))))
                            (___kont4233842339_
                             (lambda (_L39030_)
                               (let ((__tmp44567
                                      (let ((__tmp44568
                                             (let ((__tmp44569
                                                    (foldr (lambda (_g3904339046_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g3904439049_)
                     (let ()
                       (declare (not safe))
                       (cons _g3904339046_ _g3904439049_)))
                   '()
                   _L39030_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_parse-vector38134_
                                                __tmp44569))))
                                        (declare (not safe))
                                        (cons __tmp44568 '()))))
                                 (declare (not safe))
                                 (cons 'vector: __tmp44567))))
                            (___kont4234242343_
                             (lambda (_L38976_ _L38978_)
                               (let ((__tmp44570
                                      (let ((__tmp44573
                                             (gx#syntax-local-value _L38978_))
                                            (__tmp44571
                                             (let ((__tmp44572
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-vector38134_
                                                       _L38976_))))
                                               (declare (not safe))
                                               (cons __tmp44572 '()))))
                                        (declare (not safe))
                                        (cons __tmp44573 __tmp44571))))
                                 (declare (not safe))
                                 (cons 'struct: __tmp44570))))
                            (___kont4234442345_
                             (lambda (_L38946_ _L38948_)
                               (let ((__tmp44574
                                      (let ((__tmp44577
                                             (gx#syntax-local-value _L38948_))
                                            (__tmp44575
                                             (let ((__tmp44576
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-class-body38136_
                                                       _L38946_))))
                                               (declare (not safe))
                                               (cons __tmp44576 '()))))
                                        (declare (not safe))
                                        (cons __tmp44577 __tmp44575))))
                                 (declare (not safe))
                                 (cons 'class: __tmp44574))))
                            (___kont4234642347_
                             (lambda (_L38906_ _L38908_)
                               (let ((__tmp44578
                                      (let ((__tmp44579
                                             (let ((__tmp44584
                                                    (gx#datum->syntax
                                                     '#f
                                                     'cut))
                                                   (__tmp44580
                                                    (let ((__tmp44581
                                                           (let ((__tmp44583
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '<>))
                         (__tmp44582
                          (let () (declare (not safe)) (cons _L38906_ '()))))
                     (declare (not safe))
                     (cons __tmp44583 __tmp44582))))
              (declare (not safe))
              (cons _L38908_ __tmp44581))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp44584 __tmp44580))))
                                        (declare (not safe))
                                        (cons __tmp44579 '()))))
                                 (declare (not safe))
                                 (cons '?: __tmp44578))))
                            (___kont4234842349_
                             (lambda (_L38866_)
                               (let ((__tmp44585
                                      (let ((__tmp44586 (gx#stx-e _L38866_)))
                                        (declare (not safe))
                                        (cons __tmp44586 '()))))
                                 (declare (not safe))
                                 (cons 'datum: __tmp44585))))
                            (___kont4235042351_
                             (lambda (_L38826_)
                               (let ()
                                 (declare (not safe))
                                 (_parse-qq38137_ _L38826_))))
                            (___kont4235242353_
                             (lambda (_L38782_ _L38784_)
                               (let ((__tmp44587
                                      (let ((__tmp44588
                                             (let ((__tmp44589
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse138131_
                                                       _L38782_))))
                                               (declare (not safe))
                                               (cons __tmp44589 '()))))
                                        (declare (not safe))
                                        (cons _L38784_ __tmp44588))))
                                 (declare (not safe))
                                 (cons 'apply: __tmp44587))))
                            (___kont4235442355_
                             (lambda (_L38730_)
                               (let ((__tmp44590
                                      (gx#core-apply-expander
                                       (gx#syntax-local-e _L38730_)
                                       (gx#stx-wrap-source
                                        (let ()
                                          (declare (not safe))
                                          (cons 'match: _hd38484_))
                                        (let ((_$e38741_
                                               (gx#stx-source _hd38484_)))
                                          (if _$e38741_
                                              _$e38741_
                                              (gx#stx-source _stx38127_)))))))
                                 (declare (not safe))
                                 (_parse138131_ __tmp44590))))
                            (___kont4235642357_
                             (lambda (_L38704_)
                               (let () (declare (not safe)) (cons 'any: '()))))
                            (___kont4235842359_
                             (lambda (_L38688_)
                               (let ((__tmp44591
                                      (let ()
                                        (declare (not safe))
                                        (cons _L38688_ '()))))
                                 (declare (not safe))
                                 (cons 'var: __tmp44591))))
                            (___kont4236042361_
                             (lambda (_L38670_)
                               (let ((__tmp44592
                                      (let ((__tmp44593 (gx#stx-e _L38670_)))
                                        (declare (not safe))
                                        (cons __tmp44593 '()))))
                                 (declare (not safe))
                                 (cons 'datum: __tmp44592))))
                            (___kont4236242363_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_parse-error38138_ _hd38484_)))))
                        (let* ((_g3850838681_
                                (lambda ()
                                  (let ((_L38670_ ___stx4231142312_))
                                    (if (gx#stx-datum? _L38670_)
                                        (___kont4236042361_ _L38670_)
                                        (___kont4236242363_)))))
                               (_g3850738697_
                                (lambda ()
                                  (let ((_L38688_ ___stx4231142312_))
                                    (if (and (gx#identifier? _L38688_)
                                             (let ((__tmp44594
                                                    (gx#ellipsis? _L38688_)))
                                               (declare (not safe))
                                               (not __tmp44594)))
                                        (___kont4235842359_ _L38688_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3850838681_))))))
                               (_g3850638713_
                                (lambda ()
                                  (let ((_L38704_ ___stx4231142312_))
                                    (if (gx#underscore? _L38704_)
                                        (___kont4235642357_ _L38704_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3850738697_))))))
                               (___match4263842639_
                                (lambda (_e3864338720_
                                         _hd3864238724_
                                         _tl3864138727_)
                                  (let ((_L38730_ _hd3864238724_))
                                    (if (let ()
                                          (declare (not safe))
                                          (|gerbil/core/match[1]#syntax-local-match-macro?|
                                           _L38730_))
                                        (___kont4235442355_ _L38730_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3850638713_))))))
                               (___match4257242573_
                                (lambda (_e3861138886_
                                         _hd3861038890_
                                         _tl3860938893_
                                         _e3861438896_
                                         _hd3861338900_
                                         _tl3861238903_)
                                  (let ((_L38906_ _hd3861338900_)
                                        (_L38908_ _hd3861038890_))
                                    (if (and (gx#identifier? _L38908_)
                                             (or (gx#free-identifier=?
                                                  _L38908_
                                                  (gx#datum->syntax '#f 'eq?))
                                                 (gx#free-identifier=?
                                                  _L38908_
                                                  (gx#datum->syntax '#f 'eqv?))
                                                 (gx#free-identifier=?
                                                  _L38908_
                                                  (gx#datum->syntax
                                                   '#f
                                                   'equal?))))
                                        (___kont4234642347_ _L38906_ _L38908_)
                                        (if (gx#identifier? _hd3861038890_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g44596_|
                                                 _hd3861038890_)
                                                (___kont4234842349_
                                                 _hd3861338900_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/match[1]#_g44595_|
                                                     _hd3861038890_)
                                                    (___kont4235042351_
                                                     _hd3861338900_)
                                                    (___match4263842639_
                                                     _e3861138886_
                                                     _hd3861038890_
                                                     _tl3860938893_)))
                                            (___match4263842639_
                                             _e3861138886_
                                             _hd3861038890_
                                             _tl3860938893_))))))
                               (___match4255842559_
                                (lambda (_e3860638936_
                                         _hd3860538940_
                                         _tl3860438943_)
                                  (let ((_L38946_ _tl3860438943_)
                                        (_L38948_ _hd3860538940_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop$MOP-2#syntax-local-class-type-info?__0
                                           _L38948_))
                                        (___kont4234442345_ _L38946_ _L38948_)
                                        (if (gx#stx-pair? _tl3860438943_)
                                            (let ((_e3861438896_
                                                   (gx#syntax-e
                                                    _tl3860438943_)))
                                              (let ((_tl3861238903_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3861438896_)))
                                                    (_hd3861338900_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3861438896_))))
                                                (if (gx#stx-null?
                                                     _tl3861238903_)
                                                    (___match4257242573_
                                                     _e3860638936_
                                                     _hd3860538940_
                                                     _tl3860438943_
                                                     _e3861438896_
                                                     _hd3861338900_
                                                     _tl3861238903_)
                                                    (if (gx#identifier?
                                                         _hd3860538940_)
                                                        (if (gx#free-identifier=?
                                                             |gerbil/core/match[1]#_g44596_|
                                                             _hd3860538940_)
                                                            (___match4263842639_
                                                             _e3860638936_
                                                             _hd3860538940_
                                                             _tl3860438943_)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         |gerbil/core/match[1]#_g44595_|
                         _hd3860538940_)
                        (___match4263842639_
                         _e3860638936_
                         _hd3860538940_
                         _tl3860438943_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g44597_|
                             _hd3860538940_)
                            (if (gx#stx-pair? _tl3861238903_)
                                (let ((_e3863938772_
                                       (gx#syntax-e _tl3861238903_)))
                                  (let ((_tl3863738779_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3863938772_)))
                                        (_hd3863838776_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3863938772_))))
                                    (if (gx#stx-null? _tl3863738779_)
                                        (___kont4235242353_
                                         _hd3863838776_
                                         _hd3861338900_)
                                        (___match4263842639_
                                         _e3860638936_
                                         _hd3860538940_
                                         _tl3860438943_))))
                                (___match4263842639_
                                 _e3860638936_
                                 _hd3860538940_
                                 _tl3860438943_))
                            (___match4263842639_
                             _e3860638936_
                             _hd3860538940_
                             _tl3860438943_))))
                (___match4263842639_
                 _e3860638936_
                 _hd3860538940_
                 _tl3860438943_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___match4263842639_
                                             _e3860638936_
                                             _hd3860538940_
                                             _tl3860438943_))))))
                               (___match4255242553_
                                (lambda (_e3860138966_
                                         _hd3860038970_
                                         _tl3859938973_)
                                  (let ((_L38976_ _tl3859938973_)
                                        (_L38978_ _hd3860038970_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gerbil/core/mop$MOP-2#syntax-local-class-type-info?__%
                                           _L38978_
                                           gerbil/core/mop$MOP-2#!class-type-struct?))
                                        (___kont4234242343_ _L38976_ _L38978_)
                                        (___match4255842559_
                                         _e3860138966_
                                         _hd3860038970_
                                         _tl3859938973_)))))
                               (___match4254642547_
                                (lambda (_e3858738996_
                                         ___splice4234042341_
                                         _target3858839000_
                                         _tl3859039003_)
                                  (letrec ((_loop3859139006_
                                            (lambda (_hd3858939010_
                                                     _body3859539013_)
                                              (if (gx#stx-pair? _hd3858939010_)
                                                  (let ((_e3859239016_
                                                         (gx#syntax-e
                                                          _hd3858939010_)))
                                                    (let ((_lp-tl3859439023_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3859239016_)))
                                                          (_lp-hd3859339020_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3859239016_))))
                                                      (let ((__tmp44598
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd3859339020_ _body3859539013_))))
                (declare (not safe))
                (_loop3859139006_ _lp-tl3859439023_ __tmp44598))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_body3859639026_
                                                         (reverse _body3859539013_)))
                                                    (___kont4233842339_
                                                     _body3859639026_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop3859139006_
                                       _target3858839000_
                                       '())))))
                               (_g3849839052_
                                (lambda ()
                                  (if (gx#stx-vector? ___stx4231142312_)
                                      (let ((_e3858738996_
                                             (vector->list
                                              (gx#syntax-e
                                               ___stx4231142312_))))
                                        (if (gx#stx-pair/null? _e3858738996_)
                                            (let ((___splice4234042341_
                                                   (gx#syntax-split-splice
                                                    _e3858738996_
                                                    '0)))
                                              (let ((_tl3859039003_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4234042341_
                                                        '1)))
                                                    (_target3858839000_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4234042341_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl3859039003_)
                                                    (___match4254642547_
                                                     _e3858738996_
                                                     ___splice4234042341_
                                                     _target3858839000_
                                                     _tl3859039003_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g3850638713_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g3850638713_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g3850638713_)))))
                               (_g3849439169_
                                (lambda ()
                                  (if (gx#stx-box? ___stx4231142312_)
                                      (let ((_e3857039155_
                                             (unbox (gx#syntax-e
                                                     ___stx4231142312_))))
                                        (___kont4233042331_ _e3857039155_))
                                      (let ()
                                        (declare (not safe))
                                        (_g3849839052_)))))
                               (___match4240042401_
                                (lambda (_e3852739394_
                                         _hd3852639398_
                                         _tl3852539401_)
                                  (let ((_L39404_ _tl3852539401_))
                                    (if (gx#stx-list? _L39404_)
                                        (___kont4231842319_ _L39404_)
                                        (___match4255242553_
                                         _e3852739394_
                                         _hd3852639398_
                                         _tl3852539401_)))))
                               (___match4239042391_
                                (lambda (_e3852339479_
                                         _hd3852239483_
                                         _tl3852139486_)
                                  (let ((_L39489_ _tl3852139486_))
                                    (if (gx#stx-list? _L39489_)
                                        (___kont4231642317_ _L39489_)
                                        (___match4255242553_
                                         _e3852339479_
                                         _hd3852239483_
                                         _tl3852139486_))))))
                          (if (gx#stx-pair? ___stx4231142312_)
                              (let ((_e3851639564_
                                     (gx#syntax-e ___stx4231142312_)))
                                (let ((_tl3851439571_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3851639564_)))
                                      (_hd3851539568_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3851639564_))))
                                  (if (gx#identifier? _hd3851539568_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g44608_|
                                           _hd3851539568_)
                                          (if (gx#stx-pair? _tl3851439571_)
                                              (let ((_e3851939574_
                                                     (gx#syntax-e
                                                      _tl3851439571_)))
                                                (let ((_tl3851739581_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3851939574_)))
                                                      (_hd3851839578_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3851939574_))))
                                                  (___kont4231442315_
                                                   _tl3851739581_
                                                   _hd3851839578_)))
                                              (___match4255242553_
                                               _e3851639564_
                                               _hd3851539568_
                                               _tl3851439571_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g44607_|
                                               _hd3851539568_)
                                              (___match4239042391_
                                               _e3851639564_
                                               _hd3851539568_
                                               _tl3851439571_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g44606_|
                                                   _hd3851539568_)
                                                  (___match4240042401_
                                                   _e3851639564_
                                                   _hd3851539568_
                                                   _tl3851439571_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g44605_|
                                                       _hd3851539568_)
                                                      (if (gx#stx-pair?
                                                           _tl3851439571_)
                                                          (let ((_e3853439364_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3851439571_)))
                    (let ((_tl3853239371_
                           (let () (declare (not safe)) (##cdr _e3853439364_)))
                          (_hd3853339368_
                           (let ()
                             (declare (not safe))
                             (##car _e3853439364_))))
                      (if (gx#stx-null? _tl3853239371_)
                          (___kont4232042321_ _hd3853339368_)
                          (___match4255242553_
                           _e3851639564_
                           _hd3851539568_
                           _tl3851439571_))))
                  (___match4255242553_
                   _e3851639564_
                   _hd3851539568_
                   _tl3851439571_))
              (if (gx#free-identifier=?
                   |gerbil/core/match[1]#_g44604_|
                   _hd3851539568_)
                  (if (gx#stx-pair? _tl3851439571_)
                      (let ((_e3854239310_ (gx#syntax-e _tl3851439571_)))
                        (let ((_tl3854039317_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3854239310_)))
                              (_hd3854139314_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3854239310_))))
                          (if (gx#stx-pair? _tl3854039317_)
                              (let ((_e3854539320_
                                     (gx#syntax-e _tl3854039317_)))
                                (let ((_tl3854339327_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3854539320_)))
                                      (_hd3854439324_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3854539320_))))
                                  (if (gx#stx-null? _tl3854339327_)
                                      (___kont4232242323_
                                       _hd3854439324_
                                       _hd3854139314_)
                                      (___match4255242553_
                                       _e3851639564_
                                       _hd3851539568_
                                       _tl3851439571_))))
                              (___match4255242553_
                               _e3851639564_
                               _hd3851539568_
                               _tl3851439571_))))
                      (___match4255242553_
                       _e3851639564_
                       _hd3851539568_
                       _tl3851439571_))
                  (if (gx#free-identifier=?
                       |gerbil/core/match[1]#_g44603_|
                       _hd3851539568_)
                      (if (gx#stx-pair? _tl3851439571_)
                          (let ((_e3855439254_ (gx#syntax-e _tl3851439571_)))
                            (let ((_tl3855239261_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3855439254_)))
                                  (_hd3855339258_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3855439254_))))
                              (if (gx#stx-pair? _tl3855239261_)
                                  (let ((_e3855739264_
                                         (gx#syntax-e _tl3855239261_)))
                                    (let ((_tl3855539271_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3855739264_)))
                                          (_hd3855639268_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3855739264_))))
                                      (___kont4232442325_
                                       _tl3855539271_
                                       _hd3855639268_
                                       _hd3855339258_)))
                                  (___match4255242553_
                                   _e3851639564_
                                   _hd3851539568_
                                   _tl3851439571_))))
                          (___match4255242553_
                           _e3851639564_
                           _hd3851539568_
                           _tl3851439571_))
                      (if (gx#free-identifier=?
                           |gerbil/core/match[1]#_g44602_|
                           _hd3851539568_)
                          (___kont4232642327_ _tl3851439571_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g44601_|
                               _hd3851539568_)
                              (if (gx#stx-pair? _tl3851439571_)
                                  (let ((_e3856839186_
                                         (gx#syntax-e _tl3851439571_)))
                                    (let ((_tl3856639193_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3856839186_)))
                                          (_hd3856739190_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3856839186_))))
                                      (if (gx#stx-null? _tl3856639193_)
                                          (___kont4232842329_ _hd3856739190_)
                                          (___match4255242553_
                                           _e3851639564_
                                           _hd3851539568_
                                           _tl3851439571_))))
                                  (___match4255242553_
                                   _e3851639564_
                                   _hd3851539568_
                                   _tl3851439571_))
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g44600_|
                                   _hd3851539568_)
                                  (if (gx#stx-pair? _tl3851439571_)
                                      (let ((_e3857739125_
                                             (gx#syntax-e _tl3851439571_)))
                                        (let ((_tl3857539132_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3857739125_)))
                                              (_hd3857639129_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3857739125_))))
                                          (if (gx#stx-null? _tl3857539132_)
                                              (___kont4233242333_
                                               _hd3857639129_)
                                              (___kont4233442335_
                                               _tl3851439571_))))
                                      (___kont4233442335_ _tl3851439571_))
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g44599_|
                                       _hd3851539568_)
                                      (___kont4233642337_ _tl3851439571_)
                                      (___match4255242553_
                                       _e3851639564_
                                       _hd3851539568_
                                       _tl3851439571_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (___match4255242553_
                                       _e3851639564_
                                       _hd3851539568_
                                       _tl3851439571_))))
                              (let ()
                                (declare (not safe))
                                (_g3849439169_))))))))
                 (_parse-list38133_
                  (lambda (_body38313_)
                    (let* ((___stx4264142642_ _body38313_)
                           (_g3831938348_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4264142642_))))
                      (let ((___kont4264442645_
                             (lambda (_L38466_)
                               (let ()
                                 (declare (not safe))
                                 (_parse138131_ _L38466_))))
                            (___kont4264642647_
                             (lambda (_L38418_ _L38420_ _L38421_)
                               (let ((__tmp44609
                                      (let ((__tmp44612
                                             (let ()
                                               (declare (not safe))
                                               (_parse138131_ _L38421_)))
                                            (__tmp44610
                                             (let ((__tmp44611
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-list38133_
                                                       _L38418_))))
                                               (declare (not safe))
                                               (cons __tmp44611 '()))))
                                        (declare (not safe))
                                        (cons __tmp44612 __tmp44610))))
                                 (declare (not safe))
                                 (cons 'splice: __tmp44609))))
                            (___kont4264842649_
                             (lambda (_L38376_ _L38378_)
                               (let ((__tmp44613
                                      (let ((__tmp44616
                                             (let ()
                                               (declare (not safe))
                                               (_parse138131_ _L38378_)))
                                            (__tmp44614
                                             (let ((__tmp44615
                                                    (let ()
                                                      (declare (not safe))
                                                      (_parse-list38133_
                                                       _L38376_))))
                                               (declare (not safe))
                                               (cons __tmp44615 '()))))
                                        (declare (not safe))
                                        (cons __tmp44616 __tmp44614))))
                                 (declare (not safe))
                                 (cons 'cons: __tmp44613))))
                            (___kont4265042651_
                             (lambda ()
                               (if (gx#stx-null? _body38313_)
                                   (let ()
                                     (declare (not safe))
                                     (cons 'null: '()))
                                   (if (let ((__tmp44617
                                              (gx#stx-pair? _body38313_)))
                                         (declare (not safe))
                                         (not __tmp44617))
                                       (let ()
                                         (declare (not safe))
                                         (_parse138131_ _body38313_))
                                       (let ()
                                         (declare (not safe))
                                         (_parse-error38138_ _body38313_)))))))
                        (let* ((___match4269042691_
                                (lambda (_e3834238366_
                                         _hd3834138370_
                                         _tl3834038373_)
                                  (let ((_L38376_ _tl3834038373_)
                                        (_L38378_ _hd3834138370_))
                                    (if (let ((__tmp44618
                                               (gx#ellipsis? _L38378_)))
                                          (declare (not safe))
                                          (not __tmp44618))
                                        (___kont4264842649_ _L38376_ _L38378_)
                                        (___kont4265042651_)))))
                               (___match4268442685_
                                (lambda (_e3833438398_
                                         _hd3833338402_
                                         _tl3833238405_
                                         _e3833738408_
                                         _hd3833638412_
                                         _tl3833538415_)
                                  (let ((_L38418_ _tl3833538415_)
                                        (_L38420_ _hd3833638412_)
                                        (_L38421_ _hd3833338402_))
                                    (if (gx#ellipsis? _L38420_)
                                        (___kont4264642647_
                                         _L38418_
                                         _L38420_
                                         _L38421_)
                                        (___match4269042691_
                                         _e3833438398_
                                         _hd3833338402_
                                         _tl3833238405_))))))
                          (if (gx#stx-pair? ___stx4264142642_)
                              (let ((_e3832438442_
                                     (gx#syntax-e ___stx4264142642_)))
                                (let ((_tl3832238449_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3832438442_)))
                                      (_hd3832338446_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3832438442_))))
                                  (if (gx#stx-datum? _hd3832338446_)
                                      (let ((_e3832538452_
                                             (gx#stx-e _hd3832338446_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e3832538452_ '::))
                                            (if (gx#stx-pair? _tl3832238449_)
                                                (let ((_e3832838456_
                                                       (gx#syntax-e
                                                        _tl3832238449_)))
                                                  (let ((_tl3832638463_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3832838456_)))
                                                        (_hd3832738460_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3832838456_))))
                                                    (if (gx#stx-null?
                                                         _tl3832638463_)
                                                        (___kont4264442645_
                                                         _hd3832738460_)
                                                        (___match4268442685_
                                                         _e3832438442_
                                                         _hd3832338446_
                                                         _tl3832238449_
                                                         _e3832838456_
                                                         _hd3832738460_
                                                         _tl3832638463_))))
                                                (___match4269042691_
                                                 _e3832438442_
                                                 _hd3832338446_
                                                 _tl3832238449_))
                                            (if (gx#stx-pair? _tl3832238449_)
                                                (let ((_e3833738408_
                                                       (gx#syntax-e
                                                        _tl3832238449_)))
                                                  (let ((_tl3833538415_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3833738408_)))
                                                        (_hd3833638412_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3833738408_))))
                                                    (___match4268442685_
                                                     _e3832438442_
                                                     _hd3832338446_
                                                     _tl3832238449_
                                                     _e3833738408_
                                                     _hd3833638412_
                                                     _tl3833538415_)))
                                                (___match4269042691_
                                                 _e3832438442_
                                                 _hd3832338446_
                                                 _tl3832238449_))))
                                      (if (gx#stx-pair? _tl3832238449_)
                                          (let ((_e3833738408_
                                                 (gx#syntax-e _tl3832238449_)))
                                            (let ((_tl3833538415_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3833738408_)))
                                                  (_hd3833638412_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3833738408_))))
                                              (___match4268442685_
                                               _e3832438442_
                                               _hd3832338446_
                                               _tl3832238449_
                                               _e3833738408_
                                               _hd3833638412_
                                               _tl3833538415_)))
                                          (___match4269042691_
                                           _e3832438442_
                                           _hd3832338446_
                                           _tl3832238449_)))))
                              (___kont4265042651_)))))))
                 (_parse-vector38134_
                  (lambda (_body38310_)
                    (if (let ()
                          (declare (not safe))
                          (_simple-vector?38135_ _body38310_))
                        (let ((__tmp44621
                               (let ((__tmp44622
                                      (gx#stx-map _parse138131_ _body38310_)))
                                 (declare (not safe))
                                 (cons __tmp44622 '()))))
                          (declare (not safe))
                          (cons 'simple: __tmp44621))
                        (let ((__tmp44619
                               (let ((__tmp44620
                                      (let ()
                                        (declare (not safe))
                                        (_parse-list38133_ _body38310_))))
                                 (declare (not safe))
                                 (cons __tmp44620 '()))))
                          (declare (not safe))
                          (cons 'list: __tmp44619)))))
                 (_simple-vector?38135_
                  (lambda (_body38247_)
                    (let* ((___stx4269342694_ _body38247_)
                           (_g3825138263_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4269342694_))))
                      (let ((___kont4269642697_
                             (lambda (_L38291_ _L38293_)
                               (if (let ((__tmp44623 (gx#ellipsis? _L38293_)))
                                     (declare (not safe))
                                     (not __tmp44623))
                                   (let ()
                                     (declare (not safe))
                                     (_simple-vector?38135_ _L38291_))
                                   '#f)))
                            (___kont4269842699_
                             (lambda () (gx#stx-null? _body38247_))))
                        (if (gx#stx-pair? ___stx4269342694_)
                            (let ((_e3825738281_
                                   (gx#syntax-e ___stx4269342694_)))
                              (let ((_tl3825538288_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3825738281_)))
                                    (_hd3825638285_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3825738281_))))
                                (___kont4269642697_
                                 _tl3825538288_
                                 _hd3825638285_)))
                            (___kont4269842699_))))))
                 (_parse-class-body38136_
                  (lambda (_body38156_)
                    (let _recur38159_ ((_rest38162_ _body38156_))
                      (let* ((___stx4270942710_ _rest38162_)
                             (_g3816638182_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4270942710_))))
                        (let ((___kont4271242713_
                               (lambda (_L38220_ _L38222_ _L38223_)
                                 (let ((__tmp44624
                                        (let ((__tmp44626
                                               (let ()
                                                 (declare (not safe))
                                                 (_parse138131_ _L38222_)))
                                              (__tmp44625
                                               (let ()
                                                 (declare (not safe))
                                                 (_recur38159_ _L38220_))))
                                          (declare (not safe))
                                          (cons __tmp44626 __tmp44625))))
                                   (declare (not safe))
                                   (cons _L38223_ __tmp44624))))
                              (___kont4271442715_
                               (lambda ()
                                 (if (gx#stx-null? _rest38162_)
                                     '()
                                     (let ()
                                       (declare (not safe))
                                       (_parse-error38138_ _rest38162_))))))
                          (let ((___match4272842729_
                                 (lambda (_e3817338200_
                                          _hd3817238204_
                                          _tl3817138207_
                                          _e3817638210_
                                          _hd3817538214_
                                          _tl3817438217_)
                                   (let ((_L38220_ _tl3817438217_)
                                         (_L38222_ _hd3817538214_)
                                         (_L38223_ _hd3817238204_))
                                     (if (gx#stx-keyword? _L38223_)
                                         (___kont4271242713_
                                          _L38220_
                                          _L38222_
                                          _L38223_)
                                         (___kont4271442715_))))))
                            (if (gx#stx-pair? ___stx4270942710_)
                                (let ((_e3817338200_
                                       (gx#syntax-e ___stx4270942710_)))
                                  (let ((_tl3817138207_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3817338200_)))
                                        (_hd3817238204_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3817338200_))))
                                    (if (gx#stx-pair? _tl3817138207_)
                                        (let ((_e3817638210_
                                               (gx#syntax-e _tl3817138207_)))
                                          (let ((_tl3817438217_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3817638210_)))
                                                (_hd3817538214_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3817638210_))))
                                            (___match4272842729_
                                             _e3817338200_
                                             _hd3817238204_
                                             _tl3817138207_
                                             _e3817638210_
                                             _hd3817538214_
                                             _tl3817438217_)))
                                        (___kont4271442715_))))
                                (___kont4271442715_))))))))
                 (_parse-qq38137_
                  (lambda (_hd38143_)
                    (let ((_g3814538152_
                           (lambda (_g3814638148_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g3814638148_))))
                      (declare (not safe))
                      (_g3814538152_ _hd38143_))))
                 (_parse-error38138_
                  (lambda (_hd38140_)
                    (apply gx#raise-syntax-error
                           '#f
                           '"bad syntax; illegal pattern"
                           (if _match-stx38129_
                               (let ((__tmp44628
                                      (let ((__tmp44629
                                             (let ()
                                               (declare (not safe))
                                               (cons _hd38140_ '()))))
                                        (declare (not safe))
                                        (cons _stx38127_ __tmp44629))))
                                 (declare (not safe))
                                 (cons _match-stx38129_ __tmp44628))
                               (let ((__tmp44627
                                      (let ()
                                        (declare (not safe))
                                        (cons _hd38140_ '()))))
                                 (declare (not safe))
                                 (cons _stx38127_ __tmp44627)))))))
          (let () (declare (not safe)) (_parse138131_ _stx38127_)))))
    (define |gerbil/core/match[1]#parse-match-pattern__0|
      (lambda (_stx39811_)
        (let ((_match-stx39814_ '#f))
          (declare (not safe))
          (|gerbil/core/match[1]#parse-match-pattern__%|
           _stx39811_
           _match-stx39814_))))
    (define |gerbil/core/match[1]#parse-match-pattern|
      (lambda _g44631_
        (let ((_g44630_ (let () (declare (not safe)) (##length _g44631_))))
          (cond ((let () (declare (not safe)) (##fx= _g44630_ 1))
                 (apply (lambda (_stx39811_)
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/match[1]#parse-match-pattern__0|
                             _stx39811_)))
                        _g44631_))
                ((let () (declare (not safe)) (##fx= _g44630_ 2))
                 (apply (lambda (_stx39817_ _match-stx39819_)
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/match[1]#parse-match-pattern__%|
                             _stx39817_
                             _match-stx39819_)))
                        _g44631_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core/match[1]#parse-match-pattern|
                  _g44631_))))))
    (define |gerbil/core/match[1]#match-pattern?|
      (lambda (_stx38112_)
        (call/cc (lambda (_E38115_)
                   (with-exception-handler
                    (let ((_E!38118_ (current-exception-handler)))
                      (lambda (_e38121_)
                        (if (syntax-error? _e38121_)
                            (_E38115_ '#f)
                            (_E!38118_ _e38121_))))
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (|gerbil/core/match[1]#parse-match-pattern__0|
                         _stx38112_))
                      '#t))))))
    (define |gerbil/core/match[1]#match-pattern-vars|
      (lambda (_ptree36847_)
        (letrec ((_loop36850_
                  (lambda (_ptree37137_ _vars37139_ _K37140_)
                    (let* ((___stx4282742828_ _ptree37137_)
                           (_g3715337263_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4282742828_))))
                      (let ((___kont4283042831_
                             (lambda (_L37893_)
                               (let* ((___stx4274742748_ _L37893_)
                                      (_g3791037944_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4274742748_))))
                                 (let ((___kont4275042751_
                                        (lambda (_L38093_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop36850_
                                             _L38093_
                                             _vars37139_
                                             _K37140_))))
                                       (___kont4275242753_
                                        (lambda (_L38062_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop36850_
                                             _L38062_
                                             _vars37139_
                                             _K37140_))))
                                       (___kont4275442755_
                                        (lambda (_L38010_)
                                          (let ()
                                            (declare (not safe))
                                            (_loop36850_
                                             _L38010_
                                             _vars37139_
                                             _K37140_))))
                                       (___kont4275642757_
                                        (lambda () (_K37140_ _vars37139_))))
                                   (if (gx#stx-pair? ___stx4274742748_)
                                       (let ((_e3791538083_
                                              (gx#syntax-e ___stx4274742748_)))
                                         (let ((_tl3791338090_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3791538083_)))
                                               (_hd3791438087_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3791538083_))))
                                           (if (gx#stx-null? _tl3791338090_)
                                               (___kont4275042751_
                                                _hd3791438087_)
                                               (if (gx#stx-datum?
                                                    _hd3791438087_)
                                                   (let ((_e3792038048_
                                                          (gx#stx-e
                                                           _hd3791438087_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (equal? _e3792038048_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '=>:))
                 (if (gx#stx-pair? _tl3791338090_)
                     (let ((_e3792338052_ (gx#syntax-e _tl3791338090_)))
                       (let ((_tl3792138059_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3792338052_)))
                             (_hd3792238056_
                              (let ()
                                (declare (not safe))
                                (##car _e3792338052_))))
                         (if (gx#stx-null? _tl3792138059_)
                             (___kont4275242753_ _hd3792238056_)
                             (___kont4275642757_))))
                     (___kont4275642757_))
                 (if (let () (declare (not safe)) (equal? _e3792038048_ '::))
                     (if (gx#stx-pair? _tl3791338090_)
                         (let ((_e3793137976_ (gx#syntax-e _tl3791338090_)))
                           (let ((_tl3792937983_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e3793137976_)))
                                 (_hd3793037980_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e3793137976_))))
                             (if (gx#stx-pair? _tl3792937983_)
                                 (let ((_e3793437986_
                                        (gx#syntax-e _tl3792937983_)))
                                   (let ((_tl3793237993_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e3793437986_)))
                                         (_hd3793337990_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e3793437986_))))
                                     (if (gx#stx-datum? _hd3793337990_)
                                         (let ((_e3793537996_
                                                (gx#stx-e _hd3793337990_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (equal? _e3793537996_ '=>:))
                                               (if (gx#stx-pair?
                                                    _tl3793237993_)
                                                   (let ((_e3793838000_
                                                          (gx#syntax-e
                                                           _tl3793237993_)))
                                                     (let ((_tl3793638007_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e3793838000_)))
                                                           (_hd3793738004_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e3793838000_))))
                                                       (if (gx#stx-null?
                                                            _tl3793638007_)
                                                           (___kont4275442755_
                                                            _hd3793738004_)
                                                           (___kont4275642757_))))
                                                   (___kont4275642757_))
                                               (___kont4275642757_)))
                                         (___kont4275642757_))))
                                 (___kont4275642757_))))
                         (___kont4275642757_))
                     (___kont4275642757_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont4275642757_)))))
                                       (___kont4275642757_))))))
                            (___kont4283242833_
                             (lambda (_L37780_ _L37782_)
                               (let* ((___stx4273142732_ _L37780_)
                                      (_g3779837810_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4273142732_))))
                                 (let ((___kont4273442735_
                                        (lambda (_L37838_ _L37840_)
                                          (let ((__tmp44632
                                                 (lambda (_g3785237854_)
                                                   (let ((__tmp44633
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L37782_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L37838_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_loop36850_
                                                      __tmp44633
                                                      _g3785237854_
                                                      _K37140_)))))
                                            (declare (not safe))
                                            (_loop36850_
                                             _L37840_
                                             _vars37139_
                                             __tmp44632))))
                                       (___kont4273642737_
                                        (lambda () (_K37140_ _vars37139_))))
                                   (if (gx#stx-pair? ___stx4273142732_)
                                       (let ((_e3780437828_
                                              (gx#syntax-e ___stx4273142732_)))
                                         (let ((_tl3780237835_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e3780437828_)))
                                               (_hd3780337832_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e3780437828_))))
                                           (___kont4273442735_
                                            _tl3780237835_
                                            _hd3780337832_)))
                                       (___kont4273642737_))))))
                            (___kont4283442835_
                             (lambda (_L37749_)
                               (let ()
                                 (declare (not safe))
                                 (_loop36850_ _L37749_ _vars37139_ _K37140_))))
                            (___kont4283642837_
                             (lambda (_L37695_ _L37697_)
                               (let ((__tmp44634
                                      (lambda (_g3771237714_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop36850_
                                           _L37695_
                                           _g3771237714_
                                           _K37140_)))))
                                 (declare (not safe))
                                 (_loop36850_
                                  _L37697_
                                  _vars37139_
                                  __tmp44634))))
                            (___kont4283842839_
                             (lambda (_L37631_ _L37633_)
                               (let ((__tmp44635
                                      (lambda (_g3764837650_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop36850_
                                           _L37631_
                                           _g3764837650_
                                           _K37140_)))))
                                 (declare (not safe))
                                 (_loop36850_
                                  _L37633_
                                  _vars37139_
                                  __tmp44635))))
                            (___kont4284042841_
                             (lambda (_L37576_)
                               (let ()
                                 (declare (not safe))
                                 (_loop36850_ _L37576_ _vars37139_ _K37140_))))
                            (___kont4284242843_
                             (lambda (_L37526_ _L37528_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-vector36852_
                                  _L37526_
                                  _vars37139_
                                  _K37140_))))
                            (___kont4284442845_
                             (lambda (_L37483_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-vector36852_
                                  _L37483_
                                  _vars37139_
                                  _K37140_))))
                            (___kont4284642847_
                             (lambda (_L37426_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-class-list36854_
                                  _L37426_
                                  _vars37139_
                                  _K37140_))))
                            (___kont4284842849_
                             (lambda (_L37367_ _L37369_)
                               (let ()
                                 (declare (not safe))
                                 (_loop36850_ _L37367_ _vars37139_ _K37140_))))
                            (___kont4285042851_
                             (lambda (_L37305_)
                               (if (find (lambda (_g3732037322_)
                                           (gx#bound-identifier=?
                                            _g3732037322_
                                            _L37305_))
                                         _vars37139_)
                                   (_K37140_ _vars37139_)
                                   (_K37140_
                                    (let ()
                                      (declare (not safe))
                                      (cons _L37305_ _vars37139_))))))
                            (___kont4285242853_
                             (lambda () (_K37140_ _vars37139_))))
                        (let* ((___match4298442985_
                                (lambda (_e3721237506_
                                         _hd3721137510_
                                         _tl3721037513_
                                         _e3721537516_
                                         _hd3721437520_
                                         _tl3721337523_)
                                  (let ((_L37526_ _hd3721437520_)
                                        (_L37528_ _hd3721137510_))
                                    (if (or (gx#stx-eq? 'values: _L37528_)
                                            (gx#stx-eq? 'vector: _L37528_))
                                        (___kont4284242843_ _L37526_ _L37528_)
                                        (if (gx#stx-datum? _hd3721137510_)
                                            (let ((_e3722037459_
                                                   (gx#stx-e _hd3721137510_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (equal? _e3722037459_
                                                            'struct:))
                                                  (___kont4285242853_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e3722037459_
                                                                'class:))
                                                      (___kont4285242853_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e3722037459_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'apply:))
                  (___kont4285242853_)
                  (if (let ()
                        (declare (not safe))
                        (equal? _e3722037459_ 'var:))
                      (___kont4285042851_ _hd3721437520_)
                      (___kont4285242853_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (___kont4285242853_))))))
                               (___match4287842879_
                                (lambda (_e3716737770_
                                         _hd3716637774_
                                         _tl3716537777_)
                                  (let ((_L37780_ _tl3716537777_)
                                        (_L37782_ _hd3716637774_))
                                    (if (or (gx#stx-eq? 'and: _L37782_)
                                            (gx#stx-eq? 'or: _L37782_))
                                        (___kont4283242833_ _L37780_ _L37782_)
                                        (if (gx#stx-datum? _hd3716637774_)
                                            (let ((_e3717237735_
                                                   (gx#stx-e _hd3716637774_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (equal? _e3717237735_
                                                            'not:))
                                                  (if (gx#stx-pair?
                                                       _tl3716537777_)
                                                      (let ((_e3717537739_
                                                             (gx#syntax-e
                                                              _tl3716537777_)))
                                                        (let ((_tl3717337746_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3717537739_)))
                      (_hd3717437743_
                       (let () (declare (not safe)) (##car _e3717537739_))))
                  (if (gx#stx-null? _tl3717337746_)
                      (___kont4283442835_ _hd3717437743_)
                      (___kont4285242853_))))
              (___kont4285242853_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e3717237735_
                                                                'cons:))
                                                      (if (gx#stx-pair?
                                                           _tl3716537777_)
                                                          (let ((_e3718437675_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3716537777_)))
                    (let ((_tl3718237682_
                           (let () (declare (not safe)) (##cdr _e3718437675_)))
                          (_hd3718337679_
                           (let ()
                             (declare (not safe))
                             (##car _e3718437675_))))
                      (if (gx#stx-pair? _tl3718237682_)
                          (let ((_e3718737685_ (gx#syntax-e _tl3718237682_)))
                            (let ((_tl3718537692_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3718737685_)))
                                  (_hd3718637689_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3718737685_))))
                              (if (gx#stx-null? _tl3718537692_)
                                  (___kont4283642837_
                                   _hd3718637689_
                                   _hd3718337679_)
                                  (___kont4285242853_))))
                          (if (gx#stx-null? _tl3718237682_)
                              (___match4298442985_
                               _e3716737770_
                               _hd3716637774_
                               _tl3716537777_
                               _e3718437675_
                               _hd3718337679_
                               _tl3718237682_)
                              (___kont4285242853_)))))
                  (___kont4285242853_))
              (if (let () (declare (not safe)) (equal? _e3717237735_ 'splice:))
                  (if (gx#stx-pair? _tl3716537777_)
                      (let ((_e3719637611_ (gx#syntax-e _tl3716537777_)))
                        (let ((_tl3719437618_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3719637611_)))
                              (_hd3719537615_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3719637611_))))
                          (if (gx#stx-pair? _tl3719437618_)
                              (let ((_e3719937621_
                                     (gx#syntax-e _tl3719437618_)))
                                (let ((_tl3719737628_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3719937621_)))
                                      (_hd3719837625_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3719937621_))))
                                  (if (gx#stx-null? _tl3719737628_)
                                      (___kont4283842839_
                                       _hd3719837625_
                                       _hd3719537615_)
                                      (___kont4285242853_))))
                              (if (gx#stx-null? _tl3719437618_)
                                  (___match4298442985_
                                   _e3716737770_
                                   _hd3716637774_
                                   _tl3716537777_
                                   _e3719637611_
                                   _hd3719537615_
                                   _tl3719437618_)
                                  (___kont4285242853_)))))
                      (___kont4285242853_))
                  (if (let ()
                        (declare (not safe))
                        (equal? _e3717237735_ 'box:))
                      (if (gx#stx-pair? _tl3716537777_)
                          (let ((_e3720737566_ (gx#syntax-e _tl3716537777_)))
                            (let ((_tl3720537573_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3720737566_)))
                                  (_hd3720637570_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3720737566_))))
                              (if (gx#stx-null? _tl3720537573_)
                                  (___kont4284042841_ _hd3720637570_)
                                  (___kont4285242853_))))
                          (___kont4285242853_))
                      (if (gx#stx-pair? _tl3716537777_)
                          (let ((_e3721537516_ (gx#syntax-e _tl3716537777_)))
                            (let ((_tl3721337523_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3721537516_)))
                                  (_hd3721437520_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3721537516_))))
                              (if (gx#stx-null? _tl3721337523_)
                                  (___match4298442985_
                                   _e3716737770_
                                   _hd3716637774_
                                   _tl3716537777_
                                   _e3721537516_
                                   _hd3721437520_
                                   _tl3721337523_)
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e3717237735_ 'struct:))
                                      (if (gx#stx-pair? _tl3721337523_)
                                          (let ((_e3722637473_
                                                 (gx#syntax-e _tl3721337523_)))
                                            (let ((_tl3722437480_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3722637473_)))
                                                  (_hd3722537477_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3722637473_))))
                                              (if (gx#stx-null? _tl3722437480_)
                                                  (___kont4284442845_
                                                   _hd3722537477_)
                                                  (___kont4285242853_))))
                                          (___kont4285242853_))
                                      (if (let ()
                                            (declare (not safe))
                                            (equal? _e3717237735_ 'class:))
                                          (if (gx#stx-pair? _tl3721337523_)
                                              (let ((_e3723737416_
                                                     (gx#syntax-e
                                                      _tl3721337523_)))
                                                (let ((_tl3723537423_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3723737416_)))
                                                      (_hd3723637420_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3723737416_))))
                                                  (if (gx#stx-null?
                                                       _tl3723537423_)
                                                      (___kont4284642847_
                                                       _hd3723637420_)
                                                      (___kont4285242853_))))
                                              (___kont4285242853_))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e3717237735_ 'apply:))
                                              (if (gx#stx-pair? _tl3721337523_)
                                                  (let ((_e3724937357_
                                                         (gx#syntax-e
                                                          _tl3721337523_)))
                                                    (let ((_tl3724737364_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3724937357_)))
                                                          (_hd3724837361_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3724937357_))))
                                                      (if (gx#stx-null?
                                                           _tl3724737364_)
                                                          (___kont4284842849_
                                                           _hd3724837361_
                                                           _hd3721437520_)
                                                          (___kont4285242853_))))
                                                  (___kont4285242853_))
                                              (___kont4285242853_)))))))
                          (___kont4285242853_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _tl3716537777_)
                                                (let ((_e3721537516_
                                                       (gx#syntax-e
                                                        _tl3716537777_)))
                                                  (let ((_tl3721337523_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3721537516_)))
                                                        (_hd3721437520_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3721537516_))))
                                                    (if (gx#stx-null?
                                                         _tl3721337523_)
                                                        (___match4298442985_
                                                         _e3716737770_
                                                         _hd3716637774_
                                                         _tl3716537777_
                                                         _e3721537516_
                                                         _hd3721437520_
                                                         _tl3721337523_)
                                                        (___kont4285242853_))))
                                                (___kont4285242853_))))))))
                          (if (gx#stx-pair? ___stx4282742828_)
                              (let ((_e3715837869_
                                     (gx#syntax-e ___stx4282742828_)))
                                (let ((_tl3715637876_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3715837869_)))
                                      (_hd3715737873_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3715837869_))))
                                  (if (gx#stx-datum? _hd3715737873_)
                                      (let ((_e3715937879_
                                             (gx#stx-e _hd3715737873_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e3715937879_ '?:))
                                            (if (gx#stx-pair? _tl3715637876_)
                                                (let ((_e3716237883_
                                                       (gx#syntax-e
                                                        _tl3715637876_)))
                                                  (let ((_tl3716037890_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3716237883_)))
                                                        (_hd3716137887_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3716237883_))))
                                                    (___kont4283042831_
                                                     _tl3716037890_)))
                                                (___match4287842879_
                                                 _e3715837869_
                                                 _hd3715737873_
                                                 _tl3715637876_))
                                            (___match4287842879_
                                             _e3715837869_
                                             _hd3715737873_
                                             _tl3715637876_)))
                                      (___match4287842879_
                                       _e3715837869_
                                       _hd3715737873_
                                       _tl3715637876_))))
                              (___kont4285242853_)))))))
                 (_loop-vector36852_
                  (lambda (_body37013_ _vars37015_ _K37016_)
                    (let* ((___stx4308543086_ _body37013_)
                           (_g3701937042_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4308543086_))))
                      (let ((___kont4308843089_
                             (lambda (_L37119_)
                               (let ()
                                 (declare (not safe))
                                 (_loop-list36853_
                                  _L37119_
                                  _vars37015_
                                  _K37016_))))
                            (___kont4309043091_
                             (lambda (_L37073_)
                               (let ()
                                 (declare (not safe))
                                 (_loop36850_
                                  _L37073_
                                  _vars37015_
                                  _K37016_)))))
                        (if (gx#stx-pair? ___stx4308543086_)
                            (let ((_e3702437095_
                                   (gx#syntax-e ___stx4308543086_)))
                              (let ((_tl3702237102_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3702437095_)))
                                    (_hd3702337099_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3702437095_))))
                                (if (gx#stx-datum? _hd3702337099_)
                                    (let ((_e3702537105_
                                           (gx#stx-e _hd3702337099_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (equal? _e3702537105_ 'simple:))
                                          (if (gx#stx-pair? _tl3702237102_)
                                              (let ((_e3702837109_
                                                     (gx#syntax-e
                                                      _tl3702237102_)))
                                                (let ((_tl3702637116_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3702837109_)))
                                                      (_hd3702737113_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3702837109_))))
                                                  (if (gx#stx-null?
                                                       _tl3702637116_)
                                                      (___kont4308843089_
                                                       _hd3702737113_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g3701937042_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3701937042_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e3702537105_ 'list:))
                                              (if (gx#stx-pair? _tl3702237102_)
                                                  (let ((_e3703637063_
                                                         (gx#syntax-e
                                                          _tl3702237102_)))
                                                    (let ((_tl3703437070_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3703637063_)))
                                                          (_hd3703537067_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3703637063_))))
                                                      (if (gx#stx-null?
                                                           _tl3703437070_)
                                                          (___kont4309043091_
                                                           _hd3703537067_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3701937042_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3701937042_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g3701937042_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3701937042_)))))
                            (let () (declare (not safe)) (_g3701937042_)))))))
                 (_loop-list36853_
                  (lambda (_rest36943_ _vars36945_ _K36946_)
                    (let* ((___stx4313543136_ _rest36943_)
                           (_g3694936961_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4313543136_))))
                      (let ((___kont4313843139_
                             (lambda (_L36989_ _L36991_)
                               (let ((__tmp44636
                                      (lambda (_g3700337005_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop-list36853_
                                           _L36989_
                                           _g3700337005_
                                           _K36946_)))))
                                 (declare (not safe))
                                 (_loop36850_
                                  _L36991_
                                  _vars36945_
                                  __tmp44636))))
                            (___kont4314043141_
                             (lambda () (_K36946_ _vars36945_))))
                        (if (gx#stx-pair? ___stx4313543136_)
                            (let ((_e3695536979_
                                   (gx#syntax-e ___stx4313543136_)))
                              (let ((_tl3695336986_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3695536979_)))
                                    (_hd3695436983_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3695536979_))))
                                (___kont4313843139_
                                 _tl3695336986_
                                 _hd3695436983_)))
                            (___kont4314043141_))))))
                 (_loop-class-list36854_
                  (lambda (_rest36856_ _vars36858_ _K36859_)
                    (let* ((___stx4315143152_ _rest36856_)
                           (_g3686236877_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4315143152_))))
                      (let ((___kont4315443155_
                             (lambda (_L36915_ _L36917_)
                               (let ((__tmp44637
                                      (lambda (_g3693336935_)
                                        (let ()
                                          (declare (not safe))
                                          (_loop-class-list36854_
                                           _L36915_
                                           _g3693336935_
                                           _K36859_)))))
                                 (declare (not safe))
                                 (_loop36850_
                                  _L36917_
                                  _vars36858_
                                  __tmp44637))))
                            (___kont4315643157_
                             (lambda () (_K36859_ _vars36858_))))
                        (if (gx#stx-pair? ___stx4315143152_)
                            (let ((_e3686836895_
                                   (gx#syntax-e ___stx4315143152_)))
                              (let ((_tl3686636902_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3686836895_)))
                                    (_hd3686736899_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3686836895_))))
                                (if (gx#stx-pair? _tl3686636902_)
                                    (let ((_e3687136905_
                                           (gx#syntax-e _tl3686636902_)))
                                      (let ((_tl3686936912_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3687136905_)))
                                            (_hd3687036909_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3687136905_))))
                                        (___kont4315443155_
                                         _tl3686936912_
                                         _hd3687036909_)))
                                    (___kont4315643157_))))
                            (___kont4315643157_)))))))
          (let ()
            (declare (not safe))
            (_loop36850_ _ptree36847_ '() values)))))
    (define |gerbil/core/match[1]#generate-match1|
      (lambda (_stx33808_ _tgt33810_ _ptree33811_ _K33812_ _E33813_)
        (letrec ((_generate133815_
                  (lambda (_tgt35060_ _ptree35062_ _K35063_ _E35064_)
                    (let* ((_g3506635074_
                            (lambda (_g3506735070_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g3506735070_)))
                           (_g3506536843_
                            (lambda (_g3506735078_)
                              ((lambda (_L35081_)
                                 (let ()
                                   (let* ((___stx4338743388_ _ptree35062_)
                                          (_g3510835250_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx4338743388_))))
                                     (let ((___kont4339043391_
                                            (lambda (_L36558_ _L36560_)
                                              (let* ((___stx4330543306_
                                                      _L36558_)
                                                     (_g3657736612_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4330543306_))))
                                                (let ((___kont4330843309_
                                                       (lambda ()
                                                         (let ((__tmp44638
                                                                (let ((__tmp44641
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp44644 (gx#datum->syntax '#f '?))
                                     (__tmp44642
                                      (let ((__tmp44643
                                             (let ()
                                               (declare (not safe))
                                               (cons _L35081_ '()))))
                                        (declare (not safe))
                                        (cons _L36560_ __tmp44643))))
                                 (declare (not safe))
                                 (cons __tmp44644 __tmp44642)))
                              (__tmp44639
                               (let ((__tmp44640
                                      (let ()
                                        (declare (not safe))
                                        (cons _E35064_ '()))))
                                 (declare (not safe))
                                 (cons _K35063_ __tmp44640))))
                          (declare (not safe))
                          (cons __tmp44641 __tmp44639))))
                   (declare (not safe))
                   (cons 'if __tmp44638))))
              (___kont4331043311_
               (lambda (_L36813_)
                 (let ((__tmp44645
                        (let ((__tmp44649
                               (let ((__tmp44652 (gx#datum->syntax '#f '?))
                                     (__tmp44650
                                      (let ((__tmp44651
                                             (let ()
                                               (declare (not safe))
                                               (cons _L35081_ '()))))
                                        (declare (not safe))
                                        (cons _L36560_ __tmp44651))))
                                 (declare (not safe))
                                 (cons __tmp44652 __tmp44650)))
                              (__tmp44646
                               (let ((__tmp44648
                                      (let ()
                                        (declare (not safe))
                                        (_generate133815_
                                         _tgt35060_
                                         _L36813_
                                         _K35063_
                                         _E35064_)))
                                     (__tmp44647
                                      (let ()
                                        (declare (not safe))
                                        (cons _E35064_ '()))))
                                 (declare (not safe))
                                 (cons __tmp44648 __tmp44647))))
                          (declare (not safe))
                          (cons __tmp44649 __tmp44646))))
                   (declare (not safe))
                   (cons 'if __tmp44645))))
              (___kont4331243313_
               (lambda (_L36751_)
                 (let* ((_g3676536773_
                         (lambda (_g3676636769_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g3676636769_)))
                        (_g3676436792_
                         (lambda (_g3676636777_)
                           ((lambda (_L36780_)
                              (let ()
                                (let ((__tmp44653
                                       (let ((__tmp44660
                                              (let ((__tmp44661
                                                     (let ((__tmp44662
                                                            (let ((__tmp44663
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp44664
                                  (let ()
                                    (declare (not safe))
                                    (cons _L35081_ '()))))
                             (declare (not safe))
                             (cons _L36560_ __tmp44664))))
                      (declare (not safe))
                      (cons __tmp44663 '()))))
               (declare (not safe))
               (cons _L36780_ __tmp44662))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp44661 '())))
                                             (__tmp44654
                                              (let ((__tmp44655
                                                     (let ((__tmp44656
                                                            (let ((__tmp44657
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp44659
                                  (let ()
                                    (declare (not safe))
                                    (_generate133815_
                                     _L36780_
                                     _L36751_
                                     _K35063_
                                     _E35064_)))
                                 (__tmp44658
                                  (let ()
                                    (declare (not safe))
                                    (cons _E35064_ '()))))
                             (declare (not safe))
                             (cons __tmp44659 __tmp44658))))
                      (declare (not safe))
                      (cons _L36780_ __tmp44657))))
               (declare (not safe))
               (cons 'if __tmp44656))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp44655 '()))))
                                         (declare (not safe))
                                         (cons __tmp44660 __tmp44654))))
                                  (declare (not safe))
                                  (cons 'let __tmp44653))))
                            _g3676636777_)))
                        (__tmp44665 (gx#genident 'e)))
                   (declare (not safe))
                   (_g3676436792_ __tmp44665))))
              (___kont4331443315_
               (lambda (_L36667_ _L36669_)
                 (let* ((_g3668936697_
                         (lambda (_g3669036693_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g3669036693_)))
                        (_g3668836716_
                         (lambda (_g3669036701_)
                           ((lambda (_L36704_)
                              (let ()
                                (let ((__tmp44666
                                       (let ((__tmp44678
                                              (let ((__tmp44681
                                                     (gx#datum->syntax '#f '?))
                                                    (__tmp44679
                                                     (let ((__tmp44680
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L35081_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L36560_ __tmp44680))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp44681 __tmp44679)))
                                             (__tmp44667
                                              (let ((__tmp44669
                                                     (let ((__tmp44670
                                                            (let ((__tmp44673
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp44674
                                  (let ((__tmp44675
                                         (let ((__tmp44676
                                                (let ((__tmp44677
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L35081_ '()))))
                                                  (declare (not safe))
                                                  (cons _L36669_ __tmp44677))))
                                           (declare (not safe))
                                           (cons __tmp44676 '()))))
                                    (declare (not safe))
                                    (cons _L36704_ __tmp44675))))
                             (declare (not safe))
                             (cons __tmp44674 '())))
                          (__tmp44671
                           (let ((__tmp44672
                                  (let ()
                                    (declare (not safe))
                                    (_generate133815_
                                     _L36704_
                                     _L36667_
                                     _K35063_
                                     _E35064_))))
                             (declare (not safe))
                             (cons __tmp44672 '()))))
                      (declare (not safe))
                      (cons __tmp44673 __tmp44671))))
               (declare (not safe))
               (cons 'let __tmp44670)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp44668
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E35064_ '()))))
                                                (declare (not safe))
                                                (cons __tmp44669 __tmp44668))))
                                         (declare (not safe))
                                         (cons __tmp44678 __tmp44667))))
                                  (declare (not safe))
                                  (cons 'if __tmp44666))))
                            _g3669036701_)))
                        (__tmp44682 (gx#genident 'e)))
                   (declare (not safe))
                   (_g3668836716_ __tmp44682)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_g3657436824_
                                                         (lambda ()
                                                           (if (gx#stx-pair?
                                                                ___stx4330543306_)
                                                               (let ((_e3658236803_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e ___stx4330543306_)))
                         (let ((_tl3658036810_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3658236803_)))
                               (_hd3658136807_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3658236803_))))
                           (if (gx#stx-null? _tl3658036810_)
                               (___kont4331043311_ _hd3658136807_)
                               (if (gx#stx-datum? _hd3658136807_)
                                   (let ((_e3658736737_
                                          (gx#stx-e _hd3658136807_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _e3658736737_ '=>:))
                                         (if (gx#stx-pair? _tl3658036810_)
                                             (let ((_e3659036741_
                                                    (gx#syntax-e
                                                     _tl3658036810_)))
                                               (let ((_tl3658836748_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e3659036741_)))
                                                     (_hd3658936745_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e3659036741_))))
                                                 (if (gx#stx-null?
                                                      _tl3658836748_)
                                                     (___kont4331243313_
                                                      _hd3658936745_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g3657736612_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g3657736612_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (equal? _e3658736737_ '::))
                                             (if (gx#stx-pair? _tl3658036810_)
                                                 (let ((_e3659936633_
                                                        (gx#syntax-e
                                                         _tl3658036810_)))
                                                   (let ((_tl3659736640_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e3659936633_)))
                                                         (_hd3659836637_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e3659936633_))))
                                                     (if (gx#stx-pair?
                                                          _tl3659736640_)
                                                         (let ((_e3660236643_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3659736640_)))
                   (let ((_tl3660036650_
                          (let () (declare (not safe)) (##cdr _e3660236643_)))
                         (_hd3660136647_
                          (let () (declare (not safe)) (##car _e3660236643_))))
                     (if (gx#stx-datum? _hd3660136647_)
                         (let ((_e3660336653_ (gx#stx-e _hd3660136647_)))
                           (if (let ()
                                 (declare (not safe))
                                 (equal? _e3660336653_ '=>:))
                               (if (gx#stx-pair? _tl3660036650_)
                                   (let ((_e3660636657_
                                          (gx#syntax-e _tl3660036650_)))
                                     (let ((_tl3660436664_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e3660636657_)))
                                           (_hd3660536661_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e3660636657_))))
                                       (if (gx#stx-null? _tl3660436664_)
                                           (___kont4331443315_
                                            _hd3660536661_
                                            _hd3659836637_)
                                           (let ()
                                             (declare (not safe))
                                             (_g3657736612_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g3657736612_)))
                               (let () (declare (not safe)) (_g3657736612_))))
                         (let () (declare (not safe)) (_g3657736612_)))))
                 (let () (declare (not safe)) (_g3657736612_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g3657736612_)))
                                             (let ()
                                               (declare (not safe))
                                               (_g3657736612_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g3657736612_))))))
                       (let () (declare (not safe)) (_g3657736612_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-null?
                                                         ___stx4330543306_)
                                                        (___kont4330843309_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g3657436824_))))))))
                                           (___kont4339243393_
                                            (lambda (_L36455_)
                                              (let* ((___stx4328943290_
                                                      _L36455_)
                                                     (_g3646836480_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4328943290_))))
                                                (let ((___kont4329243293_
                                                       (lambda (_L36508_
                                                                _L36510_)
                                                         (let ((__tmp44683
                                                                (let ((__tmp44684
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'and: _L36508_))))
                          (declare (not safe))
                          (_generate133815_
                           _tgt35060_
                           __tmp44684
                           _K35063_
                           _E35064_))))
                   (declare (not safe))
                   (_generate133815_
                    _tgt35060_
                    _L36510_
                    __tmp44683
                    _E35064_))))
              (___kont4329443295_ (lambda () _K35063_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4328943290_)
                                                      (let ((_e3647436498_
                                                             (gx#syntax-e
                                                              ___stx4328943290_)))
                                                        (let ((_tl3647236505_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3647436498_)))
                      (_hd3647336502_
                       (let () (declare (not safe)) (##car _e3647436498_))))
                  (___kont4329243293_ _tl3647236505_ _hd3647336502_)))
              (___kont4329443295_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4339443395_
                                            (lambda (_L36362_)
                                              (let* ((___stx4327343274_
                                                      _L36362_)
                                                     (_g3637536387_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4327343274_))))
                                                (let ((___kont4327643277_
                                                       (lambda (_L36415_
                                                                _L36417_)
                                                         (let ((__tmp44685
                                                                (let ((__tmp44686
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons 'or: _L36415_))))
                          (declare (not safe))
                          (_generate133815_
                           _tgt35060_
                           __tmp44686
                           _K35063_
                           _E35064_))))
                   (declare (not safe))
                   (_generate133815_
                    _tgt35060_
                    _L36417_
                    _K35063_
                    __tmp44685))))
              (___kont4327843279_ (lambda () _E35064_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4327343274_)
                                                      (let ((_e3638136405_
                                                             (gx#syntax-e
                                                              ___stx4327343274_)))
                                                        (let ((_tl3637936412_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3638136405_)))
                      (_hd3638036409_
                       (let () (declare (not safe)) (##car _e3638136405_))))
                  (___kont4327643277_ _tl3637936412_ _hd3638036409_)))
              (___kont4327843279_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4339643397_
                                            (lambda (_L36327_)
                                              (let ()
                                                (declare (not safe))
                                                (_generate133815_
                                                 _tgt35060_
                                                 _L36327_
                                                 _E35064_
                                                 _K35063_))))
                                           (___kont4339843399_
                                            (lambda (_L36209_ _L36211_)
                                              (let* ((_g3622836243_
                                                      (lambda (_g3622936239_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g3622936239_)))
                                                     (_g3622736292_
                                                      (lambda (_g3622936247_)
                                                        (if (gx#stx-pair?
                                                             _g3622936247_)
                                                            (let ((_e3623436250_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _g3622936247_)))
                      (let ((_hd3623336254_
                             (let ()
                               (declare (not safe))
                               (##car _e3623436250_)))
                            (_tl3623236257_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3623436250_))))
                        (if (gx#stx-pair? _tl3623236257_)
                            (let ((_e3623736260_ (gx#syntax-e _tl3623236257_)))
                              (let ((_hd3623636264_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3623736260_)))
                                    (_tl3623536267_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3623736260_))))
                                (if (gx#stx-null? _tl3623536267_)
                                    ((lambda (_L36270_ _L36272_)
                                       (let ()
                                         (let ((__tmp44687
                                                (let ((__tmp44725
                                                       (let ((__tmp44727
                                                              (gx#datum->syntax
                                                               '#f
                                                               '##pair?))
                                                             (__tmp44726
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L35081_ '()))))
                 (declare (not safe))
                 (cons __tmp44727 __tmp44726)))
              (__tmp44688
               (let ((__tmp44690
                      (let ((_hd-pat36288_ (gx#stx-e _L36211_))
                            (_tl-pat36290_ (gx#stx-e _L36209_)))
                        (if (and (let ()
                                   (declare (not safe))
                                   (equal? _hd-pat36288_ '(any:)))
                                 (let ()
                                   (declare (not safe))
                                   (equal? _tl-pat36290_ '(any:))))
                            _K35063_
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _tl-pat36290_ '(any:)))
                                (let ((__tmp44716
                                       (let ((__tmp44719
                                              (let ((__tmp44720
                                                     (let ((__tmp44721
                                                            (let ((__tmp44722
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp44724 (gx#datum->syntax '#f '##car))
                                 (__tmp44723
                                  (let ()
                                    (declare (not safe))
                                    (cons _L35081_ '()))))
                             (declare (not safe))
                             (cons __tmp44724 __tmp44723))))
                      (declare (not safe))
                      (cons __tmp44722 '()))))
               (declare (not safe))
               (cons _L36272_ __tmp44721))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp44720 '())))
                                             (__tmp44717
                                              (let ((__tmp44718
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate133815_
                                                        _L36272_
                                                        _L36211_
                                                        _K35063_
                                                        _E35064_))))
                                                (declare (not safe))
                                                (cons __tmp44718 '()))))
                                         (declare (not safe))
                                         (cons __tmp44719 __tmp44717))))
                                  (declare (not safe))
                                  (cons 'let __tmp44716))
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _hd-pat36288_ '(any:)))
                                    (let ((__tmp44707
                                           (let ((__tmp44710
                                                  (let ((__tmp44711
                                                         (let ((__tmp44712
                                                                (let ((__tmp44713
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp44715 (gx#datum->syntax '#f '##cdr))
                                     (__tmp44714
                                      (let ()
                                        (declare (not safe))
                                        (cons _L35081_ '()))))
                                 (declare (not safe))
                                 (cons __tmp44715 __tmp44714))))
                          (declare (not safe))
                          (cons __tmp44713 '()))))
                   (declare (not safe))
                   (cons _L36270_ __tmp44712))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp44711 '())))
                                                 (__tmp44708
                                                  (let ((__tmp44709
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate133815_
                                                            _L36270_
                                                            _L36209_
                                                            _K35063_
                                                            _E35064_))))
                                                    (declare (not safe))
                                                    (cons __tmp44709 '()))))
                                             (declare (not safe))
                                             (cons __tmp44710 __tmp44708))))
                                      (declare (not safe))
                                      (cons 'let __tmp44707))
                                    (let ((__tmp44691
                                           (let ((__tmp44695
                                                  (let ((__tmp44702
                                                         (let ((__tmp44703
                                                                (let ((__tmp44704
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp44706 (gx#datum->syntax '#f '##car))
                                     (__tmp44705
                                      (let ()
                                        (declare (not safe))
                                        (cons _L35081_ '()))))
                                 (declare (not safe))
                                 (cons __tmp44706 __tmp44705))))
                          (declare (not safe))
                          (cons __tmp44704 '()))))
                   (declare (not safe))
                   (cons _L36272_ __tmp44703)))
                (__tmp44696
                 (let ((__tmp44697
                        (let ((__tmp44698
                               (let ((__tmp44699
                                      (let ((__tmp44701
                                             (gx#datum->syntax '#f '##cdr))
                                            (__tmp44700
                                             (let ()
                                               (declare (not safe))
                                               (cons _L35081_ '()))))
                                        (declare (not safe))
                                        (cons __tmp44701 __tmp44700))))
                                 (declare (not safe))
                                 (cons __tmp44699 '()))))
                          (declare (not safe))
                          (cons _L36270_ __tmp44698))))
                   (declare (not safe))
                   (cons __tmp44697 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp44702
                                                          __tmp44696)))
                                                 (__tmp44692
                                                  (let ((__tmp44693
                                                         (let ((__tmp44694
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_generate133815_
                           _L36270_
                           _L36209_
                           _K35063_
                           _E35064_))))
                   (declare (not safe))
                   (_generate133815_ _L36272_ _L36211_ __tmp44694 _E35064_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp44693 '()))))
                                             (declare (not safe))
                                             (cons __tmp44695 __tmp44692))))
                                      (declare (not safe))
                                      (cons 'let __tmp44691)))))))
                     (__tmp44689
                      (let () (declare (not safe)) (cons _E35064_ '()))))
                 (declare (not safe))
                 (cons __tmp44690 __tmp44689))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp44725
                                                        __tmp44688))))
                                           (declare (not safe))
                                           (cons 'if __tmp44687))))
                                     _hd3623636264_
                                     _hd3623336254_)
                                    (let ()
                                      (declare (not safe))
                                      (_g3622836243_ _g3622936247_)))))
                            (let ()
                              (declare (not safe))
                              (_g3622836243_ _g3622936247_)))))
                    (let ()
                      (declare (not safe))
                      (_g3622836243_ _g3622936247_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp44728
                                                      (list (gx#genident 'hd)
                                                            (gx#genident
                                                             'tl))))
                                                (declare (not safe))
                                                (_g3622736292_ __tmp44728))))
                                           (___kont4340043401_
                                            (lambda ()
                                              (let ((__tmp44729
                                                     (let ((__tmp44732
                                                            (let ((__tmp44734
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '##null?))
                          (__tmp44733
                           (let () (declare (not safe)) (cons _L35081_ '()))))
                      (declare (not safe))
                      (cons __tmp44734 __tmp44733)))
                   (__tmp44730
                    (let ((__tmp44731
                           (let () (declare (not safe)) (cons _E35064_ '()))))
                      (declare (not safe))
                      (cons _K35063_ __tmp44731))))
               (declare (not safe))
               (cons __tmp44732 __tmp44730))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'if __tmp44729))))
                                           (___kont4340243403_
                                            (lambda (_L36125_ _L36127_)
                                              (let ()
                                                (declare (not safe))
                                                (_generate-splice33817_
                                                 _tgt35060_
                                                 _L36127_
                                                 _L36125_
                                                 _K35063_
                                                 _E35064_))))
                                           (___kont4340443405_
                                            (lambda (_L36039_)
                                              (let* ((_g3605336061_
                                                      (lambda (_g3605436057_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g3605436057_)))
                                                     (_g3605236080_
                                                      (lambda (_g3605436065_)
                                                        ((lambda (_L36068_)
                                                           (let ()
                                                             (let ((__tmp44735
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp44748
                                   (let ((__tmp44750
                                          (gx#datum->syntax '#f '##box?))
                                         (__tmp44749
                                          (let ()
                                            (declare (not safe))
                                            (cons _L35081_ '()))))
                                     (declare (not safe))
                                     (cons __tmp44750 __tmp44749)))
                                  (__tmp44736
                                   (let ((__tmp44738
                                          (let ((__tmp44739
                                                 (let ((__tmp44742
                                                        (let ((__tmp44743
                                                               (let ((__tmp44744
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp44745
                                     (let ((__tmp44747
                                            (gx#datum->syntax '#f '##unbox))
                                           (__tmp44746
                                            (let ()
                                              (declare (not safe))
                                              (cons _L35081_ '()))))
                                       (declare (not safe))
                                       (cons __tmp44747 __tmp44746))))
                                (declare (not safe))
                                (cons __tmp44745 '()))))
                         (declare (not safe))
                         (cons _L36068_ __tmp44744))))
                  (declare (not safe))
                  (cons __tmp44743 '())))
               (__tmp44740
                (let ((__tmp44741
                       (let ()
                         (declare (not safe))
                         (_generate133815_
                          _L36068_
                          _L36039_
                          _K35063_
                          _E35064_))))
                  (declare (not safe))
                  (cons __tmp44741 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp44742
                                                         __tmp44740))))
                                            (declare (not safe))
                                            (cons 'let __tmp44739)))
                                         (__tmp44737
                                          (let ()
                                            (declare (not safe))
                                            (cons _E35064_ '()))))
                                     (declare (not safe))
                                     (cons __tmp44738 __tmp44737))))
                              (declare (not safe))
                              (cons __tmp44748 __tmp44736))))
                       (declare (not safe))
                       (cons 'if __tmp44735))))
                 _g3605436065_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp44751
                                                      (gx#genident 'e)))
                                                (declare (not safe))
                                                (_g3605236080_ __tmp44751))))
                                           (___kont4340643407_
                                            (lambda (_L35844_)
                                              (let* ((___stx4322343224_
                                                      _L35844_)
                                                     (_g3585935882_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4322343224_))))
                                                (let ((___kont4322643227_
                                                       (lambda (_L35959_)
                                                         (let* ((_g3597335981_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g3597435977_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g3597435977_)))
                        (_g3597236000_
                         (lambda (_g3597435985_)
                           ((lambda (_L35988_)
                              (let ()
                                (let ((__tmp44752
                                       (let ((__tmp44756
                                              (let ((__tmp44762
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##fx=))
                                                    (__tmp44757
                                                     (let ((__tmp44759
                                                            (let ((__tmp44761
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'values-count))
                          (__tmp44760
                           (let () (declare (not safe)) (cons _L35081_ '()))))
                      (declare (not safe))
                      (cons __tmp44761 __tmp44760)))
                   (__tmp44758
                    (let () (declare (not safe)) (cons _L35988_ '()))))
               (declare (not safe))
               (cons __tmp44759 __tmp44758))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp44762 __tmp44757)))
                                             (__tmp44753
                                              (let ((__tmp44755
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-simple-vector33818_
                                                        _tgt35060_
                                                        _L35959_
                                                        '0
                                                        _K35063_
                                                        _E35064_)))
                                                    (__tmp44754
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E35064_ '()))))
                                                (declare (not safe))
                                                (cons __tmp44755 __tmp44754))))
                                         (declare (not safe))
                                         (cons __tmp44756 __tmp44753))))
                                  (declare (not safe))
                                  (cons 'if __tmp44752))))
                            _g3597435985_)))
                        (__tmp44763 (gx#stx-length _L35959_)))
                   (declare (not safe))
                   (_g3597236000_ __tmp44763))))
              (___kont4322843229_
               (lambda (_L35913_)
                 (let ()
                   (declare (not safe))
                   (_generate-list-vector33819_
                    _tgt35060_
                    _L35913_
                    'values->list
                    _K35063_
                    _E35064_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4322343224_)
                                                      (let ((_e3586435935_
                                                             (gx#syntax-e
                                                              ___stx4322343224_)))
                                                        (let ((_tl3586235942_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3586435935_)))
                      (_hd3586335939_
                       (let () (declare (not safe)) (##car _e3586435935_))))
                  (if (gx#stx-datum? _hd3586335939_)
                      (let ((_e3586535945_ (gx#stx-e _hd3586335939_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _e3586535945_ 'simple:))
                            (if (gx#stx-pair? _tl3586235942_)
                                (let ((_e3586835949_
                                       (gx#syntax-e _tl3586235942_)))
                                  (let ((_tl3586635956_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3586835949_)))
                                        (_hd3586735953_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3586835949_))))
                                    (if (gx#stx-null? _tl3586635956_)
                                        (___kont4322643227_ _hd3586735953_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3585935882_)))))
                                (let () (declare (not safe)) (_g3585935882_)))
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _e3586535945_ 'list:))
                                (if (gx#stx-pair? _tl3586235942_)
                                    (let ((_e3587635903_
                                           (gx#syntax-e _tl3586235942_)))
                                      (let ((_tl3587435910_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3587635903_)))
                                            (_hd3587535907_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3587635903_))))
                                        (if (gx#stx-null? _tl3587435910_)
                                            (___kont4322843229_ _hd3587535907_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3585935882_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3585935882_)))
                                (let ()
                                  (declare (not safe))
                                  (_g3585935882_)))))
                      (let () (declare (not safe)) (_g3585935882_)))))
              (let () (declare (not safe)) (_g3585935882_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4340843409_
                                            (lambda (_L35649_)
                                              (let* ((___stx4317343174_
                                                      _L35649_)
                                                     (_g3566435687_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4317343174_))))
                                                (let ((___kont4317643177_
                                                       (lambda (_L35764_)
                                                         (let* ((_g3577835786_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g3577935782_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g3577935782_)))
                        (_g3577735805_
                         (lambda (_g3577935790_)
                           ((lambda (_L35793_)
                              (let ()
                                (let ((__tmp44764
                                       (let ((__tmp44779
                                              (let ((__tmp44781
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##vector?))
                                                    (__tmp44780
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L35081_ '()))))
                                                (declare (not safe))
                                                (cons __tmp44781 __tmp44780)))
                                             (__tmp44765
                                              (let ((__tmp44767
                                                     (let ((__tmp44768
                                                            (let ((__tmp44772
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp44778 (gx#datum->syntax '#f '##fx=))
                                 (__tmp44773
                                  (let ((__tmp44775
                                         (let ((__tmp44777
                                                (gx#datum->syntax
                                                 '#f
                                                 '##vector-length))
                                               (__tmp44776
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L35081_ '()))))
                                           (declare (not safe))
                                           (cons __tmp44777 __tmp44776)))
                                        (__tmp44774
                                         (let ()
                                           (declare (not safe))
                                           (cons _L35793_ '()))))
                                    (declare (not safe))
                                    (cons __tmp44775 __tmp44774))))
                             (declare (not safe))
                             (cons __tmp44778 __tmp44773)))
                          (__tmp44769
                           (let ((__tmp44771
                                  (let ()
                                    (declare (not safe))
                                    (_generate-simple-vector33818_
                                     _tgt35060_
                                     _L35764_
                                     '0
                                     _K35063_
                                     _E35064_)))
                                 (__tmp44770
                                  (let ()
                                    (declare (not safe))
                                    (cons _E35064_ '()))))
                             (declare (not safe))
                             (cons __tmp44771 __tmp44770))))
                      (declare (not safe))
                      (cons __tmp44772 __tmp44769))))
               (declare (not safe))
               (cons 'if __tmp44768)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp44766
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E35064_ '()))))
                                                (declare (not safe))
                                                (cons __tmp44767 __tmp44766))))
                                         (declare (not safe))
                                         (cons __tmp44779 __tmp44765))))
                                  (declare (not safe))
                                  (cons 'if __tmp44764))))
                            _g3577935790_)))
                        (__tmp44782 (gx#stx-length _L35764_)))
                   (declare (not safe))
                   (_g3577735805_ __tmp44782))))
              (___kont4317843179_
               (lambda (_L35718_)
                 (let ((__tmp44783
                        (let ((__tmp44787
                               (let ((__tmp44789
                                      (gx#datum->syntax '#f '##vector?))
                                     (__tmp44788
                                      (let ()
                                        (declare (not safe))
                                        (cons _L35081_ '()))))
                                 (declare (not safe))
                                 (cons __tmp44789 __tmp44788)))
                              (__tmp44784
                               (let ((__tmp44786
                                      (let ()
                                        (declare (not safe))
                                        (_generate-list-vector33819_
                                         _tgt35060_
                                         _L35718_
                                         'vector->list
                                         _K35063_
                                         _E35064_)))
                                     (__tmp44785
                                      (let ()
                                        (declare (not safe))
                                        (cons _E35064_ '()))))
                                 (declare (not safe))
                                 (cons __tmp44786 __tmp44785))))
                          (declare (not safe))
                          (cons __tmp44787 __tmp44784))))
                   (declare (not safe))
                   (cons 'if __tmp44783)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       ___stx4317343174_)
                                                      (let ((_e3566935740_
                                                             (gx#syntax-e
                                                              ___stx4317343174_)))
                                                        (let ((_tl3566735747_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e3566935740_)))
                      (_hd3566835744_
                       (let () (declare (not safe)) (##car _e3566935740_))))
                  (if (gx#stx-datum? _hd3566835744_)
                      (let ((_e3567035750_ (gx#stx-e _hd3566835744_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _e3567035750_ 'simple:))
                            (if (gx#stx-pair? _tl3566735747_)
                                (let ((_e3567335754_
                                       (gx#syntax-e _tl3566735747_)))
                                  (let ((_tl3567135761_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3567335754_)))
                                        (_hd3567235758_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3567335754_))))
                                    (if (gx#stx-null? _tl3567135761_)
                                        (___kont4317643177_ _hd3567235758_)
                                        (let ()
                                          (declare (not safe))
                                          (_g3566435687_)))))
                                (let () (declare (not safe)) (_g3566435687_)))
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _e3567035750_ 'list:))
                                (if (gx#stx-pair? _tl3566735747_)
                                    (let ((_e3568135708_
                                           (gx#syntax-e _tl3566735747_)))
                                      (let ((_tl3567935715_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3568135708_)))
                                            (_hd3568035712_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3568135708_))))
                                        (if (gx#stx-null? _tl3567935715_)
                                            (___kont4317843179_ _hd3568035712_)
                                            (let ()
                                              (declare (not safe))
                                              (_g3566435687_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3566435687_)))
                                (let ()
                                  (declare (not safe))
                                  (_g3566435687_)))))
                      (let () (declare (not safe)) (_g3566435687_)))))
              (let () (declare (not safe)) (_g3566435687_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont4341043411_
                                            (lambda (_L35600_ _L35602_)
                                              (let ((__tmp44790
                                                     (gx#stx-e _L35602_)))
                                                (declare (not safe))
                                                (_generate-struct33820_
                                                 __tmp44790
                                                 _tgt35060_
                                                 _L35600_
                                                 _K35063_
                                                 _E35064_))))
                                           (___kont4341243413_
                                            (lambda (_L35541_ _L35543_)
                                              (let ((__tmp44791
                                                     (gx#stx-e _L35543_)))
                                                (declare (not safe))
                                                (_generate-class33823_
                                                 __tmp44791
                                                 _tgt35060_
                                                 _L35541_
                                                 _K35063_
                                                 _E35064_))))
                                           (___kont4341443415_
                                            (lambda (_L35444_)
                                              (let* ((_g3545835466_
                                                      (lambda (_g3545935462_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g3545935462_)))
                                                     (_g3545735485_
                                                      (lambda (_g3545935470_)
                                                        ((lambda (_L35473_)
                                                           (let ()
                                                             (let ((__tmp44792
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp44795
                                   (let ((__tmp44796
                                          (let ((__tmp44797
                                                 (let ((__tmp44798
                                                        (let ((__tmp44800
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp44799
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L35444_ '()))))
                  (declare (not safe))
                  (cons __tmp44800 __tmp44799))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp44798 '()))))
                                            (declare (not safe))
                                            (cons _L35081_ __tmp44797))))
                                     (declare (not safe))
                                     (cons _L35473_ __tmp44796)))
                                  (__tmp44793
                                   (let ((__tmp44794
                                          (let ()
                                            (declare (not safe))
                                            (cons _E35064_ '()))))
                                     (declare (not safe))
                                     (cons _K35063_ __tmp44794))))
                              (declare (not safe))
                              (cons __tmp44795 __tmp44793))))
                       (declare (not safe))
                       (cons 'if __tmp44792))))
                 _g3545935470_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp44801
                                                      (let ((_e35489_
                                                             (gx#stx-e
                                                              _L35444_)))
                                                        (if (or (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (symbol? _e35489_))
                        (keyword? _e35489_)
                        (let () (declare (not safe)) (immediate? _e35489_)))
                    '##eq?
                    (if (let () (declare (not safe)) (number? _e35489_))
                        'eqv?
                        'equal?)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g3545735485_ __tmp44801))))
                                           (___kont4341643417_
                                            (lambda (_L35364_ _L35366_)
                                              (let* ((_g3538235390_
                                                      (lambda (_g3538335386_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g3538335386_)))
                                                     (_g3538135409_
                                                      (lambda (_g3538335394_)
                                                        ((lambda (_L35397_)
                                                           (let ()
                                                             (let ((__tmp44802
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp44805
                                   (let ((__tmp44806
                                          (let ((__tmp44807
                                                 (let ((__tmp44808
                                                        (let ((__tmp44809
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L35081_ '()))))
                  (declare (not safe))
                  (cons _L35366_ __tmp44809))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp44808 '()))))
                                            (declare (not safe))
                                            (cons _L35397_ __tmp44807))))
                                     (declare (not safe))
                                     (cons __tmp44806 '())))
                                  (__tmp44803
                                   (let ((__tmp44804
                                          (let ()
                                            (declare (not safe))
                                            (_generate133815_
                                             _L35397_
                                             _L35364_
                                             _K35063_
                                             _E35064_))))
                                     (declare (not safe))
                                     (cons __tmp44804 '()))))
                              (declare (not safe))
                              (cons __tmp44805 __tmp44803))))
                       (declare (not safe))
                       (cons 'let __tmp44802))))
                 _g3538335394_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp44810
                                                      (gx#genident 'e)))
                                                (declare (not safe))
                                                (_g3538135409_ __tmp44810))))
                                           (___kont4341843419_
                                            (lambda (_L35306_)
                                              (let ((__tmp44811
                                                     (let ((__tmp44813
                                                            (let ((__tmp44814
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp44815
                                  (let ()
                                    (declare (not safe))
                                    (cons _L35081_ '()))))
                             (declare (not safe))
                             (cons _L35306_ __tmp44815))))
                      (declare (not safe))
                      (cons __tmp44814 '())))
                   (__tmp44812
                    (let () (declare (not safe)) (cons _K35063_ '()))))
               (declare (not safe))
               (cons __tmp44813 __tmp44812))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'let __tmp44811))))
                                           (___kont4342043421_
                                            (lambda () _K35063_)))
                                       (if (gx#stx-pair? ___stx4338743388_)
                                           (let ((_e3511436534_
                                                  (gx#syntax-e
                                                   ___stx4338743388_)))
                                             (let ((_tl3511236541_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e3511436534_)))
                                                   (_hd3511336538_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e3511436534_))))
                                               (if (gx#stx-datum?
                                                    _hd3511336538_)
                                                   (let ((_e3511536544_
                                                          (gx#stx-e
                                                           _hd3511336538_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (equal? _e3511536544_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '?:))
                 (if (gx#stx-pair? _tl3511236541_)
                     (let ((_e3511836548_ (gx#syntax-e _tl3511236541_)))
                       (let ((_tl3511636555_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3511836548_)))
                             (_hd3511736552_
                              (let ()
                                (declare (not safe))
                                (##car _e3511836548_))))
                         (___kont4339043391_ _tl3511636555_ _hd3511736552_)))
                     (let () (declare (not safe)) (_g3510835250_)))
                 (if (let () (declare (not safe)) (equal? _e3511536544_ 'and:))
                     (___kont4339243393_ _tl3511236541_)
                     (if (let ()
                           (declare (not safe))
                           (equal? _e3511536544_ 'or:))
                         (___kont4339443395_ _tl3511236541_)
                         (if (let ()
                               (declare (not safe))
                               (equal? _e3511536544_ 'not:))
                             (if (gx#stx-pair? _tl3511236541_)
                                 (let ((_e3513636317_
                                        (gx#syntax-e _tl3511236541_)))
                                   (let ((_tl3513436324_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e3513636317_)))
                                         (_hd3513536321_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e3513636317_))))
                                     (if (gx#stx-null? _tl3513436324_)
                                         (___kont4339643397_ _hd3513536321_)
                                         (let ()
                                           (declare (not safe))
                                           (_g3510835250_)))))
                                 (let () (declare (not safe)) (_g3510835250_)))
                             (if (let ()
                                   (declare (not safe))
                                   (equal? _e3511536544_ 'cons:))
                                 (if (gx#stx-pair? _tl3511236541_)
                                     (let ((_e3514536189_
                                            (gx#syntax-e _tl3511236541_)))
                                       (let ((_tl3514336196_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e3514536189_)))
                                             (_hd3514436193_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e3514536189_))))
                                         (if (gx#stx-pair? _tl3514336196_)
                                             (let ((_e3514836199_
                                                    (gx#syntax-e
                                                     _tl3514336196_)))
                                               (let ((_tl3514636206_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e3514836199_)))
                                                     (_hd3514736203_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e3514836199_))))
                                                 (if (gx#stx-null?
                                                      _tl3514636206_)
                                                     (___kont4339843399_
                                                      _hd3514736203_
                                                      _hd3514436193_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g3510835250_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g3510835250_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_g3510835250_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _e3511536544_ 'null:))
                                     (if (gx#stx-null? _tl3511236541_)
                                         (___kont4340043401_)
                                         (let ()
                                           (declare (not safe))
                                           (_g3510835250_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _e3511536544_ 'splice:))
                                         (if (gx#stx-pair? _tl3511236541_)
                                             (let ((_e3516136105_
                                                    (gx#syntax-e
                                                     _tl3511236541_)))
                                               (let ((_tl3515936112_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e3516136105_)))
                                                     (_hd3516036109_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e3516136105_))))
                                                 (if (gx#stx-pair?
                                                      _tl3515936112_)
                                                     (let ((_e3516436115_
                                                            (gx#syntax-e
                                                             _tl3515936112_)))
                                                       (let ((_tl3516236122_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e3516436115_)))
                     (_hd3516336119_
                      (let () (declare (not safe)) (##car _e3516436115_))))
                 (if (gx#stx-null? _tl3516236122_)
                     (___kont4340243403_ _hd3516336119_ _hd3516036109_)
                     (let () (declare (not safe)) (_g3510835250_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g3510835250_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g3510835250_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (equal? _e3511536544_ 'box:))
                                             (if (gx#stx-pair? _tl3511236541_)
                                                 (let ((_e3517236029_
                                                        (gx#syntax-e
                                                         _tl3511236541_)))
                                                   (let ((_tl3517036036_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e3517236029_)))
                                                         (_hd3517136033_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e3517236029_))))
                                                     (if (gx#stx-null?
                                                          _tl3517036036_)
                                                         (___kont4340443405_
                                                          _hd3517136033_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_g3510835250_)))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g3510835250_)))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (equal? _e3511536544_
                                                           'values:))
                                                 (if (gx#stx-pair?
                                                      _tl3511236541_)
                                                     (let ((_e3518035834_
                                                            (gx#syntax-e
                                                             _tl3511236541_)))
                                                       (let ((_tl3517835841_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e3518035834_)))
                     (_hd3517935838_
                      (let () (declare (not safe)) (##car _e3518035834_))))
                 (if (gx#stx-null? _tl3517835841_)
                     (___kont4340643407_ _hd3517935838_)
                     (let () (declare (not safe)) (_g3510835250_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g3510835250_)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (equal? _e3511536544_
                                                               'vector:))
                                                     (if (gx#stx-pair?
                                                          _tl3511236541_)
                                                         (let ((_e3518835639_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3511236541_)))
                   (let ((_tl3518635646_
                          (let () (declare (not safe)) (##cdr _e3518835639_)))
                         (_hd3518735643_
                          (let () (declare (not safe)) (##car _e3518835639_))))
                     (if (gx#stx-null? _tl3518635646_)
                         (___kont4340843409_ _hd3518735643_)
                         (let () (declare (not safe)) (_g3510835250_)))))
                 (let () (declare (not safe)) (_g3510835250_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (equal? _e3511536544_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'struct:))
                 (if (gx#stx-pair? _tl3511236541_)
                     (let ((_e3519735580_ (gx#syntax-e _tl3511236541_)))
                       (let ((_tl3519535587_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3519735580_)))
                             (_hd3519635584_
                              (let ()
                                (declare (not safe))
                                (##car _e3519735580_))))
                         (if (gx#stx-pair? _tl3519535587_)
                             (let ((_e3520035590_
                                    (gx#syntax-e _tl3519535587_)))
                               (let ((_tl3519835597_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3520035590_)))
                                     (_hd3519935594_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3520035590_))))
                                 (if (gx#stx-null? _tl3519835597_)
                                     (___kont4341043411_
                                      _hd3519935594_
                                      _hd3519635584_)
                                     (let ()
                                       (declare (not safe))
                                       (_g3510835250_)))))
                             (let () (declare (not safe)) (_g3510835250_)))))
                     (let () (declare (not safe)) (_g3510835250_)))
                 (if (let ()
                       (declare (not safe))
                       (equal? _e3511536544_ 'class:))
                     (if (gx#stx-pair? _tl3511236541_)
                         (let ((_e3520935521_ (gx#syntax-e _tl3511236541_)))
                           (let ((_tl3520735528_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e3520935521_)))
                                 (_hd3520835525_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e3520935521_))))
                             (if (gx#stx-pair? _tl3520735528_)
                                 (let ((_e3521235531_
                                        (gx#syntax-e _tl3520735528_)))
                                   (let ((_tl3521035538_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e3521235531_)))
                                         (_hd3521135535_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e3521235531_))))
                                     (if (gx#stx-null? _tl3521035538_)
                                         (___kont4341243413_
                                          _hd3521135535_
                                          _hd3520835525_)
                                         (let ()
                                           (declare (not safe))
                                           (_g3510835250_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_g3510835250_)))))
                         (let () (declare (not safe)) (_g3510835250_)))
                     (if (let ()
                           (declare (not safe))
                           (equal? _e3511536544_ 'datum:))
                         (if (gx#stx-pair? _tl3511236541_)
                             (let ((_e3522035434_
                                    (gx#syntax-e _tl3511236541_)))
                               (let ((_tl3521835441_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e3522035434_)))
                                     (_hd3521935438_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e3522035434_))))
                                 (if (gx#stx-null? _tl3521835441_)
                                     (___kont4341443415_ _hd3521935438_)
                                     (let ()
                                       (declare (not safe))
                                       (_g3510835250_)))))
                             (let () (declare (not safe)) (_g3510835250_)))
                         (if (let ()
                               (declare (not safe))
                               (equal? _e3511536544_ 'apply:))
                             (if (gx#stx-pair? _tl3511236541_)
                                 (let ((_e3522935344_
                                        (gx#syntax-e _tl3511236541_)))
                                   (let ((_tl3522735351_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e3522935344_)))
                                         (_hd3522835348_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e3522935344_))))
                                     (if (gx#stx-pair? _tl3522735351_)
                                         (let ((_e3523235354_
                                                (gx#syntax-e _tl3522735351_)))
                                           (let ((_tl3523035361_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e3523235354_)))
                                                 (_hd3523135358_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e3523235354_))))
                                             (if (gx#stx-null? _tl3523035361_)
                                                 (___kont4341643417_
                                                  _hd3523135358_
                                                  _hd3522835348_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g3510835250_)))))
                                         (let ()
                                           (declare (not safe))
                                           (_g3510835250_)))))
                                 (let () (declare (not safe)) (_g3510835250_)))
                             (if (let ()
                                   (declare (not safe))
                                   (equal? _e3511536544_ 'var:))
                                 (if (gx#stx-pair? _tl3511236541_)
                                     (let ((_e3524035296_
                                            (gx#syntax-e _tl3511236541_)))
                                       (let ((_tl3523835303_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e3524035296_)))
                                             (_hd3523935300_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e3524035296_))))
                                         (if (gx#stx-null? _tl3523835303_)
                                             (___kont4341843419_
                                              _hd3523935300_)
                                             (let ()
                                               (declare (not safe))
                                               (_g3510835250_)))))
                                     (let ()
                                       (declare (not safe))
                                       (_g3510835250_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _e3511536544_ 'any:))
                                     (if (gx#stx-null? _tl3511236541_)
                                         (___kont4342043421_)
                                         (let ()
                                           (declare (not safe))
                                           (_g3510835250_)))
                                     (let ()
                                       (declare (not safe))
                                       (_g3510835250_)))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g3510835250_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g3510835250_)))))))
                               _g3506735078_))))
                      (declare (not safe))
                      (_g3506536843_ _tgt35060_))))
                 (_generate-splice33817_
                  (lambda (_tgt34432_ _hd34434_ _rest34435_ _K34436_ _E34437_)
                    (let* ((_g3443934456_
                            (lambda (_g3444034452_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g3444034452_)))
                           (_g3443835056_
                            (lambda (_g3444034460_)
                              (if (gx#stx-pair/null? _g3444034460_)
                                  (let ((_g44816_
                                         (gx#syntax-split-splice
                                          _g3444034460_
                                          '0)))
                                    (begin
                                      (let ((_g44817_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g44816_)
                                                   (##vector-length _g44816_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g44817_ 2)))
                                            (error "Context expects 2 values"
                                                   _g44817_)))
                                      (let ((_target3444234463_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g44816_ 0)))
                                            (_tl3444434466_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g44816_ 1))))
                                        (if (gx#stx-null? _tl3444434466_)
                                            (letrec ((_loop3444534469_
                                                      (lambda (_hd3444334473_
                                                               _var3444934476_)
                                                        (if (gx#stx-pair?
                                                             _hd3444334473_)
                                                            (let ((_e3444634479_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd3444334473_)))
                      (let ((_lp-hd3444734483_
                             (let ()
                               (declare (not safe))
                               (##car _e3444634479_)))
                            (_lp-tl3444834486_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3444634479_))))
                        (let ((__tmp44899
                               (let ()
                                 (declare (not safe))
                                 (cons _lp-hd3444734483_ _var3444934476_))))
                          (declare (not safe))
                          (_loop3444534469_ _lp-tl3444834486_ __tmp44899))))
                    (let ((_var3445034489_ (reverse _var3444934476_)))
                      ((lambda (_L34493_)
                         (let ()
                           (let* ((_g3450934526_
                                   (lambda (_g3451034522_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g3451034522_)))
                                  (_g3450835044_
                                   (lambda (_g3451034530_)
                                     (if (gx#stx-pair/null? _g3451034530_)
                                         (let ((_g44818_
                                                (gx#syntax-split-splice
                                                 _g3451034530_
                                                 '0)))
                                           (begin
                                             (let ((_g44819_
                                                    (let ()
                                                      (declare (not safe))
                                                      (if (##values? _g44818_)
                                                          (##vector-length
                                                           _g44818_)
                                                          1))))
                                               (if (not (let ()
                                                          (declare (not safe))
                                                          (##fx= _g44819_ 2)))
                                                   (error "Context expects 2 values"
                                                          _g44819_)))
                                             (let ((_target3451234533_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g44818_
                                                       0)))
                                                   (_tl3451434536_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _g44818_
                                                       1))))
                                               (if (gx#stx-null?
                                                    _tl3451434536_)
                                                   (letrec ((_loop3451534539_
                                                             (lambda (_hd3451334543_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _var-r3451934546_)
                       (if (gx#stx-pair? _hd3451334543_)
                           (let ((_e3451634549_ (gx#syntax-e _hd3451334543_)))
                             (let ((_lp-hd3451734553_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e3451634549_)))
                                   (_lp-tl3451834556_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e3451634549_))))
                               (let ((__tmp44897
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd3451734553_
                                              _var-r3451934546_))))
                                 (declare (not safe))
                                 (_loop3451534539_
                                  _lp-tl3451834556_
                                  __tmp44897))))
                           (let ((_var-r3452034559_
                                  (reverse _var-r3451934546_)))
                             ((lambda (_L34563_)
                                (let ()
                                  (let* ((_g3458034597_
                                          (lambda (_g3458134593_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g3458134593_)))
                                         (_g3457935032_
                                          (lambda (_g3458134601_)
                                            (if (gx#stx-pair/null?
                                                 _g3458134601_)
                                                (let ((_g44820_
                                                       (gx#syntax-split-splice
                                                        _g3458134601_
                                                        '0)))
                                                  (begin
                                                    (let ((_g44821_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g44820_)
                         (##vector-length _g44820_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g44821_ 2)))
                  (error "Context expects 2 values" _g44821_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target3458334604_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g44820_
                                                              0)))
                                                          (_tl3458534607_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g44820_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl3458534607_)
                                                          (letrec ((_loop3458634610_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd3458434614_ _init3459034617_)
                              (if (gx#stx-pair? _hd3458434614_)
                                  (let ((_e3458734620_
                                         (gx#syntax-e _hd3458434614_)))
                                    (let ((_lp-hd3458834624_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3458734620_)))
                                          (_lp-tl3458934627_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3458734620_))))
                                      (let ((__tmp44894
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd3458834624_
                                                     _init3459034617_))))
                                        (declare (not safe))
                                        (_loop3458634610_
                                         _lp-tl3458934627_
                                         __tmp44894))))
                                  (let ((_init3459134630_
                                         (reverse _init3459034617_)))
                                    ((lambda (_L34634_)
                                       (let ()
                                         (let* ((_g3465134659_
                                                 (lambda (_g3465234655_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g3465234655_)))
                                                (_g3465035028_
                                                 (lambda (_g3465234663_)
                                                   ((lambda (_L34666_)
                                                      (let ()
                                                        (let* ((_g3467934687_
                                                                (lambda (_g3468034683_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g3468034683_)))
                       (_g3467835024_
                        (lambda (_g3468034691_)
                          ((lambda (_L34694_)
                             (let ()
                               (let* ((_g3470734715_
                                       (lambda (_g3470834711_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g3470834711_)))
                                      (_g3470635020_
                                       (lambda (_g3470834719_)
                                         ((lambda (_L34722_)
                                            (let ()
                                              (let* ((_g3473534743_
                                                      (lambda (_g3473634739_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g3473634739_)))
                                                     (_g3473435016_
                                                      (lambda (_g3473634747_)
                                                        ((lambda (_L34750_)
                                                           (let ()
                                                             (let* ((_g3476334771_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g3476434767_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g3476434767_)))
                            (_g3476235012_
                             (lambda (_g3476434775_)
                               ((lambda (_L34778_)
                                  (let ()
                                    (let* ((_g3479134799_
                                            (lambda (_g3479234795_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g3479234795_)))
                                           (_g3479035008_
                                            (lambda (_g3479234803_)
                                              ((lambda (_L34806_)
                                                 (let ()
                                                   (let* ((_g3481934827_
                                                           (lambda (_g3482034823_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g3482034823_)))
                                                          (_g3481835004_
                                                           (lambda (_g3482034831_)
                                                             ((lambda (_L34834_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g3484734855_
                                  (lambda (_g3484834851_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g3484834851_)))
                                 (_g3484634989_
                                  (lambda (_g3484834859_)
                                    ((lambda (_L34862_)
                                       (let ()
                                         (let* ((_g3487534883_
                                                 (lambda (_g3487634879_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g3487634879_)))
                                                (_g3487434977_
                                                 (lambda (_g3487634887_)
                                                   ((lambda (_L34890_)
                                                      (let ()
                                                        (let* ((_g3490334911_
                                                                (lambda (_g3490434907_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g3490434907_)))
                       (_g3490234973_
                        (lambda (_g3490434915_)
                          ((lambda (_L34918_)
                             (let ()
                               (let ()
                                 (let ((__tmp44870
                                        (gx#datum->syntax '#f 'letrec))
                                       (__tmp44822
                                        (let ((__tmp44827
                                               (let ((__tmp44862
                                                      (let ((__tmp44863
                                                             (let ((__tmp44864
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp44869 (gx#datum->syntax '#f 'lambda))
                                  (__tmp44865
                                   (let ((__tmp44867
                                          (let ((__tmp44868
                                                 (foldr (lambda (_g3494034943_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g3494134946_)
                  (let ()
                    (declare (not safe))
                    (cons _g3494034943_ _g3494134946_)))
                '()
                _L34493_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (cons _L34806_ __tmp44868)))
                                         (__tmp44866
                                          (let ()
                                            (declare (not safe))
                                            (cons _L34834_ '()))))
                                     (declare (not safe))
                                     (cons __tmp44867 __tmp44866))))
                              (declare (not safe))
                              (cons __tmp44869 __tmp44865))))
                       (declare (not safe))
                       (cons __tmp44864 '()))))
                (declare (not safe))
                (cons _L34694_ __tmp44863)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp44828
                                                      (let ((__tmp44853
                                                             (let ((__tmp44854
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp44855
                                   (let ((__tmp44861
                                          (gx#datum->syntax '#f 'lambda))
                                         (__tmp44856
                                          (let ((__tmp44858
                                                 (let ((__tmp44859
                                                        (let ((__tmp44860
                                                               (foldr (lambda (_g3493834949_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g3493934952_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g3493834949_ _g3493934952_)))
                              '()
                              _L34563_)))
                  (declare (not safe))
                  (cons _L34806_ __tmp44860))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L34778_ __tmp44859)))
                                                (__tmp44857
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L34918_ '()))))
                                            (declare (not safe))
                                            (cons __tmp44858 __tmp44857))))
                                     (declare (not safe))
                                     (cons __tmp44861 __tmp44856))))
                              (declare (not safe))
                              (cons __tmp44855 '()))))
                       (declare (not safe))
                       (cons _L34750_ __tmp44854)))
                    (__tmp44829
                     (let ((__tmp44830
                            (let ((__tmp44831
                                   (let ((__tmp44832
                                          (let ((__tmp44852
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp44833
                                                 (let ((__tmp44850
                                                        (let ((__tmp44851
                                                               (foldr (lambda (_g3493634955_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g3493734958_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g3493634955_ _g3493734958_)))
                              '()
                              _L34563_)))
                  (declare (not safe))
                  (cons _L34806_ __tmp44851)))
               (__tmp44834
                (let ((__tmp44835
                       (let ((__tmp44849 (gx#datum->syntax '#f 'if))
                             (__tmp44836
                              (let ((__tmp44846
                                     (let ((__tmp44848
                                            (gx#datum->syntax '#f 'pair?))
                                           (__tmp44847
                                            (let ()
                                              (declare (not safe))
                                              (cons _L34806_ '()))))
                                       (declare (not safe))
                                       (cons __tmp44848 __tmp44847)))
                                    (__tmp44837
                                     (let ((__tmp44839
                                            (let ((__tmp44840
                                                   (let ((__tmp44843
                                                          (let ((__tmp44845
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f '##car))
                        (__tmp44844
                         (let () (declare (not safe)) (cons _L34806_ '()))))
                    (declare (not safe))
                    (cons __tmp44845 __tmp44844)))
                 (__tmp44841
                  (let ((__tmp44842
                         (foldr (lambda (_g3493434961_ _g3493534964_)
                                  (let ()
                                    (declare (not safe))
                                    (cons _g3493434961_ _g3493534964_)))
                                '()
                                _L34563_)))
                    (declare (not safe))
                    (cons _L34806_ __tmp44842))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp44843
                                                           __tmp44841))))
                                              (declare (not safe))
                                              (cons _L34750_ __tmp44840)))
                                           (__tmp44838
                                            (let ()
                                              (declare (not safe))
                                              (cons _L34890_ '()))))
                                       (declare (not safe))
                                       (cons __tmp44839 __tmp44838))))
                                (declare (not safe))
                                (cons __tmp44846 __tmp44837))))
                         (declare (not safe))
                         (cons __tmp44849 __tmp44836))))
                  (declare (not safe))
                  (cons __tmp44835 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp44850
                                                         __tmp44834))))
                                            (declare (not safe))
                                            (cons __tmp44852 __tmp44833))))
                                     (declare (not safe))
                                     (cons __tmp44832 '()))))
                              (declare (not safe))
                              (cons _L34722_ __tmp44831))))
                       (declare (not safe))
                       (cons __tmp44830 '()))))
                (declare (not safe))
                (cons __tmp44853 __tmp44829))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp44862 __tmp44828)))
                                              (__tmp44823
                                               (let ((__tmp44824
                                                      (let ((__tmp44825
                                                             (let ((__tmp44826
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (foldr (lambda (_g3493234967_ _g3493334970_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g3493234967_ _g3493334970_)))
                                   '()
                                   _L34634_)))
                       (declare (not safe))
                       (cons _L34666_ __tmp44826))))
                (declare (not safe))
                (cons _L34722_ __tmp44825))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp44824 '()))))
                                          (declare (not safe))
                                          (cons __tmp44827 __tmp44823))))
                                   (declare (not safe))
                                   (cons __tmp44870 __tmp44822)))))
                           _g3490434915_)))
                       (__tmp44871
                        (let ()
                          (declare (not safe))
                          (_generate133815_
                           _L34778_
                           _hd34434_
                           _L34862_
                           _L34890_))))
                  (declare (not safe))
                  (_g3490234973_ __tmp44871))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g3487634887_)))
                                                (__tmp44872
                                                 (let ((__tmp44873
                                                        (let ((__tmp44874
                                                               (foldr (lambda (_g3498034983_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g3498134986_)
                                (let ((__tmp44875
                                       (let ((__tmp44877
                                              (gx#datum->syntax '#f 'reverse))
                                             (__tmp44876
                                              (let ()
                                                (declare (not safe))
                                                (cons _g3498034983_ '()))))
                                         (declare (not safe))
                                         (cons __tmp44877 __tmp44876))))
                                  (declare (not safe))
                                  (cons __tmp44875 _g3498134986_)))
                              '()
                              _L34563_)))
                  (declare (not safe))
                  (cons _L34806_ __tmp44874))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L34694_
                                                         __tmp44873))))
                                           (declare (not safe))
                                           (_g3487434977_ __tmp44872))))
                                     _g3484834859_)))
                                 (__tmp44878
                                  (let ((__tmp44879
                                         (let ((__tmp44885
                                                (let ((__tmp44887
                                                       (gx#datum->syntax
                                                        '#f
                                                        '##cdr))
                                                      (__tmp44886
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L34806_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp44887
                                                        __tmp44886)))
                                               (__tmp44880
                                                (begin
                                                  (gx#syntax-check-splice-targets
                                                   _L34563_
                                                   _L34493_)
                                                  (foldr (lambda (_g3499234996_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g3499334999_
                          _g3499435001_)
                   (let ((__tmp44881
                          (let ((__tmp44884 (gx#datum->syntax '#f 'cons))
                                (__tmp44882
                                 (let ((__tmp44883
                                        (let ()
                                          (declare (not safe))
                                          (cons _g3499234996_ '()))))
                                   (declare (not safe))
                                   (cons _g3499334999_ __tmp44883))))
                            (declare (not safe))
                            (cons __tmp44884 __tmp44882))))
                     (declare (not safe))
                     (cons __tmp44881 _g3499435001_)))
                 '()
                 _L34563_
                 _L34493_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (cons __tmp44885 __tmp44880))))
                                    (declare (not safe))
                                    (cons _L34722_ __tmp44879))))
                            (declare (not safe))
                            (_g3484634989_ __tmp44878))))
                      _g3482034831_)))
                  (__tmp44888
                   (let ()
                     (declare (not safe))
                     (_generate133815_
                      _L34806_
                      _rest34435_
                      _K34436_
                      _E34437_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_g3481835004_
                                                      __tmp44888))))
                                               _g3479234803_)))
                                           (__tmp44889 (gx#genident 'rest)))
                                      (declare (not safe))
                                      (_g3479035008_ __tmp44889))))
                                _g3476434775_)))
                            (__tmp44890 (gx#genident 'hd)))
                       (declare (not safe))
                       (_g3476235012_ __tmp44890))))
                 _g3473634747_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp44891
                                                      (gx#genident
                                                       'splice-try)))
                                                (declare (not safe))
                                                (_g3473435016_ __tmp44891))))
                                          _g3470834719_)))
                                      (__tmp44892 (gx#genident 'splice-loop)))
                                 (declare (not safe))
                                 (_g3470635020_ __tmp44892))))
                           _g3468034691_)))
                       (__tmp44893 (gx#genident 'splice-rest)))
                  (declare (not safe))
                  (_g3467835024_ __tmp44893))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g3465234663_))))
                                           (declare (not safe))
                                           (_g3465035028_ _tgt34432_))))
                                     _init3459134630_))))))
                    (let ()
                      (declare (not safe))
                      (_loop3458634610_ _target3458334604_ '())))
                  (let ()
                    (declare (not safe))
                    (_g3458034597_ _g3458134601_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g3458034597_
                                                   _g3458134601_)))))
                                         (__tmp44895
                                          (make-list
                                           (gx#stx-length
                                            (foldr (lambda (_g3503535038_
                                                            _g3503635041_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g3503535038_
                                                             _g3503635041_)))
                                                   '()
                                                   _L34493_))
                                           (let ((__tmp44896
                                                  (gx#datum->syntax
                                                   '#f
                                                   '@list)))
                                             (declare (not safe))
                                             (cons __tmp44896 '())))))
                                    (declare (not safe))
                                    (_g3457935032_ __tmp44895))))
                              _var-r3452034559_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_loop3451534539_
                                                        _target3451234533_
                                                        '())))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g3450934526_
                                                      _g3451034530_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g3450934526_ _g3451034530_)))))
                                  (__tmp44898
                                   (gx#gentemps
                                    (foldr (lambda (_g3504735050_
                                                    _g3504835053_)
                                             (let ()
                                               (declare (not safe))
                                               (cons _g3504735050_
                                                     _g3504835053_)))
                                           '()
                                           _L34493_))))
                             (declare (not safe))
                             (_g3450835044_ __tmp44898))))
                       _var3445034489_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop3444534469_
                                                 _target3444234463_
                                                 '())))
                                            (let ()
                                              (declare (not safe))
                                              (_g3443934456_
                                               _g3444034460_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3443934456_ _g3444034460_)))))
                           (__tmp44900
                            (let ()
                              (declare (not safe))
                              (|gerbil/core/match[1]#match-pattern-vars|
                               _hd34434_))))
                      (declare (not safe))
                      (_g3443835056_ __tmp44900))))
                 (_generate-simple-vector33818_
                  (lambda (_tgt34274_
                           _body34276_
                           _start34277_
                           _K34278_
                           _E34279_)
                    (let _recur34281_ ((_rest34284_ _body34276_)
                                       (_off34286_ _start34277_))
                      (let* ((___stx4374543746_ _rest34284_)
                             (_g3428934301_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4374543746_))))
                        (let ((___kont4374843749_
                               (lambda (_L34329_ _L34331_)
                                 (let* ((_g3434634365_
                                         (lambda (_g3434734361_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g3434734361_)))
                                        (_g3434534424_
                                         (lambda (_g3434734369_)
                                           (if (gx#stx-pair? _g3434734369_)
                                               (let ((_e3435334372_
                                                      (gx#syntax-e
                                                       _g3434734369_)))
                                                 (let ((_hd3435234376_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e3435334372_)))
                                                       (_tl3435134379_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e3435334372_))))
                                                   (if (gx#stx-pair?
                                                        _tl3435134379_)
                                                       (let ((_e3435634382_
                                                              (gx#syntax-e
                                                               _tl3435134379_)))
                                                         (let ((_hd3435534386_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e3435634382_)))
                       (_tl3435434389_
                        (let () (declare (not safe)) (##cdr _e3435634382_))))
                   (if (gx#stx-pair? _tl3435434389_)
                       (let ((_e3435934392_ (gx#syntax-e _tl3435434389_)))
                         (let ((_hd3435834396_
                                (let ()
                                  (declare (not safe))
                                  (##car _e3435934392_)))
                               (_tl3435734399_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e3435934392_))))
                           (if (gx#stx-null? _tl3435734399_)
                               ((lambda (_L34402_ _L34404_ _L34405_)
                                  (let ()
                                    (let ((__tmp44901
                                           (let ((__tmp44906
                                                  (let ((__tmp44907
                                                         (let ((__tmp44908
                                                                (let ((__tmp44909
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp44912
                                      (gx#datum->syntax '#f '##vector-ref))
                                     (__tmp44910
                                      (let ((__tmp44911
                                             (let ()
                                               (declare (not safe))
                                               (cons _L34402_ '()))))
                                        (declare (not safe))
                                        (cons _L34404_ __tmp44911))))
                                 (declare (not safe))
                                 (cons __tmp44912 __tmp44910))))
                          (declare (not safe))
                          (cons __tmp44909 '()))))
                   (declare (not safe))
                   (cons _L34405_ __tmp44908))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp44907 '())))
                                                 (__tmp44902
                                                  (let ((__tmp44903
                                                         (let ((__tmp44904
                                                                (let ((__tmp44905
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (fx+ _off34286_ '1))))
                          (declare (not safe))
                          (_recur34281_ _L34329_ __tmp44905))))
                   (declare (not safe))
                   (_generate133815_ _L34405_ _L34331_ __tmp44904 _E34279_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp44903 '()))))
                                             (declare (not safe))
                                             (cons __tmp44906 __tmp44902))))
                                      (declare (not safe))
                                      (cons 'let __tmp44901))))
                                _hd3435834396_
                                _hd3435534386_
                                _hd3435234376_)
                               (let ()
                                 (declare (not safe))
                                 (_g3434634365_ _g3434734369_)))))
                       (let ()
                         (declare (not safe))
                         (_g3434634365_ _g3434734369_)))))
               (let () (declare (not safe)) (_g3434634365_ _g3434734369_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g3434634365_
                                                  _g3434734369_)))))
                                        (__tmp44913
                                         (list (gx#genident 'e)
                                               _tgt34274_
                                               _off34286_)))
                                   (declare (not safe))
                                   (_g3434534424_ __tmp44913))))
                              (___kont4375043751_ (lambda () _K34278_)))
                          (if (gx#stx-pair? ___stx4374543746_)
                              (let ((_e3429534319_
                                     (gx#syntax-e ___stx4374543746_)))
                                (let ((_tl3429334326_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3429534319_)))
                                      (_hd3429434323_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3429534319_))))
                                  (___kont4374843749_
                                   _tl3429334326_
                                   _hd3429434323_)))
                              (___kont4375043751_)))))))
                 (_generate-list-vector33819_
                  (lambda (_tgt34166_
                           _body34168_
                           _->list34169_
                           _K34170_
                           _E34171_)
                    (let* ((_g3417334181_
                            (lambda (_g3417434177_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g3417434177_)))
                           (_g3417234270_
                            (lambda (_g3417434185_)
                              ((lambda (_L34188_)
                                 (let ()
                                   (let* ((_g3420034208_
                                           (lambda (_g3420134204_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g3420134204_)))
                                          (_g3419934266_
                                           (lambda (_g3420134212_)
                                             ((lambda (_L34215_)
                                                (let ()
                                                  (let* ((_g3422834236_
                                                          (lambda (_g3422934232_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g3422934232_)))
                                                         (_g3422734258_
                                                          (lambda (_g3422934240_)
                                                            ((lambda (_L34243_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp44914
                                  (let ((__tmp44917
                                         (let ((__tmp44918
                                                (let ((__tmp44919
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L34243_ '()))))
                                                  (declare (not safe))
                                                  (cons _L34188_ __tmp44919))))
                                           (declare (not safe))
                                           (cons __tmp44918 '())))
                                        (__tmp44915
                                         (let ((__tmp44916
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate133815_
                                                   _L34188_
                                                   _body34168_
                                                   _K34170_
                                                   _E34171_))))
                                           (declare (not safe))
                                           (cons __tmp44916 '()))))
                                    (declare (not safe))
                                    (cons __tmp44917 __tmp44915))))
                             (declare (not safe))
                             (cons 'let __tmp44914)))))
                     _g3422934240_)))
                 (__tmp44920
                  (let ((_$e34262_ _->list34169_))
                    (if (let ()
                          (declare (not safe))
                          (eq? 'values->list _$e34262_))
                        (let ((__tmp44929 (gx#datum->syntax '#f 'values->list))
                              (__tmp44928
                               (let ()
                                 (declare (not safe))
                                 (cons _L34215_ '()))))
                          (declare (not safe))
                          (cons __tmp44929 __tmp44928))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'vector->list _$e34262_))
                            (let ((__tmp44927
                                   (gx#datum->syntax '#f '##vector->list))
                                  (__tmp44926
                                   (let ()
                                     (declare (not safe))
                                     (cons _L34215_ '()))))
                              (declare (not safe))
                              (cons __tmp44927 __tmp44926))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'struct->list _$e34262_))
                                (let ((__tmp44925
                                       (gx#datum->syntax '#f '##cdr))
                                      (__tmp44921
                                       (let ((__tmp44922
                                              (let ((__tmp44924
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##structure->list))
                                                    (__tmp44923
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L34215_ '()))))
                                                (declare (not safe))
                                                (cons __tmp44924 __tmp44923))))
                                         (declare (not safe))
                                         (cons __tmp44922 '()))))
                                  (declare (not safe))
                                  (cons __tmp44925 __tmp44921))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Unexpected list conversion"
                                 _stx33808_
                                 _->list34169_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_g3422734258_
                                                     __tmp44920))))
                                              _g3420134212_))))
                                     (declare (not safe))
                                     (_g3419934266_ _tgt34166_))))
                               _g3417434185_)))
                           (__tmp44930 (gx#genident 'e)))
                      (declare (not safe))
                      (_g3417234270_ __tmp44930))))
                 (_generate-struct33820_
                  (lambda (_info34037_
                           _tgt34039_
                           _body34040_
                           _K34041_
                           _E34042_)
                    (let* ((___stx4376143762_ _body34040_)
                           (_g3404534068_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4376143762_))))
                      (let ((___kont4376443765_
                             (lambda (_L34145_)
                               (let* ((_fields34159_
                                       (let ()
                                         (declare (not safe))
                                         (_struct-field-accessors33822_
                                          _info34037_)))
                                      (__tmp44931
                                       (let ((__tmp44935
                                              (let ((__tmp44937
                                                     (let ((__obj44515
                                                            _info34037_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              __obj44515
                                                              'gerbil.core#class-type-info::t))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              __obj44515
                                                              '11
                                                              gerbil/core/mop$MOP-2#class-type-info::t
                                                              '#f))
                                                           (class-slot-ref
                                                            gerbil/core/mop$MOP-2#class-type-info::t
                                                            __obj44515
                                                            'predicate))))
                                                    (__tmp44936
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _tgt34039_ '()))))
                                                (declare (not safe))
                                                (cons __tmp44937 __tmp44936)))
                                             (__tmp44932
                                              (let ((__tmp44934
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-simple-struct-body33821_
                                                        _info34037_
                                                        _tgt34039_
                                                        _L34145_
                                                        _K34041_
                                                        _E34042_)))
                                                    (__tmp44933
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _E34042_ '()))))
                                                (declare (not safe))
                                                (cons __tmp44934 __tmp44933))))
                                         (declare (not safe))
                                         (cons __tmp44935 __tmp44932))))
                                 (declare (not safe))
                                 (cons 'if __tmp44931))))
                            (___kont4376643767_
                             (lambda (_L34099_)
                               (let ((__tmp44938
                                      (let ((__tmp44942
                                             (let ((__tmp44944
                                                    (let ((__obj44516
                                                           _info34037_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-direct-instance-of?
                                                             __obj44516
                                                             'gerbil.core#class-type-info::t))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             __obj44516
                                                             '11
                                                             gerbil/core/mop$MOP-2#class-type-info::t
                                                             '#f))
                                                          (class-slot-ref
                                                           gerbil/core/mop$MOP-2#class-type-info::t
                                                           __obj44516
                                                           'predicate))))
                                                   (__tmp44943
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _tgt34039_ '()))))
                                               (declare (not safe))
                                               (cons __tmp44944 __tmp44943)))
                                            (__tmp44939
                                             (let ((__tmp44941
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-list-vector33819_
                                                       _tgt34039_
                                                       _L34099_
                                                       'struct->list
                                                       _K34041_
                                                       _E34042_)))
                                                   (__tmp44940
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _E34042_ '()))))
                                               (declare (not safe))
                                               (cons __tmp44941 __tmp44940))))
                                        (declare (not safe))
                                        (cons __tmp44942 __tmp44939))))
                                 (declare (not safe))
                                 (cons 'if __tmp44938)))))
                        (if (gx#stx-pair? ___stx4376143762_)
                            (let ((_e3405034121_
                                   (gx#syntax-e ___stx4376143762_)))
                              (let ((_tl3404834128_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3405034121_)))
                                    (_hd3404934125_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3405034121_))))
                                (if (gx#stx-datum? _hd3404934125_)
                                    (let ((_e3405134131_
                                           (gx#stx-e _hd3404934125_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (equal? _e3405134131_ 'simple:))
                                          (if (gx#stx-pair? _tl3404834128_)
                                              (let ((_e3405434135_
                                                     (gx#syntax-e
                                                      _tl3404834128_)))
                                                (let ((_tl3405234142_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3405434135_)))
                                                      (_hd3405334139_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3405434135_))))
                                                  (if (gx#stx-null?
                                                       _tl3405234142_)
                                                      (___kont4376443765_
                                                       _hd3405334139_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g3404534068_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g3404534068_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e3405134131_ 'list:))
                                              (if (gx#stx-pair? _tl3404834128_)
                                                  (let ((_e3406234089_
                                                         (gx#syntax-e
                                                          _tl3404834128_)))
                                                    (let ((_tl3406034096_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3406234089_)))
                                                          (_hd3406134093_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3406234089_))))
                                                      (if (gx#stx-null?
                                                           _tl3406034096_)
                                                          (___kont4376643767_
                                                           _hd3406134093_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g3404534068_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3404534068_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g3404534068_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g3404534068_)))))
                            (let () (declare (not safe)) (_g3404534068_)))))))
                 (_generate-simple-struct-body33821_
                  (lambda (_info33957_
                           _tgt33959_
                           _body33960_
                           _K33961_
                           _E33962_)
                    (let _recur33964_ ((_rest33967_ _body33960_)
                                       (_fields33969_
                                        (let ()
                                          (declare (not safe))
                                          (_struct-field-accessors33822_
                                           _info33957_))))
                      (let* ((___stx4381143812_ _rest33967_)
                             (_g3397233984_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4381143812_))))
                        (let ((___kont4381443815_
                               (lambda (_L34012_ _L34014_)
                                 (if (let ()
                                       (declare (not safe))
                                       (null? _fields33969_))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"too many parts for struct"
                                      _stx33808_
                                      _info33957_
                                      (let ((__obj44517 _info33957_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj44517
                                               'gerbil.core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj44517
                                               '2
                                               gerbil/core/mop$MOP-2#class-type-info::t
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop$MOP-2#class-type-info::t
                                             __obj44517
                                             'name))))
                                     (let ((_$tgt34029_ (gx#genident 'e))
                                           (_getf34031_ (car _fields33969_)))
                                       (let ((__tmp44945
                                              (let ((__tmp44950
                                                     (let ((__tmp44951
                                                            (let ((__tmp44952
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp44953
                                  (let ((__tmp44954
                                         (let ()
                                           (declare (not safe))
                                           (cons _tgt33959_ '()))))
                                    (declare (not safe))
                                    (cons _getf34031_ __tmp44954))))
                             (declare (not safe))
                             (cons __tmp44953 '()))))
                      (declare (not safe))
                      (cons _$tgt34029_ __tmp44952))))
               (declare (not safe))
               (cons __tmp44951 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp44946
                                                     (let ((__tmp44947
                                                            (let ((__tmp44948
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp44949 (cdr _fields33969_)))
                             (declare (not safe))
                             (_recur33964_ _L34012_ __tmp44949))))
                      (declare (not safe))
                      (_generate133815_
                       _$tgt34029_
                       _L34014_
                       __tmp44948
                       _E33962_))))
               (declare (not safe))
               (cons __tmp44947 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp44950 __tmp44946))))
                                         (declare (not safe))
                                         (cons 'let __tmp44945))))))
                              (___kont4381643817_ (lambda () _K33961_)))
                          (if (gx#stx-pair? ___stx4381143812_)
                              (let ((_e3397834002_
                                     (gx#syntax-e ___stx4381143812_)))
                                (let ((_tl3397634009_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3397834002_)))
                                      (_hd3397734006_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3397834002_))))
                                  (___kont4381443815_
                                   _tl3397634009_
                                   _hd3397734006_)))
                              (___kont4381643817_)))))))
                 (_struct-field-accessors33822_
                  (lambda (_info33938_)
                    (let _recur33941_ ((_next33944_
                                        (let ()
                                          (declare (not safe))
                                          (cons _info33938_ '()))))
                      (if (let () (declare (not safe)) (null? _next33944_))
                          '()
                          (let ((_ti33947_ (car _next33944_)))
                            (append (let ((__tmp44955
                                           (map gx#syntax-local-value
                                                (let ((__obj44518 _ti33947_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         __obj44518
                                                         'gerbil.core#class-type-info::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         __obj44518
                                                         '3
                                                         gerbil/core/mop$MOP-2#class-type-info::t
                                                         '#f))
                                                      (class-slot-ref
                                                       gerbil/core/mop$MOP-2#class-type-info::t
                                                       __obj44518
                                                       'super))))))
                                      (declare (not safe))
                                      (_recur33941_ __tmp44955))
                                    (map (lambda (_slot33950_)
                                           (let ((_$e33953_
                                                  (assgetq _slot33950_
                                                           (let ((__obj44519
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ti33947_))
                     (if (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            __obj44519
                            'gerbil.core#class-type-info::t))
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            __obj44519
                            '14
                            gerbil/core/mop$MOP-2#class-type-info::t
                            '#f))
                         (class-slot-ref
                          gerbil/core/mop$MOP-2#class-type-info::t
                          __obj44519
                          'unchecked-accessors))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if _$e33953_
                                                 _$e33953_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"no accessor for struct slot"
                                                  _stx33808_
                                                  _info33938_
                                                  _slot33950_))))
                                         (let ((__obj44520 _ti33947_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj44520
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj44520
                                                  '4
                                                  gerbil/core/mop$MOP-2#class-type-info::t
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core/mop$MOP-2#class-type-info::t
                                                __obj44520
                                                'slots))))))))))
                 (_generate-class33823_
                  (lambda (_info33931_
                           _tgt33933_
                           _body33934_
                           _K33935_
                           _E33936_)
                    (let ((__tmp44956
                           (let ((__tmp44960
                                  (let ((__tmp44962
                                         (let ((__obj44521 _info33931_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  __obj44521
                                                  'gerbil.core#class-type-info::t))
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  __obj44521
                                                  '11
                                                  gerbil/core/mop$MOP-2#class-type-info::t
                                                  '#f))
                                               (class-slot-ref
                                                gerbil/core/mop$MOP-2#class-type-info::t
                                                __obj44521
                                                'predicate))))
                                        (__tmp44961
                                         (let ()
                                           (declare (not safe))
                                           (cons _tgt33933_ '()))))
                                    (declare (not safe))
                                    (cons __tmp44962 __tmp44961)))
                                 (__tmp44957
                                  (let ((__tmp44959
                                         (let ()
                                           (declare (not safe))
                                           (_generate-class-body33824_
                                            _info33931_
                                            _tgt33933_
                                            _body33934_
                                            _K33935_
                                            _E33936_)))
                                        (__tmp44958
                                         (let ()
                                           (declare (not safe))
                                           (cons _E33936_ '()))))
                                    (declare (not safe))
                                    (cons __tmp44959 __tmp44958))))
                             (declare (not safe))
                             (cons __tmp44960 __tmp44957))))
                      (declare (not safe))
                      (cons 'if __tmp44956))))
                 (_generate-class-body33824_
                  (lambda (_info33826_
                           _tgt33828_
                           _body33829_
                           _K33830_
                           _E33831_)
                    (let _recur33833_ ((_rest33836_ _body33829_))
                      (let* ((___stx4382743828_ _rest33836_)
                             (_g3384033856_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4382743828_))))
                        (let ((___kont4383043831_
                               (lambda (_L33894_ _L33896_ _L33897_)
                                 (let ((_$e33917_
                                        (assgetq (string->symbol
                                                  (keyword->string
                                                   (gx#stx-e _L33897_)))
                                                 (let ((__obj44522
                                                        _info33826_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          __obj44522
                                                          'gerbil.core#class-type-info::t))
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          __obj44522
                                                          '14
                                                          gerbil/core/mop$MOP-2#class-type-info::t
                                                          '#f))
                                                       (class-slot-ref
                                                        gerbil/core/mop$MOP-2#class-type-info::t
                                                        __obj44522
                                                        'unchecked-accessors))))))
                                   (if _$e33917_
                                       ((lambda (_getf33921_)
                                          (let* ((_$tgt33924_ (gx#genident 'e))
                                                 (__tmp44963
                                                  (let ((__tmp44967
                                                         (let ((__tmp44968
                                                                (let ((__tmp44969
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp44970
                                      (let ((__tmp44971
                                             (let ()
                                               (declare (not safe))
                                               (cons _tgt33828_ '()))))
                                        (declare (not safe))
                                        (cons _getf33921_ __tmp44971))))
                                 (declare (not safe))
                                 (cons __tmp44970 '()))))
                          (declare (not safe))
                          (cons _$tgt33924_ __tmp44969))))
                   (declare (not safe))
                   (cons __tmp44968 '())))
                (__tmp44964
                 (let ((__tmp44965
                        (let ((__tmp44966
                               (let ()
                                 (declare (not safe))
                                 (_recur33833_ _L33894_))))
                          (declare (not safe))
                          (_generate133815_
                           _$tgt33924_
                           _L33896_
                           __tmp44966
                           _E33831_))))
                   (declare (not safe))
                   (cons __tmp44965 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp44967
                                                          __tmp44964))))
                                            (declare (not safe))
                                            (cons 'let __tmp44963)))
                                        _$e33917_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"no slot accessor"
                                        _stx33808_
                                        _info33826_
                                        _L33897_)))))
                              (___kont4383243833_ (lambda () _K33830_)))
                          (if (gx#stx-pair? ___stx4382743828_)
                              (let ((_e3384733874_
                                     (gx#syntax-e ___stx4382743828_)))
                                (let ((_tl3384533881_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3384733874_)))
                                      (_hd3384633878_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3384733874_))))
                                  (if (gx#stx-pair? _tl3384533881_)
                                      (let ((_e3385033884_
                                             (gx#syntax-e _tl3384533881_)))
                                        (let ((_tl3384833891_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3385033884_)))
                                              (_hd3384933888_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3385033884_))))
                                          (___kont4383043831_
                                           _tl3384833891_
                                           _hd3384933888_
                                           _hd3384633878_)))
                                      (___kont4383243833_))))
                              (___kont4383243833_))))))))
          (let ()
            (declare (not safe))
            (_generate133815_ _tgt33810_ _ptree33811_ _K33812_ _E33813_)))))
    (define |gerbil/core/match[1]#generate-match*|
      (lambda (_stx32704_ _tgt-lst32706_ _clauses32707_)
        (letrec ((_parse-body32709_
                  (lambda (_hd-len33630_)
                    (let _lp33633_ ((_rest33636_ _clauses32707_)
                                    (_r33638_ '()))
                      (let* ((___stx4387743878_ _rest33636_)
                             (_g3364133653_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx4387743878_))))
                        (let ((___kont4388043881_
                               (lambda (_L33681_ _L33683_)
                                 (let* ((___stx4384943850_ _L33683_)
                                        (_g3370033716_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx4384943850_))))
                                   (let ((___kont4385243853_
                                          (lambda (_L33785_)
                                            (if (gx#stx-null? _L33681_)
                                                (let ((__tmp44972
                                                       (let ((__tmp44977
                                                              (gx#genident
                                                               'else))
                                                             (__tmp44973
                                                              (let ((__tmp44974
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp44975
                                    (gx#stx-wrap-source
                                     (let ((__tmp44976
                                            (gx#datum->syntax '#f 'begin)))
                                       (declare (not safe))
                                       (cons __tmp44976 _L33785_))
                                     (let ((_$e33796_
                                            (gx#stx-source _L33683_)))
                                       (if _$e33796_
                                           _$e33796_
                                           (gx#stx-source _stx32704_))))))
                               (declare (not safe))
                               (cons __tmp44975 '()))))
                        (declare (not safe))
                        (cons '#f __tmp44974))))
                 (declare (not safe))
                 (cons __tmp44977 __tmp44973))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp44972 _r33638_))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; misplaced else"
                                                 _stx32704_
                                                 _L33683_))))
                                         (___kont4385443855_
                                          (lambda (_L33744_ _L33746_)
                                            (let ((__tmp44978
                                                   (let ((__tmp44979
                                                          (let ((__tmp44985
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#genident 'try-match))
                        (__tmp44980
                         (let ((__tmp44984
                                (gx#stx-map
                                 (lambda (_g3375833760_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/match[1]#parse-match-pattern__%|
                                      _g3375833760_
                                      _stx32704_)))
                                 _L33746_))
                               (__tmp44981
                                (let ((__tmp44982
                                       (gx#stx-wrap-source
                                        (let ((__tmp44983
                                               (gx#datum->syntax '#f 'begin)))
                                          (declare (not safe))
                                          (cons __tmp44983 _L33744_))
                                        (let ((_$e33764_
                                               (gx#stx-source _L33683_)))
                                          (if _$e33764_
                                              _$e33764_
                                              (gx#stx-source _stx32704_))))))
                                  (declare (not safe))
                                  (cons __tmp44982 '()))))
                           (declare (not safe))
                           (cons __tmp44984 __tmp44981))))
                    (declare (not safe))
                    (cons __tmp44985 __tmp44980))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp44979
                                                           _r33638_))))
                                              (declare (not safe))
                                              (_lp33633_
                                               _L33681_
                                               __tmp44978))))
                                         (___kont4385643857_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"bad syntax; illegal match clause"
                                             _stx32704_
                                             _L33683_))))
                                     (let* ((___match4387443875_
                                             (lambda (_e3371033734_
                                                      _hd3370933738_
                                                      _tl3370833741_)
                                               (let ((_L33744_ _tl3370833741_)
                                                     (_L33746_ _hd3370933738_))
                                                 (if (and (gx#stx-list?
                                                           _L33746_)
                                                          (fx= (gx#stx-length
                                                                _L33746_)
                                                               _hd-len33630_)
                                                          (gx#stx-list?
                                                           _L33744_)
                                                          (let ((__tmp44986
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-null? _L33744_)))
                    (declare (not safe))
                    (not __tmp44986)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4385443855_
                                                      _L33744_
                                                      _L33746_)
                                                     (___kont4385643857_)))))
                                            (___match4386843869_
                                             (lambda (_e3370533775_
                                                      _hd3370433779_
                                                      _tl3370333782_)
                                               (let ((_L33785_ _tl3370333782_))
                                                 (if (and (gx#stx-list?
                                                           _L33785_)
                                                          (let ((__tmp44987
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-null? _L33785_)))
                    (declare (not safe))
                    (not __tmp44987)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4385243853_
                                                      _L33785_)
                                                     (___match4387443875_
                                                      _e3370533775_
                                                      _hd3370433779_
                                                      _tl3370333782_))))))
                                       (if (gx#stx-pair? ___stx4384943850_)
                                           (let ((_e3370533775_
                                                  (gx#syntax-e
                                                   ___stx4384943850_)))
                                             (let ((_tl3370333782_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e3370533775_)))
                                                   (_hd3370433779_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e3370533775_))))
                                               (if (gx#identifier?
                                                    _hd3370433779_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/match[1]#_g44988_|
                                                        _hd3370433779_)
                                                       (___match4386843869_
                                                        _e3370533775_
                                                        _hd3370433779_
                                                        _tl3370333782_)
                                                       (___match4387443875_
                                                        _e3370533775_
                                                        _hd3370433779_
                                                        _tl3370333782_))
                                                   (___match4387443875_
                                                    _e3370533775_
                                                    _hd3370433779_
                                                    _tl3370333782_))))
                                           (___kont4385643857_)))))))
                              (___kont4388243883_ (lambda () _r33638_)))
                          (if (gx#stx-pair? ___stx4387743878_)
                              (let ((_e3364733671_
                                     (gx#syntax-e ___stx4387743878_)))
                                (let ((_tl3364533678_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3364733671_)))
                                      (_hd3364633675_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3364733671_))))
                                  (___kont4388043881_
                                   _tl3364533678_
                                   _hd3364633675_)))
                              (___kont4388243883_)))))))
                 (_generate-body32711_
                  (lambda (_body33415_)
                    (let* ((_g3341833426_
                            (lambda (_g3341933422_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g3341933422_)))
                           (_g3341733626_
                            (lambda (_g3341933430_)
                              ((lambda (_L33433_)
                                 (let ()
                                   (let* ((_g3344533462_
                                           (lambda (_g3344633458_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g3344633458_)))
                                          (_g3344433622_
                                           (lambda (_g3344633466_)
                                             (if (gx#stx-pair/null?
                                                  _g3344633466_)
                                                 (let ((_g44989_
                                                        (gx#syntax-split-splice
                                                         _g3344633466_
                                                         '0)))
                                                   (begin
                                                     (let ((_g44990_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g44989_)
                          (##vector-length _g44989_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g44990_ 2)))
                   (error "Context expects 2 values" _g44990_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target3344833469_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g44989_
                                                               0)))
                                                           (_tl3345033472_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g44989_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _tl3345033472_)
                                                           (letrec ((_loop3345133475_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd3344933479_ _target3345533482_)
                               (if (gx#stx-pair? _hd3344933479_)
                                   (let ((_e3345233485_
                                          (gx#syntax-e _hd3344933479_)))
                                     (let ((_lp-hd3345333489_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e3345233485_)))
                                           (_lp-tl3345433492_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e3345233485_))))
                                       (let ((__tmp45012
                                              (let ()
                                                (declare (not safe))
                                                (cons _lp-hd3345333489_
                                                      _target3345533482_))))
                                         (declare (not safe))
                                         (_loop3345133475_
                                          _lp-tl3345433492_
                                          __tmp45012))))
                                   (let ((_target3345633495_
                                          (reverse _target3345533482_)))
                                     ((lambda (_L33499_)
                                        (let ()
                                          (let* ((_g3351633524_
                                                  (lambda (_g3351733520_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g3351733520_)))
                                                 (_g3351533610_
                                                  (lambda (_g3351733528_)
                                                    ((lambda (_L33531_)
                                                       (let ()
                                                         (let* ((_g3354433552_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g3354533548_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g3354533548_)))
                        (_g3354333606_
                         (lambda (_g3354533556_)
                           ((lambda (_L33559_)
                              (let ()
                                (let* ((_g3357233580_
                                        (lambda (_g3357333576_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g3357333576_)))
                                       (_g3357133602_
                                        (lambda (_g3357333584_)
                                          ((lambda (_L33587_)
                                             (let ()
                                               (let ()
                                                 (let ((__tmp44994
                                                        (gx#datum->syntax
                                                         '#f
                                                         'begin-annotation))
                                                       (__tmp44991
                                                        (let ((__tmp44993
                                                               (gx#datum->syntax
                                                                '#f
                                                                '@match))
                                                              (__tmp44992
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L33587_ '()))))
                  (declare (not safe))
                  (cons __tmp44993 __tmp44992))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp44994
                                                         __tmp44991)))))
                                           _g3357333584_)))
                                       (__tmp44995
                                        (gx#stx-wrap-source
                                         (let ((__tmp45001
                                                (gx#datum->syntax '#f 'let))
                                               (__tmp44996
                                                (let ((__tmp44998
                                                       (let ((__tmp44999
                                                              (let ((__tmp45000
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _L33531_ '()))))
                        (declare (not safe))
                        (cons _L33433_ __tmp45000))))
                 (declare (not safe))
                 (cons __tmp44999 '())))
              (__tmp44997 (let () (declare (not safe)) (cons _L33559_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp44998
                                                        __tmp44997))))
                                           (declare (not safe))
                                           (cons __tmp45001 __tmp44996))
                                         (gx#stx-source _stx32704_))))
                                  (declare (not safe))
                                  (_g3357133602_ __tmp44995))))
                            _g3354533556_)))
                        (__tmp45002
                         (let ((__tmp45003
                                (let ()
                                  (declare (not safe))
                                  (cons _L33433_ '()))))
                           (declare (not safe))
                           (_generate-clauses32712_ _body33415_ __tmp45003))))
                   (declare (not safe))
                   (_g3354333606_ __tmp45002))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g3351733528_)))
                                                 (__tmp45004
                                                  (gx#stx-wrap-source
                                                   (let ((__tmp45011
                                                          (gx#datum->syntax
                                                           '#f
                                                           'lambda))
                                                         (__tmp45005
                                                          (let ((__tmp45006
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp45007
                                (let ((__tmp45010
                                       (gx#datum->syntax '#f 'error))
                                      (__tmp45008
                                       (let ((__tmp45009
                                              (foldr (lambda (_g3361333616_
                                                              _g3361433619_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g3361333616_
                                                               _g3361433619_)))
                                                     '()
                                                     _L33499_)))
                                         (declare (not safe))
                                         (cons '"No clause matching"
                                               __tmp45009))))
                                  (declare (not safe))
                                  (cons __tmp45010 __tmp45008))))
                           (declare (not safe))
                           (cons __tmp45007 '()))))
                    (declare (not safe))
                    (cons '() __tmp45006))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp45011
                                                           __tmp45005))
                                                   (gx#stx-source
                                                    _stx32704_))))
                                            (declare (not safe))
                                            (_g3351533610_ __tmp45004))))
                                      _target3345633495_))))))
                     (let ()
                       (declare (not safe))
                       (_loop3345133475_ _target3344833469_ '())))
                   (let ()
                     (declare (not safe))
                     (_g3344533462_ _g3344633466_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g3344533462_
                                                    _g3344633466_))))))
                                     (declare (not safe))
                                     (_g3344433622_ _tgt-lst32706_))))
                               _g3341933430_)))
                           (__tmp45013 (gx#genident 'E)))
                      (declare (not safe))
                      (_g3341733626_ __tmp45013))))
                 (_generate-clauses32712_
                  (lambda (_rest33067_ _E33069_)
                    (let* ((___stx4389343894_ _rest33067_)
                           (_g3307333089_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4389343894_))))
                      (let ((___kont4389643897_
                             (lambda (_L33323_)
                               (let* ((_g3333433352_
                                       (lambda (_g3333533348_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g3333533348_)))
                                      (_g3333333407_
                                       (lambda (_g3333533356_)
                                         (if (gx#stx-pair? _g3333533356_)
                                             (let ((_e3334033359_
                                                    (gx#syntax-e
                                                     _g3333533356_)))
                                               (let ((_hd3333933363_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e3334033359_)))
                                                     (_tl3333833366_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e3334033359_))))
                                                 (if (gx#stx-pair?
                                                      _tl3333833366_)
                                                     (let ((_e3334333369_
                                                            (gx#syntax-e
                                                             _tl3333833366_)))
                                                       (let ((_hd3334233373_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e3334333369_)))
                     (_tl3334133376_
                      (let () (declare (not safe)) (##cdr _e3334333369_))))
                 (if (gx#stx-pair? _tl3334133376_)
                     (let ((_e3334633379_ (gx#syntax-e _tl3334133376_)))
                       (let ((_hd3334533383_
                              (let ()
                                (declare (not safe))
                                (##car _e3334633379_)))
                             (_tl3334433386_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3334633379_))))
                         (if (gx#stx-null? _tl3334433386_)
                             ((lambda (_L33389_ _L33391_)
                                (let ((__tmp45014
                                       (let ((__tmp45015
                                              (let ((__tmp45016
                                                     (if (gx#stx-e _L33391_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate132713_
                                                            _L33391_
                                                            _L33389_
                                                            _E33069_))
                                                         _L33389_)))
                                                (declare (not safe))
                                                (cons __tmp45016 '()))))
                                         (declare (not safe))
                                         (cons '@match-body __tmp45015))))
                                  (declare (not safe))
                                  (cons 'begin-annotation __tmp45014)))
                              _hd3334533383_
                              _hd3334233373_)
                             (let ()
                               (declare (not safe))
                               (_g3333433352_ _g3333533356_)))))
                     (let ()
                       (declare (not safe))
                       (_g3333433352_ _g3333533356_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g3333433352_
                                                        _g3333533356_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g3333433352_
                                                _g3333533356_))))))
                                 (declare (not safe))
                                 (_g3333333407_ _L33323_))))
                            (___kont4389843899_
                             (lambda (_L33117_ _L33119_)
                               (let* ((_g3313233151_
                                       (lambda (_g3313333147_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g3313333147_)))
                                      (_g3313133302_
                                       (lambda (_g3313333155_)
                                         (if (gx#stx-pair? _g3313333155_)
                                             (let ((_e3313933158_
                                                    (gx#syntax-e
                                                     _g3313333155_)))
                                               (let ((_hd3313833162_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e3313933158_)))
                                                     (_tl3313733165_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e3313933158_))))
                                                 (if (gx#stx-pair?
                                                      _tl3313733165_)
                                                     (let ((_e3314233168_
                                                            (gx#syntax-e
                                                             _tl3313733165_)))
                                                       (let ((_hd3314133172_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e3314233168_)))
                     (_tl3314033175_
                      (let () (declare (not safe)) (##cdr _e3314233168_))))
                 (if (gx#stx-pair? _tl3314033175_)
                     (let ((_e3314533178_ (gx#syntax-e _tl3314033175_)))
                       (let ((_hd3314433182_
                              (let ()
                                (declare (not safe))
                                (##car _e3314533178_)))
                             (_tl3314333185_
                              (let ()
                                (declare (not safe))
                                (##cdr _e3314533178_))))
                         (if (gx#stx-null? _tl3314333185_)
                             ((lambda (_L33188_ _L33190_ _L33191_)
                                (if (gx#stx-e _L33190_)
                                    (let* ((_g3320833223_
                                            (lambda (_g3320933219_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g3320933219_)))
                                           (_g3320733268_
                                            (lambda (_g3320933227_)
                                              (if (gx#stx-pair? _g3320933227_)
                                                  (let ((_e3321433230_
                                                         (gx#syntax-e
                                                          _g3320933227_)))
                                                    (let ((_hd3321333234_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3321433230_)))
                                                          (_tl3321233237_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3321433230_))))
                                                      (if (gx#stx-pair?
                                                           _tl3321233237_)
                                                          (let ((_e3321733240_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3321233237_)))
                    (let ((_hd3321633244_
                           (let () (declare (not safe)) (##car _e3321733240_)))
                          (_tl3321533247_
                           (let ()
                             (declare (not safe))
                             (##cdr _e3321733240_))))
                      (if (gx#stx-null? _tl3321533247_)
                          ((lambda (_L33250_ _L33252_)
                             (let ()
                               (let ((__tmp45043 (gx#datum->syntax '#f 'let))
                                     (__tmp45034
                                      (let ((__tmp45036
                                             (let ((__tmp45037
                                                    (let ((__tmp45038
                                                           (let ((__tmp45039
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp45042 (gx#datum->syntax '#f 'lambda))
                                (__tmp45040
                                 (let ((__tmp45041
                                        (let ()
                                          (declare (not safe))
                                          (cons _L33252_ '()))))
                                   (declare (not safe))
                                   (cons '() __tmp45041))))
                            (declare (not safe))
                            (cons __tmp45042 __tmp45040))))
                     (declare (not safe))
                     (cons __tmp45039 '()))))
              (declare (not safe))
              (cons _L33191_ __tmp45038))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp45037 '())))
                                            (__tmp45035
                                             (let ()
                                               (declare (not safe))
                                               (cons _L33250_ '()))))
                                        (declare (not safe))
                                        (cons __tmp45036 __tmp45035))))
                                 (declare (not safe))
                                 (cons __tmp45043 __tmp45034))))
                           _hd3321633244_
                           _hd3321333234_)
                          (let ()
                            (declare (not safe))
                            (_g3320833223_ _g3320933227_)))))
                  (let ()
                    (declare (not safe))
                    (_g3320833223_ _g3320933227_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3320833223_
                                                     _g3320933227_)))))
                                           (__tmp45044
                                            (list (let ()
                                                    (declare (not safe))
                                                    (_generate132713_
                                                     _L33190_
                                                     _L33188_
                                                     _E33069_))
                                                  (let ((__tmp45045
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L33191_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-clauses32712_
                                                     _L33117_
                                                     __tmp45045)))))
                                      (declare (not safe))
                                      (_g3320733268_ __tmp45044))
                                    (let* ((_g3327233280_
                                            (lambda (_g3327333276_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g3327333276_)))
                                           (_g3327133298_
                                            (lambda (_g3327333284_)
                                              ((lambda (_L33287_)
                                                 (let ()
                                                   (let ((__tmp45031
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let))
                                                         (__tmp45017
                                                          (let ((__tmp45019
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp45020
                                (let ((__tmp45021
                                       (let ((__tmp45022
                                              (let ((__tmp45030
                                                     (gx#datum->syntax
                                                      '#f
                                                      'begin-annotation))
                                                    (__tmp45023
                                                     (let ((__tmp45029
                                                            (gx#datum->syntax
                                                             '#f
                                                             '@match-else))
                                                           (__tmp45024
                                                            (let ((__tmp45025
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp45028 (gx#datum->syntax '#f 'lambda))
                                 (__tmp45026
                                  (let ((__tmp45027
                                         (let ()
                                           (declare (not safe))
                                           (cons _L33188_ '()))))
                                    (declare (not safe))
                                    (cons '() __tmp45027))))
                             (declare (not safe))
                             (cons __tmp45028 __tmp45026))))
                      (declare (not safe))
                      (cons __tmp45025 '()))))
               (declare (not safe))
               (cons __tmp45029 __tmp45024))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp45030 __tmp45023))))
                                         (declare (not safe))
                                         (cons __tmp45022 '()))))
                                  (declare (not safe))
                                  (cons _L33191_ __tmp45021))))
                           (declare (not safe))
                           (cons __tmp45020 '())))
                        (__tmp45018
                         (let () (declare (not safe)) (cons _L33287_ '()))))
                    (declare (not safe))
                    (cons __tmp45019 __tmp45018))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp45031
                                                           __tmp45017))))
                                               _g3327333284_)))
                                           (__tmp45032
                                            (let ((__tmp45033
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L33191_ '()))))
                                              (declare (not safe))
                                              (_generate-clauses32712_
                                               _L33117_
                                               __tmp45033))))
                                      (declare (not safe))
                                      (_g3327133298_ __tmp45032))))
                              _hd3314433182_
                              _hd3314133172_
                              _hd3313833162_)
                             (let ()
                               (declare (not safe))
                               (_g3313233151_ _g3313333155_)))))
                     (let ()
                       (declare (not safe))
                       (_g3313233151_ _g3313333155_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g3313233151_
                                                        _g3313333155_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g3313233151_
                                                _g3313333155_))))))
                                 (declare (not safe))
                                 (_g3313133302_ _L33119_))))
                            (___kont4390043901_
                             (lambda ()
                               (let ((__tmp45046
                                      (let ((__tmp45047
                                             (let ()
                                               (declare (not safe))
                                               (cons _E33069_ '()))))
                                        (declare (not safe))
                                        (cons '@match-body __tmp45047))))
                                 (declare (not safe))
                                 (cons 'begin-annotation __tmp45046)))))
                        (if (gx#stx-pair? ___stx4389343894_)
                            (let ((_e3307833313_
                                   (gx#syntax-e ___stx4389343894_)))
                              (let ((_tl3307633320_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3307833313_)))
                                    (_hd3307733317_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3307833313_))))
                                (if (gx#stx-null? _tl3307633320_)
                                    (___kont4389643897_ _hd3307733317_)
                                    (___kont4389843899_
                                     _tl3307633320_
                                     _hd3307733317_))))
                            (___kont4390043901_))))))
                 (_generate132713_
                  (lambda (_clause32715_ _body32717_ _E32718_)
                    (let* ((_g3272032744_
                            (lambda (_g3272132740_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g3272132740_)))
                           (_g3271933063_
                            (lambda (_g3272132748_)
                              (if (gx#stx-pair? _g3272132748_)
                                  (let ((_e3272632751_
                                         (gx#syntax-e _g3272132748_)))
                                    (let ((_hd3272532755_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3272632751_)))
                                          (_tl3272432758_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3272632751_))))
                                      (if (gx#stx-pair? _tl3272432758_)
                                          (let ((_e3272932761_
                                                 (gx#syntax-e _tl3272432758_)))
                                            (let ((_hd3272832765_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3272932761_)))
                                                  (_tl3272732768_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3272932761_))))
                                              (if (gx#stx-pair/null?
                                                   _hd3272832765_)
                                                  (let ((_g45048_
                                                         (gx#syntax-split-splice
                                                          _hd3272832765_
                                                          '0)))
                                                    (begin
                                                      (let ((_g45049_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g45048_)
                           (##vector-length _g45048_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g45049_ 2)))
                    (error "Context expects 2 values" _g45049_)))
              (let ((_target3273032771_
                     (let () (declare (not safe)) (##vector-ref _g45048_ 0)))
                    (_tl3273232774_
                     (let () (declare (not safe)) (##vector-ref _g45048_ 1))))
                (if (gx#stx-null? _tl3273232774_)
                    (letrec ((_loop3273332777_
                              (lambda (_hd3273132781_ _var3273732784_)
                                (if (gx#stx-pair? _hd3273132781_)
                                    (let ((_e3273432787_
                                           (gx#syntax-e _hd3273132781_)))
                                      (let ((_lp-hd3273532791_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3273432787_)))
                                            (_lp-tl3273632794_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3273432787_))))
                                        (let ((__tmp45063
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lp-hd3273532791_
                                                       _var3273732784_))))
                                          (declare (not safe))
                                          (_loop3273332777_
                                           _lp-tl3273632794_
                                           __tmp45063))))
                                    (let ((_var3273832797_
                                           (reverse _var3273732784_)))
                                      (if (gx#stx-null? _tl3272732768_)
                                          ((lambda (_L32801_ _L32803_)
                                             (let ()
                                               (gx#check-duplicate-identifiers
                                                (foldr (lambda (_g3282432827_
                                                                _g3282532830_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g3282432827_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g3282532830_)))
               '()
               _L32801_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _stx32704_)
                                               (let* ((_g3283332841_
                                                       (lambda (_g3283432837_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g3283432837_)))
                                                      (_g3283232935_
                                                       (lambda (_g3283432845_)
                                                         ((lambda (_L32848_)
                                                            (let ()
                                                              (let* ((_g3286132869_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g3286232865_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g3286232865_)))
                             (_g3286032931_
                              (lambda (_g3286232873_)
                                ((lambda (_L32876_)
                                   (let ()
                                     (let* ((_g3288932897_
                                             (lambda (_g3289032893_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g3289032893_)))
                                            (_g3288832919_
                                             (lambda (_g3289032901_)
                                               ((lambda (_L32904_)
                                                  (let ()
                                                    (let ()
                                                      (gx#stx-wrap-source
                                                       (let ((__tmp45054
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let))
                                                             (__tmp45050
                                                              (let ((__tmp45052
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp45053
                                    (let ()
                                      (declare (not safe))
                                      (cons _L32904_ '()))))
                               (declare (not safe))
                               (cons _L32803_ __tmp45053)))
                            (__tmp45051
                             (let ()
                               (declare (not safe))
                               (cons _L32848_ '()))))
                        (declare (not safe))
                        (cons __tmp45052 __tmp45051))))
                 (declare (not safe))
                 (cons __tmp45054 __tmp45050))
               (gx#stx-source _stx32704_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g3289032901_)))
                                            (__tmp45055
                                             (gx#stx-wrap-source
                                              (let ((__tmp45059
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp45056
                                                     (let ((__tmp45058
                                                            (foldr (lambda (_g3292232925_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g3292332928_)
                             (let ()
                               (declare (not safe))
                               (cons _g3292232925_ _g3292332928_)))
                           '()
                           _L32801_))
                   (__tmp45057
                    (let () (declare (not safe)) (cons _L32876_ '()))))
               (declare (not safe))
               (cons __tmp45058 __tmp45057))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp45059 __tmp45056))
                                              (gx#stx-source _stx32704_))))
                                       (declare (not safe))
                                       (_g3288832919_ __tmp45055))))
                                 _g3286232873_))))
                        (declare (not safe))
                        (_g3286032931_ _body32717_))))
                  _g3283432845_)))
              (__tmp45060
               (let _recur32939_ ((_rest32942_ _clause32715_)
                                  (_rest-targets32944_ _tgt-lst32706_))
                 (let* ((___stx4391943920_ _rest32942_)
                        (_g3294732959_
                         (lambda ()
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            ___stx4391943920_))))
                   (let ((___kont4392243923_
                          (lambda (_L32995_ _L32997_)
                            (let* ((_g3301233024_
                                    (lambda (_g3301333020_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _g3301333020_)))
                                   (_g3301133055_
                                    (lambda (_g3301333028_)
                                      (if (gx#stx-pair? _g3301333028_)
                                          (let ((_e3301833031_
                                                 (gx#syntax-e _g3301333028_)))
                                            (let ((_hd3301733035_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3301833031_)))
                                                  (_tl3301633038_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3301833031_))))
                                              ((lambda (_L33041_ _L33043_)
                                                 (let ((__tmp45061
                                                        (let ()
                                                          (declare (not safe))
                                                          (_recur32939_
                                                           _L32995_
                                                           _L33041_))))
                                                   (declare (not safe))
                                                   (|gerbil/core/match[1]#generate-match1|
                                                    _stx32704_
                                                    _L33043_
                                                    _L32997_
                                                    __tmp45061
                                                    _E32718_)))
                                               _tl3301633038_
                                               _hd3301733035_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g3301233024_ _g3301333028_))))))
                              (declare (not safe))
                              (_g3301133055_ _rest-targets32944_))))
                         (___kont4392443925_
                          (lambda ()
                            (let ((__tmp45062
                                   (foldr (lambda (_g3296932972_ _g3297032975_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g3296932972_
                                                    _g3297032975_)))
                                          '()
                                          _L32801_)))
                              (declare (not safe))
                              (cons _L32803_ __tmp45062)))))
                     (if (gx#stx-pair? ___stx4391943920_)
                         (let ((_e3295332985_ (gx#syntax-e ___stx4391943920_)))
                           (let ((_tl3295132992_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e3295332985_)))
                                 (_hd3295232989_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e3295332985_))))
                             (___kont4392243923_
                              _tl3295132992_
                              _hd3295232989_)))
                         (___kont4392443925_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g3283232935_ __tmp45060))))
                                           _var3273832797_
                                           _hd3272532755_)
                                          (let ()
                                            (declare (not safe))
                                            (_g3272032744_
                                             _g3272132748_))))))))
                      (let ()
                        (declare (not safe))
                        (_loop3273332777_ _target3273032771_ '())))
                    (let ()
                      (declare (not safe))
                      (_g3272032744_ _g3272132748_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g3272032744_
                                                     _g3272132748_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g3272032744_ _g3272132748_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g3272032744_ _g3272132748_)))))
                           (__tmp45064
                            (list (gx#genident 'K)
                                  (apply append
                                         (map |gerbil/core/match[1]#match-pattern-vars|
                                              _clause32715_)))))
                      (declare (not safe))
                      (_g3271933063_ __tmp45064)))))
          (let ((__tmp45065
                 (let ((__tmp45066 (gx#stx-length _tgt-lst32706_)))
                   (declare (not safe))
                   (_parse-body32709_ __tmp45066))))
            (declare (not safe))
            (_generate-body32711_ __tmp45065)))))
    (define |gerbil/core/match[1]#generate-match|
      (lambda (_stx32606_ _tgt32608_ _clauses32609_)
        (letrec ((_reclause32611_
                  (lambda (_clause32614_)
                    (let* ((___stx4393543936_ _clause32614_)
                           (_g3261932634_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4393543936_))))
                      (let ((___kont4393843939_ (lambda () _clause32614_))
                            (___kont4394043941_
                             (lambda (_L32662_ _L32664_)
                               (gx#stx-wrap-source
                                (let ((__tmp45067
                                       (let ()
                                         (declare (not safe))
                                         (cons _L32664_ '()))))
                                  (declare (not safe))
                                  (cons __tmp45067 _L32662_))
                                (gx#stx-source
                                 (gx#datum->syntax '#f 'clause)))))
                            (___kont4394243943_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"bad syntax; illegal match clause"
                                _stx32606_
                                _clause32614_))))
                        (if (gx#stx-pair? ___stx4393543936_)
                            (let ((_e3262332686_
                                   (gx#syntax-e ___stx4393543936_)))
                              (let ((_tl3262132693_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3262332686_)))
                                    (_hd3262232690_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3262332686_))))
                                (if (gx#identifier? _hd3262232690_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g45068_|
                                         _hd3262232690_)
                                        (___kont4393843939_)
                                        (___kont4394043941_
                                         _tl3262132693_
                                         _hd3262232690_))
                                    (___kont4394043941_
                                     _tl3262132693_
                                     _hd3262232690_))))
                            (___kont4394243943_)))))))
          (let ((__tmp45070
                 (let () (declare (not safe)) (cons _tgt32608_ '())))
                (__tmp45069 (gx#stx-map _reclause32611_ _clauses32609_)))
            (declare (not safe))
            (|gerbil/core/match[1]#generate-match*|
             _stx32606_
             __tmp45070
             __tmp45069)))))
    (define |gerbil/core/match[:0:]#match|
      (lambda (_stx39836_)
        (let* ((___stx4396343964_ _stx39836_)
               (_g3984139870_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4396343964_))))
          (let ((___kont4396643967_
                 (lambda (_L40110_)
                   (let* ((_g4012340131_
                           (lambda (_g4012440127_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g4012440127_)))
                          (_g4012240184_
                           (lambda (_g4012440135_)
                             ((lambda (_L40138_)
                                (let ()
                                  (let* ((_g4015040158_
                                          (lambda (_g4015140154_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g4015140154_)))
                                         (_g4014940180_
                                          (lambda (_g4015140162_)
                                            ((lambda (_L40165_)
                                               (let ()
                                                 (let ()
                                                   (let ((__tmp45074
                                                          (gx#datum->syntax
                                                           '#f
                                                           'lambda))
                                                         (__tmp45071
                                                          (let ((__tmp45073
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L40138_ '())))
                        (__tmp45072
                         (let () (declare (not safe)) (cons _L40165_ '()))))
                    (declare (not safe))
                    (cons __tmp45073 __tmp45072))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp45074
                                                           __tmp45071)))))
                                             _g4015140162_))))
                                    (_g4014940180_
                                     (gx#stx-wrap-source
                                      (let ((__tmp45076
                                             (gx#datum->syntax '#f 'match))
                                            (__tmp45075
                                             (let ()
                                               (declare (not safe))
                                               (cons _L40138_ _L40110_))))
                                        (declare (not safe))
                                        (cons __tmp45076 __tmp45075))
                                      (gx#stx-source _stx39836_))))))
                              _g4012440135_))))
                     (_g4012240184_ (gx#genident 'e)))))
                (___kont4396843969_
                 (lambda (_L40005_)
                   (let* ((_g4001840026_
                           (lambda (_g4001940022_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g4001940022_)))
                          (_g4001740079_
                           (lambda (_g4001940030_)
                             ((lambda (_L40033_)
                                (let ()
                                  (let* ((_g4004540053_
                                          (lambda (_g4004640049_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g4004640049_)))
                                         (_g4004440075_
                                          (lambda (_g4004640057_)
                                            ((lambda (_L40060_)
                                               (let ()
                                                 (let ()
                                                   (let ((__tmp45079
                                                          (gx#datum->syntax
                                                           '#f
                                                           'lambda))
                                                         (__tmp45077
                                                          (let ((__tmp45078
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L40060_ '()))))
                    (declare (not safe))
                    (cons _L40033_ __tmp45078))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp45079
                                                           __tmp45077)))))
                                             _g4004640057_))))
                                    (_g4004440075_
                                     (gx#stx-wrap-source
                                      (let ((__tmp45081
                                             (gx#datum->syntax '#f 'match))
                                            (__tmp45080
                                             (let ()
                                               (declare (not safe))
                                               (cons _L40033_ _L40005_))))
                                        (declare (not safe))
                                        (cons __tmp45081 __tmp45080))
                                      (gx#stx-source _stx39836_))))))
                              _g4001940030_))))
                     (_g4001740079_ (gx#genident 'args)))))
                (___kont4397043971_
                 (lambda (_L39897_ _L39899_)
                   (let* ((_g3991339921_
                           (lambda (_g3991439917_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g3991439917_)))
                          (_g3991239974_
                           (lambda (_g3991439925_)
                             ((lambda (_L39928_)
                                (let ()
                                  (let* ((_g3994039948_
                                          (lambda (_g3994139944_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g3994139944_)))
                                         (_g3993939970_
                                          (lambda (_g3994139952_)
                                            ((lambda (_L39955_)
                                               (let ()
                                                 (let ()
                                                   (let ((__tmp45087
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let))
                                                         (__tmp45082
                                                          (let ((__tmp45084
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp45085
                                (let ((__tmp45086
                                       (let ()
                                         (declare (not safe))
                                         (cons _L39899_ '()))))
                                  (declare (not safe))
                                  (cons _L39928_ __tmp45086))))
                           (declare (not safe))
                           (cons __tmp45085 '())))
                        (__tmp45083
                         (let () (declare (not safe)) (cons _L39955_ '()))))
                    (declare (not safe))
                    (cons __tmp45084 __tmp45083))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp45087
                                                           __tmp45082)))))
                                             _g3994139952_))))
                                    (_g3993939970_
                                     (let ()
                                       (declare (not safe))
                                       (|gerbil/core/match[1]#generate-match|
                                        _stx39836_
                                        _L39928_
                                        _L39897_))))))
                              _g3991439925_))))
                     (_g3991239974_ (gx#genident _L39899_))))))
            (let* ((___match4401644017_
                    (lambda (_e3986139877_
                             _hd3986039881_
                             _tl3985939884_
                             _e3986439887_
                             _hd3986339891_
                             _tl3986239894_)
                      (let ((_L39897_ _tl3986239894_)
                            (_L39899_ _hd3986339891_))
                        (if (gx#stx-list? _L39897_)
                            (___kont4397043971_ _L39897_ _L39899_)
                            (let () (declare (not safe)) (_g3984139870_))))))
                   (___match4400444005_
                    (lambda (_e3985339985_
                             _hd3985239989_
                             _tl3985139992_
                             _e3985639995_
                             _hd3985539999_
                             _tl3985440002_)
                      (let ((_L40005_ _tl3985440002_))
                        (if (gx#stx-list? _L40005_)
                            (___kont4396843969_ _L40005_)
                            (___match4401644017_
                             _e3985339985_
                             _hd3985239989_
                             _tl3985139992_
                             _e3985639995_
                             _hd3985539999_
                             _tl3985440002_)))))
                   (___match4398843989_
                    (lambda (_e3984640090_
                             _hd3984540094_
                             _tl3984440097_
                             _e3984940100_
                             _hd3984840104_
                             _tl3984740107_)
                      (let ((_L40110_ _tl3984740107_))
                        (if (gx#stx-list? _L40110_)
                            (___kont4396643967_ _L40110_)
                            (___match4401644017_
                             _e3984640090_
                             _hd3984540094_
                             _tl3984440097_
                             _e3984940100_
                             _hd3984840104_
                             _tl3984740107_))))))
              (if (gx#stx-pair? ___stx4396343964_)
                  (let ((_e3984640090_ (gx#syntax-e ___stx4396343964_)))
                    (let ((_tl3984440097_
                           (let () (declare (not safe)) (##cdr _e3984640090_)))
                          (_hd3984540094_
                           (let ()
                             (declare (not safe))
                             (##car _e3984640090_))))
                      (if (gx#stx-pair? _tl3984440097_)
                          (let ((_e3984940100_ (gx#syntax-e _tl3984440097_)))
                            (let ((_tl3984740107_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3984940100_)))
                                  (_hd3984840104_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3984940100_))))
                              (if (gx#identifier? _hd3984840104_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g45089_|
                                       _hd3984840104_)
                                      (___match4398843989_
                                       _e3984640090_
                                       _hd3984540094_
                                       _tl3984440097_
                                       _e3984940100_
                                       _hd3984840104_
                                       _tl3984740107_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g45088_|
                                           _hd3984840104_)
                                          (___match4400444005_
                                           _e3984640090_
                                           _hd3984540094_
                                           _tl3984440097_
                                           _e3984940100_
                                           _hd3984840104_
                                           _tl3984740107_)
                                          (___match4401644017_
                                           _e3984640090_
                                           _hd3984540094_
                                           _tl3984440097_
                                           _e3984940100_
                                           _hd3984840104_
                                           _tl3984740107_)))
                                  (___match4401644017_
                                   _e3984640090_
                                   _hd3984540094_
                                   _tl3984440097_
                                   _e3984940100_
                                   _hd3984840104_
                                   _tl3984740107_))))
                          (let () (declare (not safe)) (_g3984139870_)))))
                  (let () (declare (not safe)) (_g3984139870_))))))))
    (define |gerbil/core/match[:0:]#match*|
      (lambda (_stx40192_)
        (let* ((_g4019540219_
                (lambda (_g4019640215_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g4019640215_)))
               (_g4019440431_
                (lambda (_g4019640223_)
                  (if (gx#stx-pair? _g4019640223_)
                      (let ((_e4020140226_ (gx#syntax-e _g4019640223_)))
                        (let ((_hd4020040230_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4020140226_)))
                              (_tl4019940233_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4020140226_))))
                          (if (gx#stx-pair? _tl4019940233_)
                              (let ((_e4020440236_
                                     (gx#syntax-e _tl4019940233_)))
                                (let ((_hd4020340240_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4020440236_)))
                                      (_tl4020240243_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4020440236_))))
                                  (if (gx#stx-pair/null? _hd4020340240_)
                                      (let ((_g45090_
                                             (gx#syntax-split-splice
                                              _hd4020340240_
                                              '0)))
                                        (begin
                                          (let ((_g45091_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45090_)
                                                       (##vector-length
                                                        _g45090_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45091_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45091_)))
                                          (let ((_target4020540246_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g45090_ 0)))
                                                (_tl4020740249_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g45090_ 1))))
                                            (if (gx#stx-null? _tl4020740249_)
                                                (letrec ((_loop4020840252_
                                                          (lambda (_hd4020640256_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e4021240259_)
                    (if (gx#stx-pair? _hd4020640256_)
                        (let ((_e4020940262_ (gx#syntax-e _hd4020640256_)))
                          (let ((_lp-hd4021040266_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4020940262_)))
                                (_lp-tl4021140269_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4020940262_))))
                            (_loop4020840252_
                             _lp-tl4021140269_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd4021040266_ _e4021240259_)))))
                        (let ((_e4021340272_ (reverse _e4021240259_)))
                          ((lambda (_L40276_ _L40278_)
                             (if (gx#stx-list? _L40276_)
                                 (let* ((_g4029640313_
                                         (lambda (_g4029740309_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g4029740309_)))
                                        (_g4029540419_
                                         (lambda (_g4029740317_)
                                           (if (gx#stx-pair/null?
                                                _g4029740317_)
                                               (let ((_g45092_
                                                      (gx#syntax-split-splice
                                                       _g4029740317_
                                                       '0)))
                                                 (begin
                                                   (let ((_g45093_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g45092_)
                        (##vector-length _g45092_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g45093_ 2)))
                 (error "Context expects 2 values" _g45093_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target4029940320_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g45092_
                                                             0)))
                                                         (_tl4030140323_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g45092_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _tl4030140323_)
                                                         (letrec ((_loop4030240326_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd4030040330_ _$e4030640333_)
                             (if (gx#stx-pair? _hd4030040330_)
                                 (let ((_e4030340336_
                                        (gx#syntax-e _hd4030040330_)))
                                   (let ((_lp-hd4030440340_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e4030340336_)))
                                         (_lp-tl4030540343_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e4030340336_))))
                                     (_loop4030240326_
                                      _lp-tl4030540343_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd4030440340_
                                              _$e4030640333_)))))
                                 (let ((_$e4030740346_
                                        (reverse _$e4030640333_)))
                                   ((lambda (_L40350_)
                                      (let ()
                                        (let* ((_g4036640374_
                                                (lambda (_g4036740370_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g4036740370_)))
                                               (_g4036540407_
                                                (lambda (_g4036740378_)
                                                  ((lambda (_L40381_)
                                                     (let ()
                                                       (let ()
                                                         (let ((__tmp45099
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'let))
                       (__tmp45094
                        (let ((__tmp45096
                               (begin
                                 (gx#syntax-check-splice-targets
                                  _L40278_
                                  _L40350_)
                                 (foldr (lambda (_g4039540399_
                                                 _g4039640402_
                                                 _g4039740404_)
                                          (let ((__tmp45097
                                                 (let ((__tmp45098
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g4039540399_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _g4039640402_
                                                         __tmp45098))))
                                            (declare (not safe))
                                            (cons __tmp45097 _g4039740404_)))
                                        '()
                                        _L40278_
                                        _L40350_)))
                              (__tmp45095
                               (let ()
                                 (declare (not safe))
                                 (cons _L40381_ '()))))
                          (declare (not safe))
                          (cons __tmp45096 __tmp45095))))
                   (declare (not safe))
                   (cons __tmp45099 __tmp45094)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g4036740378_))))
                                          (_g4036540407_
                                           (let ((__tmp45100
                                                  (foldr (lambda (_g4041040413_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g4041140416_)
                   (let ()
                     (declare (not safe))
                     (cons _g4041040413_ _g4041140416_)))
                 '()
                 _L40350_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (|gerbil/core/match[1]#generate-match*|
                                              _stx40192_
                                              __tmp45100
                                              _L40276_))))))
                                    _$e4030740346_))))))
                   (_loop4030240326_ _target4029940320_ '()))
                 (_g4029640313_ _g4029740317_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g4029640313_
                                                _g4029740317_)))))
                                   (_g4029540419_
                                    (gx#gentemps
                                     (foldr (lambda (_g4042240425_
                                                     _g4042340428_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g4042240425_
                                                      _g4042340428_)))
                                            '()
                                            _L40278_))))
                                 (_g4019540219_ _g4019640223_)))
                           _tl4020240243_
                           _e4021340272_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop4020840252_
                                                   _target4020540246_
                                                   '()))
                                                (_g4019540219_
                                                 _g4019640223_)))))
                                      (_g4019540219_ _g4019640223_))))
                              (_g4019540219_ _g4019640223_))))
                      (_g4019540219_ _g4019640223_)))))
          (_g4019440431_ _stx40192_))))
    (define |gerbil/core/match[:0:]#with|
      (lambda (_$stx40437_)
        (let* ((___stx4401944020_ _$stx40437_)
               (_g4044340526_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4401944020_))))
          (let ((___kont4402244023_
                 (lambda (_L40856_)
                   (let ((__tmp45103 (gx#datum->syntax '#f 'let))
                         (__tmp45101
                          (let ((__tmp45102
                                 (foldr (lambda (_g4087240875_ _g4087340878_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g4087240875_
                                                  _g4087340878_)))
                                        '()
                                        _L40856_)))
                            (declare (not safe))
                            (cons '() __tmp45102))))
                     (declare (not safe))
                     (cons __tmp45103 __tmp45101))))
                (___kont4402644027_
                 (lambda (_L40764_ _L40766_ _L40767_ _L40768_)
                   (let ((__tmp45104
                          (let ((__tmp45106
                                 (let ((__tmp45107
                                        (let ((__tmp45108
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L40766_ '()))))
                                          (declare (not safe))
                                          (cons _L40767_ __tmp45108))))
                                   (declare (not safe))
                                   (cons __tmp45107 '())))
                                (__tmp45105
                                 (foldr (lambda (_g4079040793_ _g4079140796_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g4079040793_
                                                  _g4079140796_)))
                                        '()
                                        _L40764_)))
                            (declare (not safe))
                            (cons __tmp45106 __tmp45105))))
                     (declare (not safe))
                     (cons _L40768_ __tmp45104))))
                (___kont4403044031_
                 (lambda (_L40637_ _L40639_ _L40640_)
                   (let ((__tmp45115 (gx#datum->syntax '#f 'match*))
                         (__tmp45109
                          (let ((__tmp45114
                                 (foldr (lambda (_g4066640669_ _g4066740672_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g4066640669_
                                                  _g4066740672_)))
                                        '()
                                        _L40639_))
                                (__tmp45110
                                 (let ((__tmp45111
                                        (let ((__tmp45113
                                               (foldr (lambda (_g4066440675_
                                                               _g4066540678_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g4066440675_
                                                                _g4066540678_)))
                                                      '()
                                                      _L40640_))
                                              (__tmp45112
                                               (foldr (lambda (_g4066240681_
                                                               _g4066340684_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g4066240681_
                                                                _g4066340684_)))
                                                      '()
                                                      _L40637_)))
                                          (declare (not safe))
                                          (cons __tmp45113 __tmp45112))))
                                   (declare (not safe))
                                   (cons __tmp45111 '()))))
                            (declare (not safe))
                            (cons __tmp45114 __tmp45110))))
                     (declare (not safe))
                     (cons __tmp45115 __tmp45109)))))
            (let* ((___match4411244113_
                    (lambda (_e4049140533_
                             _hd4049040537_
                             _tl4048940540_
                             _e4049440543_
                             _hd4049340547_
                             _tl4049240550_
                             ___splice4403244033_
                             _target4049540553_
                             _tl4049740556_)
                      (letrec ((_loop4049840559_
                                (lambda (_hd4049640563_
                                         _expr4050240566_
                                         _hd4050340568_)
                                  (if (gx#stx-pair? _hd4049640563_)
                                      (let ((_e4049940571_
                                             (gx#syntax-e _hd4049640563_)))
                                        (let ((_lp-tl4050140578_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4049940571_)))
                                              (_lp-hd4050040575_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4049940571_))))
                                          (if (gx#stx-pair? _lp-hd4050040575_)
                                              (let ((_e4050840581_
                                                     (gx#syntax-e
                                                      _lp-hd4050040575_)))
                                                (let ((_tl4050640588_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e4050840581_)))
                                                      (_hd4050740585_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e4050840581_))))
                                                  (if (gx#stx-pair?
                                                       _tl4050640588_)
                                                      (let ((_e4051140591_
                                                             (gx#syntax-e
                                                              _tl4050640588_)))
                                                        (let ((_tl4050940598_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e4051140591_)))
                      (_hd4051040595_
                       (let () (declare (not safe)) (##car _e4051140591_))))
                  (if (gx#stx-null? _tl4050940598_)
                      (_loop4049840559_
                       _lp-tl4050140578_
                       (let ()
                         (declare (not safe))
                         (cons _hd4051040595_ _expr4050240566_))
                       (let ()
                         (declare (not safe))
                         (cons _hd4050740585_ _hd4050340568_)))
                      (let () (declare (not safe)) (_g4044340526_)))))
              (let () (declare (not safe)) (_g4044340526_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g4044340526_)))))
                                      (let ((_hd4050540604_
                                             (reverse _hd4050340568_))
                                            (_expr4050440601_
                                             (reverse _expr4050240566_)))
                                        (if (gx#stx-pair/null? _tl4049240550_)
                                            (let ((___splice4403444035_
                                                   (gx#syntax-split-splice
                                                    _tl4049240550_
                                                    '0)))
                                              (let ((_tl4051440610_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4403444035_
                                                        '1)))
                                                    (_target4051240607_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice4403444035_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl4051440610_)
                                                    (letrec ((_loop4051540613_
                                                              (lambda (_hd4051340617_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body4051940620_)
                        (if (gx#stx-pair? _hd4051340617_)
                            (let ((_e4051640623_ (gx#syntax-e _hd4051340617_)))
                              (let ((_lp-tl4051840630_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4051640623_)))
                                    (_lp-hd4051740627_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4051640623_))))
                                (_loop4051540613_
                                 _lp-tl4051840630_
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd4051740627_
                                         _body4051940620_)))))
                            (let ((_body4052040633_
                                   (reverse _body4051940620_)))
                              (___kont4403044031_
                               _body4052040633_
                               _expr4050440601_
                               _hd4050540604_))))))
              (_loop4051540613_ _target4051240607_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4044340526_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4044340526_))))))))
                        (_loop4049840559_ _target4049540553_ '() '()))))
                   (___match4410444105_
                    (lambda (_e4049140533_
                             _hd4049040537_
                             _tl4048940540_
                             _e4049440543_
                             _hd4049340547_
                             _tl4049240550_)
                      (if (gx#stx-pair/null? _hd4049340547_)
                          (let ((___splice4403244033_
                                 (gx#syntax-split-splice _hd4049340547_ '0)))
                            (let ((_tl4049740556_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4403244033_ '1)))
                                  (_target4049540553_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice4403244033_ '0))))
                              (if (gx#stx-null? _tl4049740556_)
                                  (___match4411244113_
                                   _e4049140533_
                                   _hd4049040537_
                                   _tl4048940540_
                                   _e4049440543_
                                   _hd4049340547_
                                   _tl4049240550_
                                   ___splice4403244033_
                                   _target4049540553_
                                   _tl4049740556_)
                                  (let ()
                                    (declare (not safe))
                                    (_g4044340526_)))))
                          (let () (declare (not safe)) (_g4044340526_)))))
                   (___match4409244093_
                    (lambda (_e4046740694_
                             _hd4046640698_
                             _tl4046540701_
                             _e4047040704_
                             _hd4046940708_
                             _tl4046840711_
                             _e4047340714_
                             _hd4047240718_
                             _tl4047140721_
                             _e4047640724_
                             _hd4047540728_
                             _tl4047440731_
                             ___splice4402844029_
                             _target4047740734_
                             _tl4047940737_)
                      (letrec ((_loop4048040740_
                                (lambda (_hd4047840744_ _body4048440747_)
                                  (if (gx#stx-pair? _hd4047840744_)
                                      (let ((_e4048140750_
                                             (gx#syntax-e _hd4047840744_)))
                                        (let ((_lp-tl4048340757_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4048140750_)))
                                              (_lp-hd4048240754_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4048140750_))))
                                          (_loop4048040740_
                                           _lp-tl4048340757_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd4048240754_
                                                   _body4048440747_)))))
                                      (let ((_body4048540760_
                                             (reverse _body4048440747_)))
                                        (let ((_L40764_ _body4048540760_)
                                              (_L40766_ _hd4047540728_)
                                              (_L40767_ _hd4047240718_)
                                              (_L40768_ _hd4046640698_))
                                          (if (let ()
                                                (declare (not safe))
                                                (|gerbil/core/match[1]#match-pattern?|
                                                 _L40767_))
                                              (___kont4402644027_
                                               _L40764_
                                               _L40766_
                                               _L40767_
                                               _L40768_)
                                              (___match4410444105_
                                               _e4046740694_
                                               _hd4046640698_
                                               _tl4046540701_
                                               _e4047040704_
                                               _hd4046940708_
                                               _tl4046840711_))))))))
                        (_loop4048040740_ _target4047740734_ '()))))
                   (___match4405844059_
                    (lambda (_e4044840806_
                             _hd4044740810_
                             _tl4044640813_
                             _e4045140816_
                             _hd4045040820_
                             _tl4044940823_
                             ___splice4402444025_
                             _target4045240826_
                             _tl4045440829_)
                      (letrec ((_loop4045540832_
                                (lambda (_hd4045340836_ _body4045940839_)
                                  (if (gx#stx-pair? _hd4045340836_)
                                      (let ((_e4045640842_
                                             (gx#syntax-e _hd4045340836_)))
                                        (let ((_lp-tl4045840849_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4045640842_)))
                                              (_lp-hd4045740846_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4045640842_))))
                                          (_loop4045540832_
                                           _lp-tl4045840849_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd4045740846_
                                                   _body4045940839_)))))
                                      (let ((_body4046040852_
                                             (reverse _body4045940839_)))
                                        (___kont4402244023_
                                         _body4046040852_))))))
                        (_loop4045540832_ _target4045240826_ '())))))
              (if (gx#stx-pair? ___stx4401944020_)
                  (let ((_e4044840806_ (gx#syntax-e ___stx4401944020_)))
                    (let ((_tl4044640813_
                           (let () (declare (not safe)) (##cdr _e4044840806_)))
                          (_hd4044740810_
                           (let ()
                             (declare (not safe))
                             (##car _e4044840806_))))
                      (if (gx#stx-pair? _tl4044640813_)
                          (let ((_e4045140816_ (gx#syntax-e _tl4044640813_)))
                            (let ((_tl4044940823_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4045140816_)))
                                  (_hd4045040820_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4045140816_))))
                              (if (gx#stx-null? _hd4045040820_)
                                  (if (gx#stx-pair/null? _tl4044940823_)
                                      (let ((___splice4402444025_
                                             (gx#syntax-split-splice
                                              _tl4044940823_
                                              '0)))
                                        (let ((_tl4045440829_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4402444025_
                                                  '1)))
                                              (_target4045240826_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4402444025_
                                                  '0))))
                                          (if (gx#stx-null? _tl4045440829_)
                                              (___match4405844059_
                                               _e4044840806_
                                               _hd4044740810_
                                               _tl4044640813_
                                               _e4045140816_
                                               _hd4045040820_
                                               _tl4044940823_
                                               ___splice4402444025_
                                               _target4045240826_
                                               _tl4045440829_)
                                              (if (gx#stx-pair/null?
                                                   _hd4045040820_)
                                                  (let ((___splice4403244033_
                                                         (gx#syntax-split-splice
                                                          _hd4045040820_
                                                          '0)))
                                                    (let ((_tl4049740556_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4403244033_
                                                              '1)))
                                                          (_target4049540553_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4403244033_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl4049740556_)
                                                          (___match4411244113_
                                                           _e4044840806_
                                                           _hd4044740810_
                                                           _tl4044640813_
                                                           _e4045140816_
                                                           _hd4045040820_
                                                           _tl4044940823_
                                                           ___splice4403244033_
                                                           _target4049540553_
                                                           _tl4049740556_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g4044340526_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4044340526_))))))
                                      (if (gx#stx-pair/null? _hd4045040820_)
                                          (let ((___splice4403244033_
                                                 (gx#syntax-split-splice
                                                  _hd4045040820_
                                                  '0)))
                                            (let ((_tl4049740556_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4403244033_
                                                      '1)))
                                                  (_target4049540553_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4403244033_
                                                      '0))))
                                              (if (gx#stx-null? _tl4049740556_)
                                                  (___match4411244113_
                                                   _e4044840806_
                                                   _hd4044740810_
                                                   _tl4044640813_
                                                   _e4045140816_
                                                   _hd4045040820_
                                                   _tl4044940823_
                                                   ___splice4403244033_
                                                   _target4049540553_
                                                   _tl4049740556_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4044340526_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g4044340526_))))
                                  (if (gx#stx-pair? _hd4045040820_)
                                      (let ((_e4047340714_
                                             (gx#syntax-e _hd4045040820_)))
                                        (let ((_tl4047140721_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4047340714_)))
                                              (_hd4047240718_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4047340714_))))
                                          (if (gx#stx-pair? _tl4047140721_)
                                              (let ((_e4047640724_
                                                     (gx#syntax-e
                                                      _tl4047140721_)))
                                                (let ((_tl4047440731_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e4047640724_)))
                                                      (_hd4047540728_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e4047640724_))))
                                                  (if (gx#stx-null?
                                                       _tl4047440731_)
                                                      (if (gx#stx-pair/null?
                                                           _tl4044940823_)
                                                          (let ((___splice4402844029_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _tl4044940823_ '0)))
                    (let ((_tl4047940737_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4402844029_ '1)))
                          (_target4047740734_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4402844029_ '0))))
                      (if (gx#stx-null? _tl4047940737_)
                          (___match4409244093_
                           _e4044840806_
                           _hd4044740810_
                           _tl4044640813_
                           _e4045140816_
                           _hd4045040820_
                           _tl4044940823_
                           _e4047340714_
                           _hd4047240718_
                           _tl4047140721_
                           _e4047640724_
                           _hd4047540728_
                           _tl4047440731_
                           ___splice4402844029_
                           _target4047740734_
                           _tl4047940737_)
                          (if (gx#stx-pair/null? _hd4045040820_)
                              (let ((___splice4403244033_
                                     (gx#syntax-split-splice
                                      _hd4045040820_
                                      '0)))
                                (let ((_tl4049740556_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4403244033_
                                          '1)))
                                      (_target4049540553_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice4403244033_
                                          '0))))
                                  (if (gx#stx-null? _tl4049740556_)
                                      (___match4411244113_
                                       _e4044840806_
                                       _hd4044740810_
                                       _tl4044640813_
                                       _e4045140816_
                                       _hd4045040820_
                                       _tl4044940823_
                                       ___splice4403244033_
                                       _target4049540553_
                                       _tl4049740556_)
                                      (let ()
                                        (declare (not safe))
                                        (_g4044340526_)))))
                              (let () (declare (not safe)) (_g4044340526_))))))
                  (if (gx#stx-pair/null? _hd4045040820_)
                      (let ((___splice4403244033_
                             (gx#syntax-split-splice _hd4045040820_ '0)))
                        (let ((_tl4049740556_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4403244033_ '1)))
                              (_target4049540553_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4403244033_ '0))))
                          (if (gx#stx-null? _tl4049740556_)
                              (___match4411244113_
                               _e4044840806_
                               _hd4044740810_
                               _tl4044640813_
                               _e4045140816_
                               _hd4045040820_
                               _tl4044940823_
                               ___splice4403244033_
                               _target4049540553_
                               _tl4049740556_)
                              (let () (declare (not safe)) (_g4044340526_)))))
                      (let () (declare (not safe)) (_g4044340526_))))
              (if (gx#stx-pair/null? _hd4045040820_)
                  (let ((___splice4403244033_
                         (gx#syntax-split-splice _hd4045040820_ '0)))
                    (let ((_tl4049740556_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4403244033_ '1)))
                          (_target4049540553_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4403244033_ '0))))
                      (if (gx#stx-null? _tl4049740556_)
                          (___match4411244113_
                           _e4044840806_
                           _hd4044740810_
                           _tl4044640813_
                           _e4045140816_
                           _hd4045040820_
                           _tl4044940823_
                           ___splice4403244033_
                           _target4049540553_
                           _tl4049740556_)
                          (let () (declare (not safe)) (_g4044340526_)))))
                  (let () (declare (not safe)) (_g4044340526_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _hd4045040820_)
                                                  (let ((___splice4403244033_
                                                         (gx#syntax-split-splice
                                                          _hd4045040820_
                                                          '0)))
                                                    (let ((_tl4049740556_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4403244033_
                                                              '1)))
                                                          (_target4049540553_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4403244033_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl4049740556_)
                                                          (___match4411244113_
                                                           _e4044840806_
                                                           _hd4044740810_
                                                           _tl4044640813_
                                                           _e4045140816_
                                                           _hd4045040820_
                                                           _tl4044940823_
                                                           ___splice4403244033_
                                                           _target4049540553_
                                                           _tl4049740556_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g4044340526_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4044340526_))))))
                                      (if (gx#stx-pair/null? _hd4045040820_)
                                          (let ((___splice4403244033_
                                                 (gx#syntax-split-splice
                                                  _hd4045040820_
                                                  '0)))
                                            (let ((_tl4049740556_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4403244033_
                                                      '1)))
                                                  (_target4049540553_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4403244033_
                                                      '0))))
                                              (if (gx#stx-null? _tl4049740556_)
                                                  (___match4411244113_
                                                   _e4044840806_
                                                   _hd4044740810_
                                                   _tl4044640813_
                                                   _e4045140816_
                                                   _hd4045040820_
                                                   _tl4044940823_
                                                   ___splice4403244033_
                                                   _target4049540553_
                                                   _tl4049740556_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4044340526_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g4044340526_)))))))
                          (let () (declare (not safe)) (_g4044340526_)))))
                  (let () (declare (not safe)) (_g4044340526_))))))))
    (define |gerbil/core/match[:0:]#with*|
      (lambda (_$stx40889_)
        (let* ((___stx4411544116_ _$stx40889_)
               (_g4089440946_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4411544116_))))
          (let ((___kont4411844119_
                 (lambda (_L41116_ _L41118_ _L41119_ _L41120_ _L41121_)
                   (let ((__tmp45124 (gx#datum->syntax '#f 'with))
                         (__tmp45116
                          (let ((__tmp45121
                                 (let ((__tmp45122
                                        (let ((__tmp45123
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L41119_ '()))))
                                          (declare (not safe))
                                          (cons _L41120_ __tmp45123))))
                                   (declare (not safe))
                                   (cons __tmp45122 '())))
                                (__tmp45117
                                 (let ((__tmp45118
                                        (let ((__tmp45119
                                               (let ((__tmp45120
                                                      (foldr (lambda (_g4114641149_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g4114741152_)
                       (let ()
                         (declare (not safe))
                         (cons _g4114641149_ _g4114741152_)))
                     '()
                     _L41116_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L41118_ __tmp45120))))
                                          (declare (not safe))
                                          (cons _L41121_ __tmp45119))))
                                   (declare (not safe))
                                   (cons __tmp45118 '()))))
                            (declare (not safe))
                            (cons __tmp45121 __tmp45117))))
                     (declare (not safe))
                     (cons __tmp45124 __tmp45116))))
                (___kont4412244123_
                 (lambda (_L41003_)
                   (let ((__tmp45127 (gx#datum->syntax '#f 'let))
                         (__tmp45125
                          (let ((__tmp45126
                                 (foldr (lambda (_g4102041023_ _g4102141026_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g4102041023_
                                                  _g4102141026_)))
                                        '()
                                        _L41003_)))
                            (declare (not safe))
                            (cons '() __tmp45126))))
                     (declare (not safe))
                     (cons __tmp45127 __tmp45125)))))
            (let* ((___match4418844189_
                    (lambda (_e4092840953_
                             _hd4092740957_
                             _tl4092640960_
                             _e4093140963_
                             _hd4093040967_
                             _tl4092940970_
                             ___splice4412444125_
                             _target4093240973_
                             _tl4093440976_)
                      (letrec ((_loop4093540979_
                                (lambda (_hd4093340983_ _body4093940986_)
                                  (if (gx#stx-pair? _hd4093340983_)
                                      (let ((_e4093640989_
                                             (gx#syntax-e _hd4093340983_)))
                                        (let ((_lp-tl4093840996_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4093640989_)))
                                              (_lp-hd4093740993_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4093640989_))))
                                          (_loop4093540979_
                                           _lp-tl4093840996_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd4093740993_
                                                   _body4093940986_)))))
                                      (let ((_body4094040999_
                                             (reverse _body4093940986_)))
                                        (___kont4412244123_
                                         _body4094040999_))))))
                        (_loop4093540979_ _target4093240973_ '()))))
                   (___match4416644167_
                    (lambda (_e4090341036_
                             _hd4090241040_
                             _tl4090141043_
                             _e4090641046_
                             _hd4090541050_
                             _tl4090441053_
                             _e4090941056_
                             _hd4090841060_
                             _tl4090741063_
                             _e4091241066_
                             _hd4091141070_
                             _tl4091041073_
                             _e4091541076_
                             _hd4091441080_
                             _tl4091341083_
                             ___splice4412044121_
                             _target4091641086_
                             _tl4091841089_)
                      (letrec ((_loop4091941092_
                                (lambda (_hd4091741096_ _body4092341099_)
                                  (if (gx#stx-pair? _hd4091741096_)
                                      (let ((_e4092041102_
                                             (gx#syntax-e _hd4091741096_)))
                                        (let ((_lp-tl4092241109_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4092041102_)))
                                              (_lp-hd4092141106_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4092041102_))))
                                          (_loop4091941092_
                                           _lp-tl4092241109_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd4092141106_
                                                   _body4092341099_)))))
                                      (let ((_body4092441112_
                                             (reverse _body4092341099_)))
                                        (___kont4411844119_
                                         _body4092441112_
                                         _tl4090741063_
                                         _hd4091441080_
                                         _hd4091141070_
                                         _hd4090241040_))))))
                        (_loop4091941092_ _target4091641086_ '())))))
              (if (gx#stx-pair? ___stx4411544116_)
                  (let ((_e4090341036_ (gx#syntax-e ___stx4411544116_)))
                    (let ((_tl4090141043_
                           (let () (declare (not safe)) (##cdr _e4090341036_)))
                          (_hd4090241040_
                           (let ()
                             (declare (not safe))
                             (##car _e4090341036_))))
                      (if (gx#stx-pair? _tl4090141043_)
                          (let ((_e4090641046_ (gx#syntax-e _tl4090141043_)))
                            (let ((_tl4090441053_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4090641046_)))
                                  (_hd4090541050_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4090641046_))))
                              (if (gx#stx-pair? _hd4090541050_)
                                  (let ((_e4090941056_
                                         (gx#syntax-e _hd4090541050_)))
                                    (let ((_tl4090741063_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4090941056_)))
                                          (_hd4090841060_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4090941056_))))
                                      (if (gx#stx-pair? _hd4090841060_)
                                          (let ((_e4091241066_
                                                 (gx#syntax-e _hd4090841060_)))
                                            (let ((_tl4091041073_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4091241066_)))
                                                  (_hd4091141070_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4091241066_))))
                                              (if (gx#stx-pair? _tl4091041073_)
                                                  (let ((_e4091541076_
                                                         (gx#syntax-e
                                                          _tl4091041073_)))
                                                    (let ((_tl4091341083_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4091541076_)))
                                                          (_hd4091441080_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4091541076_))))
                                                      (if (gx#stx-null?
                                                           _tl4091341083_)
                                                          (if (gx#stx-pair/null?
                                                               _tl4090441053_)
                                                              (let ((___splice4412044121_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _tl4090441053_ '0)))
                        (let ((_tl4091841089_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4412044121_ '1)))
                              (_target4091641086_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice4412044121_ '0))))
                          (if (gx#stx-null? _tl4091841089_)
                              (___match4416644167_
                               _e4090341036_
                               _hd4090241040_
                               _tl4090141043_
                               _e4090641046_
                               _hd4090541050_
                               _tl4090441053_
                               _e4090941056_
                               _hd4090841060_
                               _tl4090741063_
                               _e4091241066_
                               _hd4091141070_
                               _tl4091041073_
                               _e4091541076_
                               _hd4091441080_
                               _tl4091341083_
                               ___splice4412044121_
                               _target4091641086_
                               _tl4091841089_)
                              (let () (declare (not safe)) (_g4089440946_)))))
                      (let () (declare (not safe)) (_g4089440946_)))
                  (let () (declare (not safe)) (_g4089440946_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4089440946_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g4089440946_)))))
                                  (if (gx#stx-null? _hd4090541050_)
                                      (if (gx#stx-pair/null? _tl4090441053_)
                                          (let ((___splice4412444125_
                                                 (gx#syntax-split-splice
                                                  _tl4090441053_
                                                  '0)))
                                            (let ((_tl4093440976_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4412444125_
                                                      '1)))
                                                  (_target4093240973_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice4412444125_
                                                      '0))))
                                              (if (gx#stx-null? _tl4093440976_)
                                                  (___match4418844189_
                                                   _e4090341036_
                                                   _hd4090241040_
                                                   _tl4090141043_
                                                   _e4090641046_
                                                   _hd4090541050_
                                                   _tl4090441053_
                                                   ___splice4412444125_
                                                   _target4093240973_
                                                   _tl4093440976_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4089440946_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g4089440946_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g4089440946_))))))
                          (let () (declare (not safe)) (_g4089440946_)))))
                  (let () (declare (not safe)) (_g4089440946_))))))))
    (define |gerbil/core/match[:0:]#?|
      (lambda (_$stx41161_)
        (let* ((___stx4419144192_ _$stx41161_)
               (_g4117241318_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4419144192_))))
          (let ((___kont4419444195_
                 (lambda (_L41922_ _L41924_ _L41925_)
                   (let ((__tmp45132 (gx#datum->syntax '#f 'and))
                         (__tmp45128
                          (foldr (lambda (_g4194641949_ _g4194741952_)
                                   (let ((__tmp45129
                                          (let ((__tmp45130
                                                 (let ((__tmp45131
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L41922_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _g4194641949_
                                                         __tmp45131))))
                                            (declare (not safe))
                                            (cons _L41925_ __tmp45130))))
                                     (declare (not safe))
                                     (cons __tmp45129 _g4194741952_)))
                                 '()
                                 _L41924_)))
                     (declare (not safe))
                     (cons __tmp45132 __tmp45128))))
                (___kont4419844199_
                 (lambda (_L41812_ _L41814_ _L41815_)
                   (let ((__tmp45137 (gx#datum->syntax '#f 'or))
                         (__tmp45133
                          (foldr (lambda (_g4183641839_ _g4183741842_)
                                   (let ((__tmp45134
                                          (let ((__tmp45135
                                                 (let ((__tmp45136
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L41812_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _g4183641839_
                                                         __tmp45136))))
                                            (declare (not safe))
                                            (cons _L41815_ __tmp45135))))
                                     (declare (not safe))
                                     (cons __tmp45134 _g4183741842_)))
                                 '()
                                 _L41814_)))
                     (declare (not safe))
                     (cons __tmp45137 __tmp45133))))
                (___kont4420244203_
                 (lambda (_L41712_ _L41714_ _L41715_)
                   (let ((__tmp45142 (gx#datum->syntax '#f 'not))
                         (__tmp45138
                          (let ((__tmp45139
                                 (let ((__tmp45140
                                        (let ((__tmp45141
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L41712_ '()))))
                                          (declare (not safe))
                                          (cons _L41714_ __tmp45141))))
                                   (declare (not safe))
                                   (cons _L41715_ __tmp45140))))
                            (declare (not safe))
                            (cons __tmp45139 '()))))
                     (declare (not safe))
                     (cons __tmp45142 __tmp45138))))
                (___kont4420444205_
                 (lambda (_L41638_ _L41640_)
                   (let ((__tmp45143
                          (let () (declare (not safe)) (cons _L41638_ '()))))
                     (declare (not safe))
                     (cons _L41640_ __tmp45143))))
                (___kont4420644207_
                 (lambda (_L41586_ _L41588_)
                   (let ((__tmp45152 (gx#datum->syntax '#f 'lambda))
                         (__tmp45144
                          (let ((__tmp45150
                                 (let ((__tmp45151
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp45151 '())))
                                (__tmp45145
                                 (let ((__tmp45146
                                        (let ((__tmp45147
                                               (let ((__tmp45148
                                                      (let ((__tmp45149
                                                             (gx#datum->syntax
                                                              '#f
                                                              '$obj)))
                                                        (declare (not safe))
                                                        (cons __tmp45149
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _L41586_ __tmp45148))))
                                          (declare (not safe))
                                          (cons _L41588_ __tmp45147))))
                                   (declare (not safe))
                                   (cons __tmp45146 '()))))
                            (declare (not safe))
                            (cons __tmp45150 __tmp45145))))
                     (declare (not safe))
                     (cons __tmp45152 __tmp45144))))
                (___kont4420844209_
                 (lambda (_L41538_ _L41540_ _L41541_)
                   (let ((__tmp45171 (gx#datum->syntax '#f 'lambda))
                         (__tmp45153
                          (let ((__tmp45169
                                 (let ((__tmp45170
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp45170 '())))
                                (__tmp45154
                                 (let ((__tmp45155
                                        (let ((__tmp45168
                                               (gx#datum->syntax '#f 'alet))
                                              (__tmp45156
                                               (let ((__tmp45161
                                                      (let ((__tmp45167
                                                             (gx#datum->syntax
                                                              '#f
                                                              '$val))
                                                            (__tmp45162
                                                             (let ((__tmp45163
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp45164
                                   (let ((__tmp45165
                                          (let ((__tmp45166
                                                 (gx#datum->syntax '#f '$obj)))
                                            (declare (not safe))
                                            (cons __tmp45166 '()))))
                                     (declare (not safe))
                                     (cons _L41540_ __tmp45165))))
                              (declare (not safe))
                              (cons _L41541_ __tmp45164))))
                       (declare (not safe))
                       (cons __tmp45163 '()))))
                (declare (not safe))
                (cons __tmp45167 __tmp45162)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp45157
                                                      (let ((__tmp45158
                                                             (let ((__tmp45159
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp45160 (gx#datum->syntax '#f '$val)))
                              (declare (not safe))
                              (cons __tmp45160 '()))))
                       (declare (not safe))
                       (cons _L41538_ __tmp45159))))
                (declare (not safe))
                (cons __tmp45158 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp45161
                                                       __tmp45157))))
                                          (declare (not safe))
                                          (cons __tmp45168 __tmp45156))))
                                   (declare (not safe))
                                   (cons __tmp45155 '()))))
                            (declare (not safe))
                            (cons __tmp45169 __tmp45154))))
                     (declare (not safe))
                     (cons __tmp45171 __tmp45153))))
                (___kont4421044211_
                 (lambda (_L41469_ _L41471_ _L41472_)
                   (let ((__tmp45187 (gx#datum->syntax '#f 'lambda))
                         (__tmp45172
                          (let ((__tmp45185
                                 (let ((__tmp45186
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp45186 '())))
                                (__tmp45173
                                 (let ((__tmp45174
                                        (let ((__tmp45184
                                               (gx#datum->syntax '#f 'and))
                                              (__tmp45175
                                               (let ((__tmp45180
                                                      (let ((__tmp45181
                                                             (let ((__tmp45182
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp45183 (gx#datum->syntax '#f '$obj)))
                              (declare (not safe))
                              (cons __tmp45183 '()))))
                       (declare (not safe))
                       (cons _L41471_ __tmp45182))))
                (declare (not safe))
                (cons _L41472_ __tmp45181)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp45176
                                                      (let ((__tmp45177
                                                             (let ((__tmp45178
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp45179 (gx#datum->syntax '#f '$obj)))
                              (declare (not safe))
                              (cons __tmp45179 '()))))
                       (declare (not safe))
                       (cons _L41469_ __tmp45178))))
                (declare (not safe))
                (cons __tmp45177 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp45180
                                                       __tmp45176))))
                                          (declare (not safe))
                                          (cons __tmp45184 __tmp45175))))
                                   (declare (not safe))
                                   (cons __tmp45174 '()))))
                            (declare (not safe))
                            (cons __tmp45185 __tmp45173))))
                     (declare (not safe))
                     (cons __tmp45187 __tmp45172))))
                (___kont4421244213_
                 (lambda (_L41389_ _L41391_ _L41392_ _L41393_)
                   (let ((__tmp45205 (gx#datum->syntax '#f 'lambda))
                         (__tmp45188
                          (let ((__tmp45203
                                 (let ((__tmp45204
                                        (gx#datum->syntax '#f '$obj)))
                                   (declare (not safe))
                                   (cons __tmp45204 '())))
                                (__tmp45189
                                 (let ((__tmp45190
                                        (let ((__tmp45202
                                               (gx#datum->syntax '#f 'and))
                                              (__tmp45191
                                               (let ((__tmp45198
                                                      (let ((__tmp45199
                                                             (let ((__tmp45200
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp45201 (gx#datum->syntax '#f '$obj)))
                              (declare (not safe))
                              (cons __tmp45201 '()))))
                       (declare (not safe))
                       (cons _L41392_ __tmp45200))))
                (declare (not safe))
                (cons _L41393_ __tmp45199)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp45192
                                                      (let ((__tmp45193
                                                             (let ((__tmp45194
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp45195
                                   (let ((__tmp45196
                                          (let ((__tmp45197
                                                 (gx#datum->syntax '#f '$obj)))
                                            (declare (not safe))
                                            (cons __tmp45197 '()))))
                                     (declare (not safe))
                                     (cons _L41391_ __tmp45196))))
                              (declare (not safe))
                              (cons __tmp45195 '()))))
                       (declare (not safe))
                       (cons _L41389_ __tmp45194))))
                (declare (not safe))
                (cons __tmp45193 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp45198
                                                       __tmp45192))))
                                          (declare (not safe))
                                          (cons __tmp45202 __tmp45191))))
                                   (declare (not safe))
                                   (cons __tmp45190 '()))))
                            (declare (not safe))
                            (cons __tmp45203 __tmp45189))))
                     (declare (not safe))
                     (cons __tmp45205 __tmp45188)))))
            (let* ((___match4436444365_
                    (lambda (_e4126441498_
                             _hd4126341502_
                             _tl4126241505_
                             _e4126741508_
                             _hd4126641512_
                             _tl4126541515_
                             _e4127041518_
                             _hd4126941522_
                             _tl4126841525_)
                      (if (gx#identifier? _hd4126941522_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g45207_|
                               _hd4126941522_)
                              (if (gx#stx-pair? _tl4126841525_)
                                  (let ((_e4127341528_
                                         (gx#syntax-e _tl4126841525_)))
                                    (let ((_tl4127141535_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4127341528_)))
                                          (_hd4127241532_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4127341528_))))
                                      (if (gx#stx-null? _tl4127141535_)
                                          (___kont4420844209_
                                           _hd4127241532_
                                           _hd4126641512_
                                           _hd4126341502_)
                                          (let ()
                                            (declare (not safe))
                                            (_g4117241318_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g4117241318_)))
                              (let () (declare (not safe)) (_g4117241318_)))
                          (if (gx#stx-datum? _hd4126941522_)
                              (let ((_e4128641455_ (gx#stx-e _hd4126941522_)))
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _e4128641455_ '::))
                                    (if (gx#stx-pair? _tl4126841525_)
                                        (let ((_e4128941459_
                                               (gx#syntax-e _tl4126841525_)))
                                          (let ((_tl4128741466_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e4128941459_)))
                                                (_hd4128841463_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e4128941459_))))
                                            (if (gx#stx-null? _tl4128741466_)
                                                (___kont4421044211_
                                                 _hd4128841463_
                                                 _hd4126641512_
                                                 _hd4126341502_)
                                                (if (gx#stx-pair?
                                                     _tl4128741466_)
                                                    (let ((_e4130941369_
                                                           (gx#syntax-e
                                                            _tl4128741466_)))
                                                      (let ((_tl4130741376_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e4130941369_)))
                    (_hd4130841373_
                     (let () (declare (not safe)) (##car _e4130941369_))))
                (if (gx#identifier? _hd4130841373_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g45206_|
                         _hd4130841373_)
                        (if (gx#stx-pair? _tl4130741376_)
                            (let ((_e4131241379_ (gx#syntax-e _tl4130741376_)))
                              (let ((_tl4131041386_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4131241379_)))
                                    (_hd4131141383_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4131241379_))))
                                (if (gx#stx-null? _tl4131041386_)
                                    (___kont4421244213_
                                     _hd4131141383_
                                     _hd4128841463_
                                     _hd4126641512_
                                     _hd4126341502_)
                                    (let ()
                                      (declare (not safe))
                                      (_g4117241318_)))))
                            (let () (declare (not safe)) (_g4117241318_)))
                        (let () (declare (not safe)) (_g4117241318_)))
                    (let () (declare (not safe)) (_g4117241318_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4117241318_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g4117241318_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g4117241318_))))
                              (let () (declare (not safe)) (_g4117241318_))))))
                   (___match4434444345_
                    (lambda (_e4125541566_
                             _hd4125441570_
                             _tl4125341573_
                             _e4125841576_
                             _hd4125741580_
                             _tl4125641583_)
                      (if (gx#stx-null? _tl4125641583_)
                          (___kont4420644207_ _hd4125741580_ _hd4125441570_)
                          (if (gx#stx-pair? _tl4125641583_)
                              (let ((_e4127041518_
                                     (gx#syntax-e _tl4125641583_)))
                                (let ((_tl4126841525_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4127041518_)))
                                      (_hd4126941522_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4127041518_))))
                                  (if (gx#identifier? _hd4126941522_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g45207_|
                                           _hd4126941522_)
                                          (if (gx#stx-pair? _tl4126841525_)
                                              (let ((_e4127341528_
                                                     (gx#syntax-e
                                                      _tl4126841525_)))
                                                (let ((_tl4127141535_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e4127341528_)))
                                                      (_hd4127241532_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e4127341528_))))
                                                  (if (gx#stx-null?
                                                       _tl4127141535_)
                                                      (___kont4420844209_
                                                       _hd4127241532_
                                                       _hd4125741580_
                                                       _hd4125441570_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g4117241318_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g4117241318_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g4117241318_)))
                                      (if (gx#stx-datum? _hd4126941522_)
                                          (let ((_e4128641455_
                                                 (gx#stx-e _hd4126941522_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e4128641455_ '::))
                                                (if (gx#stx-pair?
                                                     _tl4126841525_)
                                                    (let ((_e4128941459_
                                                           (gx#syntax-e
                                                            _tl4126841525_)))
                                                      (let ((_tl4128741466_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e4128941459_)))
                    (_hd4128841463_
                     (let () (declare (not safe)) (##car _e4128941459_))))
                (if (gx#stx-null? _tl4128741466_)
                    (___kont4421044211_
                     _hd4128841463_
                     _hd4125741580_
                     _hd4125441570_)
                    (if (gx#stx-pair? _tl4128741466_)
                        (let ((_e4130941369_ (gx#syntax-e _tl4128741466_)))
                          (let ((_tl4130741376_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4130941369_)))
                                (_hd4130841373_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4130941369_))))
                            (if (gx#identifier? _hd4130841373_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g45206_|
                                     _hd4130841373_)
                                    (if (gx#stx-pair? _tl4130741376_)
                                        (let ((_e4131241379_
                                               (gx#syntax-e _tl4130741376_)))
                                          (let ((_tl4131041386_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e4131241379_)))
                                                (_hd4131141383_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e4131241379_))))
                                            (if (gx#stx-null? _tl4131041386_)
                                                (___kont4421244213_
                                                 _hd4131141383_
                                                 _hd4128841463_
                                                 _hd4125741580_
                                                 _hd4125441570_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4117241318_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g4117241318_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g4117241318_)))
                                (let ()
                                  (declare (not safe))
                                  (_g4117241318_)))))
                        (let () (declare (not safe)) (_g4117241318_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4117241318_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4117241318_))))
                                          (let ()
                                            (declare (not safe))
                                            (_g4117241318_))))))
                              (let () (declare (not safe)) (_g4117241318_))))))
                   (___match4427444275_
                    (lambda (_e4120341742_
                             _hd4120241746_
                             _tl4120141749_
                             _e4120641752_
                             _hd4120541756_
                             _tl4120441759_
                             _e4120941762_
                             _hd4120841766_
                             _tl4120741769_
                             ___splice4420044201_
                             _target4121041772_
                             _tl4121241775_)
                      (letrec ((_loop4121341778_
                                (lambda (_hd4121141782_ _pred4121741785_)
                                  (if (gx#stx-pair? _hd4121141782_)
                                      (let ((_e4121441788_
                                             (gx#syntax-e _hd4121141782_)))
                                        (let ((_lp-tl4121641795_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4121441788_)))
                                              (_lp-hd4121541792_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4121441788_))))
                                          (_loop4121341778_
                                           _lp-tl4121641795_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd4121541792_
                                                   _pred4121741785_)))))
                                      (let ((_pred4121841798_
                                             (reverse _pred4121741785_)))
                                        (if (gx#stx-pair? _tl4120441759_)
                                            (let ((_e4122141802_
                                                   (gx#syntax-e
                                                    _tl4120441759_)))
                                              (let ((_tl4121941809_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4122141802_)))
                                                    (_hd4122041806_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4122141802_))))
                                                (if (gx#stx-null?
                                                     _tl4121941809_)
                                                    (___kont4419844199_
                                                     _hd4122041806_
                                                     _pred4121841798_
                                                     _hd4120241746_)
                                                    (___match4436444365_
                                                     _e4120341742_
                                                     _hd4120241746_
                                                     _tl4120141749_
                                                     _e4120641752_
                                                     _hd4120541756_
                                                     _tl4120441759_
                                                     _e4122141802_
                                                     _hd4122041806_
                                                     _tl4121941809_))))
                                            (___match4434444345_
                                             _e4120341742_
                                             _hd4120241746_
                                             _tl4120141749_
                                             _e4120641752_
                                             _hd4120541756_
                                             _tl4120441759_)))))))
                        (_loop4121341778_ _target4121041772_ '()))))
                   (___match4424444245_
                    (lambda (_e4117941852_
                             _hd4117841856_
                             _tl4117741859_
                             _e4118241862_
                             _hd4118141866_
                             _tl4118041869_
                             _e4118541872_
                             _hd4118441876_
                             _tl4118341879_
                             ___splice4419644197_
                             _target4118641882_
                             _tl4118841885_)
                      (letrec ((_loop4118941888_
                                (lambda (_hd4118741892_ _pred4119341895_)
                                  (if (gx#stx-pair? _hd4118741892_)
                                      (let ((_e4119041898_
                                             (gx#syntax-e _hd4118741892_)))
                                        (let ((_lp-tl4119241905_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4119041898_)))
                                              (_lp-hd4119141902_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4119041898_))))
                                          (_loop4118941888_
                                           _lp-tl4119241905_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd4119141902_
                                                   _pred4119341895_)))))
                                      (let ((_pred4119441908_
                                             (reverse _pred4119341895_)))
                                        (if (gx#stx-pair? _tl4118041869_)
                                            (let ((_e4119741912_
                                                   (gx#syntax-e
                                                    _tl4118041869_)))
                                              (let ((_tl4119541919_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4119741912_)))
                                                    (_hd4119641916_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4119741912_))))
                                                (if (gx#stx-null?
                                                     _tl4119541919_)
                                                    (___kont4419444195_
                                                     _hd4119641916_
                                                     _pred4119441908_
                                                     _hd4117841856_)
                                                    (___match4436444365_
                                                     _e4117941852_
                                                     _hd4117841856_
                                                     _tl4117741859_
                                                     _e4118241862_
                                                     _hd4118141866_
                                                     _tl4118041869_
                                                     _e4119741912_
                                                     _hd4119641916_
                                                     _tl4119541919_))))
                                            (___match4434444345_
                                             _e4117941852_
                                             _hd4117841856_
                                             _tl4117741859_
                                             _e4118241862_
                                             _hd4118141866_
                                             _tl4118041869_)))))))
                        (_loop4118941888_ _target4118641882_ '())))))
              (if (gx#stx-pair? ___stx4419144192_)
                  (let ((_e4117941852_ (gx#syntax-e ___stx4419144192_)))
                    (let ((_tl4117741859_
                           (let () (declare (not safe)) (##cdr _e4117941852_)))
                          (_hd4117841856_
                           (let ()
                             (declare (not safe))
                             (##car _e4117941852_))))
                      (if (gx#stx-pair? _tl4117741859_)
                          (let ((_e4118241862_ (gx#syntax-e _tl4117741859_)))
                            (let ((_tl4118041869_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4118241862_)))
                                  (_hd4118141866_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4118241862_))))
                              (if (gx#stx-pair? _hd4118141866_)
                                  (let ((_e4118541872_
                                         (gx#syntax-e _hd4118141866_)))
                                    (let ((_tl4118341879_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4118541872_)))
                                          (_hd4118441876_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4118541872_))))
                                      (if (gx#identifier? _hd4118441876_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g45210_|
                                               _hd4118441876_)
                                              (if (gx#stx-pair/null?
                                                   _tl4118341879_)
                                                  (let ((___splice4419644197_
                                                         (gx#syntax-split-splice
                                                          _tl4118341879_
                                                          '0)))
                                                    (let ((_tl4118841885_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4419644197_
                                                              '1)))
                                                          (_target4118641882_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4419644197_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl4118841885_)
                                                          (___match4424444245_
                                                           _e4117941852_
                                                           _hd4117841856_
                                                           _tl4117741859_
                                                           _e4118241862_
                                                           _hd4118141866_
                                                           _tl4118041869_
                                                           _e4118541872_
                                                           _hd4118441876_
                                                           _tl4118341879_
                                                           ___splice4419644197_
                                                           _target4118641882_
                                                           _tl4118841885_)
                                                          (if (gx#stx-pair?
                                                               _tl4118041869_)
                                                              (let ((_e4125041628_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl4118041869_)))
                        (let ((_tl4124841635_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4125041628_)))
                              (_hd4124941632_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4125041628_))))
                          (if (gx#stx-null? _tl4124841635_)
                              (___kont4420444205_
                               _hd4124941632_
                               _hd4118141866_)
                              (if (gx#identifier? _hd4124941632_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g45207_|
                                       _hd4124941632_)
                                      (if (gx#stx-pair? _tl4124841635_)
                                          (let ((_e4127341528_
                                                 (gx#syntax-e _tl4124841635_)))
                                            (let ((_tl4127141535_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4127341528_)))
                                                  (_hd4127241532_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4127341528_))))
                                              (if (gx#stx-null? _tl4127141535_)
                                                  (___kont4420844209_
                                                   _hd4127241532_
                                                   _hd4118141866_
                                                   _hd4117841856_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4117241318_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g4117241318_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g4117241318_)))
                                  (if (gx#stx-datum? _hd4124941632_)
                                      (let ((_e4128641455_
                                             (gx#stx-e _hd4124941632_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e4128641455_ '::))
                                            (if (gx#stx-pair? _tl4124841635_)
                                                (let ((_e4128941459_
                                                       (gx#syntax-e
                                                        _tl4124841635_)))
                                                  (let ((_tl4128741466_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e4128941459_)))
                                                        (_hd4128841463_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e4128941459_))))
                                                    (if (gx#stx-null?
                                                         _tl4128741466_)
                                                        (___kont4421044211_
                                                         _hd4128841463_
                                                         _hd4118141866_
                                                         _hd4117841856_)
                                                        (if (gx#stx-pair?
                                                             _tl4128741466_)
                                                            (let ((_e4130941369_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl4128741466_)))
                      (let ((_tl4130741376_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4130941369_)))
                            (_hd4130841373_
                             (let ()
                               (declare (not safe))
                               (##car _e4130941369_))))
                        (if (gx#identifier? _hd4130841373_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g45206_|
                                 _hd4130841373_)
                                (if (gx#stx-pair? _tl4130741376_)
                                    (let ((_e4131241379_
                                           (gx#syntax-e _tl4130741376_)))
                                      (let ((_tl4131041386_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4131241379_)))
                                            (_hd4131141383_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4131241379_))))
                                        (if (gx#stx-null? _tl4131041386_)
                                            (___kont4421244213_
                                             _hd4131141383_
                                             _hd4128841463_
                                             _hd4118141866_
                                             _hd4117841856_)
                                            (let ()
                                              (declare (not safe))
                                              (_g4117241318_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g4117241318_)))
                                (let () (declare (not safe)) (_g4117241318_)))
                            (let () (declare (not safe)) (_g4117241318_)))))
                    (let () (declare (not safe)) (_g4117241318_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4117241318_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g4117241318_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g4117241318_)))))))
                      (if (gx#stx-null? _tl4118041869_)
                          (___kont4420644207_ _hd4118141866_ _hd4117841856_)
                          (let () (declare (not safe)) (_g4117241318_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _tl4118041869_)
                                                      (let ((_e4125041628_
                                                             (gx#syntax-e
                                                              _tl4118041869_)))
                                                        (let ((_tl4124841635_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e4125041628_)))
                      (_hd4124941632_
                       (let () (declare (not safe)) (##car _e4125041628_))))
                  (if (gx#stx-null? _tl4124841635_)
                      (___kont4420444205_ _hd4124941632_ _hd4118141866_)
                      (if (gx#identifier? _hd4124941632_)
                          (if (gx#free-identifier=?
                               |gerbil/core/match[1]#_g45207_|
                               _hd4124941632_)
                              (if (gx#stx-pair? _tl4124841635_)
                                  (let ((_e4127341528_
                                         (gx#syntax-e _tl4124841635_)))
                                    (let ((_tl4127141535_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4127341528_)))
                                          (_hd4127241532_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4127341528_))))
                                      (if (gx#stx-null? _tl4127141535_)
                                          (___kont4420844209_
                                           _hd4127241532_
                                           _hd4118141866_
                                           _hd4117841856_)
                                          (let ()
                                            (declare (not safe))
                                            (_g4117241318_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g4117241318_)))
                              (let () (declare (not safe)) (_g4117241318_)))
                          (if (gx#stx-datum? _hd4124941632_)
                              (let ((_e4128641455_ (gx#stx-e _hd4124941632_)))
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _e4128641455_ '::))
                                    (if (gx#stx-pair? _tl4124841635_)
                                        (let ((_e4128941459_
                                               (gx#syntax-e _tl4124841635_)))
                                          (let ((_tl4128741466_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e4128941459_)))
                                                (_hd4128841463_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e4128941459_))))
                                            (if (gx#stx-null? _tl4128741466_)
                                                (___kont4421044211_
                                                 _hd4128841463_
                                                 _hd4118141866_
                                                 _hd4117841856_)
                                                (if (gx#stx-pair?
                                                     _tl4128741466_)
                                                    (let ((_e4130941369_
                                                           (gx#syntax-e
                                                            _tl4128741466_)))
                                                      (let ((_tl4130741376_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e4130941369_)))
                    (_hd4130841373_
                     (let () (declare (not safe)) (##car _e4130941369_))))
                (if (gx#identifier? _hd4130841373_)
                    (if (gx#free-identifier=?
                         |gerbil/core/match[1]#_g45206_|
                         _hd4130841373_)
                        (if (gx#stx-pair? _tl4130741376_)
                            (let ((_e4131241379_ (gx#syntax-e _tl4130741376_)))
                              (let ((_tl4131041386_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4131241379_)))
                                    (_hd4131141383_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4131241379_))))
                                (if (gx#stx-null? _tl4131041386_)
                                    (___kont4421244213_
                                     _hd4131141383_
                                     _hd4128841463_
                                     _hd4118141866_
                                     _hd4117841856_)
                                    (let ()
                                      (declare (not safe))
                                      (_g4117241318_)))))
                            (let () (declare (not safe)) (_g4117241318_)))
                        (let () (declare (not safe)) (_g4117241318_)))
                    (let () (declare (not safe)) (_g4117241318_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4117241318_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g4117241318_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g4117241318_))))
                              (let ()
                                (declare (not safe))
                                (_g4117241318_)))))))
              (if (gx#stx-null? _tl4118041869_)
                  (___kont4420644207_ _hd4118141866_ _hd4117841856_)
                  (let () (declare (not safe)) (_g4117241318_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g45209_|
                                                   _hd4118441876_)
                                                  (if (gx#stx-pair/null?
                                                       _tl4118341879_)
                                                      (let ((___splice4420044201_
                                                             (gx#syntax-split-splice
                                                              _tl4118341879_
                                                              '0)))
                                                        (let ((_tl4121241775_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref ___splice4420044201_ '1)))
                      (_target4121041772_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice4420044201_ '0))))
                  (if (gx#stx-null? _tl4121241775_)
                      (___match4427444275_
                       _e4117941852_
                       _hd4117841856_
                       _tl4117741859_
                       _e4118241862_
                       _hd4118141866_
                       _tl4118041869_
                       _e4118541872_
                       _hd4118441876_
                       _tl4118341879_
                       ___splice4420044201_
                       _target4121041772_
                       _tl4121241775_)
                      (if (gx#stx-pair? _tl4118041869_)
                          (let ((_e4125041628_ (gx#syntax-e _tl4118041869_)))
                            (let ((_tl4124841635_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4125041628_)))
                                  (_hd4124941632_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4125041628_))))
                              (if (gx#stx-null? _tl4124841635_)
                                  (___kont4420444205_
                                   _hd4124941632_
                                   _hd4118141866_)
                                  (if (gx#identifier? _hd4124941632_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g45207_|
                                           _hd4124941632_)
                                          (if (gx#stx-pair? _tl4124841635_)
                                              (let ((_e4127341528_
                                                     (gx#syntax-e
                                                      _tl4124841635_)))
                                                (let ((_tl4127141535_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e4127341528_)))
                                                      (_hd4127241532_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e4127341528_))))
                                                  (if (gx#stx-null?
                                                       _tl4127141535_)
                                                      (___kont4420844209_
                                                       _hd4127241532_
                                                       _hd4118141866_
                                                       _hd4117841856_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g4117241318_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g4117241318_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g4117241318_)))
                                      (if (gx#stx-datum? _hd4124941632_)
                                          (let ((_e4128641455_
                                                 (gx#stx-e _hd4124941632_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e4128641455_ '::))
                                                (if (gx#stx-pair?
                                                     _tl4124841635_)
                                                    (let ((_e4128941459_
                                                           (gx#syntax-e
                                                            _tl4124841635_)))
                                                      (let ((_tl4128741466_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e4128941459_)))
                    (_hd4128841463_
                     (let () (declare (not safe)) (##car _e4128941459_))))
                (if (gx#stx-null? _tl4128741466_)
                    (___kont4421044211_
                     _hd4128841463_
                     _hd4118141866_
                     _hd4117841856_)
                    (if (gx#stx-pair? _tl4128741466_)
                        (let ((_e4130941369_ (gx#syntax-e _tl4128741466_)))
                          (let ((_tl4130741376_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4130941369_)))
                                (_hd4130841373_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4130941369_))))
                            (if (gx#identifier? _hd4130841373_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g45206_|
                                     _hd4130841373_)
                                    (if (gx#stx-pair? _tl4130741376_)
                                        (let ((_e4131241379_
                                               (gx#syntax-e _tl4130741376_)))
                                          (let ((_tl4131041386_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e4131241379_)))
                                                (_hd4131141383_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e4131241379_))))
                                            (if (gx#stx-null? _tl4131041386_)
                                                (___kont4421244213_
                                                 _hd4131141383_
                                                 _hd4128841463_
                                                 _hd4118141866_
                                                 _hd4117841856_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4117241318_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g4117241318_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g4117241318_)))
                                (let ()
                                  (declare (not safe))
                                  (_g4117241318_)))))
                        (let () (declare (not safe)) (_g4117241318_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4117241318_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4117241318_))))
                                          (let ()
                                            (declare (not safe))
                                            (_g4117241318_)))))))
                          (if (gx#stx-null? _tl4118041869_)
                              (___kont4420644207_
                               _hd4118141866_
                               _hd4117841856_)
                              (let ()
                                (declare (not safe))
                                (_g4117241318_)))))))
              (if (gx#stx-pair? _tl4118041869_)
                  (let ((_e4125041628_ (gx#syntax-e _tl4118041869_)))
                    (let ((_tl4124841635_
                           (let () (declare (not safe)) (##cdr _e4125041628_)))
                          (_hd4124941632_
                           (let ()
                             (declare (not safe))
                             (##car _e4125041628_))))
                      (if (gx#stx-null? _tl4124841635_)
                          (___kont4420444205_ _hd4124941632_ _hd4118141866_)
                          (if (gx#identifier? _hd4124941632_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g45207_|
                                   _hd4124941632_)
                                  (if (gx#stx-pair? _tl4124841635_)
                                      (let ((_e4127341528_
                                             (gx#syntax-e _tl4124841635_)))
                                        (let ((_tl4127141535_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4127341528_)))
                                              (_hd4127241532_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4127341528_))))
                                          (if (gx#stx-null? _tl4127141535_)
                                              (___kont4420844209_
                                               _hd4127241532_
                                               _hd4118141866_
                                               _hd4117841856_)
                                              (let ()
                                                (declare (not safe))
                                                (_g4117241318_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g4117241318_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g4117241318_)))
                              (if (gx#stx-datum? _hd4124941632_)
                                  (let ((_e4128641455_
                                         (gx#stx-e _hd4124941632_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (equal? _e4128641455_ '::))
                                        (if (gx#stx-pair? _tl4124841635_)
                                            (let ((_e4128941459_
                                                   (gx#syntax-e
                                                    _tl4124841635_)))
                                              (let ((_tl4128741466_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4128941459_)))
                                                    (_hd4128841463_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4128941459_))))
                                                (if (gx#stx-null?
                                                     _tl4128741466_)
                                                    (___kont4421044211_
                                                     _hd4128841463_
                                                     _hd4118141866_
                                                     _hd4117841856_)
                                                    (if (gx#stx-pair?
                                                         _tl4128741466_)
                                                        (let ((_e4130941369_
                                                               (gx#syntax-e
                                                                _tl4128741466_)))
                                                          (let ((_tl4130741376_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e4130941369_)))
                        (_hd4130841373_
                         (let () (declare (not safe)) (##car _e4130941369_))))
                    (if (gx#identifier? _hd4130841373_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g45206_|
                             _hd4130841373_)
                            (if (gx#stx-pair? _tl4130741376_)
                                (let ((_e4131241379_
                                       (gx#syntax-e _tl4130741376_)))
                                  (let ((_tl4131041386_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4131241379_)))
                                        (_hd4131141383_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4131241379_))))
                                    (if (gx#stx-null? _tl4131041386_)
                                        (___kont4421244213_
                                         _hd4131141383_
                                         _hd4128841463_
                                         _hd4118141866_
                                         _hd4117841856_)
                                        (let ()
                                          (declare (not safe))
                                          (_g4117241318_)))))
                                (let () (declare (not safe)) (_g4117241318_)))
                            (let () (declare (not safe)) (_g4117241318_)))
                        (let () (declare (not safe)) (_g4117241318_)))))
                (let () (declare (not safe)) (_g4117241318_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_g4117241318_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g4117241318_))))
                                  (let ()
                                    (declare (not safe))
                                    (_g4117241318_)))))))
                  (if (gx#stx-null? _tl4118041869_)
                      (___kont4420644207_ _hd4118141866_ _hd4117841856_)
                      (let () (declare (not safe)) (_g4117241318_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g45208_|
                                                       _hd4118441876_)
                                                      (if (gx#stx-pair?
                                                           _tl4118341879_)
                                                          (let ((_e4123641692_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl4118341879_)))
                    (let ((_tl4123441699_
                           (let () (declare (not safe)) (##cdr _e4123641692_)))
                          (_hd4123541696_
                           (let ()
                             (declare (not safe))
                             (##car _e4123641692_))))
                      (if (gx#stx-null? _tl4123441699_)
                          (if (gx#stx-pair? _tl4118041869_)
                              (let ((_e4123941702_
                                     (gx#syntax-e _tl4118041869_)))
                                (let ((_tl4123741709_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4123941702_)))
                                      (_hd4123841706_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4123941702_))))
                                  (if (gx#stx-null? _tl4123741709_)
                                      (___kont4420244203_
                                       _hd4123841706_
                                       _hd4123541696_
                                       _hd4117841856_)
                                      (if (gx#identifier? _hd4123841706_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g45207_|
                                               _hd4123841706_)
                                              (if (gx#stx-pair? _tl4123741709_)
                                                  (let ((_e4127341528_
                                                         (gx#syntax-e
                                                          _tl4123741709_)))
                                                    (let ((_tl4127141535_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4127341528_)))
                                                          (_hd4127241532_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4127341528_))))
                                                      (if (gx#stx-null?
                                                           _tl4127141535_)
                                                          (___kont4420844209_
                                                           _hd4127241532_
                                                           _hd4118141866_
                                                           _hd4117841856_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g4117241318_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4117241318_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g4117241318_)))
                                          (if (gx#stx-datum? _hd4123841706_)
                                              (let ((_e4128641455_
                                                     (gx#stx-e
                                                      _hd4123841706_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (equal? _e4128641455_
                                                              '::))
                                                    (if (gx#stx-pair?
                                                         _tl4123741709_)
                                                        (let ((_e4128941459_
                                                               (gx#syntax-e
                                                                _tl4123741709_)))
                                                          (let ((_tl4128741466_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e4128941459_)))
                        (_hd4128841463_
                         (let () (declare (not safe)) (##car _e4128941459_))))
                    (if (gx#stx-null? _tl4128741466_)
                        (___kont4421044211_
                         _hd4128841463_
                         _hd4118141866_
                         _hd4117841856_)
                        (if (gx#stx-pair? _tl4128741466_)
                            (let ((_e4130941369_ (gx#syntax-e _tl4128741466_)))
                              (let ((_tl4130741376_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4130941369_)))
                                    (_hd4130841373_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4130941369_))))
                                (if (gx#identifier? _hd4130841373_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g45206_|
                                         _hd4130841373_)
                                        (if (gx#stx-pair? _tl4130741376_)
                                            (let ((_e4131241379_
                                                   (gx#syntax-e
                                                    _tl4130741376_)))
                                              (let ((_tl4131041386_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4131241379_)))
                                                    (_hd4131141383_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4131241379_))))
                                                (if (gx#stx-null?
                                                     _tl4131041386_)
                                                    (___kont4421244213_
                                                     _hd4131141383_
                                                     _hd4128841463_
                                                     _hd4118141866_
                                                     _hd4117841856_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4117241318_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4117241318_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g4117241318_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g4117241318_)))))
                            (let () (declare (not safe)) (_g4117241318_))))))
                (let () (declare (not safe)) (_g4117241318_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4117241318_))))
                                              (let ()
                                                (declare (not safe))
                                                (_g4117241318_)))))))
                              (if (gx#stx-null? _tl4118041869_)
                                  (___kont4420644207_
                                   _hd4118141866_
                                   _hd4117841856_)
                                  (let ()
                                    (declare (not safe))
                                    (_g4117241318_))))
                          (if (gx#stx-pair? _tl4118041869_)
                              (let ((_e4125041628_
                                     (gx#syntax-e _tl4118041869_)))
                                (let ((_tl4124841635_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4125041628_)))
                                      (_hd4124941632_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4125041628_))))
                                  (if (gx#stx-null? _tl4124841635_)
                                      (___kont4420444205_
                                       _hd4124941632_
                                       _hd4118141866_)
                                      (if (gx#identifier? _hd4124941632_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g45207_|
                                               _hd4124941632_)
                                              (if (gx#stx-pair? _tl4124841635_)
                                                  (let ((_e4127341528_
                                                         (gx#syntax-e
                                                          _tl4124841635_)))
                                                    (let ((_tl4127141535_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4127341528_)))
                                                          (_hd4127241532_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4127341528_))))
                                                      (if (gx#stx-null?
                                                           _tl4127141535_)
                                                          (___kont4420844209_
                                                           _hd4127241532_
                                                           _hd4118141866_
                                                           _hd4117841856_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g4117241318_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4117241318_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g4117241318_)))
                                          (if (gx#stx-datum? _hd4124941632_)
                                              (let ((_e4128641455_
                                                     (gx#stx-e
                                                      _hd4124941632_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (equal? _e4128641455_
                                                              '::))
                                                    (if (gx#stx-pair?
                                                         _tl4124841635_)
                                                        (let ((_e4128941459_
                                                               (gx#syntax-e
                                                                _tl4124841635_)))
                                                          (let ((_tl4128741466_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e4128941459_)))
                        (_hd4128841463_
                         (let () (declare (not safe)) (##car _e4128941459_))))
                    (if (gx#stx-null? _tl4128741466_)
                        (___kont4421044211_
                         _hd4128841463_
                         _hd4118141866_
                         _hd4117841856_)
                        (if (gx#stx-pair? _tl4128741466_)
                            (let ((_e4130941369_ (gx#syntax-e _tl4128741466_)))
                              (let ((_tl4130741376_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4130941369_)))
                                    (_hd4130841373_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4130941369_))))
                                (if (gx#identifier? _hd4130841373_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/match[1]#_g45206_|
                                         _hd4130841373_)
                                        (if (gx#stx-pair? _tl4130741376_)
                                            (let ((_e4131241379_
                                                   (gx#syntax-e
                                                    _tl4130741376_)))
                                              (let ((_tl4131041386_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4131241379_)))
                                                    (_hd4131141383_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4131241379_))))
                                                (if (gx#stx-null?
                                                     _tl4131041386_)
                                                    (___kont4421244213_
                                                     _hd4131141383_
                                                     _hd4128841463_
                                                     _hd4118141866_
                                                     _hd4117841856_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4117241318_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4117241318_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g4117241318_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g4117241318_)))))
                            (let () (declare (not safe)) (_g4117241318_))))))
                (let () (declare (not safe)) (_g4117241318_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4117241318_))))
                                              (let ()
                                                (declare (not safe))
                                                (_g4117241318_)))))))
                              (if (gx#stx-null? _tl4118041869_)
                                  (___kont4420644207_
                                   _hd4118141866_
                                   _hd4117841856_)
                                  (let ()
                                    (declare (not safe))
                                    (_g4117241318_)))))))
                  (if (gx#stx-pair? _tl4118041869_)
                      (let ((_e4125041628_ (gx#syntax-e _tl4118041869_)))
                        (let ((_tl4124841635_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4125041628_)))
                              (_hd4124941632_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4125041628_))))
                          (if (gx#stx-null? _tl4124841635_)
                              (___kont4420444205_
                               _hd4124941632_
                               _hd4118141866_)
                              (if (gx#identifier? _hd4124941632_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/match[1]#_g45207_|
                                       _hd4124941632_)
                                      (if (gx#stx-pair? _tl4124841635_)
                                          (let ((_e4127341528_
                                                 (gx#syntax-e _tl4124841635_)))
                                            (let ((_tl4127141535_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4127341528_)))
                                                  (_hd4127241532_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4127341528_))))
                                              (if (gx#stx-null? _tl4127141535_)
                                                  (___kont4420844209_
                                                   _hd4127241532_
                                                   _hd4118141866_
                                                   _hd4117841856_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4117241318_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g4117241318_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g4117241318_)))
                                  (if (gx#stx-datum? _hd4124941632_)
                                      (let ((_e4128641455_
                                             (gx#stx-e _hd4124941632_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e4128641455_ '::))
                                            (if (gx#stx-pair? _tl4124841635_)
                                                (let ((_e4128941459_
                                                       (gx#syntax-e
                                                        _tl4124841635_)))
                                                  (let ((_tl4128741466_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e4128941459_)))
                                                        (_hd4128841463_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e4128941459_))))
                                                    (if (gx#stx-null?
                                                         _tl4128741466_)
                                                        (___kont4421044211_
                                                         _hd4128841463_
                                                         _hd4118141866_
                                                         _hd4117841856_)
                                                        (if (gx#stx-pair?
                                                             _tl4128741466_)
                                                            (let ((_e4130941369_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl4128741466_)))
                      (let ((_tl4130741376_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4130941369_)))
                            (_hd4130841373_
                             (let ()
                               (declare (not safe))
                               (##car _e4130941369_))))
                        (if (gx#identifier? _hd4130841373_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/match[1]#_g45206_|
                                 _hd4130841373_)
                                (if (gx#stx-pair? _tl4130741376_)
                                    (let ((_e4131241379_
                                           (gx#syntax-e _tl4130741376_)))
                                      (let ((_tl4131041386_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4131241379_)))
                                            (_hd4131141383_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4131241379_))))
                                        (if (gx#stx-null? _tl4131041386_)
                                            (___kont4421244213_
                                             _hd4131141383_
                                             _hd4128841463_
                                             _hd4118141866_
                                             _hd4117841856_)
                                            (let ()
                                              (declare (not safe))
                                              (_g4117241318_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g4117241318_)))
                                (let () (declare (not safe)) (_g4117241318_)))
                            (let () (declare (not safe)) (_g4117241318_)))))
                    (let () (declare (not safe)) (_g4117241318_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4117241318_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g4117241318_))))
                                      (let ()
                                        (declare (not safe))
                                        (_g4117241318_)))))))
                      (if (gx#stx-null? _tl4118041869_)
                          (___kont4420644207_ _hd4118141866_ _hd4117841856_)
                          (let () (declare (not safe)) (_g4117241318_)))))
              (if (gx#stx-pair? _tl4118041869_)
                  (let ((_e4125041628_ (gx#syntax-e _tl4118041869_)))
                    (let ((_tl4124841635_
                           (let () (declare (not safe)) (##cdr _e4125041628_)))
                          (_hd4124941632_
                           (let ()
                             (declare (not safe))
                             (##car _e4125041628_))))
                      (if (gx#stx-null? _tl4124841635_)
                          (___kont4420444205_ _hd4124941632_ _hd4118141866_)
                          (if (gx#identifier? _hd4124941632_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/match[1]#_g45207_|
                                   _hd4124941632_)
                                  (if (gx#stx-pair? _tl4124841635_)
                                      (let ((_e4127341528_
                                             (gx#syntax-e _tl4124841635_)))
                                        (let ((_tl4127141535_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4127341528_)))
                                              (_hd4127241532_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4127341528_))))
                                          (if (gx#stx-null? _tl4127141535_)
                                              (___kont4420844209_
                                               _hd4127241532_
                                               _hd4118141866_
                                               _hd4117841856_)
                                              (let ()
                                                (declare (not safe))
                                                (_g4117241318_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g4117241318_)))
                                  (let ()
                                    (declare (not safe))
                                    (_g4117241318_)))
                              (if (gx#stx-datum? _hd4124941632_)
                                  (let ((_e4128641455_
                                         (gx#stx-e _hd4124941632_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (equal? _e4128641455_ '::))
                                        (if (gx#stx-pair? _tl4124841635_)
                                            (let ((_e4128941459_
                                                   (gx#syntax-e
                                                    _tl4124841635_)))
                                              (let ((_tl4128741466_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4128941459_)))
                                                    (_hd4128841463_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4128941459_))))
                                                (if (gx#stx-null?
                                                     _tl4128741466_)
                                                    (___kont4421044211_
                                                     _hd4128841463_
                                                     _hd4118141866_
                                                     _hd4117841856_)
                                                    (if (gx#stx-pair?
                                                         _tl4128741466_)
                                                        (let ((_e4130941369_
                                                               (gx#syntax-e
                                                                _tl4128741466_)))
                                                          (let ((_tl4130741376_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e4130941369_)))
                        (_hd4130841373_
                         (let () (declare (not safe)) (##car _e4130941369_))))
                    (if (gx#identifier? _hd4130841373_)
                        (if (gx#free-identifier=?
                             |gerbil/core/match[1]#_g45206_|
                             _hd4130841373_)
                            (if (gx#stx-pair? _tl4130741376_)
                                (let ((_e4131241379_
                                       (gx#syntax-e _tl4130741376_)))
                                  (let ((_tl4131041386_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4131241379_)))
                                        (_hd4131141383_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4131241379_))))
                                    (if (gx#stx-null? _tl4131041386_)
                                        (___kont4421244213_
                                         _hd4131141383_
                                         _hd4128841463_
                                         _hd4118141866_
                                         _hd4117841856_)
                                        (let ()
                                          (declare (not safe))
                                          (_g4117241318_)))))
                                (let () (declare (not safe)) (_g4117241318_)))
                            (let () (declare (not safe)) (_g4117241318_)))
                        (let () (declare (not safe)) (_g4117241318_)))))
                (let () (declare (not safe)) (_g4117241318_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_g4117241318_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g4117241318_))))
                                  (let ()
                                    (declare (not safe))
                                    (_g4117241318_)))))))
                  (if (gx#stx-null? _tl4118041869_)
                      (___kont4420644207_ _hd4118141866_ _hd4117841856_)
                      (let () (declare (not safe)) (_g4117241318_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _tl4118041869_)
                                              (let ((_e4125041628_
                                                     (gx#syntax-e
                                                      _tl4118041869_)))
                                                (let ((_tl4124841635_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e4125041628_)))
                                                      (_hd4124941632_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e4125041628_))))
                                                  (if (gx#stx-null?
                                                       _tl4124841635_)
                                                      (___kont4420444205_
                                                       _hd4124941632_
                                                       _hd4118141866_)
                                                      (if (gx#identifier?
                                                           _hd4124941632_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core/match[1]#_g45207_|
                                                               _hd4124941632_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl4124841635_)
                          (let ((_e4127341528_ (gx#syntax-e _tl4124841635_)))
                            (let ((_tl4127141535_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4127341528_)))
                                  (_hd4127241532_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4127341528_))))
                              (if (gx#stx-null? _tl4127141535_)
                                  (___kont4420844209_
                                   _hd4127241532_
                                   _hd4118141866_
                                   _hd4117841856_)
                                  (let ()
                                    (declare (not safe))
                                    (_g4117241318_)))))
                          (let () (declare (not safe)) (_g4117241318_)))
                      (let () (declare (not safe)) (_g4117241318_)))
                  (if (gx#stx-datum? _hd4124941632_)
                      (let ((_e4128641455_ (gx#stx-e _hd4124941632_)))
                        (if (let ()
                              (declare (not safe))
                              (equal? _e4128641455_ '::))
                            (if (gx#stx-pair? _tl4124841635_)
                                (let ((_e4128941459_
                                       (gx#syntax-e _tl4124841635_)))
                                  (let ((_tl4128741466_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4128941459_)))
                                        (_hd4128841463_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4128941459_))))
                                    (if (gx#stx-null? _tl4128741466_)
                                        (___kont4421044211_
                                         _hd4128841463_
                                         _hd4118141866_
                                         _hd4117841856_)
                                        (if (gx#stx-pair? _tl4128741466_)
                                            (let ((_e4130941369_
                                                   (gx#syntax-e
                                                    _tl4128741466_)))
                                              (let ((_tl4130741376_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4130941369_)))
                                                    (_hd4130841373_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4130941369_))))
                                                (if (gx#identifier?
                                                     _hd4130841373_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/match[1]#_g45206_|
                                                         _hd4130841373_)
                                                        (if (gx#stx-pair?
                                                             _tl4130741376_)
                                                            (let ((_e4131241379_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl4130741376_)))
                      (let ((_tl4131041386_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4131241379_)))
                            (_hd4131141383_
                             (let ()
                               (declare (not safe))
                               (##car _e4131241379_))))
                        (if (gx#stx-null? _tl4131041386_)
                            (___kont4421244213_
                             _hd4131141383_
                             _hd4128841463_
                             _hd4118141866_
                             _hd4117841856_)
                            (let () (declare (not safe)) (_g4117241318_)))))
                    (let () (declare (not safe)) (_g4117241318_)))
                (let () (declare (not safe)) (_g4117241318_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4117241318_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4117241318_))))))
                                (let () (declare (not safe)) (_g4117241318_)))
                            (let () (declare (not safe)) (_g4117241318_))))
                      (let () (declare (not safe)) (_g4117241318_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null? _tl4118041869_)
                                                  (___kont4420644207_
                                                   _hd4118141866_
                                                   _hd4117841856_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4117241318_)))))))
                                  (if (gx#stx-pair? _tl4118041869_)
                                      (let ((_e4125041628_
                                             (gx#syntax-e _tl4118041869_)))
                                        (let ((_tl4124841635_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4125041628_)))
                                              (_hd4124941632_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4125041628_))))
                                          (if (gx#stx-null? _tl4124841635_)
                                              (___kont4420444205_
                                               _hd4124941632_
                                               _hd4118141866_)
                                              (if (gx#identifier?
                                                   _hd4124941632_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/match[1]#_g45207_|
                                                       _hd4124941632_)
                                                      (if (gx#stx-pair?
                                                           _tl4124841635_)
                                                          (let ((_e4127341528_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl4124841635_)))
                    (let ((_tl4127141535_
                           (let () (declare (not safe)) (##cdr _e4127341528_)))
                          (_hd4127241532_
                           (let ()
                             (declare (not safe))
                             (##car _e4127341528_))))
                      (if (gx#stx-null? _tl4127141535_)
                          (___kont4420844209_
                           _hd4127241532_
                           _hd4118141866_
                           _hd4117841856_)
                          (let () (declare (not safe)) (_g4117241318_)))))
                  (let () (declare (not safe)) (_g4117241318_)))
              (let () (declare (not safe)) (_g4117241318_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-datum?
                                                       _hd4124941632_)
                                                      (let ((_e4128641455_
                                                             (gx#stx-e
                                                              _hd4124941632_)))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (equal? _e4128641455_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '::))
                    (if (gx#stx-pair? _tl4124841635_)
                        (let ((_e4128941459_ (gx#syntax-e _tl4124841635_)))
                          (let ((_tl4128741466_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4128941459_)))
                                (_hd4128841463_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4128941459_))))
                            (if (gx#stx-null? _tl4128741466_)
                                (___kont4421044211_
                                 _hd4128841463_
                                 _hd4118141866_
                                 _hd4117841856_)
                                (if (gx#stx-pair? _tl4128741466_)
                                    (let ((_e4130941369_
                                           (gx#syntax-e _tl4128741466_)))
                                      (let ((_tl4130741376_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4130941369_)))
                                            (_hd4130841373_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4130941369_))))
                                        (if (gx#identifier? _hd4130841373_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/match[1]#_g45206_|
                                                 _hd4130841373_)
                                                (if (gx#stx-pair?
                                                     _tl4130741376_)
                                                    (let ((_e4131241379_
                                                           (gx#syntax-e
                                                            _tl4130741376_)))
                                                      (let ((_tl4131041386_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e4131241379_)))
                    (_hd4131141383_
                     (let () (declare (not safe)) (##car _e4131241379_))))
                (if (gx#stx-null? _tl4131041386_)
                    (___kont4421244213_
                     _hd4131141383_
                     _hd4128841463_
                     _hd4118141866_
                     _hd4117841856_)
                    (let () (declare (not safe)) (_g4117241318_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4117241318_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4117241318_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g4117241318_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g4117241318_))))))
                        (let () (declare (not safe)) (_g4117241318_)))
                    (let () (declare (not safe)) (_g4117241318_))))
              (let () (declare (not safe)) (_g4117241318_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-null? _tl4118041869_)
                                          (___kont4420644207_
                                           _hd4118141866_
                                           _hd4117841856_)
                                          (let ()
                                            (declare (not safe))
                                            (_g4117241318_)))))))
                          (let () (declare (not safe)) (_g4117241318_)))))
                  (let () (declare (not safe)) (_g4117241318_))))))))
    (define |gerbil/core/match[:0:]#defsyntax-for-match|
      (lambda (_$stx41961_)
        (let* ((___stx4445944460_ _$stx41961_)
               (_g4196642000_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4445944460_))))
          (let ((___kont4446244463_
                 (lambda (_L42104_ _L42106_ _L42107_)
                   (let ((__tmp45272 (gx#datum->syntax '#f 'defsyntax))
                         (__tmp45211
                          (let ((__tmp45212
                                 (let ((__tmp45213
                                        (let ((__tmp45271
                                               (gx#datum->syntax
                                                '#f
                                                'make-match-macro))
                                              (__tmp45214
                                               (let ((__tmp45215
                                                      (let ((__tmp45216
                                                             (let ((__tmp45270
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'let))
                           (__tmp45217
                            (let ((__tmp45262
                                   (let ((__tmp45267
                                          (let ((__tmp45269
                                                 (gx#datum->syntax
                                                  '#f
                                                  '$match-e))
                                                (__tmp45268
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L42106_ '()))))
                                            (declare (not safe))
                                            (cons __tmp45269 __tmp45268)))
                                         (__tmp45263
                                          (let ((__tmp45264
                                                 (let ((__tmp45266
                                                        (gx#datum->syntax
                                                         '#f
                                                         '$macro-e))
                                                       (__tmp45265
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L42104_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp45266
                                                         __tmp45265))))
                                            (declare (not safe))
                                            (cons __tmp45264 '()))))
                                     (declare (not safe))
                                     (cons __tmp45267 __tmp45263)))
                                  (__tmp45218
                                   (let ((__tmp45219
                                          (let ((__tmp45261
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp45220
                                                 (let ((__tmp45259
                                                        (let ((__tmp45260
                                                               (gx#datum->syntax
                                                                '#f
                                                                '$stx)))
                                                          (declare (not safe))
                                                          (cons __tmp45260
                                                                '())))
                                                       (__tmp45221
                                                        (let ((__tmp45222
                                                               (let ((__tmp45258
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'syntax-case))
                             (__tmp45223
                              (let ((__tmp45257 (gx#datum->syntax '#f '$stx))
                                    (__tmp45224
                                     (let ((__tmp45225
                                            (let ((__tmp45236
                                                   (let ((__tmp45255
                                                          (let ((__tmp45256
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'body)))
                    (declare (not safe))
                    (cons 'match: __tmp45256)))
                 (__tmp45237
                  (let ((__tmp45238
                         (let ((__tmp45254
                                (gx#datum->syntax '#f 'core-apply-expander))
                               (__tmp45239
                                (let ((__tmp45253
                                       (gx#datum->syntax '#f '$match-e))
                                      (__tmp45240
                                       (let ((__tmp45241
                                              (let ((__tmp45252
                                                     (gx#datum->syntax
                                                      '#f
                                                      'stx-wrap-source))
                                                    (__tmp45242
                                                     (let ((__tmp45248
                                                            (let ((__tmp45251
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'syntax))
                          (__tmp45249
                           (let ((__tmp45250 (gx#datum->syntax '#f 'body)))
                             (declare (not safe))
                             (cons __tmp45250 '()))))
                      (declare (not safe))
                      (cons __tmp45251 __tmp45249)))
                   (__tmp45243
                    (let ((__tmp45244
                           (let ((__tmp45247
                                  (gx#datum->syntax '#f 'stx-source))
                                 (__tmp45245
                                  (let ((__tmp45246
                                         (gx#datum->syntax '#f '$stx)))
                                    (declare (not safe))
                                    (cons __tmp45246 '()))))
                             (declare (not safe))
                             (cons __tmp45247 __tmp45245))))
                      (declare (not safe))
                      (cons __tmp45244 '()))))
               (declare (not safe))
               (cons __tmp45248 __tmp45243))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp45252 __tmp45242))))
                                         (declare (not safe))
                                         (cons __tmp45241 '()))))
                                  (declare (not safe))
                                  (cons __tmp45253 __tmp45240))))
                           (declare (not safe))
                           (cons __tmp45254 __tmp45239))))
                    (declare (not safe))
                    (cons __tmp45238 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp45255
                                                           __tmp45237)))
                                                  (__tmp45226
                                                   (let ((__tmp45227
                                                          (let ((__tmp45235
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f '_))
                        (__tmp45228
                         (let ((__tmp45229
                                (let ((__tmp45234
                                       (gx#datum->syntax
                                        '#f
                                        'core-apply-expander))
                                      (__tmp45230
                                       (let ((__tmp45233
                                              (gx#datum->syntax '#f '$macro-e))
                                             (__tmp45231
                                              (let ((__tmp45232
                                                     (gx#datum->syntax
                                                      '#f
                                                      '$stx)))
                                                (declare (not safe))
                                                (cons __tmp45232 '()))))
                                         (declare (not safe))
                                         (cons __tmp45233 __tmp45231))))
                                  (declare (not safe))
                                  (cons __tmp45234 __tmp45230))))
                           (declare (not safe))
                           (cons __tmp45229 '()))))
                    (declare (not safe))
                    (cons __tmp45235 __tmp45228))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp45227 '()))))
                                              (declare (not safe))
                                              (cons __tmp45236 __tmp45226))))
                                       (declare (not safe))
                                       (cons '() __tmp45225))))
                                (declare (not safe))
                                (cons __tmp45257 __tmp45224))))
                         (declare (not safe))
                         (cons __tmp45258 __tmp45223))))
                  (declare (not safe))
                  (cons __tmp45222 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp45259
                                                         __tmp45221))))
                                            (declare (not safe))
                                            (cons __tmp45261 __tmp45220))))
                                     (declare (not safe))
                                     (cons __tmp45219 '()))))
                              (declare (not safe))
                              (cons __tmp45262 __tmp45218))))
                       (declare (not safe))
                       (cons __tmp45270 __tmp45217))))
                (declare (not safe))
                (cons __tmp45216 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'macro: __tmp45215))))
                                          (declare (not safe))
                                          (cons __tmp45271 __tmp45214))))
                                   (declare (not safe))
                                   (cons __tmp45213 '()))))
                            (declare (not safe))
                            (cons _L42107_ __tmp45212))))
                     (declare (not safe))
                     (cons __tmp45272 __tmp45211))))
                (___kont4446444465_
                 (lambda (_L42037_ _L42039_ _L42040_)
                   (let ((__tmp45273
                          (let ((__tmp45274
                                 (let ((__tmp45275
                                        (let ((__tmp45276
                                               (let ((__tmp45287
                                                      (gx#datum->syntax
                                                       '#f
                                                       'lambda))
                                                     (__tmp45277
                                                      (let ((__tmp45285
                                                             (let ((__tmp45286
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f '$stx)))
                       (declare (not safe))
                       (cons __tmp45286 '())))
                    (__tmp45278
                     (let ((__tmp45279
                            (let ((__tmp45284
                                   (gx#datum->syntax '#f 'raise-syntax-error))
                                  (__tmp45280
                                   (let ((__tmp45281
                                          (let ((__tmp45282
                                                 (let ((__tmp45283
                                                        (gx#datum->syntax
                                                         '#f
                                                         '$stx)))
                                                   (declare (not safe))
                                                   (cons __tmp45283 '()))))
                                            (declare (not safe))
                                            (cons '"bad syntax; no macro definition for defsyntax-for-match"
                                                  __tmp45282))))
                                     (declare (not safe))
                                     (cons '#f __tmp45281))))
                              (declare (not safe))
                              (cons __tmp45284 __tmp45280))))
                       (declare (not safe))
                       (cons __tmp45279 '()))))
                (declare (not safe))
                (cons __tmp45285 __tmp45278))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp45287
                                                       __tmp45277))))
                                          (declare (not safe))
                                          (cons __tmp45276 '()))))
                                   (declare (not safe))
                                   (cons _L42037_ __tmp45275))))
                            (declare (not safe))
                            (cons _L42039_ __tmp45274))))
                     (declare (not safe))
                     (cons _L42040_ __tmp45273)))))
            (let ((___match4449244493_
                   (lambda (_e4197342064_
                            _hd4197242068_
                            _tl4197142071_
                            _e4197642074_
                            _hd4197542078_
                            _tl4197442081_
                            _e4197942084_
                            _hd4197842088_
                            _tl4197742091_
                            _e4198242094_
                            _hd4198142098_
                            _tl4198042101_)
                     (let ((_L42104_ _hd4198142098_)
                           (_L42106_ _hd4197842088_)
                           (_L42107_ _hd4197542078_))
                       (if (gx#identifier? _L42107_)
                           (___kont4446244463_ _L42104_ _L42106_ _L42107_)
                           (let () (declare (not safe)) (_g4196642000_)))))))
              (if (gx#stx-pair? ___stx4445944460_)
                  (let ((_e4197342064_ (gx#syntax-e ___stx4445944460_)))
                    (let ((_tl4197142071_
                           (let () (declare (not safe)) (##cdr _e4197342064_)))
                          (_hd4197242068_
                           (let ()
                             (declare (not safe))
                             (##car _e4197342064_))))
                      (if (gx#stx-pair? _tl4197142071_)
                          (let ((_e4197642074_ (gx#syntax-e _tl4197142071_)))
                            (let ((_tl4197442081_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4197642074_)))
                                  (_hd4197542078_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4197642074_))))
                              (if (gx#stx-pair? _tl4197442081_)
                                  (let ((_e4197942084_
                                         (gx#syntax-e _tl4197442081_)))
                                    (let ((_tl4197742091_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4197942084_)))
                                          (_hd4197842088_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4197942084_))))
                                      (if (gx#stx-pair? _tl4197742091_)
                                          (let ((_e4198242094_
                                                 (gx#syntax-e _tl4197742091_)))
                                            (let ((_tl4198042101_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4198242094_)))
                                                  (_hd4198142098_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4198242094_))))
                                              (if (gx#stx-null? _tl4198042101_)
                                                  (___match4449244493_
                                                   _e4197342064_
                                                   _hd4197242068_
                                                   _tl4197142071_
                                                   _e4197642074_
                                                   _hd4197542078_
                                                   _tl4197442081_
                                                   _e4197942084_
                                                   _hd4197842088_
                                                   _tl4197742091_
                                                   _e4198242094_
                                                   _hd4198142098_
                                                   _tl4198042101_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g4196642000_)))))
                                          (if (gx#stx-null? _tl4197742091_)
                                              (___kont4446444465_
                                               _hd4197842088_
                                               _hd4197542078_
                                               _hd4197242068_)
                                              (let ()
                                                (declare (not safe))
                                                (_g4196642000_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g4196642000_)))))
                          (let () (declare (not safe)) (_g4196642000_)))))
                  (let () (declare (not safe)) (_g4196642000_))))))))
    (define |gerbil/core/match[:0:]#defrules-for-match|
      (lambda (_$stx42129_)
        (let* ((_g4213342148_
                (lambda (_g4213442144_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g4213442144_)))
               (_g4213242191_
                (lambda (_g4213442152_)
                  (if (gx#stx-pair? _g4213442152_)
                      (let ((_e4213942155_ (gx#syntax-e _g4213442152_)))
                        (let ((_hd4213842159_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4213942155_)))
                              (_tl4213742162_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4213942155_))))
                          (if (gx#stx-pair? _tl4213742162_)
                              (let ((_e4214242165_
                                     (gx#syntax-e _tl4213742162_)))
                                (let ((_hd4214142169_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4214242165_)))
                                      (_tl4214042172_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4214242165_))))
                                  ((lambda (_L42175_ _L42177_)
                                     (let ((__tmp45292
                                            (gx#datum->syntax
                                             '#f
                                             'defsyntax-for-match))
                                           (__tmp45288
                                            (let ((__tmp45289
                                                   (let ((__tmp45290
                                                          (let ((__tmp45291
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'syntax-rules)))
                    (declare (not safe))
                    (cons __tmp45291 _L42175_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp45290 '()))))
                                              (declare (not safe))
                                              (cons _L42177_ __tmp45289))))
                                       (declare (not safe))
                                       (cons __tmp45292 __tmp45288)))
                                   _tl4214042172_
                                   _hd4214142169_)))
                              (_g4213342148_ _g4213442152_))))
                      (_g4213342148_ _g4213442152_)))))
          (_g4213242191_ _$stx42129_))))))
